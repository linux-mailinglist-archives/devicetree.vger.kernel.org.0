Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CE466D0661
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 15:19:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230222AbjC3NTw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 09:19:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231777AbjC3NTq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 09:19:46 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C4A0A24B
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:19:33 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id fy10-20020a17090b020a00b0023b4bcf0727so19577245pjb.0
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680182372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S6l/tdN4cMocc6YNsFbnVaBOI5uqYV8apPR4ELkkR1Q=;
        b=pPb+W1QgZUk+g/DFt0UfL4wvFYJaRRtQKymjwO8tr2syCrw2bxdSdsGsBmOTjBJJOU
         GRkmAqZZoHB6hOnkhqHnThpioBHtq3jivXAPFWke4uyOwhdORNZqKIRxvMGCS19DhfLI
         ggM0uxvrKrxdJXxG2mJiCNE9dRLCUBp2M7iFs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680182372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S6l/tdN4cMocc6YNsFbnVaBOI5uqYV8apPR4ELkkR1Q=;
        b=PL1VvE08Mz+c5uYpG3dATzFWUnjZ+eMEa1VV1Ioth7HYu6k+6P6hFUoweRL18ZQCEO
         XVT1c6RoEWT8X8ckTpFPHIFYx/PFk22+QG6xt7PRCIp+XyfBTtTLh7553H1hxP8wBIPm
         xAGlaUNUddX1pTSyU24Lo6di334pw4oJra9dgVmtX+MKeOBd4vws9hoYXFTpmM+qt260
         iuzFZOEgOTuQUwoXCwN9nAKifzBj9ZkwrPWhi18eiS9qMBd8DQeTdzSDjam+uYR3fEpc
         DUTZQ+C4tI+D76ierDbE+MrbWizcXiuR4XspgSqUOBBfR1H9bMOWxiGyB3cRo+7nU3MZ
         SVKQ==
X-Gm-Message-State: AO0yUKWkrDbv4y4xlCGVGeLWB9MeD004Sx8Ri7uF0VY0TmZUxzujsjdA
        df7lwFQNpDc+mZk8duNGmZ2F4TD7qfgUCw+MtZLhIw==
X-Google-Smtp-Source: AK7set+nB3B4s6QuXUMw7fa8+aYurUZsFGiWJkTcqxFTLaUpIGoGauwzQvHyFwb4bsvlmviF5TolgQ==
X-Received: by 2002:a05:6a20:ce22:b0:d9:8b07:eb0a with SMTP id ic34-20020a056a20ce2200b000d98b07eb0amr22599282pzb.24.1680182372424;
        Thu, 30 Mar 2023 06:19:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:8bc3:c2fc:8dab:d912])
        by smtp.gmail.com with ESMTPSA id e15-20020a62aa0f000000b006259e883ee9sm22473622pff.189.2023.03.30.06.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 06:19:31 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     iommu@lists.linux.dev, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] dt-bindings: iommu: rockchip: Add rockchip,disable-device-link-resume
Date:   Thu, 30 Mar 2023 18:47:44 +0530
Message-Id: <20230330131746.1475514-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rockchip iommu is trying to enable the associated device at runtime
resume however some devices might enable the iommu during their pm
runtime resume operation which indeed leads iommu to use the wrong
domain and this leads to device iommu page fault.

Add rockchip,disable-device-link-resume flag and give an option for
those devices to disable the device link during Rockchip iommu pm
runtime operation.

This makes the device enablement for that iommu domain ignored during
the rk_iommu_resume call as it assumes it handled iommu device
attachment in the associated device itself.

Document rockchip,disable-device-link-resume flag.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../devicetree/bindings/iommu/rockchip,iommu.yaml        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index ba9124f721f1..ac8b03806cb3 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -58,6 +58,15 @@ properties:
       Some mmu instances may produce unexpected results
       when the reset operation is used.
 
+  rockchip,disable-device-link-resume:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      Do not link the device during runtime resume operation.
+      Some devices might enable the iommu during their pm runtime
+      resume operation, so disable the device link for those devices
+      otherwise iommu use the wrong domain and that leads to device
+      iommu page fault.
+
 required:
   - compatible
   - reg
-- 
2.25.1

