Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A84C56D7CC7
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 14:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237925AbjDEMiU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 08:38:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237233AbjDEMiS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 08:38:18 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E11CD1FD2
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 05:38:17 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id t4so30812122wra.7
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 05:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680698296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l2D7J+jiJON7Q9iMerF9wUCEq2MkEeshCjVOJN+IjIU=;
        b=Zy+7Yp0Go7z6QYKD1XsRLWRBjKocGSpUcbP3ev3NnJVR45oaiEAYkxbDrUKL9kpHha
         O2gyCjuZybPMqbcwiicgWDgMes43WYcqM1hCXWQy/AL6iQq9JrnSyGu/aNuVfMDq4FZF
         UJpeWVc1jN63BxsHbT0OjCPFBhWiXEKFvxhX83dG670jyyFkk69dSOViLPQHFsIO/xTw
         zwNtmydV0Jw83HtOHqbkMD6WG3gMkgCsAn+v9r7NXwtlsA+n9Z9xfWQJCNrwV9UiT6BG
         maje+hcmHA7VPl3KYJPX4E7ApWdnKRMeTmVqmFbxNyqn1Pg6fISbO0G2jr9ESTVbZmjM
         YDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680698296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l2D7J+jiJON7Q9iMerF9wUCEq2MkEeshCjVOJN+IjIU=;
        b=Gvc9t0E7T1gEC0frwEMxDU16DqtqRnVf2AmwTdnLyHcp/CJ/BreRjClzB6g3cD3jWO
         76kmNXlmpUlxMPV3VXd8qagRLJNazcnbZbOZD25uI6CGFI/nLP0zt8RJAjYhYM5W3W36
         8jmz+LSQdzSMabIl1IvTfTIF/ZNfmM4YnC8b4RgfcdGiymvZlb61nW3Ak4asP9MA3yK1
         RQKK12mWw6hSJu64s+c5zDHJeRK1XcV8s/HNrUb8YWNgByF1VrFOiaMKSw9g5VPm4qsl
         BUCEVBF67ddxxOkcRp752y6gKQ1FTCMq33qfsyR784TUv3Vg0dbmNn2w14rKJxWM9qgN
         6E0A==
X-Gm-Message-State: AAQBX9f3Dk/duInSBTRfgWlrCNazBDcuS0A7AonG3N4In1x+eEGVDAbD
        Osy2esIAlwDWjQ0eBDeNIF4=
X-Google-Smtp-Source: AKy350bDkNl6lpyilJ15fMuDfjsdTwlUYtX9rOugcaON4O5ZwIz5R0EfQbZO0xzZVivOHl9+e0Btfw==
X-Received: by 2002:adf:cd82:0:b0:2d8:908c:8fa0 with SMTP id q2-20020adfcd82000000b002d8908c8fa0mr4397915wrj.9.1680698296038;
        Wed, 05 Apr 2023 05:38:16 -0700 (PDT)
Received: from morpheus.home.roving-it.com (9.f.4.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::4f9])
        by smtp.googlemail.com with ESMTPSA id j8-20020adfe508000000b002cfe71153b4sm14829623wrm.60.2023.04.05.05.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 05:38:15 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
Date:   Wed,  5 Apr 2023 13:38:13 +0100
Message-Id: <20230405123813.2272919-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Ondrej Jirman <megi@xff.cz>

These are implemented via regular ADC, so regular polling is needed,
for these keys to work.

Signed-off-by: Martijn Braam <martijn@brixit.nl>
Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index a0795a2b1cb1..ecd48040eb0c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -10,6 +10,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/linux-event-codes.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
@@ -29,6 +30,26 @@ chosen {
 		stdout-path = "serial2:115200n8";
 	};
 
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1600000>;
+		poll-interval = <100>;
+
+		button-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <100000>;
+		};
+
+		button-down {
+			label = "Volume Down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			press-threshold-microvolt = <300000>;
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -429,6 +450,11 @@ &sdio0 {
 	status = "okay";
 };
 
+&saradc {
+	vref-supply = <&vcca1v8_s3>;
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;
-- 
2.40.0

