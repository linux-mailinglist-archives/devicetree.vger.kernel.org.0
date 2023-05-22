Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C95770CA8E
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 22:14:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234002AbjEVUOj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 16:14:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233689AbjEVUOh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 16:14:37 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1890FA9
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:36 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-555486c9196so253219eaf.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684786475; x=1687378475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/U4MwQegtEt6biQ+P7puU9U2kpax+9v8Rb+ryQwCgwU=;
        b=QQ6iHwDgvDeh5WIpNwR/r+GyI7SxXSdZH/sEjJnOk0JdYflkFYyZGiKJKE3CQifEWc
         2dpc1YgytIRsQu93fGQ4v33am8lIW0qLz8CRQz7kYc82MempAHsueXNmLuIXeTV6fRJk
         IMQn2cWqqAAh+9LHa0v+zSduI+9xFED8m2vKvZIY5+5OTl+UXcVhPC/BNWs9taMzmmXk
         CPZAFMnMvlo6/IeSZNhrHMP1k8v7b8iTPByrBLEKFoSoM9InEHK57bNbMVQ3BmcpJ36E
         6tpPbWjiTI+XlDqUrQcPy2SiZVhLCPqnpkck/vH0tzEjYkXE2d0m76aHqcLWpdmbbaCI
         1c4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684786475; x=1687378475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/U4MwQegtEt6biQ+P7puU9U2kpax+9v8Rb+ryQwCgwU=;
        b=jTOV1Pz6ttVc+bs8B65j+RMy/8LvGSEFkFuzi0wDolV11coatzKxqGQ69xXqg7iCDM
         tDoHW60BhuaOk/Mqf1b4c30LPUk5q3dOc1UUkjSDNLdQRGp31nyU7VRvmgRL5UZTGTCR
         f86vlwMYVejF8Jl5m9jk6cP3cf6RAzQcb/yeIRpo9KU8EA7DCz3ikcSr2MXy2mUyp7QD
         17nox9LmqQSSRdWXc6vcgSML9E016/1iW3hAoMAYJz5plOtIhrtnUolSUzZiOiFki8OK
         8/mPIs4JJiwHQAbLQi32o/35FcM8EOZyCnxhoC+/V6NjvoGOcy2vXcbGQiMS9vRT3mRO
         tlLw==
X-Gm-Message-State: AC+VfDyDaNSkAIuXCzAKNapz1vIoey4M2WAVNQv0fnpJRlv89qubD+Q+
        vHVr2fVPqH21sb1OuOz0D6I=
X-Google-Smtp-Source: ACHHUZ6tRK3jeBUL5kL2bT5YgkitFHQFx0vOwnMXBOJ11TWLcTmFxqLTxbnQvqVBgc9hMijSfW358w==
X-Received: by 2002:aca:b9c6:0:b0:38e:52a1:4e2 with SMTP id j189-20020acab9c6000000b0038e52a104e2mr5075876oif.5.1684786475306;
        Mon, 22 May 2023 13:14:35 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:9a57:1c6:1c2e:4047])
        by smtp.gmail.com with ESMTPSA id q11-20020a056830018b00b006aaff32ac36sm2692857ota.66.2023.05.22.13.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 13:14:34 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v6 4/5] ARM: dts: imx6sx: Add LDB support
Date:   Mon, 22 May 2023 17:14:03 -0300
Message-Id: <20230522201404.660242-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522201404.660242-1-festevam@gmail.com>
References: <20230522201404.660242-1-festevam@gmail.com>
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

i.MX6SX has an LVDS controller that is connected to the eLCDIF.

Add support for it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v5:
- Dropped fsl,imx6q-iomuxc-gpr" and "reg-names" (Marek).

 arch/arm/boot/dts/imx6sx.dtsi | 43 ++++++++++++++++++++++++++++++++---
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 4233943a1cca..8dd38107bed2 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -841,10 +841,39 @@ iomuxc: pinctrl@20e0000 {
 				reg = <0x020e0000 0x4000>;
 			};
 
-			gpr: iomuxc-gpr@20e4000 {
-				compatible = "fsl,imx6sx-iomuxc-gpr",
-					     "fsl,imx6q-iomuxc-gpr", "syscon";
+			gpr: syscon@20e4000 {
+				compatible = "fsl,imx6sx-iomuxc-gpr", "syscon";
+				#address-cells = <1>;
+				#size-cells = <1>;
 				reg = <0x020e4000 0x4000>;
+
+				lvds_bridge: bridge@18 {
+					compatible = "fsl,imx6sx-ldb";
+					reg = <0x18 0x4>;
+					clocks = <&clks IMX6SX_CLK_LDB_DI0>;
+					clock-names = "ldb";
+					status = "disabled";
+
+					ports {
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						port@0 {
+							reg = <0>;
+
+							ldb_from_lcdif1: endpoint {
+								remote-endpoint = <&lcdif1_to_ldb>;
+							};
+						};
+
+						port@1 {
+							reg = <1>;
+
+							ldb_lvds_ch0: endpoint {
+							};
+						};
+					};
+				};
 			};
 
 			sdma: dma-controller@20ec000 {
@@ -1278,6 +1307,14 @@ lcdif1: lcdif@2220000 {
 					clock-names = "pix", "axi", "disp_axi";
 					power-domains = <&pd_disp>;
 					status = "disabled";
+
+					ports {
+						port {
+							lcdif1_to_ldb: endpoint {
+								remote-endpoint = <&ldb_from_lcdif1>;
+							};
+						};
+					};
 				};
 
 				lcdif2: lcdif@2224000 {
-- 
2.34.1

