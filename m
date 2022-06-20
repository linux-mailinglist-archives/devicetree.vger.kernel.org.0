Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4EF1551685
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:04:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238827AbiFTLEh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:04:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235376AbiFTLEg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:04:36 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4479A12AA2
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:04:34 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n185so5596483wmn.4
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E9aKX9oDaX2lfkTZYFCt5GDgDZqAXKuhAdFiZdMrPqY=;
        b=NW4jz6dwfA5JksloJV3dLWU46ohpfweUdbOBappE3Yd/0pA5MPuyI3XIzT+XCXHDCQ
         TphPyrKVss82RWnsp0C8VYArXNsJ2bmQp1zRnanFbsP7DD/MEjN4QgqA35e3QAgvR1sE
         L9m+M39BkIG/Ca0ZiQzPPZvhJapsLKiKwLKK+CG0gPQwegoueqSu3OiWv+7B0arCnjy5
         FLXflRBf8ed6wQYy32keNxyX/F5P3ceOSK91YBleAhg2K8W91mGgd0L8+2amsRt7xIDb
         D7EQaa/KBTgXsjezdglGahdHsoODcXjwOoA6TH/l/1awBTjmam7Ej6ue4shDzsSJnJef
         79/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E9aKX9oDaX2lfkTZYFCt5GDgDZqAXKuhAdFiZdMrPqY=;
        b=ki0Rqd17J+A6l/Dbl6ycQrW6WouWyUAjqmpMBO2r5pniGhmx6Ki9CXrkzyIIDVBl3/
         QzBrSNB2H/8HurGt5J4V4Vf4AuLW0MB0Nc6qyd8dKVOSS4kXnY0Py/7prGkiUlxlvCnV
         zn3tKNxode06d+NkyGI4W1NUzoxfufGmRrgUFtEnu4QQEl3hMGnJHL2NonCyro++bVAs
         qvzzGFGSw+c+f7GyDEwRN8cF+vC+XD1Uo5gEiChLSPlPUz7r8HjdIaQMXZpM8oELgSfC
         /LgjD5qetfsg3hiXtZvQP1hqjyIiYPZnY5J6wgs4uL+PMgzeavN2dWlEAx2hOPpHJqz2
         59Qw==
X-Gm-Message-State: AJIora+T9bsu7Zs4gvuTiNEhylyKjdBBqqXcVb5nxUdk6g8Coa5Fzdvi
        7SG6576ZaKllmxC6e8Mwtikvog==
X-Google-Smtp-Source: AGRyM1sWoia6ofcqh57mNpVUqj2dfOlA//Qf4Y6NoEk7FLRl0BExflOY7RUSmN/hMk9v88Y+2OxcKw==
X-Received: by 2002:a7b:cbda:0:b0:397:48d6:6c9f with SMTP id n26-20020a7bcbda000000b0039748d66c9fmr24035982wmi.10.1655723072824;
        Mon, 20 Jun 2022 04:04:32 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x12-20020adfffcc000000b00218453adaefsm12838167wrs.101.2022.06.20.04.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 04:04:31 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, m.reichl@fivetechno.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>, stable@kernel.org
Subject: [PATCH] arm64: rockchip: rk3399-roc-pc: prevent fusb302 powering off the board during boot
Date:   Mon, 20 Jun 2022 11:04:07 +0000
Message-Id: <20220620110407.2393644-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The rk3399-roc-pc never finish booting because it is powered off when probing
fusb302.

The type c port is disabled because not present in DT as can seen in dmesg:
OF: graph: no port node found in /i2c@ff3d0000/usb-typec@22

So adding the port in DT (as needed by the device tree schema of
fusb302), permits the board to survive and finish booting.

CC: stable@kernel.org # 5.10+
Fixes: 8bb878cf20ae ("arm64: dts: rockchip: add support for ROC-RK3399-PC board")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
This patch is tested on 5.10.123, 5.15.48 and next-20220614

 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 0e45cc2d195b..60c400ca4034 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -552,6 +552,22 @@ fusb0: usb-typec@22 {
 		pinctrl-0 = <&fusb0_int>;
 		vbus-supply = <&vcc_vbus_typec0>;
 		status = "okay";
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "host";
+			label = "USB-C";
+			power-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+			};
+		};
 	};
 
 	mp8859: regulator@66 {
-- 
2.35.1

