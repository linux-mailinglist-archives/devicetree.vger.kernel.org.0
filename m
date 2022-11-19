Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EF01631119
	for <lists+devicetree@lfdr.de>; Sat, 19 Nov 2022 22:24:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234139AbiKSVYw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Nov 2022 16:24:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231445AbiKSVYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Nov 2022 16:24:52 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE20F102
        for <devicetree@vger.kernel.org>; Sat, 19 Nov 2022 13:24:50 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-14263779059so9038807fac.1
        for <devicetree@vger.kernel.org>; Sat, 19 Nov 2022 13:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gT5FyYvFug9Fco+MzSm0rFoLBOpJSNAFNL3eLoG11hM=;
        b=GrTDL4mETjuO0Ww0AzBXQXsXEUoo/8s+Y/TXHNRxiGeWnipLO3WXOR9hvkcKXUnj38
         GNyOvkcxfjQOLpO4c3A6iqQaU6nzIRnIJgtP7d5PfxNi8i8drR8Ln0NHmr4/mG2cr+u2
         ZYjavRDReuua8rc9FsVC9hA0sSEyVBx/UlWO+8dII0nKCa5ItzeJnASdBuIK4ViPfi34
         ZOFzYdUl1VO+FGtQtuWKPlLwDW6Huj/Rr4yBSqo1Z5qUhqfK/r7m0T3WFnAvHRPvt5rJ
         7lBVoBHqdXcHBnbMZMimAF3dJl4SrVZuHtVAd2rKDCee/sPxcIav8PaId6fp9o6tQyEC
         5G+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gT5FyYvFug9Fco+MzSm0rFoLBOpJSNAFNL3eLoG11hM=;
        b=XSEA3iGgU8qdXgqpD5Xg5/cD8On3P+zcz1wb4veFCtQHjE3gsj0/NudXpUXbLFOXSQ
         S/eQzNnTPwLCWk/o2Pwzc/L0p0gICHBsxh23a9Jn2U+vigKujeT4GsplV/FeN11UVtVo
         xSVjzolZciw9hmXQlVLOfvhlDDRwGu+rsOkuwMQNOoga3usrTohm9EY7OqtrM+qjWM4B
         mgJFPYgdQePlw/5VYCVjD6nHMY1JuAnM3y9Pu+bbzAz5cPfgMSruyh74SNlYbkjTHgAN
         xkMMntyxlF1cnf96TOM/C3zc7xBd7ZLgGgcs6NEHmJfNqKN+Qs/U/HI7g2eGuxav7zvl
         G7Qw==
X-Gm-Message-State: ANoB5pnd50qKB7ttSh4gLQMawvZtFZm/Ws81Isoci5jfe4N2APUVlPKZ
        WIdqKO3zqX1SU12Nm9leS6PkoM17a5k=
X-Google-Smtp-Source: AA0mqf7wTL5oi91D5/1sBIkPbtWyjFHCHP0KPvSIm1ASMigyOSKYb7+5lKmFmdurymlxQN/ONthEbQ==
X-Received: by 2002:a05:6870:e60b:b0:140:6552:acf4 with SMTP id q11-20020a056870e60b00b001406552acf4mr6923616oag.277.1668893089415;
        Sat, 19 Nov 2022 13:24:49 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:406d:6f1c:860:cded])
        by smtp.gmail.com with ESMTPSA id bl17-20020a056808309100b00359f96eeb47sm2787604oib.49.2022.11.19.13.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Nov 2022 13:24:48 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        tharvey@gateworks.com, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [RFC] ARM: dts: imx6qdl-gw560x: Remove incorrect 'uart-has-rtscts'
Date:   Sat, 19 Nov 2022 18:24:36 -0300
Message-Id: <20221119212436.2028208-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
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

The following build warning is seen when running:
make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml

arch/arm/boot/dts/imx6dl-gw560x.dtb: serial@2020000: rts-gpios: False schema does not allow [[20, 1, 0]]
	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml

The imx6qdl-gw560x board does not expose the UART RTS and CTS
as native pins, so 'uart-has-rtscts' should not be used.

Fix the problem by removing the 'uart-has-rtscts' property.

Fixes: b8a559feffb2 ("ARM: dts: imx: add Gateworks Ventana GW5600 support")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Hi,

My understanding is that uart-has-rtscts indicates that the UART RTS
and CTS pins are used natively and we cannot use uart-has-rtscts with
rts-gpios.

If this is correct, then I can also submit a patch fixing the arm64 Gateworks
boards too.

 arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
index 4bc4371e6bae..4b81a975c979 100644
--- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
@@ -632,7 +632,6 @@ &ssi1 {
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
-	uart-has-rtscts;
 	rts-gpios = <&gpio7 1 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
-- 
2.25.1

