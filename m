Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C1DD70E9C7
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 01:52:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238477AbjEWXwp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 19:52:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231687AbjEWXwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 19:52:44 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FBCCE9
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:52:43 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-555752282ceso50529eaf.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684885962; x=1687477962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dWnbeYWBwvLFEtp6veydKMiIhgUpeiC8+e3Qh5iiCZM=;
        b=KvrI9vQRwMBtM12K2cUSMD+wvnQbMoYJ3NXQ2rIGCk8po93Z926tmhtJvAcQAjRkig
         3Lwokf48EhM82C4Iwvd3WyGR4feK8Ae5ZmPRDuaHr5Bz06jBGMChEtVkRkH0mW6DFk0T
         Ebue1TQHzDvMEFzgfcJN2dfQl5WvbD0Gniln00bM70+8Yu3Z2Trlu8GMXF8bU3TATWS0
         eQRz8u1lC+wGgVp1juGl2xpwv05iOG9dwtrSsac4cfFuE/5cn+MfQG3yAQ+2Czrv3Q1H
         C6Pc92OcEBlaLDBfCy4JXkWYwlprQ0mUzeN2GWIkH4q+am7eaxQDlQguO6eHhZINCYqe
         WiNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684885962; x=1687477962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWnbeYWBwvLFEtp6veydKMiIhgUpeiC8+e3Qh5iiCZM=;
        b=MUbpdW+v8fBDcSzTfEsoMJZgVcgJah1l5fzznl5UnY0WLwRMuGdLenL24FEBb0R9Aw
         mpFMDiW4Vvy1GLa0IGHFqb70FURi7EDD1noJC0YZLf/QyAo1WECzDjLLxxLXjSHaV7KH
         3BO+9AZ8ioF7aTtQsrjn62qOScNSc+pi/A+vYi9dvPWxw5DEFxlFes64Kc15glRPUhQJ
         0+9PmBdHeeGr/KuLjKzhr/h/3pTk+2K9nDZSoPcFkLVgSzdgk/5Rx2rFbpONOuFH44Oz
         lqDCcf0y5G2lHwFh7WUlDPNaZ2p5a2aTadLr01Sm8ydaq42O92sQztU6sdiKJHQg8VRW
         h62g==
X-Gm-Message-State: AC+VfDyUAhpKYILFvPe5YuK+YXUyMEDqshekF9uB+HhZRaaxVacXLT5i
        6TaZm1hRDCMQp7qtD8CBr/0=
X-Google-Smtp-Source: ACHHUZ5/olY9g2Hi1urdccqW13iaOVdaUzDuQrkek4BUEYj0tloJaCeu8gw8MiCNGbWAj9dA0ULhsQ==
X-Received: by 2002:aca:efc6:0:b0:385:d91:ee30 with SMTP id n189-20020acaefc6000000b003850d91ee30mr7413924oih.3.1684885962577;
        Tue, 23 May 2023 16:52:42 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:14ab:657f:c6e7:b30b])
        by smtp.gmail.com with ESMTPSA id h13-20020a4ad74d000000b00552502f3ae1sm2454559oot.39.2023.05.23.16.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 16:52:42 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v7 2/2] ARM: dts: imx6sx: Add LDB support
Date:   Tue, 23 May 2023 20:52:32 -0300
Message-Id: <20230523235232.7358-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523235232.7358-1-festevam@gmail.com>
References: <20230523235232.7358-1-festevam@gmail.com>
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
Dependency: This depends on bd60d98a11da ("dt-bindings: display: bridge: ldb: Adjust imx6sx entries"),
which is available on linux-next.

Changes since v6:
- Use simple-mfd.

 arch/arm/boot/dts/imx6sx.dtsi | 42 +++++++++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 4233943a1cca..3a4308666552 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -841,10 +841,40 @@ iomuxc: pinctrl@20e0000 {
 				reg = <0x020e0000 0x4000>;
 			};
 
-			gpr: iomuxc-gpr@20e4000 {
+			gpr: syscon@20e4000 {
 				compatible = "fsl,imx6sx-iomuxc-gpr",
-					     "fsl,imx6q-iomuxc-gpr", "syscon";
+					     "fsl,imx6q-iomuxc-gpr", "syscon", "simple-mfd";
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
@@ -1278,6 +1308,14 @@ lcdif1: lcdif@2220000 {
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

