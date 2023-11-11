include(FetchContent)

FetchContent_Declare(
        fmt
        SOURCE_DIR ${PROJECT_SOURCE_DIR}/../third-partys/fmt
)

FetchContent_GetProperties(fmt)
if (NOT fmt_POPULATED)
    FetchContent_Populate(fmt)
    add_subdirectory(${fmt_SOURCE_DIR} ${fmt_BINARY_DIR})
endif ()