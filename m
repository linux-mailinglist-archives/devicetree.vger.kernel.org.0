Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A7AF41EEE5
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 15:49:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231417AbhJANvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 09:51:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231186AbhJANvl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 09:51:41 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2F0DC061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 06:49:56 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l18-20020a05600c4f1200b002f8cf606262so11303477wmq.1
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 06:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WcobWQEpWw130naSD1qRlgqF9tLl50nKK3Jb8AKHqY0=;
        b=drKM7fR+bkOqM1CnvRn3B7zQHy2cElx4kLBMtgyBvwUjg6tbdbgQfLdHUMLDvui/UR
         mqY8QRxauUHd+LxbNpoZsMq31xzVoS97UIbs9279YQeXjPayhm8lNJJLp0vJGdFMSSXw
         DzUczyq0swBzmOE+vBWtIfkLhSSxBKEDkKjQEVk9R+Dfb3nuJ9znOJ2chsaJF2Hphgrb
         FatNVY6nkmiWeKGai4Od/Zdd4CEFDazcaWQA/ShiUxjwS1RRBQfzZ2wLp6acsX+QqnpG
         Ht3lU5hbW6GPFCbzHRvFF77PdjumyCGMUXvfy4T5sh/+2J49vBklzLF3z/v4EIM4U3Co
         XqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WcobWQEpWw130naSD1qRlgqF9tLl50nKK3Jb8AKHqY0=;
        b=50GKd1yc4rrF/r2+uWadidoY+4BfklveVzks7gNy5+ePr4fhRfTCpRss0KYkO76u1X
         b/Z1Eo7yDKrlSRovKWChYs2AalI5aCoVzKJHbRqNse26yDQpuNyRZ0RNT0jYejIb4+kV
         ADeoTd9FCUBQ2/0/Q9FqLVNvpSgu6JjYfxeMaUlhe838paxcB/7LIfCqAj+wpd8Evqt5
         FEX1qKIoNADItH0raB19eVoHdvcAXgYjyziR+TYaRZV1+ZsRFnTxJRVYSG3ibtoz3C6X
         alZdx654nFgKOZ9fZWmlSAaLPVCtpYy//f31TYPCmOzNwwhKuIPQRJHLYIGif9I3SeD5
         adkg==
X-Gm-Message-State: AOAM533SqXMNu8DN03xFRwMR/Wy4jSJLyfIKBqS6iD0f9nZXAEszIzrl
        VSblrium4bpnkFWArg4g041DaQ==
X-Google-Smtp-Source: ABdhPJx5H32EiW6wymhJBhzRrbFyAIP2CyBgLVm92yZyD3woYizkxL86BsGpqCkq13ic2tRj2yYhEw==
X-Received: by 2002:a1c:457:: with SMTP id 84mr1087408wme.161.1633096195384;
        Fri, 01 Oct 2021 06:49:55 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:82c:5f0:426:4b95:c465:7a47])
        by smtp.gmail.com with ESMTPSA id l11sm7471658wms.45.2021.10.01.06.49.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Oct 2021 06:49:55 -0700 (PDT)
From:   Loic Poulain <loic.poulain@linaro.org>
To:     will@kernel.org, robh+dt@kernel.org, joro@8bytes.org
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, bjorn.andersson@linaro.org,
        robin.murphy@arm.com, Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH 2/2] dt-bindings: arm-smmu: Add qcm2290 compatible strings
Date:   Fri,  1 Oct 2021 16:00:32 +0200
Message-Id: <1633096832-7762-2-git-send-email-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1633096832-7762-1-git-send-email-loic.poulain@linaro.org>
References: <1633096832-7762-1-git-send-email-loic.poulain@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible strings for qcm2290 iommu to documentation.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 03f2b2d..e66f20d 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -40,6 +40,7 @@ properties:
               - qcom,sm8150-smmu-500
               - qcom,sm8250-smmu-500
               - qcom,sm8350-smmu-500
+              - qcom,qcm2290-smmu-500
           - const: arm,mmu-500
       - description: Qcom Adreno GPUs implementing "arm,smmu-v2"
         items:
-- 
2.7.4

