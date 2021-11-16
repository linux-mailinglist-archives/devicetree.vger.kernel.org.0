Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80966453176
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 12:52:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235638AbhKPLz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 06:55:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235757AbhKPLzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 06:55:16 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3B05C061207
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:52:16 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id c4so36922406wrd.9
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v+QJmLY5BpY25I0rmG78uwWISNO+pZrvFRBP61oe3sw=;
        b=uTPfcujUExOV/32d5d9pSrPEzKYFf5z6TJEcXUumrFiczlKJgsd5gWhYVXEnWbQWkD
         Nt8svDH+tR6/Vny21lKjS0WIx/B3VDusxxiqOwiReFz5tj8CI0gJGH4B1wVSW8X+g8PM
         LrpWCwYB7cy7ZvlA/Oy5DVIJ5pmrFgnSaYs5lEvGgpy6K/WSaCNB1fOS+hcUuy+xGy2K
         9hSjun1Z8ndBPzf47bchnYkViBnhdaF18oPx6QW1W3GVVLvDo6Pu2B30vwJHIyC8NV2k
         4lbU7RZ1iuDMosa0hk6fCqaaGQoB2RYQzt5k6nBmJnsoYT6SFi03SX2y+zb5JKdW/7dq
         /erw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v+QJmLY5BpY25I0rmG78uwWISNO+pZrvFRBP61oe3sw=;
        b=b+wweGGyAL9k1HZHIvWwUHeNoasqhHN7hT/WM3g4NpoPzvHomkKOjAp5bUwUENUxI1
         a/iYscoWWStxOSfbPPaDDJoMRIee2M7XQ6ZVEDkrXuaq7HPs6Np3un/7kPbKsZLY19rs
         QZLVDiS5uqnwGS+untrDZO4jkBpWOuXMjhttM/XICPxmiGKjbcv/ARvlYlTUtneCZtBW
         56NVrdOvyXz2gep0B8GNtbwiK0+llzQ9y+ainw5CvqrcTTDLhZt3WZpsUz7VuDpy2m6i
         p+IPlz/VJ89HRoswNQJj2Nlvt/sjWsfLoejL2+1xJpcN6NthGwU8An8EVHsFMB5TMajO
         EnyQ==
X-Gm-Message-State: AOAM532g1H/TJ+ozj+5pI5ea6iMmFza5TbaEHmQGYRJqKfcpW/cenjS9
        WB/AWvW+3vbMNwIqRVPvIVzqfA==
X-Google-Smtp-Source: ABdhPJw0qnoPTZDC82Hez68IY85kWriu4gxeza20OUJa40OGiN4vAnqPql5KOwe325d01vJPGd55+g==
X-Received: by 2002:a5d:64ea:: with SMTP id g10mr8938553wri.242.1637063535219;
        Tue, 16 Nov 2021 03:52:15 -0800 (PST)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id b6sm2232846wmq.45.2021.11.16.03.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 03:52:14 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 2/2] perf/smmuv3: Add devicetree support
Date:   Tue, 16 Nov 2021 11:35:37 +0000
Message-Id: <20211116113536.69758-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211116113536.69758-1-jean-philippe@linaro.org>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device-tree support to the SMMUv3 PMCG.  One small cosmetic change
while factoring the option mask printout: don't display it when zero, it
only contains one erratum at the moment.

Signed-off-by: Jay Chen <jkchen@linux.alibaba.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/perf/arm_smmuv3_pmu.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index 226348822ab3..958325ac103a 100644
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
@@ -750,8 +751,15 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
 		smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
 		break;
 	}
+}
+
+static void smmu_pmu_get_of_options(struct smmu_pmu *smmu_pmu)
+{
+	struct device_node *node = smmu_pmu->dev->of_node;
 
-	dev_notice(smmu_pmu->dev, "option mask 0x%x\n", smmu_pmu->options);
+	if (of_device_is_compatible(node, "hisilicon,smmu-v3-pmcg-hip08"))
+		/* HiSilicon Erratum 162001800 */
+		smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
 }
 
 static int smmu_pmu_probe(struct platform_device *pdev)
@@ -834,7 +842,13 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	smmu_pmu_get_acpi_options(smmu_pmu);
+	if (dev->of_node)
+		smmu_pmu_get_of_options(smmu_pmu);
+	else
+		smmu_pmu_get_acpi_options(smmu_pmu);
+
+	if (smmu_pmu->options)
+		dev_notice(dev, "option mask 0x%x\n", smmu_pmu->options);
 
 	/* Pick one CPU to be the preferred one to use */
 	smmu_pmu->on_cpu = raw_smp_processor_id();
@@ -884,10 +898,17 @@ static void smmu_pmu_shutdown(struct platform_device *pdev)
 	smmu_pmu_disable(&smmu_pmu->pmu);
 }
 
+static const struct of_device_id arm_smmu_pmu_match[] = {
+	{ .compatible = "arm,smmu-v3-pmcg" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, arm_smmu_pmu_match);
+
 static struct platform_driver smmu_pmu_driver = {
 	.driver = {
 		.name = "arm-smmu-v3-pmcg",
 		.suppress_bind_attrs = true,
+		.of_match_table = of_match_ptr(arm_smmu_pmu_match),
 	},
 	.probe = smmu_pmu_probe,
 	.remove = smmu_pmu_remove,
-- 
2.33.1

