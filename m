Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF2A6595978
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 13:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235299AbiHPLJF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 07:09:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235167AbiHPLId (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 07:08:33 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E1610094A
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:36:21 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id gb36so18065992ejc.10
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=bI7Y225GCpQ4NdJRGg8+FzYb7W08NKsY6HOs76y3GX8=;
        b=5pvZMceVU+vt/halR4ASWruqRlsrJFiGvHKGtnsoWzFkwgfV4vnNUJh2p3QtpY9xr1
         8Zxx5WK/YSwesSB4IgIX9mGPRIJoVpRDIWhJOi0iZSRxEIoNcYdW5s5q3u3QQKidVkrS
         IXIh3BTy5OdIHU5JffTMASUOV7XuPLqeT70DB7exqRFB/teb7ucp1/bEjEo2EGD7GaSY
         a8ZbMxx9Y4zUB/VuFs1TJPMeHtkaeHHa+nZY6PvZrsTsw8E+UBaxNpMNdbofHyHF6jlg
         DVk4+zHzEEjF2oFaF7U4oTWrTr+YcXnM9TsvLqURCLRIwSNchDKaT6efN6ibCKh/WBhX
         yJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=bI7Y225GCpQ4NdJRGg8+FzYb7W08NKsY6HOs76y3GX8=;
        b=AjwSvq7GXE41QExQqlPw70WXnxZ2QmUQ6t8QO/Ssn5r38DRi1E+Hgrxzr5bmRGQZr3
         tvUE1Gy1eq94q71YAvTSw2MTNwzz+CAdKIawYND8ghIFxW2yJV1smGpgCCdckdxQrG4E
         43pvlrhziijBLUg0sXbOjhk3EAkd0qmlc80TZLpheDwuCtadP6+SrZ3jmQrqvwKxgZVx
         chBhYgMM1MA/sdLYm/D+MTbbFt3Eg37BZuuyxwf1/erUdsLGmvEpetOFqGtcR3Ym2TcX
         GjK7VamdaND2Kc+999Ez59BSI6VEbNNsW13dZuoTjhBuWDlAYifHPTVL0SRU8R9Z0Szr
         jKHw==
X-Gm-Message-State: ACgBeo22wLRyM284Yg2WKltTxpnzxoEYk/+eDNvwtJRZ+DTlmKb5CAYT
        S39d1eH43FUjalp69yMqCG4O3g==
X-Google-Smtp-Source: AA6agR56VBuI9frf3ORaTQsmlP25dS59QhJ5fbrC1X4vbMonLouSSlVNSuudiw3lYIiJYzAiVXCI4A==
X-Received: by 2002:a17:907:1611:b0:733:636:5686 with SMTP id hb17-20020a170907161100b0073306365686mr13181883ejc.226.1660646179611;
        Tue, 16 Aug 2022 03:36:19 -0700 (PDT)
Received: from fedora.robimarko.hr (cpe-94-253-165-78.zg.cable.xnet.hr. [94.253.165.78])
        by smtp.googlemail.com with ESMTPSA id o24-20020aa7dd58000000b0043d742104efsm8175945edw.19.2022.08.16.03.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 03:36:19 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lars.povlsen@microchip.com, Steen.Hegelund@microchip.com,
        UNGLinuxDriver@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH] arm64: dts: microchip: use "okay" instead of "ok"
Date:   Tue, 16 Aug 2022 12:36:13 +0200
Message-Id: <20220816103613.22806-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.37.2
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

DT specification only allows "okay", and for projects like U-boot
status = "ok" won't enable the device at all.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi | 2 +-
 arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
index 4d55ae868b50..80217d5f3f66 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
@@ -529,7 +529,7 @@ i2c_sfp20: i2c_sfp20 {
 };
 
 &mdio3 {
-	status = "ok";
+	status = "okay";
 	phy64: ethernet-phy@64 {
 		reg = <28>;
 	};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
index ec90bda7ed6a..0760cf2e48bc 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
@@ -208,7 +208,7 @@ sfp_eth63: sfp-eth63 {
 };
 
 &mdio0 {
-	status = "ok";
+	status = "okay";
 	phy0: ethernet-phy@0 {
 		reg = <0>;
 	};
@@ -284,7 +284,7 @@ phy23: ethernet-phy@23 {
 };
 
 &mdio1 {
-	status = "ok";
+	status = "okay";
 	phy24: ethernet-phy@24 {
 		reg = <0>;
 	};
@@ -360,7 +360,7 @@ phy47: ethernet-phy@47 {
 };
 
 &mdio3 {
-	status = "ok";
+	status = "okay";
 	phy64: ethernet-phy@64 {
 		reg = <28>;
 	};
-- 
2.37.2

