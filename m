Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B947863273A
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 16:03:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230347AbiKUPDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 10:03:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230300AbiKUPCc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 10:02:32 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3644DE2211
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:51:49 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-141ca09c2fbso13934461fac.6
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7g0H+ehIGZNdqa4A7YDkdZ/+lECQ9VREU5C8HDYekU=;
        b=S94Rkx6glASozdUDqhoaAg2fZt0biTwpJ4nWBCv2t2xIUu4RhmdcfAVqQgVP5qH8cT
         DHi1z3KpvNJ0NTS7WdwQsaDbYqB1b5YEvCACgNt0QDo8sXgxZz7k1l2Z+amt236GuDoH
         J+P6G1CLPzJsSaOav2G3iN1HJQNE3h+GH6KanF9f5nKq5YwRoczm/FXK41cd3Ftnwg0+
         xaVepiEs3exVd+tJTjMlhi2f1tjnGQcKga3KhQnmnRMI8LZ9VHiux39u2e625Nyy1Ypg
         q30jo4zA6z7u2SgbFniiMQp/Vs17hgzveOBgeDcUoCgiGNJnnZtPLLtIs68G4v0gkKiN
         uGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7g0H+ehIGZNdqa4A7YDkdZ/+lECQ9VREU5C8HDYekU=;
        b=u7H4Sy9mTyNRJZhbvbX6DrYhOLe0jqNhkmrRJnjXJKKTNc9crewWYeVc8tlYE8h8Qv
         RR6VbKUjnFChnF40Uot1KFBV6kcIx5I8KDTWgKHH9d9IoIalUqYX69wPepc08VfoSv+A
         xYYudCzloyHW3UtAfQGw0W0hfsTG3axmsr9EV9a19B5dnSQ5T9HIST8w5S8JSITagCjZ
         gF6AeUJX1zwWQBW/7rlbEIW2ZpTIlJQyYatJile+zYzH6tJGRovEUb1BNrcU8sIaamM+
         0dtxgUkE0/aApfn+aJ8nKm+xLW+aUsW87KlyYxA8VnsTZU+4QThG6KcIrW74sbY4/I1R
         oHoA==
X-Gm-Message-State: ANoB5pl/lrrvfU7KmAvPBOlxMrfQrPuNHWwrBjDvUVPUWNpwPBLdA/FU
        tf/Y0PuYkvMfCT8oCEgrWyQ=
X-Google-Smtp-Source: AA0mqf6OAphaYCi7O3nu3nGRWvwLs3Mby0lJKTSAl8dF0MzCg/ZqlmYgE50BAC4NDWADVvon8P12BA==
X-Received: by 2002:a05:6870:ea8e:b0:13b:a31f:45fd with SMTP id s14-20020a056870ea8e00b0013ba31f45fdmr13385064oap.194.1669042308404;
        Mon, 21 Nov 2022 06:51:48 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id b43-20020a056870392b00b0011d02a3fa63sm2661434oap.14.2022.11.21.06.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 06:51:48 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 2/3] arm64: dts: imx8qxp-ai_ml: Remove invalid linux,default-trigger
Date:   Mon, 21 Nov 2022 11:51:13 -0300
Message-Id: <20221121145114.2362260-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221121145114.2362260-1-festevam@gmail.com>
References: <20221121145114.2362260-1-festevam@gmail.com>
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

"none", "phy0tx" and "hci0-power" are not valid values for the
linux,default-trigger property and trigger the following warnings when
running:

make dtbs_check DT_SCHEMA_FILES=leds-gpio.yaml

  DTC_CHK arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dtb
arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dtb: leds: user-led2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'none' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
	'none' does not match '^mmc[0-9]+$'
	'none' does not match '^cpu[0-9]*$'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dtb: leds: user-led4:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'none' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
	'none' does not match '^mmc[0-9]+$'
	'none' does not match '^cpu[0-9]*$'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dtb: leds: wlan-active-led:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'phy0tx' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
	'phy0tx' does not match '^mmc[0-9]+$'
	'phy0tx' does not match '^cpu[0-9]*$'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dtb: leds: bt-active-led:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'hci0-power' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
	'hci0-power' does not match '^mmc[0-9]+$'
	'hci0-power' does not match '^cpu[0-9]*$'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml

Remove the invalid linux,default-trigger entries.

Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Fixes: 56838644f9dd ("arm64: dts: freescale: Add support for i.MX8QXP AI_ML board")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
index 7d00e17f0447..233dea6dde22 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
@@ -41,7 +41,6 @@ user-led1 {
 		user-led2 {
 			label = "green:user2";
 			gpios = <&lsio_gpio0 6 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "none";
 		};
 
 		user-led3 {
@@ -55,20 +54,17 @@ user-led4 {
 			label = "green:user4";
 			gpios = <&lsio_gpio4 21 GPIO_ACTIVE_HIGH>;
 			panic-indicator;
-			linux,default-trigger = "none";
 		};
 
 		wlan-active-led {
 			label = "yellow:wlan";
 			gpios = <&lsio_gpio4 17 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "phy0tx";
 			default-state = "off";
 		};
 
 		bt-active-led {
 			label = "blue:bt";
 			gpios = <&lsio_gpio4 18 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "hci0-power";
 			default-state = "off";
 		};
 	};
-- 
2.25.1

