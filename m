Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B5AF2FEA4E
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 13:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731402AbhAUMkd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 07:40:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730789AbhAUMkO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 07:40:14 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC2A7C0613D3
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 04:39:33 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id v15so1588977wrx.4
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 04:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0PBUJkI6WkOQ4c7ebH11XhAeKbkF/R51HzjghE20E74=;
        b=S6KAw6BFvy1u9gJvmutqIln16f2tlRmzrrTj88Jt8KD7XWgeUEfM6naKbWUTAAPUwB
         rZS7buyT/hDN9LnURR0KzikousqtLELsRIgdbWXldN/HbgqPED5ggw9DQI5xYMZBl4jO
         qOmCKvazJNe47iOE/IQhrlbYSbOJK6aqGhTDnurw+RTVmKI8OpKIy66mv0OjGTNemNq8
         D6H49liQT+jbQQWyu6qOoYUGwUjydvCbtSND5j/FWlQs4KpluWbrLop3s7y5psHv/qXI
         6JBpXe8GgGkHTb79wjro/Uc6XEb3UDtIFpKB4GgIjVT807gmpNW8hVcqSy/J775Tgktb
         Ek0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0PBUJkI6WkOQ4c7ebH11XhAeKbkF/R51HzjghE20E74=;
        b=ag3JE/k+cM5bx4IRtoltKRDVfxPdyVylizD4oy6DwSg8J0GOxLA8or+B4eb1e7TWsl
         XSP6PBOYNe3hC6/xyM+9T4HNfME4PumS0ijr+s/nInewN8YCtn0/+s0MP6YPieQi+piG
         jbZTM3D/jOunmFE5zqfmqo9qDmUegs0/IPaH1a3QBSCtPzuW2fMKNg5ps/uKYmMxIepJ
         Nn3Yqj1rtMRi0KHZJxVZIkbXzV7jiMJwmhezoha77/PTlfrXT4O6SBaTZ4ANT6k+14LD
         zsHB3RkyUxI9bfsKiQg2obfvwpXxn8D1RAfE5kqZZonJ9X3b8FAUpfdhBiPiFd7ZbNT9
         tgyQ==
X-Gm-Message-State: AOAM531c9edP1ayz2jXQJtydpvgwPn/Jk+Pl9u97gyYmwW2Gq3LI1xSY
        4xxyrlOJzLiRxpY3p8KrOc3b7g==
X-Google-Smtp-Source: ABdhPJyfGOcKra/ylSEchuLporqovRSRrQIgsiDTRwFORMSbkkpu92YM/S/k4DpD7qDCmqHN7DeYZw==
X-Received: by 2002:adf:ee4d:: with SMTP id w13mr14080338wro.216.1611232772398;
        Thu, 21 Jan 2021 04:39:32 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id p18sm7979248wmc.31.2021.01.21.04.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 04:39:31 -0800 (PST)
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
Subject: [PATCH v10 01/10] iommu: Fix comment for struct iommu_fwspec
Date:   Thu, 21 Jan 2021 13:36:15 +0100
Message-Id: <20210121123623.2060416-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210121123623.2060416-1-jean-philippe@linaro.org>
References: <20210121123623.2060416-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 986d5ecc5699 ("iommu: Move fwspec->iommu_priv to struct
dev_iommu") removed iommu_priv from fwspec and commit 5702ee24182f
("ACPI/IORT: Check ATS capability in root complex nodes") added @flags.
Update the struct doc.

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/iommu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index b3f0e2018c62..bdf3f34a4457 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -570,7 +570,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * struct iommu_fwspec - per-device IOMMU instance data
  * @ops: ops for this device's IOMMU
  * @iommu_fwnode: firmware handle for this device's IOMMU
- * @iommu_priv: IOMMU driver private data for this device
+ * @flags: IOMMU_FWSPEC_* flags
  * @num_pasid_bits: number of PASID bits supported by this device
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
-- 
2.30.0

