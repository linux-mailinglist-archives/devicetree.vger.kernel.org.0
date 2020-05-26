Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D9C01D9E9C
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2020 20:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729322AbgESSCI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 14:02:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729276AbgESSCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 14:02:07 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F887C08C5C0
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 11:02:06 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id h17so389310wrc.8
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 11:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dZJbr50yu+A1rXxxZjmC6b+njrvRrh11YfdOdR6ZavM=;
        b=vNeBBYBtO1MlCmDZi2omuq7p6WTCEFIBil9Pkec1SF9TMZYl+5lkItE0NF2u/qYIuQ
         lmiLB2BA7h9SazxYMZa9UBVoHEOQr4wCAHMfevxQ9L1X/+IrzF+9AJDv4i0tTWPDAPTj
         R24F/zikAzERUXO99pzh2SbcaRuLVAJVylsiMvyzYXlDXzVD7qdGPxLdrArZ2a9Fa0DD
         tJ4iYGE24E6fSgpJoDafwrRiS6x7MHRLQZhCqeikxTta1o4hPuWTzr3g6mQNeLPJGu1P
         XJaUy1uTviXVQiXLA23Ad5Y8iT2b7HJYh1gU9tQqZgCnMpA2o1xg9WrZMzpMIeAczTQ/
         oNlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dZJbr50yu+A1rXxxZjmC6b+njrvRrh11YfdOdR6ZavM=;
        b=dNKYLSOYw5vCLp5AcyAlwJjfaGiwc243EKrHBdfv9J0DPsbL8fIymhc7QmUPcM4qSI
         DRV51dsoIXmBEKXOYhLvmhJzwrWuIqCgJ29aWESQP1mlILom57C2QOd3ggKx0EcyF2lF
         fAFT6uDjJ/RyPX8JhevYR0MumjDFGwBiXtYAj0TM+6ockGAAgPYFYgE1d/AF6Z3rNR4X
         r6IFbrPLoXXXOHNdDYG72Imt7C4g28NhscLk065r87+XI5pchDpoBaVQidTrYXzkkeX5
         pgQEi2rD8Rn73a+/bdq40tgbTnglz5gBPdm0JxGpNL7U1FyRmFIN+C7XVGtHA6gSqTR+
         k8Pg==
X-Gm-Message-State: AOAM531otgV9/ug640VpthYMo5lliFFblSW3xmwhkGRDY3bFxpyDGriZ
        zsG8z/TwkKIm14hUKVQQqEFGrw==
X-Google-Smtp-Source: ABdhPJwT8Eq7gpqVQWpnFuRyfkFTyMRHoxv//ACSK89NpoGnC1siz7BSfxh+oXZVDA+VgnaA+xgUGA==
X-Received: by 2002:a5d:6108:: with SMTP id v8mr109324wrt.286.1589911325064;
        Tue, 19 May 2020 11:02:05 -0700 (PDT)
Received: from localhost.localdomain ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 11:02:04 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org
Cc:     joro@8bytes.org, catalin.marinas@arm.com, will@kernel.org,
        robin.murphy@arm.com, kevin.tian@intel.com,
        baolu.lu@linux.intel.com, Jonathan.Cameron@huawei.com,
        jacob.jun.pan@linux.intel.com, christian.koenig@amd.com,
        felix.kuehling@amd.com, zhangfei.gao@linaro.org, jgg@ziepe.ca,
        xuzaibo@huawei.com, fenghua.yu@intel.com, hch@infradead.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v7 20/24] dt-bindings: document stall property for IOMMU masters
Date:   Tue, 19 May 2020 19:54:58 +0200
Message-Id: <20200519175502.2504091-21-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
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
2.26.2

