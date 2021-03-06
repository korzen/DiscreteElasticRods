# This is a comment
# Comments start with '#' character and are stripped away when parsing

# Follow definitions of acceptable objects that can be created - any other string will produce parsing error

# Follows mesh definition
# mesh accepts only the parameters listed below - any other string will produce parsing error
# id should be a positive integer and unique for each mesh defined in the scene file
# id is not the actual id used in the program but is used to link object3D with a mesh
# filename should be a valid file path only obj triangular meshes supported
mesh
id 1
filename assets/sphere.obj
/mesh

# Follows object3D definition
# object3D accepts only the parameters listed below - any other string will produce parsing error
# id should be a positive integer and unique for each object3D defined in the scene file
# id is not the actual id used in the program but is used to link hair with an object3D
# meshId links object3D with a mesh
# transform is a sequence of 9 values in the form:
# euler_angle_x euler_angle_y, euler_angle_z scale_x scale_y scale_z translate_x translate_y translate_z
# rotation is in xyz order
# transform translates to 4x4 column major matrix placing the object in space
# collisionShape is defined as transform and translates to 4x4 column major matrix
# collisionShape defines an ellipsoid with which hair will collide
# there might be more than one collisionShape defined for the object
object3D
id 1
meshId 1
transform 0 0 0 1 1 1 0 0 0
collisionShape 0 0 0 2 2 2 0 0 0
/object3D

# Follows hair definition
# hair accepts only the parameters listed below - any other string will produce parsing error
# id should be a positive integer and unique for each hair defined in the scene file
# id is not the actual id used in the program
# objId links hair with an object3D
# type can have the following values curly/straight
# faceCnt defines number of faces to put hair on
# NOTE: faceCnt should precede faceList for hair to be parsed correctly
# faceList contains face indices and can be autogenerated by Maya:
# import the obj file used for the mesh above, select the faces to put hair on and run script from assets/MayaGetSelectedPrimitives.py
# this will output faceCnt faceList, copy-paste here
hair
id 1
objId 1
# AUTO GENERATED BY MAYA
# selected faces:
faceCnt  500
faceList 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665 666 667 668 669 670 671 672 673 674 675 676 677 678 679 680 681 682 683 684 685 686 687 688 689 690 691 692 693 694 695 696 697 698 699 700 701 702 703 704 705 706 707 708 709 710 711 712 713 714 715 716 717 718 719 740 741 742 743 744 745 746 747 748 749 750 751 752 753 754 755 756 757 758 759

type curly
length 2.5
lengthVariance 0.5
helicalRadius 0.2
helicalPitch 0.13
density 0.001
thickness 0.07
nParticles 7

netForce 0 -9.81 0
drag 0.000001

resolveCollisions 1
resolveSelfInteractions 1
selfInteractionDist 0.4
selfStiction 0.1
selfRepulsion 0.00005

pbdIter 10

bendStiffness 0.00004
twistStiffness 0.0001
maxElasticForce 100
minimizationMethod none
minimizationTolerance 0.1
minimizationMaxIter 10

/hair

# use timestep 0.033s
# use iter 1
