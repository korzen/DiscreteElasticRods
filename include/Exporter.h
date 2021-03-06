#ifndef EXPORTER_H
#define EXPORTER_H

#include "ElasticRod.h"
#include "RenderObject.h"

class Exporter
{
public:
    Exporter() { }
    ~Exporter() { }

    bool exportGeometry(const char *filename, const RenderObject& object);
    bool exportCurves(const char *filename, const std::vector<ElasticRod*>& strands);
};

#endif // EXPORTER_H
