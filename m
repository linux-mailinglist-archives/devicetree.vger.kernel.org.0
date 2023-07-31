Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 816F676940B
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:01:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230478AbjGaLBH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:01:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbjGaLBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:01:00 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30FBD1B8
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:57 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1bbc2e1c6b2so26895245ad.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801256; x=1691406056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWLb2QHv80Gf4hwq5O1c/PTUIS8nb/DSOgdSZjWSOkI=;
        b=szE/qciLc8Z98Doz/74pVkBcEuCdDBO9Vdeqiu6uxqO8/Tag4moUTJL1pnf/26mP2w
         3VDZlNSmK1cIPh/X8UPWMicfXHWQQ/HqM6uqUsMHQMwbBMuU2sEmjOs1vjbWRcng8wx+
         tunWvfHXl7PZsTkLEfI8lgRdtnm5kxCxMpMNzuNQzS6U6xAVcaFO2WGsH4rrFrPcpEHD
         dmwj9awzAicODG5WK2EJEmEGu+SDqLbsWd1UGUiMBSJZOSUs0ihxxJJsdEDxQECkhyw1
         jD4zif/BsMut4BuZRKjxYDr4JFmdSZnSvZn8mYZ3hAwsDLxUCeDR8a5wjd5D/VJUVwJA
         LRfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801256; x=1691406056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eWLb2QHv80Gf4hwq5O1c/PTUIS8nb/DSOgdSZjWSOkI=;
        b=U/aL/DeTa9VKlxqBSxk/Vb+sWUlA4JYCl74osl23DcwNj6vC56Z41rbcC18AnDvA0m
         aK31I24tM9+ygBPoMRE103XZZx5HMnR6mabZ5efS2Cw16ZjvcT7drfdqsStj8ogHCVV2
         4cGh6pEK0nSGizM8yrnzxHwvjDj6rrB1E63hfk7W5IpTgwITzaq7/DXs7zjB5afbwpIf
         +diHhCUd3mwKhAs6hAgcTKTpsiQPam2EvF8harve6PyrG5b907iEykPj8GUZTTUqXwfW
         5CPYdNElo1T49mmVNgJvwiPGUDzidwOAlAMj3KPz2okkX1K0Apqh3+oTGhgY2qFL6QSv
         VfNw==
X-Gm-Message-State: ABy/qLa1IYOqwoeH82rJXR7KiCSa+OMmbe0nCvxekrGgh1GQx9FFLhzV
        NmgfSq/VY+CyW5QnmgoKh8nyCg==
X-Google-Smtp-Source: APBJJlFzMR4Ag+omLupQiZPSx5mTCYomZZuF1agtSxo5hBpOA9cERdu3r1bU+bJt30kzbkiKl7yIEQ==
X-Received: by 2002:a17:902:ec89:b0:1bb:6875:5a73 with SMTP id x9-20020a170902ec8900b001bb68755a73mr9190006plg.2.1690801256700;
        Mon, 31 Jul 2023 04:00:56 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:56 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 09/14] ARM: dts: rockchip: rv1126: Add PD_VO entry
Date:   Mon, 31 Jul 2023 16:30:07 +0530
Message-Id: <20230731110012.2913742-10-jagan@edgeble.ai>
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

PD_VO power-domain tree diagram in RV1126 is connected to
- BIU_VO
- VOP
- RGA
- IEP
- DSIHOST

Add PD_VO power-domain entry in RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 39 ++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index afa5a68f766f..4d74d3d998ab 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -125,6 +125,26 @@ qos_sdio: qos@fe86c000 {
 		reg = <0xfe86c000 0x20>;
 	};
 
+	qos_iep: qos@fe8a0000 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0000 0x20>;
+	};
+
+	qos_rga_rd: qos@fe8a0080 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0080 0x20>;
+	};
+
+	qos_rga_wr: qos@fe8a0100 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0100 0x20>;
+	};
+
+	qos_vop: qos@fe8a0180 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0180 0x20>;
+	};
+
 	gic: interrupt-controller@feff0000 {
 		compatible = "arm,gic-400";
 		interrupt-controller;
@@ -170,6 +190,25 @@ power-domain@RV1126_PD_SDIO {
 				pm_qos = <&qos_sdio>;
 				#power-domain-cells = <0>;
 			};
+
+			power-domain@RV1126_PD_VO {
+				reg = <RV1126_PD_VO>;
+				clocks = <&cru ACLK_RGA>,
+					 <&cru HCLK_RGA>,
+					 <&cru CLK_RGA_CORE>,
+					 <&cru ACLK_VOP>,
+					 <&cru HCLK_VOP>,
+					 <&cru DCLK_VOP>,
+					 <&cru PCLK_DSIHOST>,
+					 <&cru ACLK_IEP>,
+					 <&cru HCLK_IEP>,
+					 <&cru CLK_IEP_CORE>;
+				pm_qos = <&qos_rga_rd>,
+					 <&qos_rga_wr>,
+					 <&qos_vop>,
+					 <&qos_iep>;
+				#power-domain-cells = <0>;
+			};
 		};
 	};
 
-- 
2.25.1

