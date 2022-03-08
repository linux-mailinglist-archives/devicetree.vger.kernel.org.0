Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92D4E4D2117
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 20:10:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349904AbiCHTLK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 14:11:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349963AbiCHTLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 14:11:01 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E35924EA35
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 11:09:43 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id mg21-20020a17090b371500b001bef9e4657cso3102500pjb.0
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 11:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rU/WmKtGF4aym/wTFIaRDtTDG4TLl/BdBtfttgE23Ag=;
        b=oH6Lb4C7wN+4PXA4AMFBLg1g7tpjNkcmBS7cOkvTu1Qh8GlHc70gL16oz6kqhTCB/o
         DSFQ8/BGrli+yzLSqGuwRyi04qDNkafr2OUHUXVZNDUSONY9iOcQbbPyF9f8r7Wo874e
         rGxcXSu7FkrKdaMFcCOhe5PVUZ89AloSWfI+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rU/WmKtGF4aym/wTFIaRDtTDG4TLl/BdBtfttgE23Ag=;
        b=s6pFvInSlLhlT/CjKTWrjeKQ0Tu5DP8wxZs8fRYW/lSolIPzUFMs253O91XR0YxM0M
         0+PwIFGSf5Bw7Q2Ye3yTFQDusGoCbkb+vxxHTiiGVRkHVgBHQ8XFEzgkDvl/Xl/mO+El
         zcPLw2cS10inuLOiQ3bxKjSk6AKuUhf2eQXRGmlTz7kPK3Zr1FdY95sAnI8ZOCKYn/+B
         neIk+NEEpr6QxgLu0QPi0gPs+ZZM1JHA8vrZohPuzPxkogXSsyr3yxD394bk2VDSLCsf
         0+124N0LMbocyDgXy3i4chTLXWglgFOWExEqrjUJGXOViQ4Rq5jjPdnQs8isXjOIPfKg
         Ix8w==
X-Gm-Message-State: AOAM533bcWE+Dk4o+6BMTM9i1Gd+UdrYCT07La5eNghd6kwUgmfBq7rF
        FY5HTUVQ3+Kqg2kkOBy8S23UzA==
X-Google-Smtp-Source: ABdhPJxP7h3r4ZhYwF9gzeIS3Qt9XY3Q9Ckm0p/4qOD97gRHmVDVuTqt3ovo1DJe6sYtWI+bsN95Jg==
X-Received: by 2002:a17:902:7049:b0:151:e52e:ae42 with SMTP id h9-20020a170902704900b00151e52eae42mr13007318plt.118.1646766578783;
        Tue, 08 Mar 2022 11:09:38 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
        by smtp.gmail.com with UTF8SMTPSA id d5-20020a17090acd0500b001b9c05b075dsm3563983pju.44.2022.03.08.11.09.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Mar 2022 11:09:38 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Derek Basehore <dbasehore@chromium.org>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-kernel@vger.kernel.org, Lin Huang <hl@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 12/15] arm64: dts: rockchip: Enable dmc and dfi nodes on gru
Date:   Tue,  8 Mar 2022 11:08:58 -0800
Message-Id: <20220308110825.v4.12.I3a5c7f21ecd8221b42c2dbcd618386bce7b3e9a6@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Lin Huang <hl@rock-chips.com>

Enable the DMC (Dynamic Memory Controller) and the DFI (DDR PHY
Interface) nodes on gru boards so we can support DDR DVFS.

Signed-off-by: Lin Huang <hl@rock-chips.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Gaël PORTAY <gael.portay@collabora.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v2)

Changes in v2:
 - Adapt to new properties

