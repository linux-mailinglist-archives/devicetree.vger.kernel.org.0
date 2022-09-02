Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F04DD5AA851
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 08:51:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235106AbiIBGvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 02:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235365AbiIBGvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 02:51:16 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 269AA89CC1
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 23:51:14 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id t11-20020a17090a510b00b001fac77e9d1fso4607802pjh.5
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 23:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=vZHYMRZyWlyW2jlBdgxed8KmgG5fMCMo0+ikPtTJWgQ=;
        b=gdWMtBFhnryJ+Z3D74PXL2uiNgjWJxhxK+HrKtz93vj1ZO8BvWbt81GyyWEUeU4PYS
         W8x/MEDihQBH/iJSR0Ci8EOCDVYc2HW8cAcoKzZuOqnfJLVvQlyP1ONlnOmsyCn/m8Eo
         cgl8x5LQh230PAZgr+kh9uNC+nCXhDEZg6a2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=vZHYMRZyWlyW2jlBdgxed8KmgG5fMCMo0+ikPtTJWgQ=;
        b=dT+W+OozsnBsJeAy2MlyYuKAB2URCPN7qPEgVILsP3gGBAA2XJF30iSZc7UOx4bdw4
         y4px8zk024GqElBEtb3+nr+b3LLoxwhV689pxHS2pnxPaRD8tnLfX6YsxtDCSjkhSbEN
         xwv9X17F8R/3/X8vLpExnBkpRnTPAIlHNPNfdlJHW8SnzaUxgt2Btvm5eHO7kk+JGfSy
         5ez5fcNx74I04pceCYB95M73pB5swmTPQkQ0/bB9EYnC/20canFSbn0Sdue4R0OfmgCf
         eDROKC6qGBok0/B6QTbToSQIWN2c2qFUZebPFKr+KPtXGiITsrVntLy4WHsc54kNzEOD
         CMlg==
X-Gm-Message-State: ACgBeo3CvSiJ3/CdHJmHHXO3FLPxwwzeySFTr4SVPZwIyFVcAOavBann
        eIemwhX/TeihbOjc7gkSUp9xrA==
X-Google-Smtp-Source: AA6agR7FVosOCHr7koSgjgyHxpaptX6ySR/hYr2g04aXBfZn9ah7vdT2XuYO8u3qW+XsDhLOFlsspQ==
X-Received: by 2002:a17:90a:748c:b0:1ff:f437:d36c with SMTP id p12-20020a17090a748c00b001fff437d36cmr2548512pjk.0.1662101474101;
        Thu, 01 Sep 2022 23:51:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:e40:9bbb:af2b:bca3])
        by smtp.gmail.com with ESMTPSA id e17-20020a17090301d100b00172a2a41064sm769815plh.298.2022.09.01.23.51.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 23:51:13 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 2/3] arm64: dts: rockchip: Add RK3399-T OPP table
Date:   Fri,  2 Sep 2022 12:20:56 +0530
Message-Id: <20220902065057.97425-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220902065057.97425-1-jagan@amarulasolutions.com>
References: <20220902065057.97425-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RK3399-T is down-clocked version of RK3399 SoC operated at 1.5GHz.

Add CPU operating points table for it.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- update opp-table node names
Changes for v3:
- new patch

 .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
new file mode 100644
index 000000000000..1ababadda9df
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
@@ -0,0 +1,114 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2022 Radxa Limited
+ */
+
+/ {
+	cluster0_opp: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <875000 875000 1250000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <875000 875000 1250000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <900000 900000 1250000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <975000 975000 1250000>;
+		};
+	};
+
+	cluster1_opp: opp-table-1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <875000 875000 1250000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <875000 875000 1250000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <875000 875000 1250000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <925000 925000 1250000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1000000 1000000 1250000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1075000 1075000 1250000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <1150000 1150000 1250000>;
+		};
+	};
+
+	gpu_opp_table: opp-table-2 {
+		compatible = "operating-points-v2";
+
+		opp00 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <875000 875000 1150000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <875000 875000 1150000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <875000 875000 1150000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <975000 975000 1150000>;
+		};
+	};
+};
+
+&cpu_l0 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l1 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l2 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l3 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_b0 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&cpu_b1 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};
-- 
2.25.1

