-- CreateTable
CREATE TABLE "courses_modules" (
    "id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "courseId" TEXT NOT NULL,
    "moduleId" TEXT NOT NULL,

    CONSTRAINT "courses_modules_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "courses_modules" ADD CONSTRAINT "courses_modules_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES "courses"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "courses_modules" ADD CONSTRAINT "courses_modules_moduleId_fkey" FOREIGN KEY ("moduleId") REFERENCES "modules"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
