Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4F8441E9C0
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 11:41:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352872AbhJAJnb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 05:43:31 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46536
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353081AbhJAJna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 05:43:30 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 01BBF4025C
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 09:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633081306;
        bh=v20vzGvpKOribJ20xC/9VCM3R/uezZSx/XMUZB6UVm8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=rSA2qd0WittqyL+HmXKaXGyDZA3FGDNpcGhRPwB2rNgAu10P+46mN80EaRYw9HCha
         cAlC1oDEVMGRKBgeWCHGefKqSVg5IURpKSPSf9KFn88vd/J/qmNDRlUeO0PJiLOFGr
         6bZ+gm2NKfCOyuEyYMJisGoUCja9wx6U0Pc3SqbJ+5DIB0jR8qD2BrUS6zsE95Lugv
         ID5h7QnnVJAbqHFBI80sNOMVx45J4/GtLlalKsUGyr4jxb497atZLH4ZPqnK3Ot2Pv
         efOSajbfYp/PeMwKlcUypAQ4ueuT65iM75FX1gY/nHgEmb0+hxdRVRE4f5hgXHTaXX
         hbbDTN5cpgo3A==
Received: by mail-lf1-f71.google.com with SMTP id f32-20020a0565123b2000b003fd19ba9acaso3362118lfv.10
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 02:41:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v20vzGvpKOribJ20xC/9VCM3R/uezZSx/XMUZB6UVm8=;
        b=gUdNiYFnwBOgTJt/D5GRO/HwuML4zHIRBQEpJTnw0S2r/xUJbTtgCgej1wNzJL5qXT
         xpwV/EUn+B2qlG/vFNZXAmKi6PqNfGRq7ub49mmlo8n2oE5yHpZGIj9oHAvs7h5vGUQF
         Y3slC+mRQTIHtLuSSLH5+t4zI8BG8lXzMoX+Bvi09rGisLb9e4/eM2gTWRKUGJme3RzZ
         5zdGXS0XB2Nb57gTZ48H409hLMg2Fs3uxJKM8QR2bFZaA/kMwexwmGNZmXehuB7myCML
         ZLRRuQhID6m3CfZ8LLIfQEiTQiVJHli4DNbrT5EUj/N8Ksai1fa7qaSajLd9iTa2O5Bz
         o8mg==
X-Gm-Message-State: AOAM531T+8x+nlN/d+FqKBJWrgXEoEp63KgTsLx/4oo+VY9OT9Bgrut/
        H0eyJ5cFYItvptdaqVHWkIft4En773b5xspYGD0j2VNS07moSZHmw1wFy02kaOEVpnmBNzF85xU
        sfxTJ+1/ToTYanRjPk6xylECtZYDmgEtFJ0FPIDA=
X-Received: by 2002:ac2:54ad:: with SMTP id w13mr4653057lfk.397.1633081305312;
        Fri, 01 Oct 2021 02:41:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDM/2n968561+gri4JiNCrryeT8FcT9w+LPoI4aPwOrJmmL+onBhw/h3J9ufX1+3dsi0sCYQ==
X-Received: by 2002:ac2:54ad:: with SMTP id w13mr4653033lfk.397.1633081305075;
        Fri, 01 Oct 2021 02:41:45 -0700 (PDT)
