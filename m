Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B468C306028
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 16:49:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236678AbhA0PsT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 10:48:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236550AbhA0PrK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 10:47:10 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A92C0612F2
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 07:44:46 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id u14so1906856wml.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 07:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=P/EAy3wFo2SkAvzlEqANsfgzLeO0MB9eAURTmLNsvNA=;
        b=mb07EcDaQibTEwHyo1+my09q6bkkLrDK+31eVBj3xeA3p0boN8Cnn6DHCFEjErg6ay
         1qVr03v/rFH29yu2BvCS2DbIo97LHYGyuv88KKQNM2MTQ2+U4Bl3vu4LuBfUSrrG7uak
         6aDNhLCw2Q8ymqA8LvqcjEjg/PNki0B2ltIM9AHHsXFIhulJH5o+h060GC3ZenURtkBN
         8ysP23TmFVJIj6bNYAQip6zL0bPvbTVeQPIGR30xGFngU0oajhJjG2BRFpYrUvvg5WBo
         NmGSP9P24o0UZJ3BVjroLLiiBev9KxkbokaPnFyaRq/BegljrmRMi+x5tle1qwRvtGKF
         m2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=P/EAy3wFo2SkAvzlEqANsfgzLeO0MB9eAURTmLNsvNA=;
        b=UNHM/reRpnhdvDJ3Av/fnNojgw31+UkQXGBPTk86FqrfOQyWz0G4mhZGoPnsQ//IGO
         tnd8ijnbKfi36MJ4cw9mSLDSuu3aDCuT00kc9KsCwWNTjgM10rkV+NQ47Bph2SCcsRQ4
         dQG62uiLzO7droRrGes1DCT9xlGqUZ+T9bwRV91yXDmt1SkhyMGZo/zE/jDrVFLeYAbz
         g1lgoZF/utd1MvcVPVY+PuP/7se0wzdLOjOV6S2XITCJ3vfK5vQyYfieCsVjnE+b5fVi
         /HvH8UslU/fEFsg8aZ5vMb7GN8fODbsuIWKa5POB7q1yhFpXNdmV1UgKxZnQXf+U1gk7
         TD3A==
X-Gm-Message-State: AOAM5311fohmbrefJXjDFLNRGIVsGF81/yHHBBMeS+Xgw+z21Lv5F0kb
        UyOm8k5R+aHXOSI7NM99Xgv5/Q==
X-Google-Smtp-Source: ABdhPJxDNGjMbngdefhVghUfb0JN88zaAJwQb8TwLjwsDCOpCI43m4o3Qu457Rvsh0CFa6Zcy7TnHA==
X-Received: by 2002:a1c:e407:: with SMTP id b7mr4745128wmh.46.1611762285528;
        Wed, 27 Jan 2021 07:44:45 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id r13sm3046921wmh.9.2021.01.27.07.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 07:44:44 -0800 (PST)
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
Subject: [PATCH v12 09/10] ACPI/IORT: Enable stall support for platform devices
Date:   Wed, 27 Jan 2021 16:43:22 +0100
Message-Id: <20210127154322.3959196-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210127154322.3959196-1-jean-philippe@linaro.org>
References: <20210127154322.3959196-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Copy the "Stall supported" bit, that tells whether a named component
supports stall, into the dma-can-stall device property.

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index c9a8bbb74b09..42820d7eb869 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -968,13 +968,15 @@ static int iort_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
 static void iort_named_component_init(struct device *dev,
 				      struct acpi_iort_node *node)
 {
-	struct property_entry props[2] = {};
+	struct property_entry props[3] = {};
 	struct acpi_iort_named_component *nc;
 
 	nc = (struct acpi_iort_named_component *)node->node_data;
 	props[0] = PROPERTY_ENTRY_U32("pasid-num-bits",
 				      FIELD_GET(ACPI_IORT_NC_PASID_BITS,
 						nc->node_flags));
+	if (nc->node_flags & ACPI_IORT_NC_STALL_SUPPORTED)
+		props[1] = PROPERTY_ENTRY_BOOL("dma-can-stall");
 
 	if (device_add_properties(dev, props))
 		dev_warn(dev, "Could not add device properties\n");
-- 
2.30.0

