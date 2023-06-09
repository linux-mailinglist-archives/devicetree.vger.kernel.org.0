Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA84F729C64
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240941AbjFIOJH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:09:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240890AbjFIOIi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:08:38 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 726884203
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:08:14 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5169f614977so3184992a12.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319669; x=1688911669;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qb0ZFzAhhK+erW7LJP2wxkzkSRjZwcO8zreCGJicNFw=;
        b=g0IAe/XKTBIdzkRWIKTXMHHY4xvxoph0Yho8VHmmcTHZv9MXFFyKoIfbpBKD9YHxIf
         MsBrgujXVELr8R+pC8ewFG3Yi9CFhEMmKpMz67eKFTa3AZFnvP0vVIncACRTPJ6C138n
         7f9/iQyGAq0L1B3iWek2pZqgaRzpjR3cnDSWANH2rnKDkXBURv5IRQ/Bm6L7EDzVzwDX
         f07thJF5H7vXcZ66rRE2WLus1NONw5Pu2f1EsKs5cXTtk4eDAUeQ3RBQ/Rw4rv2W2WVh
         hWU5cLTgqX4Ant73FnFEL6YsM40rnLZV51WOqVqq07nN3/bdParGhT3YXPaSIvDz6Is6
         mkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319669; x=1688911669;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qb0ZFzAhhK+erW7LJP2wxkzkSRjZwcO8zreCGJicNFw=;
        b=XBNorLl50/dDlmz61gZ3Hjgznx2+0LamfRJiQ6OGN3PfFNJwFfPl9ll5wId3clBL68
         UIwQz3oQnvB5P+423vLBIEzHR3N90uE1tQtLs6Ul0xegaOfkMEJWzZgupFdn3jHy/QAY
         yQ8FMhXTUYodwHDWnOgpbx7HYcjEFLA1n0iE0igYTzC+XrdeLHFZIAXOvea433VxTSk5
         nndnt7mXkkksVkpl50OFooJu/vWDoki8lGWsTw5jS6dWIG0gEnkeY4kKeNHvsOr5jZIt
         CbInmesD6gci6jF3zaQOKCAaMQ3uGR7cFtq3QEOpt4mqigcbqveiH94KjCQvAV1rQaik
         scxA==
X-Gm-Message-State: AC+VfDyKW9atxhEupLSArx9nGz9hvgloT0tg+On2VfxW6yktg5tOYq5C
        1GrZ9+2+X4Sa6Ej23+ObcDWOnA==
X-Google-Smtp-Source: ACHHUZ7+AMaHS+1ugJrL7maVJt9zzkeyqMobj7k+MK3bgJsaH56MLQu9BqRWzq+p0fAn87cIDLfCTg==
X-Received: by 2002:aa7:c48a:0:b0:514:9acd:7bc1 with SMTP id m10-20020aa7c48a000000b005149acd7bc1mr1414817edq.9.1686319669388;
        Fri, 09 Jun 2023 07:07:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id t1-20020aa7d701000000b005166779bfd2sm1833258edq.6.2023.06.09.07.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:07:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        =?UTF-8?q?Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mfd: brcm: drop unneeded quotes and use absolute /schemas path
Date:   Fri,  9 Jun 2023 16:07:47 +0200
Message-Id: <20230609140747.65074-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.  Also absolute path
starting with /schemas is preferred.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml     | 4 ++--
 .../devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml    | 4 ++--
 .../devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml     | 4 ++--
 .../devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml     | 4 ++--
 .../devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml     | 4 ++--
 .../devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml     | 4 ++--
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml
index 9f9a14af875e..cb480162f967 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml
@@ -35,7 +35,7 @@ patternProperties:
   "^gpio@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../gpio/brcm,bcm63xx-gpio.yaml"
+    $ref: /schemas/gpio/brcm,bcm63xx-gpio.yaml
     description:
       GPIO controller for the SoC GPIOs. This child node definition
       should follow the bindings specified in
