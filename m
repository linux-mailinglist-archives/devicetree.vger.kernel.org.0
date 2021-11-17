Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA68454949
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:52:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230459AbhKQOzl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:55:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231171AbhKQOzi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:55:38 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86AEBC061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:39 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id g14so12327001edb.8
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ve7xUdb+Hg9RyjwNTpj23ptdpIMs4Ic4sw4mtKsRCdI=;
        b=aCdXOLY+9NDzmRPSjazal00RnVkQVSTQqDf7QhIFc6VvfA28TXUiGJr2J19Hi/xU9F
         KNecCTvatmx6S8+we2pQXqPq4nGfHfj0oix8SjtSf1NFJ+KjyBD6UcWWT35Y1Iyu50Lv
         2ubSZutvglNIG4c6DENgdkquq9iYE6Mi6IVhLNGs/4fojWaa/bzD+SpSascqK30sFqmz
         mclY2y8z8f+LNV/hcAglYycYBNXAAfU34F2bFa48UqNCDtY49A1fuPCMOkwoyjRAPc+m
         oU+J6j1PsqD1Dz8CuO0KxEVNiIivrmdRKDCd0qJ58Wii7TBQRyYRsbnDGfsTDg7aXUY4
         VQZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ve7xUdb+Hg9RyjwNTpj23ptdpIMs4Ic4sw4mtKsRCdI=;
        b=gfKj1MKH/L7aOIVPTqKlc3CU+C7+hc0z402rLeH8LbbEsRj5bNuVQW5uIuak2L6YhG
         Cmp+BdKI7O0y0pkwdvrKgtg1YDbXpmAGM/bMq974YqyZI9epqPlj24Iv4x3kd5UVOtKg
         fMDlBC0R0BJ4jUXo5mJcmbJ9PSd+LoJMV+O7+cuMcMvQO132Ke3X5G77bVN5ruPoHNEF
         njO3fbX6KmxArwi4SC8gdh6d9WJHIh3s/FSU9JS9tVNqFWBTBzEkckgQBm5RX9IzO/l0
         G2Xd5FVV/gkvDq1Nkpc0FwvmqTkjaaGOMlgGRFaMsafw0olqt4uarb6WRAZqtswFDbXW
         IAtw==
X-Gm-Message-State: AOAM531PtuhvMnsVhKuH2/7np1Ykd9IFJrIozWIYuOCoDKMONx8iQ1V0
        d0O8mVQWAiNucUHEzOEvMl1mrg==
X-Google-Smtp-Source: ABdhPJxXDaM8+yb04iLwMEzyFoVFkjg3TtfgBGe99zo3k2qNu2dlD3sGtXI1PTF/PPYHNdu0Y6Bhlg==
X-Received: by 2002:a17:907:7805:: with SMTP id la5mr22724677ejc.188.1637160758136;
        Wed, 17 Nov 2021 06:52:38 -0800 (PST)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id gs15sm63917ejc.42.2021.11.17.06.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 06:52:37 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v2 2/3] perf/smmuv3: Add devicetree support
Date:   Wed, 17 Nov 2021 14:48:44 +0000
Message-Id: <20211117144844.241072-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211117144844.241072-1-jean-philippe@linaro.org>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device-tree support to the SMMUv3 PMCG driver.

Signed-off-by: Jay Chen <jkchen@linux.alibaba.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/perf/arm_smmuv3_pmu.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index 226348822ab3..19697617153a 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -47,6 +47,7 @@
 #include <linux/kernel.h>
 #include <linux/list.h>
 #include <linux/msi.h>
+#include <linux/of.h>
 #include <linux/perf_event.h>
 #include <linux/platform_device.h>
 #include <linux/smp.h>
@@ -834,7 +835,8 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	smmu_pmu_get_acpi_options(smmu_pmu);
+	if (!dev->of_node)
+		smmu_pmu_get_acpi_options(smmu_pmu);
 
 	/* Pick one CPU to be the preferred one to use */
 	smmu_pmu->on_cpu = raw_smp_processor_id();
@@ -884,9 +886,16 @@ static void smmu_pmu_shutdown(struct platform_device *pdev)
 	smmu_pmu_disable(&smmu_pmu->pmu);
 }
 
+static const struct of_device_id smmu_pmu_of_match[] = {
+	{ .compatible = "arm,smmu-v3-pmcg" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, smmu_pmu_of_match);
+
 static struct platform_driver smmu_pmu_driver = {
 	.driver = {
 		.name = "arm-smmu-v3-pmcg",
+		.of_match_table = of_match_ptr(smmu_pmu_of_match),
 		.suppress_bind_attrs = true,
 	},
 	.probe = smmu_pmu_probe,
-- 
2.33.1

