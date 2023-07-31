Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69CA176940D
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:01:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjGaLBO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:01:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231187AbjGaLBK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:01:10 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83309E6C
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:04 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-56401f1da3dso2364853a12.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801264; x=1691406064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+OGteNt5NDQh8X1+wYBc1iO3wWROEIikeZHDF62+z3E=;
        b=M91+x+uFD6KCXts/C4HyXuwml1tkv4f0eK6i9HsfOuCkgFzneYqzBxOUkYLv/W0sgX
         vIgLTaCYsbR+m01OAr9DQTIeU85hqCw/hg6ZZWtDa3GTYVd82Y/Ulnb8YFERF0f1Pfhl
         lOLL7Kx/CIdgMIo1CtldjOKFn3aE7KytMh8XNgSL+x8N+Z8d1riR7vmTJfR/ygIwSj3N
         62MthbbkYL9QAQujZSkT4gVTULBWt/5nZyooKXq8ZJaaP+uMI+Fp+wdhQdNx2cCe5uE8
         aCUqRHALjCXJwjMCtoLnHbGI4r9bZdsaFTSG4SgPDLF+Kn9y/sdgmryQzcP/pYCOuM3s
         MMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801264; x=1691406064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+OGteNt5NDQh8X1+wYBc1iO3wWROEIikeZHDF62+z3E=;
        b=P7suYLP5bScbQeM5uCaYegBPW5OC+uPCEOLif8FFTptTGlkJFW787LEg9mjlKdDAWh
         iVhGaAcfg3HQyS1+k6a5KTGgvsyqunqZ8xmsJgucWwXVg/qIfs1SdW6/cdhIRMreTDPh
         WR9Dfp4jZk9fBgqF1BGMx1BiXRpHuTvw4yQeami8B90FSxGDZUWIsg4Itj6O75k24M1g
         ImFDMv/MQWEd/RpaSpjB7V1pNgyOoTiOnWfV6in8G/yimAalCX8zeGp1+AjmYBWTZAJv
         PPPdMycHXMi6aMQHNhz90DA6Vsiy7g1seONJQYqf5Mw1ecWJTEIfGedObCRff0rVUDU3
         ToIA==
X-Gm-Message-State: ABy/qLbK4UEJo1DZKg8kNJGRLZ90EmXWATKCtKUayLP3coBUJBwf4Y1r
        d+Mqrjova3PrKbCBZB2f6cKOVQ==
X-Google-Smtp-Source: APBJJlFs4UCRFy2aJkNr/zigzSG3poRWLEQANovbsuunR+0w0DxxDRSeTObukRAQ4atK1noRnsU2Xw==
X-Received: by 2002:a17:90a:3e4e:b0:268:29cb:f93a with SMTP id t14-20020a17090a3e4e00b0026829cbf93amr9162517pjm.1.1690801264006;
        Mon, 31 Jul 2023 04:01:04 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:03 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 11/14] ARM: dts: rockchip: rv1126: Add MIPI DSI pipeline
Date:   Mon, 31 Jul 2023 16:30:09 +0530
Message-Id: <20230731110012.2913742-12-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MIPI DSI controller in RV1126 has integrated MIPI D-PHY V1.2
that supports up to 4 lanes with a 4Gbps transfer rate.

Add MIPI DSI pipeline for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 49 ++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 9ccd1bad6229..512cc18762b6 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -276,6 +276,20 @@ cru: clock-controller@ff490000 {
 		#reset-cells = <1>;
 	};
 
+	dsi_dphy: mipi-dphy@ff4d0000 {
+		compatible = "rockchip,rv1126-dsi-dphy";
+		reg = <0xff4d0000 0x500>;
+		assigned-clocks = <&pmucru CLK_MIPIDSIPHY_REF>;
+		assigned-clock-rates = <24000000>;
+		clock-names = "ref", "pclk";
+		clocks = <&pmucru CLK_MIPIDSIPHY_REF>, <&cru PCLK_DSIPHY>;
+		#phy-cells = <0>;
+		power-domains = <&power RV1126_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_DSIPHY_P>;
+		status = "disabled";
+	};
+
 	dmac: dma-controller@ff4e0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0xff4e0000 0x4000>;
@@ -420,6 +434,7 @@ vop_out_rgb: endpoint@0 {
 
 			vop_out_dsi: endpoint@1 {
 				reg = <1>;
+				remote-endpoint = <&dsi_in_vop>;
 			};
 		};
 	};
@@ -435,6 +450,40 @@ vop_mmu: iommu@ffb00f00 {
 		status = "disabled";
 	};
 
+	dsi: dsi@ffb30000 {
+		compatible = "rockchip,rv1126-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0xffb30000 0x500>;
+		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk";
+		clocks = <&cru PCLK_DSIHOST>;
+		phy-names = "dphy";
+		phys = <&dsi_dphy>;
+		power-domains = <&power RV1126_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_DSIHOST_P>;
+		rockchip,grf = <&grf>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				dsi_in_vop: endpoint {
+					remote-endpoint = <&vop_out_dsi>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	gmac: ethernet@ffc40000 {
 		compatible = "rockchip,rv1126-gmac", "snps,dwmac-4.20a";
 		reg = <0xffc40000 0x4000>;
-- 
2.25.1