@@ -44,7 +44,7 @@ patternProperties:
   "^pinctrl@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../pinctrl/brcm,bcm6318-pinctrl.yaml"
+    $ref: /schemas/pinctrl/brcm,bcm6318-pinctrl.yaml
     description:
       Pin controller for the SoC pins. This child node definition
       should follow the bindings specified in
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml
index 803277dd2725..c14def1b2ad2 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml
@@ -35,7 +35,7 @@ patternProperties:
   "^gpio@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../gpio/brcm,bcm63xx-gpio.yaml"
+    $ref: /schemas/gpio/brcm,bcm63xx-gpio.yaml
     description:
       GPIO controller for the SoC GPIOs. This child node definition
       should follow the bindings specified in
@@ -44,7 +44,7 @@ patternProperties:
   "^pinctrl@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../pinctrl/brcm,bcm63268-pinctrl.yaml"
+    $ref: /schemas/pinctrl/brcm,bcm63268-pinctrl.yaml
     description:
       Pin controller for the SoC pins. This child node definition
       should follow the bindings specified in
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml
index b9a6856ce970..5f48209ed40f 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml
@@ -35,7 +35,7 @@ patternProperties:
   "^gpio@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../gpio/brcm,bcm63xx-gpio.yaml"
+    $ref: /schemas/gpio/brcm,bcm63xx-gpio.yaml
     description:
       GPIO controller for the SoC GPIOs. This child node definition
       should follow the bindings specified in
@@ -44,7 +44,7 @@ patternProperties:
   "^pinctrl@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../pinctrl/brcm,bcm6328-pinctrl.yaml"
+    $ref: /schemas/pinctrl/brcm,bcm6328-pinctrl.yaml
     description:
       Pin controller for the SoC pins. This child node definition
       should follow the bindings specified in
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml
index 4651fe4dde07..f1f4629565d9 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml
@@ -35,7 +35,7 @@ patternProperties:
   "^gpio@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../gpio/brcm,bcm63xx-gpio.yaml"
+    $ref: /schemas/gpio/brcm,bcm63xx-gpio.yaml
     description:
       GPIO controller for the SoC GPIOs. This child node definition
       should follow the bindings specified in
@@ -44,7 +44,7 @@ patternProperties:
   "^pinctrl@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../pinctrl/brcm,bcm6358-pinctrl.yaml"
+    $ref: /schemas/pinctrl/brcm,bcm6358-pinctrl.yaml
     description:
       Pin controller for the SoC pins. This child node definition
       should follow the bindings specified in
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml
index 0330b621fd38..4d594739b382 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml
@@ -35,7 +35,7 @@ patternProperties:
   "^gpio@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../gpio/brcm,bcm63xx-gpio.yaml"
+    $ref: /schemas/gpio/brcm,bcm63xx-gpio.yaml
     description:
       GPIO controller for the SoC GPIOs. This child node definition
       should follow the bindings specified in
@@ -44,7 +44,7 @@ patternProperties:
   "^pinctrl@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../pinctrl/brcm,bcm6362-pinctrl.yaml"
+    $ref: /schemas/pinctrl/brcm,bcm6362-pinctrl.yaml
     description:
       Pin controller for the SoC pins. This child node definition
       should follow the bindings specified in
diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml
index 82d3e4415bda..aae83d432880 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml
@@ -35,7 +35,7 @@ patternProperties:
   "^gpio@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../gpio/brcm,bcm63xx-gpio.yaml"
+    $ref: /schemas/gpio/brcm,bcm63xx-gpio.yaml
     description:
       GPIO controller for the SoC GPIOs. This child node definition
       should follow the bindings specified in
@@ -44,7 +44,7 @@ patternProperties:
   "^pinctrl@[0-9a-f]+$":
     # Child node
     type: object
-    $ref: "../pinctrl/brcm,bcm6368-pinctrl.yaml"
+    $ref: /schemas/pinctrl/brcm,bcm6368-pinctrl.yaml
     description:
       Pin controller for the SoC pins. This child node definition
       should follow the bindings specified in
-- 
2.34.1