Received: from localhost.localdomain ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id g29sm673784lfj.212.2021.10.01.02.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 02:41:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Cc:     stable@vger.kernel.org
Subject: [PATCH v2 01/10] regulator: s5m8767: do not use reset value as DVS voltage if GPIO DVS is disabled
Date:   Fri,  1 Oct 2021 11:40:57 +0200
Message-Id: <20211001094106.52412-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001094106.52412-1-krzysztof.kozlowski@canonical.com>
References: <20211001094106.52412-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver and its bindings, before commit 04f9f068a619 ("regulator:
s5m8767: Modify parsing method of the voltage table of buck2/3/4") were
requiring to provide at least one safe/default voltage for DVS registers
if DVS GPIO is not being enabled.

IOW, if s5m8767,pmic-buck2-uses-gpio-dvs is missing, the
s5m8767,pmic-buck2-dvs-voltage should still be present and contain one
voltage.

This requirement was coming from driver behavior matching this condition
(none of DVS GPIO is enabled): it was always initializing the DVS
selector pins to 0 and keeping the DVS enable setting at reset value
(enabled).  Therefore if none of DVS GPIO is enabled in devicetree,
driver was configuring the first DVS voltage for buck[234].

Mentioned commit 04f9f068a619 ("regulator: s5m8767: Modify parsing
method of the voltage table of buck2/3/4") broke it because DVS voltage
won't be parsed from devicetree if DVS GPIO is not enabled.  After the
change, driver will configure bucks to use the register reset value as
voltage which might have unpleasant effects.

Fix this by relaxing the bindings constrain: if DVS GPIO is not enabled
in devicetree (therefore DVS voltage is also not parsed), explicitly
disable it.

Cc: <stable@vger.kernel.org>
Fixes: 04f9f068a619 ("regulator: s5m8767: Modify parsing method of the voltage table of buck2/3/4")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/regulator/samsung,s5m8767.txt    | 21 +++++++------------
 drivers/regulator/s5m8767.c                   | 21 ++++++++-----------
 2 files changed, 17 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt b/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt
index 093edda0c8df..d9cff1614f7a 100644
--- a/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt
+++ b/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt
@@ -13,6 +13,14 @@ common regulator binding documented in:
 
 
 Required properties of the main device node (the parent!):
+ - s5m8767,pmic-buck-ds-gpios: GPIO specifiers for three host gpio's used
+   for selecting GPIO DVS lines. It is one-to-one mapped to dvs gpio lines.
+
+ [1] If either of the 's5m8767,pmic-buck[2/3/4]-uses-gpio-dvs' optional
+     property is specified, then all the eight voltage values for the
+     's5m8767,pmic-buck[2/3/4]-dvs-voltage' should be specified.
+
+Optional properties of the main device node (the parent!):
  - s5m8767,pmic-buck2-dvs-voltage: A set of 8 voltage values in micro-volt (uV)
    units for buck2 when changing voltage using gpio dvs. Refer to [1] below
    for additional information.
@@ -25,19 +33,6 @@ Required properties of the main device node (the parent!):
    units for buck4 when changing voltage using gpio dvs. Refer to [1] below
    for additional information.
 
- - s5m8767,pmic-buck-ds-gpios: GPIO specifiers for three host gpio's used
-   for selecting GPIO DVS lines. It is one-to-one mapped to dvs gpio lines.
-
- [1] If none of the 's5m8767,pmic-buck[2/3/4]-uses-gpio-dvs' optional
-     property is specified, the 's5m8767,pmic-buck[2/3/4]-dvs-voltage'
-     property should specify atleast one voltage level (which would be a
-     safe operating voltage).
-
-     If either of the 's5m8767,pmic-buck[2/3/4]-uses-gpio-dvs' optional
-     property is specified, then all the eight voltage values for the
-     's5m8767,pmic-buck[2/3/4]-dvs-voltage' should be specified.
-
-Optional properties of the main device node (the parent!):
  - s5m8767,pmic-buck2-uses-gpio-dvs: 'buck2' can be controlled by gpio dvs.
  - s5m8767,pmic-buck3-uses-gpio-dvs: 'buck3' can be controlled by gpio dvs.
  - s5m8767,pmic-buck4-uses-gpio-dvs: 'buck4' can be controlled by gpio dvs.
diff --git a/drivers/regulator/s5m8767.c b/drivers/regulator/s5m8767.c
index 7c111bbdc2af..35269f998210 100644
--- a/drivers/regulator/s5m8767.c
+++ b/drivers/regulator/s5m8767.c
@@ -850,18 +850,15 @@ static int s5m8767_pmic_probe(struct platform_device *pdev)
 	/* DS4 GPIO */
 	gpio_direction_output(pdata->buck_ds[2], 0x0);
 
-	if (pdata->buck2_gpiodvs || pdata->buck3_gpiodvs ||
-	   pdata->buck4_gpiodvs) {
-		regmap_update_bits(s5m8767->iodev->regmap_pmic,
-				S5M8767_REG_BUCK2CTRL, 1 << 1,
-				(pdata->buck2_gpiodvs) ? (1 << 1) : (0 << 1));
-		regmap_update_bits(s5m8767->iodev->regmap_pmic,
-				S5M8767_REG_BUCK3CTRL, 1 << 1,
-				(pdata->buck3_gpiodvs) ? (1 << 1) : (0 << 1));
-		regmap_update_bits(s5m8767->iodev->regmap_pmic,
-				S5M8767_REG_BUCK4CTRL, 1 << 1,
-				(pdata->buck4_gpiodvs) ? (1 << 1) : (0 << 1));
-	}
+	regmap_update_bits(s5m8767->iodev->regmap_pmic,
+			   S5M8767_REG_BUCK2CTRL, 1 << 1,
+			   (pdata->buck2_gpiodvs) ? (1 << 1) : (0 << 1));
+	regmap_update_bits(s5m8767->iodev->regmap_pmic,
+			   S5M8767_REG_BUCK3CTRL, 1 << 1,
+			   (pdata->buck3_gpiodvs) ? (1 << 1) : (0 << 1));
+	regmap_update_bits(s5m8767->iodev->regmap_pmic,
+			   S5M8767_REG_BUCK4CTRL, 1 << 1,
+			   (pdata->buck4_gpiodvs) ? (1 << 1) : (0 << 1));
 
 	/* Initialize GPIO DVS registers */
 	for (i = 0; i < 8; i++) {
-- 
2.30.2

