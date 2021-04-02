Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92856352C11
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 18:09:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234976AbhDBPB6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Apr 2021 11:01:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234857AbhDBPB5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Apr 2021 11:01:57 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB3A9C06178A
        for <devicetree@vger.kernel.org>; Fri,  2 Apr 2021 08:01:54 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id a22-20020a17090aa516b02900c1215e9b33so4709684pjq.5
        for <devicetree@vger.kernel.org>; Fri, 02 Apr 2021 08:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I0ki0lC8MA7ZU5srSBRCAeZerDP7DRSW7mDv/jEyzhw=;
        b=Ci8D2AZt97zfkPOnjeTjLmWKK3FPXfgKRs0RwYNoxUSajta/NJhKWe7Ns+zEC48euD
         JH+MOnJJ1OeLDSpBTV+kPLNd8ENZgIOFhNtLMoykTNEv2l8JLxgufZCgm7nRYDw/+Q6R
         MoA9IQGpMwqEXkbbnJZQtZeUxPYkyLUHbFLH3Nw0D5eIno7GJhRRsbdFG9eXg4e5f6b/
         hhq74R8qnEpbynsn5sdXPBVTL7thcMyJd0hoHyRQUp4cXyDWx7dJ9H02oE5G+POeHfqa
         3mFb1QlQRF4RcrpgOUM5jGWyjEPO1M/7hOLH9vAqCO+hoMysKUb0CX8UnEdGlpr1RBgM
         CNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I0ki0lC8MA7ZU5srSBRCAeZerDP7DRSW7mDv/jEyzhw=;
        b=EsGKgeyMOE/RKUYzR9LyPTyzAjA1dKOI5DJbmiRr4S2nQsMjJfg8dIhqjA9p5kJ6gj
         8HKyJclUECy6pVH8F1opdUuF45LJQ0VPGb44lgNk3WlZXnlPJzoSkIyQB9DtzvVRYL+F
         MjarUPFvkZkmsTKvotX3kCzvmfz9IwYAYgPv8lCypXr7kRS7nv1MRt5aNBgTaYYnZqTu
         xKHVjtuT7dpLUiuqcNOw1tSm9KTTbSIteOQG2rLwAhTGQc8uRBcMB5LUxr+/7YGBzpd0
         bVP1/II0gsEClhdrSWmpAZQ4FsT4cdtKWUMq94DkrieA0Z+rWB3reEWMtR3U5z5eD6le
         DTIA==
X-Gm-Message-State: AOAM532vIDuGquftfu4kLYeSu72L2uK67TZBghdebtU964/Q81SfkUbG
        5J7Aftlr5qCnpe8lJAHH/E7z
X-Google-Smtp-Source: ABdhPJxYc8g1lG1UE/hCJUsbIYG48bPhURHEr7CPoRVJ52J7UlXJVrc71N7uNBiPeNTi7wq3vV2fXA==
X-Received: by 2002:a17:902:ea0e:b029:e4:81d4:ddae with SMTP id s14-20020a170902ea0eb02900e481d4ddaemr13231221plg.12.1617375714447;
        Fri, 02 Apr 2021 08:01:54 -0700 (PDT)
Received: from localhost.localdomain ([103.77.37.174])
        by smtp.gmail.com with ESMTPSA id x7sm8773647pff.12.2021.04.02.08.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Apr 2021 08:01:54 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v11 2/4] dt-bindings: mtd: Add a property to declare secure regions in NAND chips
Date:   Fri,  2 Apr 2021 20:31:26 +0530
Message-Id: <20210402150128.29128-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210402150128.29128-1-manivannan.sadhasivam@linaro.org>
References: <20210402150128.29128-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On a typical end product, a vendor may choose to secure some regions in
the NAND memory which are supposed to stay intact between FW upgrades.
The access to those regions will be blocked by a secure element like
Trustzone. So the normal world software like Linux kernel should not
touch these regions (including reading).

So let's add a property for declaring such secure regions so that the
drivers can skip touching them.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/mtd/nand-controller.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index d0e422f4b3e0..678b39952502 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -143,6 +143,13 @@ patternProperties:
           Ready/Busy pins. Active state refers to the NAND ready state and
           should be set to GPIOD_ACTIVE_HIGH unless the signal is inverted.
 
+      secure-regions:
+        $ref: /schemas/types.yaml#/definitions/uint64-matrix
+        description:
+          Regions in the NAND chip which are protected using a secure element
+          like Trustzone. This property contains the start address and size of
+          the secure regions present.
+
     required:
       - reg
 
-- 
2.25.1

