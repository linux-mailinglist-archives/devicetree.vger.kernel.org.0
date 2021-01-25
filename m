Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C86CE3032E4
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:40:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727002AbhAZEjp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:39:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728319AbhAYMt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 07:49:58 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42273C061356
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 03:08:54 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id b5so11864894wrr.10
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 03:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=P/EAy3wFo2SkAvzlEqANsfgzLeO0MB9eAURTmLNsvNA=;
        b=hn7k9YBrpbYNaKrAacJHgdQijWZghUPi3Iv6zU06UxFqaoM6CS1UbqtknoP0o2EYtg
         B4SlQ+8/0UDOp6kFcPYo7zeG7dDFCiQ42Bf8cd62mIK1oyjO5yqUyY5/Z9NO1CCEjIqF
         /AlTjnPryDQ833VP2jsLn7eScdSvT5H1N/afnru2UDmPA/nsLXS7u3+txOfIzwwlT2ED
         ixEkaN2yIDalNKbCKVn5d/Ji12naseZlZUxo+FJcEb0k1M0QCSwvdalS8aIAj+bOeTx2
         Bh2aW/dDFeqvnxAjNunComt/RSTHyfjg+DFVN85ttExE9Q2MlJKK4QEsbi23b+YkcRQH
         lsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=P/EAy3wFo2SkAvzlEqANsfgzLeO0MB9eAURTmLNsvNA=;
        b=D8dSU41pXH3hwVzJlz2eszSQDGzfIcIcXy9AHQaUeaZdk9lQsDrTdbOT0Kx0aMy4aE
         KIqoKpheB4/TdzxyORW+Sg8tTRKd7GfLkfKmArqghSJbKx/rVrBBwwJZIrZAE6pVxPEN
         o9nSotRx4Ms89juzJLS+DaS/F8qE+VhqPU18/Ar+zKij22mYcT3RVJ1at7JFxpbVWDG6
         K1wDHPJ8wbxr/SWdgEFbCPU0sFQXvJGxMpvpLvF1YvtfV81GTdP8MjYqj5XjUXQNa0bZ
         +Lua4wJMHpEUYozTp3HnTW+6cUU0SOt+4c2nuSv7HDSdwY7GzGYysGQYq313p0vyRbtB
         kXhg==
X-Gm-Message-State: AOAM532PeTwCWHYhlDzzPlLse6iZqxiVT0W60oC0G+Xz3a2VDWaxHVmN
        gFWtD8590N8HrQiwtkd2nFI7dg==
X-Google-Smtp-Source: ABdhPJyVElzzeAd4ZjJ6V4zQww4oY0c7GjWrC1TgJ7Hk43RJ5Qo9N0m7RbOAKVLJRgo9wI5qazqv3w==
X-Received: by 2002:adf:eed0:: with SMTP id a16mr293691wrp.107.1611572932965;
        Mon, 25 Jan 2021 03:08:52 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id u6sm16636014wro.75.2021.01.25.03.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 03:08:52 -0800 (PST)
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
Subject: [PATCH v11 09/10] ACPI/IORT: Enable stall support for platform devices
Date:   Mon, 25 Jan 2021 12:06:50 +0100
Message-Id: <20210125110650.3232195-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210125110650.3232195-1-jean-philippe@linaro.org>
References: <20210125110650.3232195-1-jean-philippe@linaro.org>
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

