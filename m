Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 081C54249F4
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 00:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229973AbhJFWoF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 18:44:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbhJFWoF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 18:44:05 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50E48C061746
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 15:42:12 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id i24so15816565lfj.13
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 15:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=62PC80q5pJoCzR+LNs8TxRHYFiyjGthoCs9x+r0DkUA=;
        b=GgrkRnbW8Q5ZotcasaI9VCTfqYGnoXiHII/t76naehUQnvTVEzS4BFBB0fOb04ra3O
         c7aC71vJ/REHenYaUdYb5nJMFrxd/fjo29AUmhnbJ6kxqN+TApldt4lsfI3aChTldnSm
         a26tllNkoy2h29reQDur06M9eCBer9VBoLvPVsWkUlXqdYKExpPwU2PMqzCkrqzqQeRI
         Hrvnctbx0fugjTla3BTPuFoWdqJwYYZhg0cwmAro4sDtlbCbb/7Tkb6til1MdOam6POK
         nryLonkWn5tTr15QFDxSJo6RcSdP/mfxHsRrp//L8moGmzhsLyP0rQFT8Ah5f6eZWhlW
         ZGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=62PC80q5pJoCzR+LNs8TxRHYFiyjGthoCs9x+r0DkUA=;
        b=rUQhDrdgVTn0X7Zbhqvy6+pmBfJ6c2fr5FK1Pl6R8eshL3ZgQzdZlszQqYxn1l7CRa
         4obkosh766NFSbmyZ0/dzEXp6opfKXiBVJpbOGr+k9SzGiT0olKHUkUFH/uxGhmRRcRu
         3iL2Mwxgo97YbDhmWsTKcU9STMpE9yfoUKy2T/qcV31SbwHlJvGEG2ufLW2i3WaZWFr1
         FAUrXh5u7xvvru3l2P7pagKp/FuvsqaNKJKfwik0+//30x9ItAPKMGZhsYfwyOhOg/AM
         5W5T3HukwODZJjD+idi4dkh/RgRaJVkk/pV4bTvG9dVsnsLGXPPbV75fKgy+ESH9nqSe
         ObEg==
X-Gm-Message-State: AOAM531RCc2oydqbKrNA/nWFhu9Xbulh7/pQJh56Q9lvuOL6SkQWTcvu
        ZFCWkagzaOtqTKZTACn7gvnJAUNqauk2MQ==
X-Google-Smtp-Source: ABdhPJzmQ0pNmcJ1ovhyeq6ltuwqHAfFppU3uE++6xImt4zxISI3xsKtZ/UbH44FV0t53Vbh4aHcsQ==
X-Received: by 2002:a2e:b888:: with SMTP id r8mr709717ljp.147.1633560130582;
        Wed, 06 Oct 2021 15:42:10 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id g7sm2368103lfc.123.2021.10.06.15.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 15:42:10 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>,
        Marcus Cooper <codekipper@gmail.com>
Cc:     linux-pm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: power: supply: ab8500: Standard monitored-battery
Date:   Thu,  7 Oct 2021 00:40:06 +0200
Message-Id: <20211006224008.394191-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make monitored-battery the standard phandle to the battery we monitor
for the AB8500 charger components. We make the old "battery" phandle
deprecated, and the new one required so we detect and fix all users to
use the standard phandle name.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/power/supply/stericsson,ab8500-btemp.yaml | 10 +++++++---
 .../power/supply/stericsson,ab8500-chargalg.yaml       | 10 +++++++---
 .../power/supply/stericsson,ab8500-charger.yaml        | 10 +++++++---
 .../bindings/power/supply/stericsson,ab8500-fg.yaml    | 10 +++++++---
 4 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-btemp.yaml b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-btemp.yaml
index 2f57aa5a5f4e..4b8a00cec39c 100644
--- a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-btemp.yaml
+++ b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-btemp.yaml
@@ -17,10 +17,14 @@ properties:
   compatible:
     const: stericsson,ab8500-btemp
 
-  battery:
+  monitored-battery:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: phandle to battery node
 
+  battery:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
+
   interrupts:
     maxItems: 5
 
@@ -42,7 +46,7 @@ properties:
 
 required:
   - compatible
-  - battery
+  - monitored-battery
   - interrupts
   - interrupt-names
   - io-channels
@@ -56,7 +60,7 @@ examples:
     pmic {
       battery-temperature {
         compatible = "stericsson,ab8500-btemp";
-        battery = <&ab8500_battery>;
+        monitored-battery = <&battery>;
         interrupts = <20 IRQ_TYPE_LEVEL_HIGH>,
                      <80 IRQ_TYPE_LEVEL_HIGH>,
                      <83 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-chargalg.yaml b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-chargalg.yaml
index 0897231c2f6e..6799224f7fb4 100644
--- a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-chargalg.yaml
+++ b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-chargalg.yaml
@@ -17,13 +17,17 @@ properties:
   compatible:
     const: stericsson,ab8500-chargalg
 
-  battery:
+  monitored-battery:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: phandle to battery node
 
+  battery:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
+
 required:
   - compatible
-  - battery
+  - monitored-battery
 
 additionalProperties: false
 
@@ -32,6 +36,6 @@ examples:
     pmic {
       charging-algorithm {
         compatible = "stericsson,ab8500-chargalg";
-        battery = <&ab8500_battery>;
+        monitored-battery = <&ab8500_battery>;
       };
     };
diff --git a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-charger.yaml b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-charger.yaml
index e13305afea69..9518eb7289d0 100644
--- a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-charger.yaml
@@ -17,10 +17,14 @@ properties:
   compatible:
     const: stericsson,ab8500-charger
 
-  battery:
+  monitored-battery:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: phandle to battery node
 
+  battery:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
+
   vddadc-supply:
     description: Supply for USB and Main charger
 
@@ -66,7 +70,7 @@ properties:
 
 required:
   - compatible
-  - battery
+  - monitored-battery
   - vddadc-supply
   - interrupts
   - interrupt-names
@@ -81,7 +85,7 @@ examples:
     pmic {
       charger {
         compatible = "stericsson,ab8500-charger";
-        battery = <&ab8500_battery>;
+        monitored-battery = <&battery>;
         vddadc-supply = <&ab8500_ldo_tvout_reg>;
         interrupts = <10 IRQ_TYPE_LEVEL_HIGH>,
                      <11 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml
index db342e5ac0d1..54ac42a9d354 100644
--- a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml
+++ b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml
@@ -17,10 +17,14 @@ properties:
   compatible:
     const: stericsson,ab8500-fg
 
-  battery:
+  monitored-battery:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: phandle to battery node
 
+  battery:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
+
   interrupts:
     maxItems: 5
 
@@ -41,7 +45,7 @@ properties:
 
 required:
   - compatible
-  - battery
+  - monitored-battery
   - interrupts
   - interrupt-names
   - io-channels
@@ -55,7 +59,7 @@ examples:
     pmic {
       fuel-gauge {
         compatible = "stericsson,ab8500-fg";
-        battery = <&ab8500_battery>;
+        monitored-battery = <&battery>;
         interrupts = <24 IRQ_TYPE_LEVEL_HIGH>,
                      <8 IRQ_TYPE_LEVEL_HIGH>,
                      <28 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.31.1

