Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F9AD458635
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 20:54:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229779AbhKUT5K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 14:57:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbhKUT5I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 14:57:08 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5316BC06173E
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:54:03 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id u3so70507688lfl.2
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 11:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=alj45tjzXeDfJ+7cslBZpCEeF9lcTvjC9KNxaxcnO9E=;
        b=1qZOxMA0fSJ7ozLQEbF8wX2dMGDkXUKzVIRteiG/npVKNS4C8tfWPDWEGmcHfx8gXz
         8enTc2tv8DeYMmBU03pg0FjlL7hbmxhpU4COs7EM5dNP8AL5xPfCRgt/Qq1XxgBFwnop
         c0niKq5r7lMiv43OriZkDmvYzwp4ozLE4gVC8dFXWJUmjjguxnVEOygKo6x+XdwY/VzE
         PhjuOwm3teHdkt6yrJs4fOIiFIwe1lnyzgcF7Vrii8R3cFRnOp24hPE35Xca4Olsg5UV
         yyeoKHjP9InhFpBQfIOH3DJXnD/iKi3h9NhZfABMNybxZW4mxGmwmrdEDKAZTZv/oIk0
         fsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=alj45tjzXeDfJ+7cslBZpCEeF9lcTvjC9KNxaxcnO9E=;
        b=RXvK7FQwS7LDlDEJdESBPkKSJeEBjwCmC7/7r23h8ZFOckf/AAx9QtbOV5/5G4p4WV
         80oaA+RB7RBC7ANJYsi+175lQZ7auy8vYiLuZqBShH2XzEk9ivwyiIRGsaRMlsZh16Ik
         +gLfK0pX8OwPObcLYwXJMogcOtkWzC29Bc6272FfYaDTFujteMv/25xSEkLzsPXh5Rnz
         6WYR8th/wTeGbpwvjj7BGCA28Q5V0Oilb4/4LD0JbhwUgclrkRbLuMrwnTOw2olqDswX
         Dvd0CyEuDtmX9vXe19HvKRm8j8S/rVpFeGSIv4+WHekntHBo7uiVt8mGr9aK63PhU31p
         WagQ==
X-Gm-Message-State: AOAM532v4iJiYLSsJVl26GM3ZcHIW+kTNUuKqRCzROIyBDiwm7PmVyXj
        IA2H3YOA4MdV+cOaId6LujuZsg==
X-Google-Smtp-Source: ABdhPJyErcj/LDk+DJUfMBNW1gxvSi2lolzFq6sZthh1OnsHxTynUFegI7y5Nw5wlm11RsMwq3vr1A==
X-Received: by 2002:a05:6512:16a8:: with SMTP id bu40mr23795710lfb.483.1637524441671;
        Sun, 21 Nov 2021 11:54:01 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id a24sm768987ljq.18.2021.11.21.11.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Nov 2021 11:54:01 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: [PATCH v3 2/3] dt-bindings: net: support for Allwinner R40 EMAC controller
Date:   Sun, 21 Nov 2021 22:53:36 +0300
Message-Id: <20211121195337.230475-3-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211121195337.230475-1-boger@wirenboard.com>
References: <20211121195337.230475-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 and A10/A20 share the same EMAC IP.
However, on R40 the EMAC is gated by default, so reset
property is required.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 .../net/allwinner,sun4i-a10-emac.yaml         | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
index 8d8560a67abf..cbb297c38daa 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
@@ -15,7 +15,9 @@ maintainers:
 
 properties:
   compatible:
-    const: allwinner,sun4i-a10-emac
+    enum:
+      - allwinner,sun4i-a10-emac
+      - allwinner,sun4i-r40-emac
 
   reg:
     maxItems: 1
@@ -30,6 +32,19 @@ properties:
     description: Phandle to the device SRAM
     $ref: /schemas/types.yaml#/definitions/phandle-array
 
+  resets:
+    maxItems: 1
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: allwinner,sun4i-r40-emac
+
+then:
+  required:
+    - resets
+
 required:
   - compatible
   - reg
@@ -42,11 +57,14 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #define RST_BUS_EMAC		14
+
     emac: ethernet@1c0b000 {
         compatible = "allwinner,sun4i-a10-emac";
         reg = <0x01c0b000 0x1000>;
         interrupts = <55>;
         clocks = <&ahb_gates 17>;
+        resets = <&ccu RST_BUS_EMAC>;
         phy-handle = <&phy0>;
         allwinner,sram = <&emac_sram 1>;
     };
-- 
2.25.1

