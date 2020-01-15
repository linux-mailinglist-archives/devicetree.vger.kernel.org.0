Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 43D8913C1E0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 13:53:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729052AbgAOMxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 07:53:42 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:45004 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728988AbgAOMxm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 07:53:42 -0500
Received: by mail-wr1-f68.google.com with SMTP id q10so15623433wrm.11
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 04:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C3g2nYTO2xQzb0GJuxY8N32scuZW4mZloVEmHa7VH1s=;
        b=GizgJV+NAlkwmPStOaKeLJGVjuw+mNcVnRBGC3KOsPI8Ckz3NtzP81ZW0FXqyGTgmo
         CQSBQ1i/367JhF2Hr9aOyBH7HhwOtRQxxhF1ER/yFhgBYGARKyuYZwnyUOM16f9ZkoHz
         932OC6jTw3G1Yo73aVV7ol9jYuBydFvGU5nbMGRb8wnB/wZMPE3SbC9TXmYjWfC0Hj8w
         toP68qIugnKqfeVmyqApFpJyXHnxypMTrAs0iJBxdz+LQ8B8jT0dBRDD7X39lECHCK9Y
         lz9qLSHufNXYhKd+fOGRYzHa41Bh2IjLy2+y4DlRmvQ2I5XcgoOrSTzHbGvUrovuTt/X
         3gmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C3g2nYTO2xQzb0GJuxY8N32scuZW4mZloVEmHa7VH1s=;
        b=sHkMKD6uzzjS8BfIue0Lsz6y3485gTXBs9LDRO5uU7C8VGNKDom1o4cD5j6feI+J9g
         jTs2Lgsx3173e86WJ8euU0Lzq6tEIW5FdaFCaSs+RpYnKRJmaKkJb7ukgcsRtvHuUdic
         Rz7W3W7T17gZqM/tL9ONzSROsJJub0qDBOlsZ+OMFEcGLAnEugFA+wjyJ35bvdzef9aR
         iSp5YRLniiEC4KCuzKiJLRInsoltCFJlarWGK18qk7hPDE/Zo8pVYiHVHTeBv9H2ENF0
         xwxvtvHgG7aQeSfJti3PIRbHbiUVHdqLkPNd7Fou2b75wQu3jaNKHzH20DxqSz6fweXl
         FS9A==
X-Gm-Message-State: APjAAAUa0XwQmM8sZ2zQAbPEcMTJ2PaJklE3gCXzLUgQ//9Md6/uKIK2
        R0275ebduY7+xxx1XJnKsnP7QHF6WFg=
X-Google-Smtp-Source: APXvYqwSGcbdAtd5+ica/pXHhp8VLPeN94EbbtkoRsRsPY47afNQboGMHUBtV30+2XDoEbdnJ8V8Ug==
X-Received: by 2002:adf:e5cf:: with SMTP id a15mr11624781wrn.140.1579092820130;
        Wed, 15 Jan 2020 04:53:40 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 04:53:39 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, will@kernel.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com,
        lorenzo.pieralisi@arm.com, guohanjun@huawei.com,
        sudeep.holla@arm.com, rjw@rjwysocki.net, lenb@kernel.org,
        robin.murphy@arm.com, bhelgaas@google.com, eric.auger@redhat.com,
        jonathan.cameron@huawei.com, zhangfei.gao@linaro.org
Subject: [PATCH v5 11/13] iommu/arm-smmu-v3: Improve add_device() error handling
Date:   Wed, 15 Jan 2020 13:52:37 +0100
Message-Id: <20200115125239.136759-12-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Let add_device() clean up after itself. The iommu_bus_init() function
does call remove_device() on error, but other sites (e.g. of_iommu) do
not.

Don't free level-2 stream tables because we'd have to track if we
allocated each of them or if they are used by other endpoints. It's not
worth the hassle since they are managed resources.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 04144b39c4ce..b2b7ba9c4e32 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2827,14 +2827,16 @@ static int arm_smmu_add_device(struct device *dev)
 	for (i = 0; i < master->num_sids; i++) {
 		u32 sid = master->sids[i];
 
-		if (!arm_smmu_sid_in_range(smmu, sid))
-			return -ERANGE;
+		if (!arm_smmu_sid_in_range(smmu, sid)) {
+			ret = -ERANGE;
+			goto err_free_master;
+		}
 
 		/* Ensure l2 strtab is initialised */
 		if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
 			ret = arm_smmu_init_l2_strtab(smmu, sid);
 			if (ret)
-				return ret;
+				goto err_free_master;
 		}
 	}
 
@@ -2844,13 +2846,25 @@ static int arm_smmu_add_device(struct device *dev)
 		master->ssid_bits = min_t(u8, master->ssid_bits,
 					  CTXDESC_LINEAR_CDMAX);
 
+	ret = iommu_device_link(&smmu->iommu, dev);
+	if (ret)
+		goto err_free_master;
+
 	group = iommu_group_get_for_dev(dev);
-	if (!IS_ERR(group)) {
-		iommu_group_put(group);
-		iommu_device_link(&smmu->iommu, dev);
+	if (IS_ERR(group)) {
+		ret = PTR_ERR(group);
+		goto err_unlink;
 	}
 
-	return PTR_ERR_OR_ZERO(group);
+	iommu_group_put(group);
+	return 0;
+
+err_unlink:
+	iommu_device_unlink(&smmu->iommu, dev);
+err_free_master:
+	kfree(master);
+	fwspec->iommu_priv = NULL;
+	return ret;
 }
 
 static void arm_smmu_remove_device(struct device *dev)
-- 
2.24.1

