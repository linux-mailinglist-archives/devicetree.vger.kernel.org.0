Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56A0F3517BE
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 19:47:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234522AbhDARmm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 13:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234395AbhDARhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 13:37:05 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF061C02D55F
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:48:22 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id z2so2295805wrl.5
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 08:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qpxpWMnrPJKc07Z7A57L4cT+PGNv1GXXzLI4P6Yd1EE=;
        b=jFGB9GSoGXYX3K+nuYC/3qk1ccHgek4JlpJBTapcg1kGDi0EdR05JaD/W+kS5Ry4r/
         9jACVmw8RpTQJ6aOuJgcb6f+gsjrqmWJus8aUSvQ+3uHqKAmIezP63nLwJXSJphZ76J4
         PwfJzOX9u5yhYHyn3trzzAPq2lI9dQCuJfTjmP+h+DmS1Ij9KW7MP8j+A5EckrmP6ymW
         YLSf8FR6eUJaHuhk19X4uDd50R2umQSPSWMTVVCqs4CNs5DLQYoQ/VwCDQlAYkUSjA1E
         OoCkNJREzAOO7+BOlLztBFnSlSDBqlYwLDudahJeNKDwIFxCDvl72kvfg2Q+AXBGz/pP
         kMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qpxpWMnrPJKc07Z7A57L4cT+PGNv1GXXzLI4P6Yd1EE=;
        b=GWEmwcz8YoRvKQHPcWOoEaVTOk4pyS22dMgoj1Ql6m92bFZs5JNJWM40nzV8MoqDHR
         7gYqR8venwtE3mixbuMdbc9CrTjJgaLo+1v1IN2w0EEsoLyI3XCJQulMdcTTCLPwDGxX
         QPBtX55Jetmw8AzEKnKSMIIdr81wF6/P5bn0j1HNXhZoQZya3g1C3h5gOqApywwIiVrR
         5fT89Fh6zEkd9KfiHjjB+SiV0qT16cEBVIUUZ2LRYMCOzg3LDIf304qOsZIi8ebURehN
         4kkVpK5TGZiVipZNZ5lexioszI4IRj/HHwL1aEF4LA2QdnVU3uHplL5oPfgCBT9WhR6Q
         ZSew==
X-Gm-Message-State: AOAM533Ovkoo+NduapiiuZ/fk1hbDKXwn36mxjiqy6LmMjOpfODySm0t
        UlPS7/SOSGszFs5o9QcVIbTMpw==
X-Google-Smtp-Source: ABdhPJz+lVV+B3QqYA925zNmgNgDtjaPx5BumLqk3WkRdxQ7T/gWYzEU6np11tFENpxunZ9tvcBFyg==
X-Received: by 2002:adf:fb0e:: with SMTP id c14mr10678009wrr.140.1617292101697;
        Thu, 01 Apr 2021 08:48:21 -0700 (PDT)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id y8sm8722505wmi.46.2021.04.01.08.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:48:21 -0700 (PDT)
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
Subject: [PATCH v14 08/10] dt-bindings: document stall property for IOMMU masters
Date:   Thu,  1 Apr 2021 17:47:17 +0200
Message-Id: <20210401154718.307519-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401154718.307519-1-jean-philippe@linaro.org>
References: <20210401154718.307519-1-jean-philippe@linaro.org>
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
2.31.1

