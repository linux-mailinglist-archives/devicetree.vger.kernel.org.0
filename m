Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40305391CEB
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 18:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233822AbhEZQXK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 12:23:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233836AbhEZQXJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 12:23:09 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73540C061756
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:21:37 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id gb17so3362855ejc.8
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AKRl4agdQb3jtkg+VysQNU7Kzn0dH+xQTWOrQHzW2HY=;
        b=x7BoDKcPMf9PizrgqgcjzRKKfGmllOzwKzdaaX3UPgB3QI5dv56ITViep78v3Eh7H+
         eP6MDtp7cQwimaV/W8QYj6NVqqzPFKR0Ar+nzPDUa0vakwUOXLtlT6fHPj3h7BqLSZ0q
         3z6kNH0z4LR/3PfGuSmssDmJDyXq3BbbWyNPWdfGCL8E1ILFMDi8MXv3z+NFgxzgEW0P
         oX48LUzPUxvtkJ2t2nK6iTPjD1V/3h8l82JBh0I4OwefGwWmoneh5SX7nHbLiuiZGiUN
         izK+uNkWcnOXi1pX/KhuGev304wxSaRl9mSyIJrQZr6Ms2fkTKX0Nd96LMrGHrid18X5
         E9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AKRl4agdQb3jtkg+VysQNU7Kzn0dH+xQTWOrQHzW2HY=;
        b=mkoyHb8tGTnpqmmf+sbFbPv39mHNtWd3MZEsQgCm7pokfHcqk9eKRueAX4dhJW/j9r
         TdAWT3BOpBQgtWDJrOgQq+T0BD821mIpuHqiuC0RlVfe0yRN46Iez4vDANertAiithT1
         v7huWmYqPJ0YJFyfJEkBc+GKpOpDrhwBn/QWky9cKXwcWiUAmCtbkUoHAy6PBH8OfWVq
         eP7RVHuNFbxzSReqwKeXyJzeYN01UsxGKMHN3NJsm+JHMVvyvknjtVaZF/ls0mixjzjP
         1lIa1poLGKCtJEFnu+g0/XMnCU2xcbXmeWBc/5sBajY6yPfn9jDv0tBOtgmbM7kpYlX3
         GggQ==
X-Gm-Message-State: AOAM532QpooFJAXshakQ/l5lQ4kdrAoMiGhHd0KNwmx7G56rNYsXABNa
        DR0A4Fqb2jaM7hOTdMSgqbQBWw==
X-Google-Smtp-Source: ABdhPJzziFGCZPNo+X7H2xQvWb9YNPVpQXThfZSV/V0nc1qoc/ySSYykIs+pLOKnLaLnkZzP4z7Nzg==
X-Received: by 2002:a17:907:7654:: with SMTP id kj20mr34813609ejc.439.1622046095954;
        Wed, 26 May 2021 09:21:35 -0700 (PDT)
Received: from localhost.localdomain (adsl-84-226-106-126.adslplus.ch. [84.226.106.126])
        by smtp.gmail.com with ESMTPSA id e6sm10497145ejd.31.2021.05.26.09.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 09:21:35 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org
Cc:     robh+dt@kernel.org, lorenzo.pieralisi@arm.com,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, zhangfei.gao@linaro.org,
        wangzhou1@hisilicon.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v15 2/3] ACPI/IORT: Enable stall support for platform devices
Date:   Wed, 26 May 2021 18:19:27 +0200
Message-Id: <20210526161927.24268-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526161927.24268-1-jean-philippe@linaro.org>
References: <20210526161927.24268-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Copy the "Stall supported" bit, that tells whether a named component
supports stall, into the dma-can-stall device property.

Acked-by: Hanjun Guo <guohanjun@huawei.com>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 3912a1f6058e..0828f70cb782 100644
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
2.31.1

