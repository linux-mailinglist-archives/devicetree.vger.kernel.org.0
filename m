Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B40183F0175
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 12:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233740AbhHRKTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 06:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233576AbhHRKTn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 06:19:43 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1FC9C061764
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 03:19:08 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id c12so4150486ljr.5
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 03:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+EURWhH8sGR9daHaYkT3BdDLoArts6pdVBSEXGUtCzg=;
        b=BiJ9teTdKajkzKGPUoRipcHjcD3HB2lGdLC5Mk6PQ9QExSAsNPFeRM2BIhC50Bjxsr
         plLphumV70hQBqVMeLKeQkW2mi6np9BsajgR59HEcABi2XJKqplwnv/Il1n4zd2HsxDQ
         QGUef1FnT+JBikAyJ91dqi0Zp0cW22j1TE9pihWbx4N3vUSuOFU9vY/IdH+xEf8LsdCn
         23dYqAtWqsr57aRbE6wCYJ5Ng/MyeJyFzEbmMBq9VVZcPiHTMN+d2Rngf2Ikmwickdq3
         45CaKJmYxv/Klg0RYXb/HJANjeKuhZyh9I6N6uDH0eqRLAQTwd0Y868e+fTJF+slNR3z
         8qZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+EURWhH8sGR9daHaYkT3BdDLoArts6pdVBSEXGUtCzg=;
        b=P/cBS0GZVgZsw4qTTmGDAjoBdhypyISBoBeOK+LhMBJRsMus1mUVSm6I8SlL6rzs1l
         lburDJZtBogAnPhu3xUoZuych8cGDS7+Ey/MSmGC4EVzww2HcNbsHYZaDDXRPFXHyw/Q
         w68ymi+Wqcil2x5vdpFZhM/1PjSxMJ6Lvbp/qA3dZ/vtOzOkRLM6vc7B60wa6acraysH
         2qTkHOjfGyRIPzhGOstzYo/oF69gGocT5zjXkTiZihDGnOnWy0HUWK4O57TJ5MIj7Iig
         8jDI9nzqT0ZyX68dxgNXHjD15UMYRyS+FNhr8V8Kz9eyqFymYB7JY7Rr8u7hJjQ5JXle
         SsWA==
X-Gm-Message-State: AOAM530Vn1fAzzWUPry92jLBJNwieShQDtxIrGIbKGwxRUjNoGNxq5XQ
        4WML5X3I8RDy3oCEI+9HrlcXRQ==
X-Google-Smtp-Source: ABdhPJzOW7Kozgoiry8RIxKir+y+alfHCPtAaAe4Vn32DNb1r3/zYM1moeKdnBFFo1/nvx0mRBhdzA==
X-Received: by 2002:a05:651c:490:: with SMTP id s16mr7228280ljc.214.1629281947028;
        Wed, 18 Aug 2021 03:19:07 -0700 (PDT)
Received: from jade.urgonet (h-94-254-48-165.A175.priv.bahnhof.se. [94.254.48.165])
        by smtp.gmail.com with ESMTPSA id l27sm451160lfp.245.2021.08.18.03.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 03:19:06 -0700 (PDT)
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     Jerome Forissier <jerome@forissier.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Sumit Garg <sumit.garg@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Ard Biesheuvel <ardb@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Jens Wiklander <jens.wiklander@linaro.org>
Subject: [PATCH v4 2/6] dt-bindings: arm: optee: add interrupt property
Date:   Wed, 18 Aug 2021 12:18:45 +0200
Message-Id: <20210818101849.602257-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210818101849.602257-1-jens.wiklander@linaro.org>
References: <20210818101849.602257-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds an optional interrupt property to the optee binding.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 .../devicetree/bindings/arm/firmware/linaro,optee-tz.yaml  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
index c24047c1fdd5..40c9f1901e3f 100644
--- a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
+++ b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
@@ -24,6 +24,12 @@ properties:
   compatible:
     const: linaro,optee-tz
 
+  interrupts:
+    maxItems: 1
+    description: |
+      This interrupt which is used to signal an event by the secure world
+      software is expected to be edge-triggered.
+
   method:
     enum: [smc, hvc]
     description: |
@@ -46,6 +52,7 @@ examples:
         optee  {
             compatible = "linaro,optee-tz";
             method = "smc";
+            interrupts = <0 187 1>;
         };
     };
 
-- 
2.31.1

