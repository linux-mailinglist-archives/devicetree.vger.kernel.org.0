Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12CB970BEBE
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 14:51:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbjEVMvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 08:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232981AbjEVMvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 08:51:53 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D946AB
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:52 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6ab0d407a8fso373425a34.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684759911; x=1687351911;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6t53yFxRsKqj5M9UZvvQ0JSzpBiw1eJPevysJhZqzg=;
        b=HmLG0ojzuOghaecGITsVT2oACG6peJaiYzEFVQx/kaX/iQx4if4dkxocSMphHtbU1h
         pvu1MdgLLNvxQw1EBUu1E0o70+ec2O3ayx1sRdhiKmgqXTISsRROVRkHrL2876QWykfy
         tgdi0CHHQw15cIIEI4pawPR/1u0n6oWFF9XWF5c4knPw2Zi9shlqPd19KYtr0hZQyr03
         fE+JC8JwfwtKHHGVqBsAfPhNOS2sz0Ss/7SG+jJFVAnFJfUO+o7ZjAHRCCoyM8RA8cZS
         SLnHMwdSoiaBV/PDqBR7Yu2DJfoYGxGsYNQM+2xG4lqsDrWhSN0bKm3Ejl3GAEnhjtGA
         qVQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684759911; x=1687351911;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6t53yFxRsKqj5M9UZvvQ0JSzpBiw1eJPevysJhZqzg=;
        b=K8KhfNq1JW6EemhyCkO3J0aP1Alt9W4e1sbPsc0wku8v2KWMgn/JuVDRnpc8jMHpkg
         DTMG1+KydcOGkYrKHPkiBF1eROz+9E2HYwbCDjYOKiqNR/9N/aMtZv/rRJTeixro/4Ar
         cd26mauMTvQl6lEt+8RMTrfyPY5wk8OrBpOXtgJde/NfbCvDzKoSKD4nRiwtarzgsJqg
         hWuBFlAig4n+iWAKBUWTV0Bpkl7RWYg3WJZrK7X3j+5axx823GIUM6Z4ufSg0JhfThHO
         sdDNFVSidOg6G+9AoFPrN46joPs1OD+ISUg3J/+QTENxG3WTLoViRcgMGisQOFnSALdl
         iNdA==
X-Gm-Message-State: AC+VfDxY0TnwtnWqjQUr8WrNVLq7s9Qjptq+HkGXps0DLTHmIwCg626E
        wQNEpvgDVwbHWxlKiCIbfv8=
X-Google-Smtp-Source: ACHHUZ6QfUlustG3ZTrw5pvS4lw9fyls7iRIDHTpHj/WTAuW0JkNIfBtU89b2+cX4sgwbtlNPBGtcQ==
X-Received: by 2002:a9d:12ca:0:b0:6af:75ad:3e41 with SMTP id g68-20020a9d12ca000000b006af75ad3e41mr1649114otg.2.1684759911592;
        Mon, 22 May 2023 05:51:51 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:b71d:e403:4337:204f])
        by smtp.gmail.com with ESMTPSA id r126-20020acada84000000b003943e08ee03sm2676408oig.16.2023.05.22.05.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 05:51:51 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v5 3/4] ARM: dts: imx6sx: Add LDB support
Date:   Mon, 22 May 2023 09:51:28 -0300
Message-Id: <20230522125129.526604-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522125129.526604-1-festevam@gmail.com>
References: <20230522125129.526604-1-festevam@gmail.com>
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
Changes since v4:
- None.

 arch/arm/boot/dts/imx6sx.dtsi | 39 +++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 4233943a1cca..442106565025 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -844,7 +844,38 @@ iomuxc: pinctrl@20e0000 {
 			gpr: iomuxc-gpr@20e4000 {
 				compatible = "fsl,imx6sx-iomuxc-gpr",
 					     "fsl,imx6q-iomuxc-gpr", "syscon";
+				#address-cells = <1>;
+				#size-cells = <1>;
 				reg = <0x020e4000 0x4000>;
+
+				lvds_bridge: bridge@18 {
+					compatible = "fsl,imx6sx-ldb";
+					reg = <0x18 0x4>;
+					reg-names = "ldb";
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
@@ -1278,6 +1309,14 @@ lcdif1: lcdif@2220000 {
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

