Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9D85632739
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 16:03:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232006AbiKUPDD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 10:03:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229633AbiKUPCa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 10:02:30 -0500
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13C9BE1BF3
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:51:46 -0800 (PST)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-14286d5ebc3so10633750fac.3
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wA019ozzivEsYXA0Qyuqw9vrdFbGKFLaFrgPJ9wR3H8=;
        b=lWTyBjh7bCIBAqro9fMLMkSNraqFrcdkpSncxBcX11OXDg+xr2pX1Rn3rz8OWUA3dx
         SsPndJngI8oGEcmVEZMLbtk8d/6xBLr0mS7zI2P5Jet/Wwqomx20HCReKEjAyXGjWZId
         +QprvZk2tme1JeR+Z4NdNBcvvvj7a96MRyKGxQi2ltluPdkqL4Rqhvu5AQpPCka/KbIj
         GU6UP7vwh4P87l8+pQ9tBfXQdhsvwCFYrYD/5JERabuF2SAJdl79iuHZa5CXidgygyMJ
         zkMt/R1kyHSJXr9rEzj9TdqrdsXP4Ox8qNqYymwwHtBC2/zxxhuPXaE8iqxfYIu/S7cK
         qIDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wA019ozzivEsYXA0Qyuqw9vrdFbGKFLaFrgPJ9wR3H8=;
        b=Z5M96nnLBUnveDIDnvi5lGta4lS5aDVlVlBxvA3wtCLK55/3OUnsV6FVw79mzvlLaz
         qwdtDrXiUYnXhRBKn5o0Ba/c5A1UCdrhRuBcEOy1G/GosHLl3I8APIrICqTXw0Q/9gw2
         /eygYEt4t45762nGLYQqVjdy9K8rLGHxyc7rCK3OZE6/F161NkvhyGeW+bjdoUA4j41a
         nDI8RivSwNMrwmIQ/fmjA14QNCF5+Crk2e6oFY7Raqs6l6cdTe7as0yIFJwixdoSEuRY
         /tdtIFqS4j8YOE2/hP7cvdhnx9TAfdoHIXyfp5Zv1hA8jLFackO7yksBZBhT8lN2ZAmV
         K+Zg==
X-Gm-Message-State: ANoB5pktAm9fMStbUgSzdLhaSoxY3hRonLHnEu45DvPj2WT8knxnpyQH
        rmhgpY+b3jgBcoh4jtBtmMhhb9+7mRg=
X-Google-Smtp-Source: AA0mqf5ycGnRWbOLJyrlKyUeN3JJhkKrPEjYBxoYs3NTACGsiE3yG4i3TYZeWI0gCD8cEoKvKnwnxg==
X-Received: by 2002:a05:6870:41c9:b0:142:6216:64bd with SMTP id z9-20020a05687041c900b00142621664bdmr1530172oac.232.1669042305869;
        Mon, 21 Nov 2022 06:51:45 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id b43-20020a056870392b00b0011d02a3fa63sm2661434oap.14.2022.11.21.06.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 06:51:45 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/3] arm64: dts: imx8mq-thor96: Remove invalid linux,default-trigger
Date:   Mon, 21 Nov 2022 11:51:12 -0300
Message-Id: <20221121145114.2362260-1-festevam@gmail.com>
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

"none", "phy0tx" and "hci0-power" are not valid values for the
linux,default-trigger property and trigger the following warnings when
running:

make dtbs_check DT_SCHEMA_FILES=leds-gpio.yaml

arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb: leds: user-led4:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'none' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
	'none' does not match '^mmc[0-9]+$'
	'none' does not match '^cpu[0-9]*$'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb: leds: wlan-active-led:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'phy0tx' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
	'phy0tx' does not match '^mmc[0-9]+$'
	'phy0tx' does not match '^cpu[0-9]*$'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb: leds: bt-active-led:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'hci0-power' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
	'hci0-power' does not match '^mmc[0-9]+$'
	'hci0-power' does not match '^cpu[0-9]*$'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml

Remove the invalid linux,default-trigger entries.

Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Fixes: 68ca364d4812 ("arm64: dts: freescale: Add devicetree support for Thor96 board")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
index 5d5aa6537225..170e00c2447f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
@@ -35,7 +35,6 @@ user-led1 {
 		user-led2 {
 			label = "green:user2";
 			gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "none";
 		};
 
 		user-led3 {
@@ -49,20 +48,17 @@ user-led4 {
 			label = "green:user4";
 			gpios = <&gpio4 29 GPIO_ACTIVE_HIGH>;
 			panic-indicator;
-			linux,default-trigger = "none";
 		};
 
 		wlan-active-led {
 			label = "yellow:wlan";
 			gpios = <&gpio4 1 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "phy0tx";
 			default-state = "off";
 		};
 
 		bt-active-led {
 			label = "blue:bt";
 			gpios = <&gpio4 0 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "hci0-power";
 			default-state = "off";
 		};
 	};
-- 
2.25.1

