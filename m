Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3292E3AEAA2
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 15:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229790AbhFUOBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 10:01:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbhFUOBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 10:01:00 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A450C061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 06:58:45 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id j1so2578243wrn.9
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 06:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+p+TgaX+cjsRrYhlo9eaS/AjH4uGF+T77t1kVIwioV4=;
        b=roxCxTrOd1dMyX2YglDM1HLLJlkqVEAsORboDhYP7ZG2hVfdrF4hXki5Z6POpADPBj
         JzWPF4yJfiRN/M+mD1QGQDd1KBwrtn/Me6Wc4mVoXfWabSKnKN7aerPqgjA9dlck2ncz
         EQ+KN7fETCutCbEIqD94mXexNyZYZPDh/1XIHYBSa/46v3JdQF7A+Lx9E8vVF2Gnj+NC
         yFglcytXNA3dKUYeeYqO6hsYShyRAa8NT9XTUVYRKgUTuPD21Wr6kGdPsfMpJE0Z1Hbs
         5jcnRkxSl6iyCd7iO+n2d5poim23DBmiqhCjXtHM1mhK67zBFnsKXdjDT/vSRro2iZAD
         gbQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+p+TgaX+cjsRrYhlo9eaS/AjH4uGF+T77t1kVIwioV4=;
        b=if7dmBcUXg9n2TES6q31uDA3XybQ1XeG6JYepHb8BzmS3fUrsWnlFORexTMZBm+eED
         1QWzF0LOxzXQnJwJkNq8BoON2U7eh1D7cxlJyP7OHgqb98wZAhUNathiEXAlhyYzJvQi
         /RhWxBeu9ITrj/PakdutJr9cxpmZ7X8ivtpxIwbb7WHjoQTJMnFAHnIoBoLCv62AN1g3
         6C5EiRnoaJCrp4T5rnjOimfZfIEqcOpCX1Y7V98loBcEccebYzSXgOE+BnE8pIBFLTNT
         ad0z0tV/g7DKZUz6VW2A43Ur8sigxbHCxQeC+EzFjNTwb/w6L/5NAkGKCniTBnFPIreH
         68LQ==
X-Gm-Message-State: AOAM533LyFqZa4oPJWJHi+K6Tkoq16erINYu4OMritAbjEge/q40+VmP
        6LyrjaK+ZD6x8f0RiqLDUCQ=
X-Google-Smtp-Source: ABdhPJzwO7wl+RPE7Nx+g9DxMIPsQupg3909rly3rdMjuD1D6FHkghJiDZYzX5lLka8Wa0nqYY5Y6g==
X-Received: by 2002:a5d:5402:: with SMTP id g2mr27795226wrv.226.1624283924261;
        Mon, 21 Jun 2021 06:58:44 -0700 (PDT)
Received: from localhost ([62.96.65.119])
        by smtp.gmail.com with ESMTPSA id c13sm18261292wrb.5.2021.06.21.06.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 06:58:43 -0700 (PDT)
From:   Thierry Reding <thierry.reding@gmail.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, Rob Herring <robh@kernel.org>
Subject: [PATCH] dt-bindings: arm-smmu: Fix json-schema syntax
Date:   Mon, 21 Jun 2021 16:00:36 +0200
Message-Id: <20210621140036.2879563-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thierry Reding <treding@nvidia.com>

Commit 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible
string") introduced a jsonschema syntax error as a result of a rebase
gone wrong. Fix it.

Fixes: 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible string")
Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 1181b590db71..03f2b2d4db30 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -52,16 +52,14 @@ properties:
         items:
           - const: marvell,ap806-smmu-500
           - const: arm,mmu-500
-      - description: NVIDIA SoCs that program two ARM MMU-500s identically
-        items:
       - description: NVIDIA SoCs that require memory controller interaction
           and may program multiple ARM MMU-500s identically with the memory
           controller interleaving translations between multiple instances
           for improved performance.
         items:
           - enum:
-              - const: nvidia,tegra194-smmu
-              - const: nvidia,tegra186-smmu
+              - nvidia,tegra194-smmu
+              - nvidia,tegra186-smmu
           - const: nvidia,smmu-500
       - items:
           - const: arm,mmu-500
-- 
2.32.0

