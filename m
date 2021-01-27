Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0010E30601D
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 16:48:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234675AbhA0Pr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 10:47:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236392AbhA0PqO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 10:46:14 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BE25C061354
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 07:44:45 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id y187so2073694wmd.3
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 07:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Iza7ai+1pJVkOiREPpK3tUFt/+4KEOcT4kmdIoRu1W4=;
        b=rbK1aLxadekkDLedlYkhXNNhT2RXl9ArKYIMq5P+xZUhGoeMuNK3hNiCz/AdZv7dFV
         OSkzpHq8cAXoa/SXmQczZVVsMDUa3zgVBPkpfFJsnMVHytFJ4lPtF7iVgQDdouVwknB6
         PKAJ3I0JTJnun9bq1lGNt8cZHMDadB4iIeVL949UJaWXlk8wdS6to9Ss+zGxoSi5GdbL
         rQVmX44XNm3Yoa6Lp0sLLAnANdFnGsOPlibkhusNtF+Vv0m8ZbNcxG4L4D1R1D/UxyLB
         XIv8tC7yp0wBkuUigCeJ+XCpBK2QPUanxRD8fKUUvRyaioR65KVTDBWpW69znMpePx9P
         xlLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Iza7ai+1pJVkOiREPpK3tUFt/+4KEOcT4kmdIoRu1W4=;
        b=Sbsnpo7VK0A2nWlxLHWMTnNcTgJDCL2He8NPSt70OjgFT+uinTFq/cdXiORG/GTzsH
         qanBEt39eT9nEYgb5q4IBlwliKqf2BlMsRrQR1jWXpANhTPO9dILBQjO4vM3IHole98A
         ckaVcxyIQhmRY9cHPPmBzqrAZlJ/kyDEkovkG8pkJ5FA6aqsJfUk1kStck2w9RuJohL7
         50sLlfq1AEsTXWw1PMI7QyYpZweO7kVT2JbWiECKKFM7GdQxf0CbZbBUvVXkSxrGwx8v
         tlVRcn24cKhHjhW6adal2LBY8gI/69/Lznh7YiP04gUAKIBE3NhV4OKkMXUJWsgoc4I8
         8A+A==
X-Gm-Message-State: AOAM533aD19X529C/9fUrU2XGe785ds36nz6ULCKCkv8F7XPo/Vs4PaY
        DQR1eu95a1hVz2P9oybPJUCHp5ae01+HzA==
X-Google-Smtp-Source: ABdhPJxueLPbEIo5H0DTOaZMTDZgKa24SKwcOb0gi9WAMioQDQ/yigHLDYzBi1GocdkersH1im+GCg==
X-Received: by 2002:a1c:2c0b:: with SMTP id s11mr4542706wms.13.1611762284206;
        Wed, 27 Jan 2021 07:44:44 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id r13sm3046921wmh.9.2021.01.27.07.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 07:44:43 -0800 (PST)
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
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v12 08/10] dt-bindings: document stall property for IOMMU masters
Date:   Wed, 27 Jan 2021 16:43:21 +0100
Message-Id: <20210127154322.3959196-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210127154322.3959196-1-jean-philippe@linaro.org>
References: <20210127154322.3959196-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On ARM systems, some platform devices behind an IOMMU may support stall,
which is the ability to recover from page faults. Let the firmware tell us
when a device supports stall.

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
2.30.0

