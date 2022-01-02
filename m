Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96880482BBF
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 16:57:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233311AbiABP5H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 10:57:07 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:34692
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233310AbiABP5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 10:57:07 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1D2793F225
        for <devicetree@vger.kernel.org>; Sun,  2 Jan 2022 15:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641139019;
        bh=A+kc5tjlYhkcgVbZnwxwk25Cyab3ia817LPKbVAH5v4=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=JPyUwY2eqlZ9PN6IWi+yV5eqZFrS/aqVCO7miV6AwybXJ1WvBSm1QPagleKszFE91
         j7kC8EEsnYoUAg04a49BktWcgWzqvZFlISFO41oy3GJ5qeoLzoFAYqeOK5I7198Kyz
         aS0ZvQsn9n6vD6eYXGmtlj3SlHelydHgG0YC3CYuSahjeSvi2Pwtj1HY5sZ8YATkJM
         7i98Ju96Na9zz//CnOw0F+f+yWPSk02vj9PZrBYaU4hw7flxh5hYVWtpP+xPgFknYu
         ot1o6kxeI9I4ZuFt0yo9VFDIzHTTCMfw818fMfHk+ViCxSTKaem4E8f+MAi7mpwE5V
         ciFF6yG7HsiRw==
Received: by mail-lf1-f72.google.com with SMTP id 28-20020ac24d5c000000b00425c507cfc0so5844102lfp.20
        for <devicetree@vger.kernel.org>; Sun, 02 Jan 2022 07:56:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A+kc5tjlYhkcgVbZnwxwk25Cyab3ia817LPKbVAH5v4=;
        b=a0burlLHa42jlQ18L+xN++cFYKajWBOT1l5xjz1eqtUMYiGq3JYRhqDHLOKN07RIQt
         aqBuPxv5ZMEeuhY+TRwpaBFy8Q23XfZHQViGrfCOV+2/ekgjDNdbWs9J16fa67DpPBqq
         ynLN31PXChElIMvMCO1Ey130jrnltDQoozLdqwIhBGLoUpyduJMYKqQhULQ2Y6V0rnbQ
         sFISRBB8gbD9AIJj4z4rV9Trqnd05Plu5hgYywauGWCRM3LHEGrd3y+bc2H2RaCVI0/2
         ddipvvouWUCgu4/dx62kQUCMpWy53jBFlITTPDz/uZZs5GKWn4yJHLdRjNk9Nqwz0o/G
         Hb+Q==
X-Gm-Message-State: AOAM533f6utdkCxa/clBFm64YFtjIg4XDRx0YDdSy+FDO53nTjPd5sUk
        dFYIjaoRxg8ZAGa4KpaC0SyUWMyuWzTG+0ApODPPKYoax5T7rhPxVxPg47vbKDWNrPOLad2KshA
        P/7CdinO+xwmEB4Zttg7R6+IGxv8PbzdsZIQCXaY=
X-Received: by 2002:a05:6512:3b13:: with SMTP id f19mr37208593lfv.305.1641139018247;
        Sun, 02 Jan 2022 07:56:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwmhRKwE5nQPF2pu8WTE2iWhPIheUcCjEwBbgtMiwC7AbFDHUGWTHzDvCXqDbhcAt4qNHiAHA==
X-Received: by 2002:a05:6512:3b13:: with SMTP id f19mr37208576lfv.305.1641139017947;
        Sun, 02 Jan 2022 07:56:57 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id f5sm1383176lfc.132.2022.01.02.07.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jan 2022 07:56:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] dt-bindings: gpio: samsung: drop unused bindings
Date:   Sun,  2 Jan 2022 16:56:53 +0100
Message-Id: <20220102155653.42165-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 6c56c6cd8031 ("gpio: samsung: Drop support for Exynos SoCs")
removed support for the Samsung Exynos SoC in lrgacy GPIO driver, since
it was moved to new pinctrl driver.  Remove old, unused bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/gpio/gpio-samsung.txt | 41 -------------------
 1 file changed, 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-samsung.txt

diff --git a/Documentation/devicetree/bindings/gpio/gpio-samsung.txt b/Documentation/devicetree/bindings/gpio/gpio-samsung.txt
deleted file mode 100644
index 5375625e8cd2..000000000000
--- a/Documentation/devicetree/bindings/gpio/gpio-samsung.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-Samsung Exynos4 GPIO Controller
-
-Required properties:
-- compatible: Compatible property value should be "samsung,exynos4-gpio>".
-
-- reg: Physical base address of the controller and length of memory mapped
-  region.
-
-- #gpio-cells: Should be 4. The syntax of the gpio specifier used by client nodes
-  should be the following with values derived from the SoC user manual.
-     <[phandle of the gpio controller node]
-      [pin number within the gpio controller]
-      [mux function]
-      [flags and pull up/down]
-      [drive strength]>
-
-  Values for gpio specifier:
-  - Pin number: is a value between 0 to 7.
-  - Flags and Pull Up/Down: 0 - Pull Up/Down Disabled.
-                            1 - Pull Down Enabled.
-                            3 - Pull Up Enabled.
-          Bit 16 (0x00010000) - Input is active low.
-  - Drive Strength: 0 - 1x,
-                    1 - 3x,
-                    2 - 2x,
-                    3 - 4x
-
-- gpio-controller: Specifies that the node is a gpio controller.
-- #address-cells: should be 1.
-- #size-cells: should be 1.
-
-Example:
-
-	gpa0: gpio-controller@11400000 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "samsung,exynos4-gpio";
-		reg = <0x11400000 0x20>;
-		#gpio-cells = <4>;
-		gpio-controller;
-	};
-- 
2.32.0

