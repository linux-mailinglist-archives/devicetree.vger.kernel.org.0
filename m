Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5BEE656073
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 07:36:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231642AbiLZGgx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 01:36:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231648AbiLZGgr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 01:36:47 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFDAD2AC1
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:36:44 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id o31-20020a17090a0a2200b00223fedffb30so9960430pjo.3
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lbYKeQDdqP1ch9vSzLDC3uKKF34wY5rVbaptUoqvdAQ=;
        b=z9HMNT4MykhC60knbICdXV7pS81E4ck4YuoynRIewr1Wz52l/4vvf/ZQMNYg0VYVBG
         m9tOMnrlQMOuGhTbE1et9tWMwN0CtdvwaKRjEr5Vqb2uVNY88XYTXLo5IYrvtDdyAYgW
         IB43ouPr0pCfel0CCdnvDOoXSpYqegeCtYRgY5oCyeiwSO8JIjJbISBgJKE8zJP9X5Hy
         yDoAhwTRUmgVBVlaNq2KMbY4dQtDK9dUn3GVvb5xUgjRQuHMTEVe5w/U8pBNyu7JtXC+
         bmmvB3YPTclY2Vhi+r/CrEPYHUJtWV0haojJZDxnBLo45b8MyemNI1mIu7p5oBcFC+VT
         ns5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lbYKeQDdqP1ch9vSzLDC3uKKF34wY5rVbaptUoqvdAQ=;
        b=xVjVD/TzGSMSzmM6tIDpLhtknEdZuc+45+PMger+ltrLgHeo4sFZ0oePzx/ou3JACy
         6W81LFa/JTeav2uTVFkjIr3oWFtpMytBVxcpr+oI1EZtP+IpiSjDerqGs96sa7fzOM1c
         MnNjzhZs28SM9RJ592w7p7mZ83D2Nds2VXXrjdLq3vlmM1TpCgzGNGiaQiKho8akhAwU
         qjMnePyXrVljlP89zQ23VetUNXvsS4UYVunOC8eTB4BRzwEsIn46ulC2QmHV5fYwp1il
         9oE0WrhME5x8SqlqdLfxi3aY7Zk5QY0LrJD07uieABY4dw00pDjiMx7ivYxskvOtLcMf
         EQWQ==
X-Gm-Message-State: AFqh2krG3d8tCNsvRKn1Z9pFbDtC/nQwLDKc0BvQkUf3n+aa22MIaUxf
        z1zm79oitKS13avZgj6Rp58+EQ==
X-Google-Smtp-Source: AMrXdXsegnB/4YgCRPurb7/c4aUXMRuD733OB0kVFb4zixNOin28xG+7a90OjS5sZrt9IbqGnbyDGQ==
X-Received: by 2002:a05:6a20:a6a8:b0:9d:efd3:66bf with SMTP id ba40-20020a056a20a6a800b0009defd366bfmr22241960pzb.6.1672036604145;
        Sun, 25 Dec 2022 22:36:44 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id 31-20020a63145f000000b0047048c201e3sm5730659pgu.33.2022.12.25.22.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 22:36:43 -0800 (PST)
From:   Anand Moon <anand@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Anand Moon <anand@edgeble.ai>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCHv2 linux-next 2/4] ARM: dts: rockchip: rv1126: Add rgmiim1 pin-control
Date:   Mon, 26 Dec 2022 06:36:20 +0000
Message-Id: <20221226063625.1913-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221226063625.1913-1-anand@edgeble.ai>
References: <20221226063625.1913-1-anand@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ethernet pin-control for rv1126 SoC.

Signed-off-by: Anand Moon <anand@edgeble.ai>
---
drop SoB of Jagan Teki
---
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 42 +++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
index 4bc419cc1210..b77021772781 100644
--- a/arch/arm/boot/dts/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -11,6 +11,14 @@
  * by adding changes at end of this file.
  */
 &pinctrl {
+	clk_out_ethernet {
+		/omit-if-no-ref/
+		clk_out_ethernetm1_pins: clk-out-ethernetm1-pins {
+			rockchip,pins =
+				/* clk_out_ethernet_m1 */
+				<2 RK_PC5 2 &pcfg_pull_none>;
+		};
+	};
 	emmc {
 		/omit-if-no-ref/
 		emmc_rstnout: emmc-rstnout {
@@ -61,6 +69,40 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	rgmii {
+		/omit-if-no-ref/
+		rgmiim1_pins: rgmiim1-pins {
+			rockchip,pins =
+				/* rgmii_mdc_m1 */
+				<2 RK_PC2 2 &pcfg_pull_none>,
+				/* rgmii_mdio_m1 */
+				<2 RK_PC1 2 &pcfg_pull_none>,
+				/* rgmii_rxclk_m1 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* rgmii_rxd0_m1 */
+				<2 RK_PB5 2 &pcfg_pull_none>,
+				/* rgmii_rxd1_m1 */
+				<2 RK_PB6 2 &pcfg_pull_none>,
+				/* rgmii_rxd2_m1 */
+				<2 RK_PC7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3_m1 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* rgmii_rxdv_m1 */
+				<2 RK_PB4 2 &pcfg_pull_none>,
+				/* rgmii_txclk_m1 */
+				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd0_m1 */
+				<2 RK_PC3 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd1_m1 */
+				<2 RK_PC4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd2_m1 */
+				<2 RK_PD1 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd3_m1 */
+				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txen_m1 */
+				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+		};
+	};
 	sdmmc0 {
 		/omit-if-no-ref/
 		sdmmc0_bus4: sdmmc0-bus4 {
-- 
2.39.0

