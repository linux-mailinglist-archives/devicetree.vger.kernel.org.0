Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95E3B30243D
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 12:28:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727647AbhAYLLY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 06:11:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727753AbhAYLJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 06:09:26 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C3A6C06178A
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 03:08:45 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id m187so10307997wme.2
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 03:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D32J+akdetMmA5Myd4Zx5B3eWdLb4pZJ7wlpCkerL8M=;
        b=sIgFUy1B4NVZTMdif41pOLYx/+zRTjX1CmBp28JOvA9dBq+ncegVdQKTKx6zFKpMA0
         RLrBDORpb4Wopov1wmsqCNwtxU/OTA+4T/HidEMzrcX/l10yuWmh2vn1tHVSCMf1WGwn
         k/I3+x++pEPyRk48uxdzw2k8HGR8Ad4NRGsrzffLFLL0/IVqTdb8ajx4Lw+x49oM0mb+
         iPBIL+SI8d3oTuaFhQanBe3jnURITn3n3J5wb8bR46LkJ/HFRCz+dKaO+UEi+7Murd4i
         KSPMi9rgFEX2zKXtfEEoY7s4DzLcaxbp9ooMwRJIcrA/HFyS6BmTyiujmteB8sgRLdFG
         CK3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D32J+akdetMmA5Myd4Zx5B3eWdLb4pZJ7wlpCkerL8M=;
        b=KhkvJB4ntYt8NXNnO8oabvtHDPzFXpypp6bBKEn8NVWgkchK0FeTxUuRl3+F+WHDqu
         ksqvWzYM+YQyt+ZPNB3o+X0XJxpW//SLEzw1npd9hpMMqQYsW+j+IGnwQJdczR7DCYK5
         cw5u1G0FLru7vDqo23OUpr2Y9OokCsPQKaFgQHPvHHHHjA6brhdgqGo6MhP3U/bO0bmQ
         ZETtZTZwjyYpaNW3pjB+JY15fJ59SKSdHlCuUzGx50FxxkIRlL9sFR6iw12XbSBzXrej
         VmJKKYTYnA6qfKjai9Hmt2z9ekdPaNdCIcseCrgRi7s6BGAvJz3OS/E0Rfzf2DfwyNnd
         Upmg==
X-Gm-Message-State: AOAM531eMcBrgYFlNL8KFszsoK6PH/4TqTgyEl6xAWQ5ImYIF8o/1cmT
        NyFrrkbDQ9U3h0zNN0b8Dh1bxQ==
X-Google-Smtp-Source: ABdhPJwWUAbaa+u9PhjGecAC0HvYf8RfDHP6EKMUj3KGOJ93rmXeB4FDwvfcCPo+QdcrgOx8578F9Q==
X-Received: by 2002:a05:600c:4ed3:: with SMTP id g19mr579133wmq.95.1611572924335;
        Mon, 25 Jan 2021 03:08:44 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id u6sm16636014wro.75.2021.01.25.03.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 03:08:43 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org
Cc:     lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        jacob.jun.pan@linux.intel.com, kevin.tian@intel.com,
        vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v11 02/10] iommu/arm-smmu-v3: Use device properties for pasid-num-bits
Date:   Mon, 25 Jan 2021 12:06:43 +0100
Message-Id: <20210125110650.3232195-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210125110650.3232195-1-jean-philippe@linaro.org>
References: <20210125110650.3232195-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pasid-num-bits property shouldn't need a dedicated fwspec field,
it's a job for device properties. Add properties for IORT, and access
the number of PASID bits using device_property_read_u32().

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/iommu.h                       |  2 --
 drivers/acpi/arm64/iort.c                   | 13 +++++++------
 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c |  3 ++-
 drivers/iommu/of_iommu.c                    |  5 -----
 4 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index bdf3f34a4457..b7ea11fc1a93 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -571,7 +571,6 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
  * @flags: IOMMU_FWSPEC_* flags
- * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
  */
@@ -579,7 +578,6 @@ struct iommu_fwspec {
 	const struct iommu_ops	*ops;
 	struct fwnode_handle	*iommu_fwnode;
 	u32			flags;
-	u32			num_pasid_bits;
 	unsigned int		num_ids;
 	u32			ids[];
 };
diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index d4eac6d7e9fb..c9a8bbb74b09 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -968,15 +968,16 @@ static int iort_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
 static void iort_named_component_init(struct device *dev,
 				      struct acpi_iort_node *node)
 {
+	struct property_entry props[2] = {};
 	struct acpi_iort_named_component *nc;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
-
-	if (!fwspec)
-		return;
 
 	nc = (struct acpi_iort_named_component *)node->node_data;
-	fwspec->num_pasid_bits = FIELD_GET(ACPI_IORT_NC_PASID_BITS,
-					   nc->node_flags);
+	props[0] = PROPERTY_ENTRY_U32("pasid-num-bits",
+				      FIELD_GET(ACPI_IORT_NC_PASID_BITS,
+						nc->node_flags));
+
+	if (device_add_properties(dev, props))
+		dev_warn(dev, "Could not add device properties\n");
 }
 
 static int iort_nc_iommu_map(struct device *dev, struct acpi_iort_node *node)
diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
index baebaac34a83..88dd9feb32f4 100644
--- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
+++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
@@ -2392,7 +2392,8 @@ static struct iommu_device *arm_smmu_probe_device(struct device *dev)
 		}
 	}
 
-	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
+	device_property_read_u32(dev, "pasid-num-bits", &master->ssid_bits);
+	master->ssid_bits = min(smmu->ssid_bits, master->ssid_bits);
 
 	/*
 	 * Note that PASID must be enabled before, and disabled after ATS:
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index e505b9130a1c..a9d2df001149 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -210,11 +210,6 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
 					     of_pci_iommu_init, &info);
 	} else {
 		err = of_iommu_configure_device(master_np, dev, id);
-
-		fwspec = dev_iommu_fwspec_get(dev);
-		if (!err && fwspec)
-			of_property_read_u32(master_np, "pasid-num-bits",
-					     &fwspec->num_pasid_bits);
 	}
 
 	/*
-- 
2.30.0

