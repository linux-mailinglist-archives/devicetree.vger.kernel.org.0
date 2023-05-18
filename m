Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70ECC708853
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 21:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjERT0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 15:26:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjERT0f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 15:26:35 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB7518F
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 12:26:35 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-19a0f511155so280180fac.1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 12:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684437994; x=1687029994;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4/Z7FK8gXfOK/eLbI8J6uzD+8ahNn0HJ8uv1V8cuJ9g=;
        b=O3Jx49kBYo71nczBSK1IXlSvGtNrdjlRQksE6kT0j0NavulS/mztg+x1qio51X7IKZ
         +hlGTg21ZCTfqswXg+i4U/nldZGFvovihiYZ0NZYmwhUXHyqY2dctsjw29ADZ/QW0sWm
         Ag6mEoUkUT27zzxHQOQGu76kGAxVClmxoB8ziEOp8TQZT1xEViGY5A9oi3wJUq0kYW14
         lfvnp13qBsudGuyPBgW8lpoOTvrGT9Jng3X9zGai7M2RTpHuBJynDy2WpvGUaeO9jeTQ
         a5TQp8ISQcOQK9hscnKgmE+1p4UFJw6VBbBSrUOM63HOueTrkIHA8/AVfxGizQ+fhQel
         PMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684437994; x=1687029994;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4/Z7FK8gXfOK/eLbI8J6uzD+8ahNn0HJ8uv1V8cuJ9g=;
        b=jzm/nxugQhZx4rJ/NHJiPW4i6weIuFFq6bc7uxffG4DIlr78Ma8Y/cPiQhObCZMyUs
         7/e0BcoDE0sU698NZQKyYJN7kbcIyjX4XhoHmYt05I99tj6O5Wh6OffWYJZiIU/JzB+w
         gXdcH/QxmXXpAVUX5LIK+VGPnwK7Lhi+RRHnfN1sBSLJq3926IWYBC6ZKK1i1P5XkDsj
         JkPV9TJfjVJTW+PVwrJilk66X+CjN+xJzhpOb7nsSHn1tK6vtlzu3hxFakeCYtELIjJZ
         nI/ec6Epwzv5SnMAXK5hf53sDoYJjq7WtK9Um06UUUxjIYlCUh7qvolwG3WMR/JBwhZn
         WPqw==
X-Gm-Message-State: AC+VfDx3xfSA9QvRWSpAJee2eODcHEpOGTPPHckcm8QOD3TxZFTI6JP2
        pvWdqSHbCM+gikTOaljSYFFkO7c76tE=
X-Google-Smtp-Source: ACHHUZ6Ma0v70Cd77SrUB70pu+f5aZ/qv0YWBhUkUZ3/xODGk5A2PKms9kGkXuvW2tDlV8o8FPUL0g==
X-Received: by 2002:a05:6870:9a14:b0:192:7328:d with SMTP id fo20-20020a0568709a1400b001927328000dmr4353456oab.4.1684437994258;
        Thu, 18 May 2023 12:26:34 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e366:77e8:4ae8:a240])
        by smtp.gmail.com with ESMTPSA id q14-20020a9d654e000000b006ac87b54ca4sm956609otl.34.2023.05.18.12.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 May 2023 12:26:33 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] ARM: dts: imx6sx: Add LDB support
Date:   Thu, 18 May 2023 16:26:27 -0300
Message-Id: <20230518192628.151462-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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
Changes since v1:
- Do not use simple-bus for gpr (Marek and Krzysztof).

 arch/arm/boot/dts/imx6sx.dtsi | 39 +++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 4233943a1cca..565b95b36b77 100644
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
+					clocks = <&clks IMX6SX_CLK_LDB_DI0>;
+					clock-names = "ldb";
+					reg = <0x18 0x4>;
+					reg-names = "ldb";
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

