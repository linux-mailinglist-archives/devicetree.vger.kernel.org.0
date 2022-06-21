Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD119553260
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 14:44:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350098AbiFUMor (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 08:44:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350768AbiFUMoq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 08:44:46 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBAEB14D2A
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:44:44 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id u9so16882100oiv.12
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lBbMh4VJQSENMww0dOzgXxo1RM/VlCElXB1csm8/4yk=;
        b=eolm2QQGIWVt9QGJZP7tr72BIW3micukjnoCEafo7KN3jMzs3m4Elt5xV/fiYg+lOd
         vir4bPdilxNpZlovp5y+FTc5/9GKgAWLg2rYAWI4DCjZnGVqziDReoL8DlblgxyRpUwR
         xnBePY1UrQC/lYHe7a6asq6bjM5aKrl/Z1fKRcuNtZj92nmKrSmt69XnsYMnO7eq27fM
         IgN8ycYrO/V81iMl1wYK1Ygdzrw2xIB1C0whXaZEjXmYezgjxNb1LNEum7A7arTZ9t+h
         E8m8x0ID7HdUCiWTKKIAagp6KX3Z7QStVXmoffBq9lS+sH1UxGG2KnvNvqPS2Oa4ItWK
         Ebug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lBbMh4VJQSENMww0dOzgXxo1RM/VlCElXB1csm8/4yk=;
        b=Yge81EEgXv98KsRkeFQtZ+AHyQAx8icfOD/9/qQHSeN3s1OWBuv2fvAlP1EycZPxiz
         dQlfviz3HmShzorNBUZ/DBL8aTr7a4YNtoP/N2kfmXM1zOH+GJCzy2C2BR1TQXjp4vqH
         GDA/LWeoqC3jkRBOwL3xFtg94vx+1H639irjVlfRg4dewblBeDglQe8csBloPg8rW/lJ
         dlAwuyWomKZflyMcMv5iRmiERMs+1tWJsMKum0lxkLG3sHDDI1I13OZQRtAdO3QItorA
         rOD7snepIa0zL7lq+HRpmMfS2UhJVJQZlTnQbIBkgburSg9gDKSMjUgldtgy/Fz5Uoo2
         l4IA==
X-Gm-Message-State: AJIora+BexwVG+H8FWkzCBQeXEj1Ziti0OpA8WFpeMQb3A33ZjKbycxA
        GEX1YaBrXrDwiuSx2HVLA24=
X-Google-Smtp-Source: AGRyM1sq4B19d7lmERuBrPFlV3/m2YkAYtRTELTucq5c/IRSj7me2X0BE8FuHX0EtJp00/WkU+EhaA==
X-Received: by 2002:a05:6808:f92:b0:32f:6e27:6cc7 with SMTP id o18-20020a0568080f9200b0032f6e276cc7mr14067682oiw.36.1655815484060;
        Tue, 21 Jun 2022 05:44:44 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:8593:ab55:c903:7d93])
        by smtp.gmail.com with ESMTPSA id s22-20020a056870e6d600b000f33ced2c50sm8898350oak.56.2022.06.21.05.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 05:44:43 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     matthias.bgg@gmail.com
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: mediatek: Replace 'enable-sdio-wakeup'
Date:   Tue, 21 Jun 2022 09:44:35 -0300
Message-Id: <20220621124435.121740-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
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

As explained in Documentation/devicetree/bindings/mmc/mmc-controller.yaml,
the 'enable-sdio-wakeup' property is considered deprecated.

Replace it with the 'wakeup-source' property instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi    | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts     | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi  | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 923c1c3477e5..e21feb85d822 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -410,7 +410,7 @@ &mmc3 {
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
 	keep-power-in-suspend;
-	enable-sdio-wakeup;
+	wakeup-source;
 	cap-sdio-irq;
 	vmmc-supply = <&sdio_fixed_3v3>;
 	vqmmc-supply = <&mt6397_vgp3_reg>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 7ac9864db9de..52dc4a50e34d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -134,7 +134,7 @@ &mmc1 {
 	vmmc-supply = <&mt6358_vmch_reg>;
 	vqmmc-supply = <&mt6358_vmc_reg>;
 	keep-power-in-suspend;
-	enable-sdio-wakeup;
+	wakeup-source;
 	non-removable;
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index b50261e8b9ed..89e4358f140a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -382,7 +382,7 @@ &mmc1 {
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
 	keep-power-in-suspend;
-	enable-sdio-wakeup;
+	wakeup-source;
 	cap-sdio-irq;
 	non-removable;
 	no-mmc;
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
index afeb5cd37826..530e0c9ce0c9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
@@ -159,7 +159,7 @@ &mmc1 {
 	vmmc-supply = <&mt6358_vmch_reg>;
 	vqmmc-supply = <&mt6358_vmc_reg>;
 	keep-power-in-suspend;
-	enable-sdio-wakeup;
+	wakeup-source;
 	non-removable;
 };
 
-- 
2.25.1

