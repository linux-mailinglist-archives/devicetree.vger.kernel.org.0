Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC6AF32AAEE
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:04:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1577512AbhCBUBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:01:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379065AbhCBJjH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 04:39:07 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 666B1C061224
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 01:35:40 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id n22so1633325wmc.2
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 01:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Pu6R7mxpT/d03S11wEchY1gMtD/oeS7GHk/CBhJ7EpE=;
        b=YbLVZfDwQ9GXIPCbEkUwwkRMvR9HrAsO5n0LI/djTCnV4nzBzSVle5iAGKlXTtMtiw
         eJHkGdaffqr6fcdMWyE/3WX0bGnq5e4HMkSM+Arqh0al6DVOIOumkUXDUrFHxWMmTAIU
         yTHkxAFLPIlogxWh2jIeXKWWwQMNznjxHFkXDciz8uSvSbZrFZ5654/tP4Y9w+csyJ3K
         8zCuF50cetppan8iAK3X2gRwZu5Sim69K/o5vW7IM0u7Dsl3REevyhsWAtRcmw4PNdUs
         DZmz3vyX8O3JZ05RG3gzWa6Bu0ZHEW+0oNIXUyxi+Is1EL3zHBEwwvKxZRQFSL8503PP
         yKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Pu6R7mxpT/d03S11wEchY1gMtD/oeS7GHk/CBhJ7EpE=;
        b=U9EppX/FsQ9tJ13xETYcdCUdULcsBMAomAzBO3DWFGpeS051pfH+pqsJclpi/hPIEp
         PckMl9A+46zhjU6YAPSgxPbt0VDMn5GAhcmb8SGawwy2sQHORo8os57Pwota0HZ7W/96
         EPZvTSfKWinxB/fa8KxkUkd6pq7dt7TDs0rK58Z8c+Zbtdto1zGix9fXq2JTp+ufaKuQ
         PnJ6u2IF7CR/80sItGmHrnCuSpcVJNNsJaot7CcbMdvUWWoKuVoWtm+By+o7QGngyU5m
         hOJP4uu7qDn0feqhM25eqWTIgNeZXTvL+jyX5XBoaCpT7cXx7ydckpQeBHebnXzxyryR
         8+YQ==
X-Gm-Message-State: AOAM530i2Sy6p+y+8U3ASdxg3CGDV/leIQdUyjynF9H5yVMWfbL+v6Wi
        g7bFZyt/kobey/qljjbSbUe/bw==
X-Google-Smtp-Source: ABdhPJzvB901sQ6CVC/aE5VynwlXzB5fbWdQphQ817qOPVn07dFbENigZBrBQ39ius3dHHfobkewXg==
X-Received: by 2002:a05:600c:350c:: with SMTP id h12mr2990865wmq.39.1614677739171;
        Tue, 02 Mar 2021 01:35:39 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id w131sm1963818wmb.8.2021.03.02.01.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 01:35:38 -0800 (PST)
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
        zhukeqian1@huawei.com, wangzhou1@hisilicon.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v13 08/10] dt-bindings: document stall property for IOMMU masters
Date:   Tue,  2 Mar 2021 10:26:44 +0100
Message-Id: <20210302092644.2553014-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302092644.2553014-1-jean-philippe@linaro.org>
References: <20210302092644.2553014-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On ARM systems, some platform devices behind an IOMMU may support stall,
which is the ability to recover from page faults. Let the firmware tell us
when a device supports stall.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/iommu/iommu.txt        | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/iommu.txt b/Documentation/devicetree/bindings/iommu/iommu.txt
index 3c36334e4f94..26ba9e530f13 100644
--- a/Documentation/devicetree/bindings/iommu/iommu.txt
+++ b/Documentation/devicetree/bindings/iommu/iommu.txt
@@ -92,6 +92,24 @@ Optional properties:
   tagging DMA transactions with an address space identifier. By default,
   this is 0, which means that the device only has one address space.
 
+- dma-can-stall: When present, the master can wait for a transaction to
+  complete for an indefinite amount of time. Upon translation fault some
+  IOMMUs, instead of aborting the translation immediately, may first
+  notify the driver and keep the transaction in flight. This allows the OS
+  to inspect the fault and, for example, make physical pages resident
+  before updating the mappings and completing the transaction. Such IOMMU
+  accepts a limited number of simultaneous stalled transactions before
+  having to either put back-pressure on the master, or abort new faulting
+  transactions.
+
+  Firmware has to opt-in stalling, because most buses and masters don't
+  support it. In particular it isn't compatible with PCI, where
+  transactions have to complete before a time limit. More generally it
+  won't work in systems and masters that haven't been designed for
+  stalling. For example the OS, in order to handle a stalled transaction,
+  may attempt to retrieve pages from secondary storage in a stalled
+  domain, leading to a deadlock.
+
 
 Notes:
 ======
-- 
2.30.1

