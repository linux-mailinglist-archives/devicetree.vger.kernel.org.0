Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A6CFF4F82
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2019 16:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726887AbfKHP0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Nov 2019 10:26:54 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:50898 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726743AbfKHP0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Nov 2019 10:26:53 -0500
Received: by mail-wm1-f68.google.com with SMTP id l17so5796615wmh.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2019 07:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+aAa3kHo6X36UARQ/hBD+CYIStSC9Mwak+bAj3lpxxM=;
        b=rk9za0j+DjrBF+nEQLw0UeApqKkWBCvgDbUXpotyR3WcOdSZUdqJemsRAUO0+HTGL1
         GUNs7bt4UgSxiL6f3ok4bdNmEamSc9EHDrNjbCyOo0oxmj2VNzcujqfH6kFCFjfZ1jQt
         hks2xi69COXdeSg2aAH4ow5jW7bVQgVZrQTOC+OPqBNFj6FssCrQTeUkL6YYO5NilsTS
         /qQBGPNk10VAvkFNz87SS5aKQnT2uWXfhGs90RxNw+Ls/MQBN9vtyfWpRtTWyVnn4706
         4oAPI5kC4UaL+xz9ryj+/AzkP48rL4NOmp9fynAASOANWZvjDBAghHTT1yBZyxAtJnha
         iLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+aAa3kHo6X36UARQ/hBD+CYIStSC9Mwak+bAj3lpxxM=;
        b=MkTgKwPMMkVLvA22A5wsUirnoKE312aTA9wcQmjfV7H6YtofkItVa/dStExHg7usWJ
         OaXpJMnUlH3KiI0kGz6QEyOYow7MsUYKpoI4hDgwdSUmzJXaFvWvRljMZOgmvNCXtdEZ
         8Duher+VLXcUlhM4qpO74Fz5lZIYSsnInJ5yh5CNrM+WXQqiI89w0cblwSCBCntzG1d+
         U9XPm11ok2Ym7ovUjKS4kCDZp/enD+6xN1KKS0URl0h9aZB/CRjZumu8xXGs0cbq5ys5
         OvCLu8y8X+q0fGYXrVu6AJF7wGVqkaRxjPne0+kW9IeIrVyFBANcsO/0D7fUl+Mk7sMR
         4xPg==
X-Gm-Message-State: APjAAAUjDa8ADbAmf9W/TEyC14myvuCQ6CGRETaMU169g5TBthwO42nw
        txfV8k6w5+nbhCHJChDepxvdwg==
X-Google-Smtp-Source: APXvYqyP1ODYLZACcAlafYthBHeI8vIQSuj7rdAG2X/KmYtzbQ1YGd6y/fT9+gj0hKuehN6KSufekQ==
X-Received: by 2002:a1c:7d47:: with SMTP id y68mr8658213wmc.157.1573226810884;
        Fri, 08 Nov 2019 07:26:50 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
        by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2019 07:26:50 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com,
        lorenzo.pieralisi@arm.com, guohanjun@huawei.com,
        sudeep.holla@arm.com, rjw@rjwysocki.net, lenb@kernel.org,
        will@kernel.org, robin.murphy@arm.com, zhangfei.gao@linaro.org,
        eric.auger@redhat.com, jonathan.cameron@huawei.com
Subject: [PATCH v2 3/8] ACPI/IORT: Support PASID for platform devices
Date:   Fri,  8 Nov 2019 16:25:03 +0100
Message-Id: <20191108152508.4039168-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Named component nodes in the IORT tables describe the number of
Substream ID bits (aka. PASID) supported by the device. Propagate this
value to the fwspec structure in order to enable PASID for platform
devices.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 5a7551d060f2..9aebb180744f 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -11,6 +11,7 @@
 #define pr_fmt(fmt)	"ACPI: IORT: " fmt
 
 #include <linux/acpi_iort.h>
+#include <linux/bitfield.h>
 #include <linux/iommu.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
@@ -924,6 +925,20 @@ static int iort_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
 	return iort_iommu_xlate(info->dev, parent, streamid);
 }
 
+static void iort_named_component_init(struct device *dev,
+				      struct acpi_iort_node *node)
+{
+	struct acpi_iort_named_component *nc;
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+
+	if (!fwspec)
+		return;
+
+	nc = (struct acpi_iort_named_component *)node->node_data;
+	fwspec->num_pasid_bits = FIELD_GET(ACPI_IORT_NC_PASID_BITS,
+					   nc->node_flags);
+}
+
 /**
  * iort_iommu_configure - Set-up IOMMU configuration for a device.
  *
@@ -978,6 +993,9 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 			if (parent)
 				err = iort_iommu_xlate(dev, parent, streamid);
 		} while (parent && !err);
+
+		if (!err)
+			iort_named_component_init(dev, node);
 	}
 
 	/*
-- 
2.23.0

