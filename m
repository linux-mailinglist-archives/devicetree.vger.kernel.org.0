Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5278363297D
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:32:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbiKUQcC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:32:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230291AbiKUQbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:31:52 -0500
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0536C8462
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:31:49 -0800 (PST)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-14263779059so13459886fac.1
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/lZ3z1eo79fPhyxzxsZtiddVHnEc/UOXDgCjdk9CeNo=;
        b=YiwQMH9dZB77NIcz5H5r/xLe0l0DuwRg6Q5P1AXPr4pvn/1vs7p0dEhpgsbPKjr6UI
         rbbnCq532HRxARaJyEFnHOA2kRMeae2FI3kWx08WYN64IiqrK2foTn8LP280/HUpgSgU
         DuSD3xJSken9xSlzk5OFajkCUNBxKOILDhUnMim4SlGz8OOzrNGxkQ2RFz0wvnR/imkM
         qK898i/DGw/zP7/PfFhxqsP5T5MLab/X7oTwI4KfmWUgdOGRHB6KuY76EORKCTOuSJrT
         ZLqJH8vIbf/tr7M2IfvNjyVL+ZBjo0rjRjbDTw8NCQZhvgPJS3GNARiqkNb2QeIKSGHj
         3q7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/lZ3z1eo79fPhyxzxsZtiddVHnEc/UOXDgCjdk9CeNo=;
        b=s/XkflaAo8gsr9l0LwVBe/fboUj+vPm/Yaw0EkwCo2FCTcBLxXDGokk2Bn7O3QO/Nr
         ajyuOKXnUOSSVhJa9rrn0gYrAPuY6uXnadHeTzyeBzGJ8spOcsYoS2WcBNFWTlCyGX19
         qm0MKNUcJib2P2UHL6GKLOmhD2l7vVsmgfYdW1UOH4QT6x/cR2nnxJPfSOLzg5dSagLM
         Gj/+XqQDKJOsEIIBr9llC2mDSl7cmE2GqvsJ71cj63P3vJEASN5R79Xy/fV93wYqJtwF
         3bhyK+buKsSUSihpfFD4lMbfMX3KjxmcwpCvi+ncX60C2ohPNN0qoK4wlNYMqR6gAmMd
         9clQ==
X-Gm-Message-State: ANoB5plDtYktbrePIOC47FW/ZzuC3FGURi2vAmITiY3A25JLRXukMOHV
        TjKfsy14UmDXn3itaBdS1c0=
X-Google-Smtp-Source: AA0mqf6hS2/7IGBSmlF6RUFwA+jK+Om0eDYbG3UbG4lZ4RjpW3IRxvOncG/70YMVv2B2usBKtLxWzw==
X-Received: by 2002:a05:6870:42cc:b0:142:a3b3:5abe with SMTP id z12-20020a05687042cc00b00142a3b35abemr6476930oah.103.1669048308985;
        Mon, 21 Nov 2022 08:31:48 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id n18-20020a056870241200b00140d421445bsm6258698oap.11.2022.11.21.08.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 08:31:48 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] ARM: dts: imx7d-pico: Use 'clock-frequency'
Date:   Mon, 21 Nov 2022 13:31:24 -0300
Message-Id: <20221121163124.2378017-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221121163124.2378017-1-festevam@gmail.com>
References: <20221121163124.2378017-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

'clock_frequency' is not a valid property.

Use the correct 'clock-frequency' instead.

Fixes: 8b646cfb84c3 ("ARM: dts: imx7d-pico: Add support for the dwarf baseboard")
Fixes: 6418fd92417f ("ARM: dts: imx7d-pico: Add support for the nymph baseboard")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- None

 arch/arm/boot/dts/imx7d-pico-dwarf.dts | 4 ++--
 arch/arm/boot/dts/imx7d-pico-nymph.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-pico-dwarf.dts b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
index 5162fe227d1e..fdc10563f147 100644
--- a/arch/arm/boot/dts/imx7d-pico-dwarf.dts
+++ b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
@@ -32,7 +32,7 @@ sys_mclk: clock-sys-mclk {
 };
 
 &i2c1 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
@@ -52,7 +52,7 @@ pressure-sensor@60 {
 };
 
 &i2c4 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx7d-pico-nymph.dts b/arch/arm/boot/dts/imx7d-pico-nymph.dts
index 104a85254adb..5afb1674e012 100644
--- a/arch/arm/boot/dts/imx7d-pico-nymph.dts
+++ b/arch/arm/boot/dts/imx7d-pico-nymph.dts
@@ -43,7 +43,7 @@ sys_mclk: clock-sys-mclk {
 };
 
 &i2c1 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
@@ -64,7 +64,7 @@ adc@52 {
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
-- 
2.25.1

