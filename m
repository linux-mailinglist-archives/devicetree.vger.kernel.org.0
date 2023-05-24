Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D5E270F75D
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 15:11:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231435AbjEXNLG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 09:11:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235954AbjEXNK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 09:10:59 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6F36B6
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:37 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6ab1b3aabc9so83925a34.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684933837; x=1687525837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JjZvqnGEs3KHzG3W+xiaFkKbjTRgtnYiwVrTdGHUu4k=;
        b=C1IMYE9qlisGDdoc/jOOlxIRQlTU42Jw7H6J1DAry2yKXZtUV7k4TcL0Ki1//Ceddn
         Q4V/cS4wO0ZUTJ/mNY0nnDAL6y9lxX2mf+1YrbRmGsPT0ufVNv8ETajtTLrAGY8LaMev
         FCzVjg1xud0bYUu5SFucy3jP4EmEv5hYCTO8ErjYf93BN4IpFrCm/KoTsSd5MvmLN5aE
         VtfZC8v/uRj2iBZRet3bmYGidzTPdE6T8ccZ1qGutgsbpBxcKg31NM1j46QPAfkOzvdA
         mb4JYHCDDybFF3qYuLCff2T7J/j+ySp18J+u60EzlKy6NEiH30ZJuSknBOjb51SVs2N7
         S9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684933837; x=1687525837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JjZvqnGEs3KHzG3W+xiaFkKbjTRgtnYiwVrTdGHUu4k=;
        b=O7XRDUShqRm8a5jYmdzFaMqymJArtwGCyFTfyn4oyagr6hyIKjkU8h2mOFtoCuLHMt
         qyXRpfCL+e88h4HIWsNtYbaucztP7/TOLQzmX8c+qdvtfD9VLXpNR+7vNgIX/I5YSZGP
         v9Yd9wZhLQZpa7VeZkE8v8DuBaelC3D8ioFxUO5/BS9nBtjHgj/48gkA/LkQ23itOeQe
         XpkaqL+no+PDdRimBvQfLGr6Nfy0YioHiS6S4kedGE1fRmQ4KkHx+TSfwL+fJT7fokHu
         l7bIZ4KtHfRsXwvZY4i4Z7pYYIAdPa2Cr1OsdVK6kFVU0ozEm5+DVT1whM2WFRbjPAia
         n2gQ==
X-Gm-Message-State: AC+VfDw5KXCbCRqdas45X/gqQFqtck+ZXRguwNHk3zLeFDbHWhCCvckd
        dsFtM9FfnzM9cK90EYriGd8=
X-Google-Smtp-Source: ACHHUZ5EK3y+qBMfuvmXrevYgFFEbUh+a6NmY/vdTqBD1thAb7MDDVX3SXm7+aDVckA2jOPR+1eY/A==
X-Received: by 2002:a05:6830:6209:b0:6af:78e9:4d88 with SMTP id cd9-20020a056830620900b006af78e94d88mr6184710otb.3.1684933837212;
        Wed, 24 May 2023 06:10:37 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:14ab:657f:c6e7:b30b])
        by smtp.gmail.com with ESMTPSA id v21-20020a05683011d500b006ab1830d483sm3234546otq.77.2023.05.24.06.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 06:10:36 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/4] ARM: dts: imx7d-smegw01: Pass 'gpr' to the pinctrl groups
Date:   Wed, 24 May 2023 10:10:06 -0300
Message-Id: <20230524131008.161193-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230524131008.161193-1-festevam@gmail.com>
References: <20230524131008.161193-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Pass 'gpr' to the pinctrl groups to fix the following
'make CHECK_DTBS=y imx7d-smegw01.dtb' warning:

pinctrl@30330000: 'rfkillrp', 'usbotg1', 'usbotg1-pwr', 'usbotg1-pwr-gpio' do not match any of the regexes: 'grp$', 'pinctrl-[0-9]+'
From schema: Documentation/devicetree/bindings/pinctrl/fsl,imx7d-pinctrl.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-smegw01.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-smegw01.dts b/arch/arm/boot/dts/imx7d-smegw01.dts
index 76bbc2ab126e..829a3cbf8ad3 100644
--- a/arch/arm/boot/dts/imx7d-smegw01.dts
+++ b/arch/arm/boot/dts/imx7d-smegw01.dts
@@ -327,7 +327,7 @@ MX7D_PAD_SAI2_RX_DATA__GPIO6_IO21	0x17059
 		>;
 	};
 
-	pinctrl_rfkill: rfkillrp {
+	pinctrl_rfkill: rfkillgrp {
 		fsl,pins = <
 			MX7D_PAD_EPDC_DATA11__GPIO2_IO11	0x17059
 		>;
@@ -353,19 +353,19 @@ MX7D_PAD_UART3_RX_DATA__UART3_DCE_RX	0x74
 		>;
 	};
 
-	pinctrl_usbotg1_lpsr: usbotg1 {
+	pinctrl_usbotg1_lpsr: usbotg1grp {
 		fsl,pins = <
 			MX7D_PAD_LPSR_GPIO1_IO04__USB_OTG1_OC	0x04
 		>;
 	};
 
-	pinctrl_usbotg1_pwr: usbotg1-pwr {
+	pinctrl_usbotg1_pwr: usbotg1-pwrgrp {
 		fsl,pins = <
 			MX7D_PAD_LPSR_GPIO1_IO05__USB_OTG1_PWR	0x04
 		>;
 	};
 
-	pinctrl_usbotg1_pwr_gpio: usbotg1-pwr-gpio {
+	pinctrl_usbotg1_pwr_gpio: usbotg1-pwr-gpiogrp {
 		fsl,pins = <
 			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x04
 		>;
-- 
2.34.1

