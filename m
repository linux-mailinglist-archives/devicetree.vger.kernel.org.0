Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D63E76940C
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:01:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230363AbjGaLBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:01:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230447AbjGaLBH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:01:07 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE9C18C
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:00 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1bc1c1c68e2so1611705ad.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801260; x=1691406060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=55TagAiRshVLsdjzm5dT6uG8EtYk9qbUxp2o3j3weag=;
        b=Bl3v+TDkr1tWyTR/X3u7OIWZY+hhZcfzuJMQJUAsDJ4k3VI0u9+hKhzUyskc5O/L0a
         UHShK07qZ5T4TooAg0YFWtucQeZP+x73pJycEz+zwtvgMrKXQkFcJaHIB7unBa7zk3mU
         H90/e++GoCZW2I6JHF1020O/DfcbaiiAjdxoe0WS8kvyBrxYPHMPGa+0ey4WmieNbxt6
         8cHIkPxlBV5T9jaxWCsOjO9+2hWGi5IQztDadSenimHylGJ3ZyMFdPVwmyeXaKfnk3pI
         aLrlGi07RzqUBvCommCfmGaC3ZXgqWCT24MaGRgFvzMlIfm5Ch5y5ztSX4ubvCWKEPgJ
         oDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801260; x=1691406060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=55TagAiRshVLsdjzm5dT6uG8EtYk9qbUxp2o3j3weag=;
        b=Sd9qHpukFPRdO8VCDt3cSA7lOFJ9hkgaZqCig9cEgSpTPO92WOWtUKzYuZrtSF9GsJ
         HMACwGHaOoo5D2/IqVOzV0FmE61zpoiiRu6oEtddjdRgL/ZfKyXU/2WqCxCPOe4cNL3k
         UHCfiiHuCRMhWHTK7ZQooarRLrY2W5cE2j/EInizX+9wcIzuYnaCvfCTaDaCZpCtMxI0
         yUPdCtCq5nipOhtyHzoms5SebAlxDC3cmSHO782lFGQd4AS/QqjGHDCpGtH1aeCPYC5e
         vzsZhTpSn3F9tJUhTZviaoFUZJKCiJhOVRgD2QgSQnfXS8VTVaEcuOPjFMPwdRLByiPG
         M9tQ==
X-Gm-Message-State: ABy/qLbk6Fr61oa4HKYnUbE9wC6BSqjvsrx8HJbhkh1FVa7rppsFeLng
        /04AWrwewKUL+o2oqi+H6eDcBg==
X-Google-Smtp-Source: APBJJlFN6+PX/38XXVYidoiq5so/jfqcKsG0PA72uSFA4mF8rVS3tLoY360tQQFzPvZOXDtB3tTcHw==
X-Received: by 2002:a17:903:32cf:b0:1b9:c68f:91a5 with SMTP id i15-20020a17090332cf00b001b9c68f91a5mr10388667plr.6.1690801260144;
        Mon, 31 Jul 2023 04:01:00 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:59 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 10/14] ARM: dts: rockchip: rv1126: Add VOP_LITE support
Date:   Mon, 31 Jul 2023 16:30:08 +0530
Message-Id: <20230731110012.2913742-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RV1126 VOP_LITE supports the video output processing ofMIPI DSI,
RGB display interfaces with max output resolution of 1920x1080.

Add support for vop in rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 42 ++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 4d74d3d998ab..9ccd1bad6229 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -83,6 +83,11 @@ timer {
 		clock-frequency = <24000000>;
 	};
 
+	display_subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	xin24m: oscillator {
 		compatible = "fixed-clock";
 		clock-frequency = <24000000>;
@@ -393,6 +398,43 @@ timer0: timer@ff660000 {
 		clock-names = "pclk", "timer";
 	};
 
+	vop: vop@ffb00000 {
+		compatible = "rockchip,rv1126-vop";
+		reg = <0xffb00000 0x200>, <0xffb00a00 0x400>;
+		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
+		clocks = <&cru ACLK_VOP>, <&cru DCLK_VOP>, <&cru HCLK_VOP>;
+		reset-names = "axi", "ahb", "dclk";
+		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>, <&cru SRST_VOP_D>;
+		iommus = <&vop_mmu>;
+		power-domains = <&power RV1126_PD_VO>;
+		status = "disabled";
+
+		vop_out: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vop_out_rgb: endpoint@0 {
+				reg = <0>;
+			};
+
+			vop_out_dsi: endpoint@1 {
+				reg = <1>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@ffb00f00 {
+		compatible = "rockchip,iommu";
+		reg = <0xffb00f00 0x100>;
+		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		#iommu-cells = <0>;
+		power-domains = <&power RV1126_PD_VO>;
+		status = "disabled";
+	};
+
 	gmac: ethernet@ffc40000 {
 		compatible = "rockchip,rv1126-gmac", "snps,dwmac-4.20a";
 		reg = <0xffc40000 0x4000>;
-- 
2.25.1