Changes in v1:
This was part of a previous series, at:
https://lore.kernel.org/r/20210308233858.24741-3-daniel.lezcano@linaro.org
I've picked up a bunch of changes and fixes, so I've restarted the patch
series numbering. Updates since the old series:
 - reordered alphabetically by phandle name, per style
 - drop a ton of deprecated/unused properties
 - add required center-supply for scarlet
 - add new *_idle_dis_freq properties
 - drop the lowest (200 MHz) OPP; this was never stabilized for
   production
 - bump the voltage (0.9V -> 0.925V) for the highest OPP on Chromebook
   models; later (tablet) models were more stable, with a fixed DDR
   regulator
 - bump odt_dis_freq to 666 MHz; early versions used 333 MHz, but
   stabilization efforts landed on 666 MHz for production

 .../dts/rockchip/rk3399-gru-chromebook.dtsi   |  7 +++++
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 12 ++++++++
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi  | 28 +++++++++++++++++++
 .../boot/dts/rockchip/rk3399-op1-opp.dtsi     | 25 +++++++++++++++++
 4 files changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 3355fb90fa54..50d459ee4831 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -234,6 +234,13 @@ &cdn_dp {
 	extcon = <&usbc_extcon0>, <&usbc_extcon1>;
 };
 
+&dmc {
+	center-supply = <&ppvar_centerlogic>;
+	rockchip,pd-idle-dis-freq-hz = <800000000>;
+	rockchip,sr-idle-dis-freq-hz = <800000000>;
+	rockchip,sr-mc-gate-idle-dis-freq-hz = <800000000>;
+};
+
 &edp {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index a9817b3d7edc..913d845eb51a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -391,6 +391,18 @@ &cru {
 		<400000000>;
 };
 
+/* The center supply is fixed to .9V on scarlet */
+&dmc {
+	center-supply = <&pp900_s0>;
+};
+
+/* We don't need .925 V for 928 MHz on scarlet */
+&dmc_opp_table {
+	opp03 {
+		opp-microvolt = <900000>;
+	};
+};
+
 &gpio0 {
 	gpio-line-names = /* GPIO0 A 0-7 */
 			  "CLK_32K_AP",
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 162f08bca0d4..23bfba86daab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -373,6 +373,34 @@ &cru {
 		<200000000>;
 };
 
+&dfi {
+	status = "okay";
+};
+
+&dmc {
+	status = "okay";
+
+	rockchip,pd-idle-ns = <160>;
+	rockchip,sr-idle-ns = <10240>;
+	rockchip,sr-mc-gate-idle-ns = <40960>;
+	rockchip,srpd-lite-idle-ns = <61440>;
+	rockchip,standby-idle-ns = <81920>;
+
+	rockchip,ddr3_odt_dis_freq = <666000000>;
+	rockchip,lpddr3_odt_dis_freq = <666000000>;
+	rockchip,lpddr4_odt_dis_freq = <666000000>;
+
+	rockchip,sr-mc-gate-idle-dis-freq-hz = <1000000000>;
+	rockchip,srpd-lite-idle-dis-freq-hz = <0>;
+	rockchip,standby-idle-dis-freq-hz = <928000000>;
+};
+
+&dmc_opp_table {
+	opp03 {
+		opp-suspend;
+	};
+};
+
 &emmc_phy {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
index 2180e0f75003..6e29e74f6fc6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
@@ -110,6 +110,27 @@ opp05 {
 			opp-microvolt = <1075000>;
 		};
 	};
+
+	dmc_opp_table: dmc_opp_table {
+		compatible = "operating-points-v2";
+
+		opp00 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <900000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <666000000>;
+			opp-microvolt = <900000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <900000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <928000000>;
+			opp-microvolt = <925000>;
+		};
+	};
 };
 
 &cpu_l0 {
@@ -136,6 +157,10 @@ &cpu_b1 {
 	operating-points-v2 = <&cluster1_opp>;
 };
 
+&dmc {
+	operating-points-v2 = <&dmc_opp_table>;
+};
+
 &gpu {
 	operating-points-v2 = <&gpu_opp_table>;
 };
-- 
2.35.1.616.g0bdcbb4464-goog

