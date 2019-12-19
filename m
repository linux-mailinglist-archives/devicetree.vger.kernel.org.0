Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3A7291266EB
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2019 17:31:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726949AbfLSQb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Dec 2019 11:31:27 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34732 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726875AbfLSQbZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Dec 2019 11:31:25 -0500
Received: by mail-wr1-f68.google.com with SMTP id t2so6643509wrr.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2019 08:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q4JsCWxXHC8YjpStG5e1vl4meeR6Q/c6EwcKRZXnP4g=;
        b=sTqcWUokPnwLGEdjfIKXcDnNXRPxjyv3citH7ox7xgYiwoPXSPAjrSfKt5Pg08MI1h
         sObUwjj18FTuzAzOt1tYgWkzdzxV0whkFrN9xvobZGH7ORqoWD40PLCG0GgIjRkJ5lzV
         R0MaGXdyPsw7ToxiSJqdrKTr+yLssZCIky7onhTflmfwrqrdhS0bkEnl7378cMBCmX/N
         7cbQvFUtS0NYbwl1gDZOeTi9pcMVJz7kQwEUWPxNwoE/qX4k3KilufcVaR11l6IFbKBU
         sYWfoOCNObjSQjymDuf9Nh9HwEf5iY1oKlH3IZCTOHIWs6d82Omp6V1BuAzJQSFukttE
         +5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q4JsCWxXHC8YjpStG5e1vl4meeR6Q/c6EwcKRZXnP4g=;
        b=Xrko5ZQOx/smfK3CnYX2xnD5Ih058biK+wiWssbuwThwBGoi+zS7lY5/lOtd6o2l1n
         wIlPrebBw48DwleuZ33D+9jkuVUxwgd7JYpTPiXcxfqASzyTTp1xRgaCdcQPGwOnIhTX
         w7XH8xE+w67dnTrk3GkBfeflqiwMG/FTII1AjqP/8+QhwbjxOUNdDaMg4GTMA9iORqZL
         pYzbQ6qqqvXdyaIMZnsiB3Bdq0pzwGgTPz4qU4uodGLV4HZxDlRzo6D39DgzNahyoE4j
         Mq/nNkAQatYLvo0rXPev/zU8DZD+pkTV8OaIoXfhMEVx/zp6/MMNURjnqEorGW2bwkAP
         0ECw==
X-Gm-Message-State: APjAAAWfhIYPQW8lCNZc5ua/MaQq31ne0a7II5zPz7DlBDacPfI+LQwi
        nrsHt5B+s/HDCJWm6wv1ICU6nQ==
X-Google-Smtp-Source: APXvYqz4281aYkZNNCWobSpMChvBEnYx3051pW8GJSIA9/VJ3q7kqvMmiLESarVd2DFLZty8AdKDMQ==
X-Received: by 2002:adf:814c:: with SMTP id 70mr9967833wrm.157.1576773082993;
        Thu, 19 Dec 2019 08:31:22 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
        by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 08:31:22 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com,
        lorenzo.pieralisi@arm.com, guohanjun@huawei.com,
        sudeep.holla@arm.com, rjw@rjwysocki.net, lenb@kernel.org,
        will@kernel.org, robin.murphy@arm.com, bhelgaas@google.com,
        eric.auger@redhat.com, jonathan.cameron@huawei.com,
        zhangfei.gao@linaro.org
Subject: [PATCH v4 03/13] iommu/arm-smmu-v3: Parse PASID devicetree property of platform devices
Date:   Thu, 19 Dec 2019 17:30:23 +0100
Message-Id: <20191219163033.2608177-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For platform devices that support SubstreamID (SSID), firmware provides
the number of supported SSID bits. Restrict it to what the SMMU supports
and cache it into master->ssid_bits, which will also be used for PCI
PASID.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 13 +++++++++++++
 drivers/iommu/of_iommu.c    |  6 +++++-
 include/linux/iommu.h       |  2 ++
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index d4e8b7f8d9f4..837b4283b4dc 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -292,6 +292,12 @@
 
 #define CTXDESC_CD_1_TTB0_MASK		GENMASK_ULL(51, 4)
 
+/*
+ * When the SMMU only supports linear context descriptor tables, pick a
+ * reasonable size limit (64kB).
+ */
+#define CTXDESC_LINEAR_CDMAX		ilog2(SZ_64K / (CTXDESC_CD_DWORDS << 3))
+
 /* Convert between AArch64 (CPU) TCR format and SMMU CD format */
 #define ARM_SMMU_TCR2CD(tcr, fld)	FIELD_PREP(CTXDESC_CD_0_TCR_##fld, \
 					FIELD_GET(ARM64_TCR_##fld, tcr))
@@ -638,6 +644,7 @@ struct arm_smmu_master {
 	u32				*sids;
 	unsigned int			num_sids;
 	bool				ats_enabled;
+	unsigned int			ssid_bits;
 };
 
 /* SMMU private data for an IOMMU domain */
@@ -2571,6 +2578,12 @@ static int arm_smmu_add_device(struct device *dev)
 		}
 	}
 
+	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
+
+	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
+		master->ssid_bits = min_t(u8, master->ssid_bits,
+					  CTXDESC_LINEAR_CDMAX);
+
 	group = iommu_group_get_for_dev(dev);
 	if (!IS_ERR(group)) {
 		iommu_group_put(group);
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 026ad2b29dcd..b3ccb2f7f1c7 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -196,8 +196,12 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
 			if (err)
 				break;
 		}
-	}
 
+		fwspec = dev_iommu_fwspec_get(dev);
+		if (!err && fwspec)
+			of_property_read_u32(master_np, "pasid-num-bits",
+					     &fwspec->num_pasid_bits);
+	}
 
 	/*
 	 * Two success conditions can be represented by non-negative err here:
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index f2223cbb5fd5..956031eab3ef 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -570,6 +570,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
  * @iommu_priv: IOMMU driver private data for this device
+ * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
  */
@@ -578,6 +579,7 @@ struct iommu_fwspec {
 	struct fwnode_handle	*iommu_fwnode;
 	void			*iommu_priv;
 	u32			flags;
+	u32			num_pasid_bits;
 	unsigned int		num_ids;
 	u32			ids[1];
 };
-- 
2.24.1

