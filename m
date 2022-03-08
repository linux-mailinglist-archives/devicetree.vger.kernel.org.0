Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 844A04D0C96
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 01:10:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344046AbiCHALi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 19:11:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344083AbiCHALb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 19:11:31 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED79938793
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 16:10:29 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id p17so15506617plo.9
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 16:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=geOsN3B5D2pajGUjtYVHTo7ODDoeZA/dXvJuvUQtYe4=;
        b=hjPl2DvyYx/GEZ+qumgSSPAABz/WMel6Ui3Jxr/YPZ4TuUpIPHRifzbMcMPXc8Y11M
         hb5es3SQHBRHCZSITcdyqS5YiCk+iPC4Q5JZQyvSmXjfBjDeLRDnLOBJYnne14oFVpOO
         psz9mQQbD6xj5kjFQKke4sLAmYf4DFgKN3RcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=geOsN3B5D2pajGUjtYVHTo7ODDoeZA/dXvJuvUQtYe4=;
        b=AvE6tqT1KDCX97R52fBBoaQtbOXVB8lJ5615D2p4FtNq3PIvIhZcluiXX+KlwSyhaB
         sDK5FiKPAWnvdzwGTM5uUyCCrA8ms7RR9aWAUo7EnS2lvqez4zwFartdI8N1BoMHR0V1
         3QlommuEchmS2cMrL1oBlyHQR+JGtLtHBEweeB1jjbtDifHdJHlDZf0Jv5Cw59WZKGO2
         WoRqaFgx7BvGcsJYYxnsdM2120BqsSjw0qmWXwmzl+C1+QdxbZ4+Hprk7X2/TdASv3Uy
         oZMlaQUdgl17aHlDUyCpJ2rIsJw+WT+OJXrzoS4WRakm9mRAWGK8J231XA3MZ5KBuYFz
         krcg==
X-Gm-Message-State: AOAM532pLjyPC6weDO8e6fl1EqLYUQsABgkthmCtrXWgo//S+lixR1DV
        2EilkrVcxqPTisSStzQjSxJVYQ==
X-Google-Smtp-Source: ABdhPJzo+XNtxT80abl8dqw6Hu7fiwRBj0FMUaBeRKVcz5jjcBEwspiAWqkbPrki6wcmwdjDiqNmTQ==
X-Received: by 2002:a17:903:1c8:b0:150:12cd:a02d with SMTP id e8-20020a17090301c800b0015012cda02dmr14672422plh.174.1646698229373;
        Mon, 07 Mar 2022 16:10:29 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
        by smtp.gmail.com with UTF8SMTPSA id z14-20020aa7888e000000b004e5c2c0b9dcsm17778315pfe.30.2022.03.07.16.10.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 16:10:28 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
        Derek Basehore <dbasehore@chromium.org>,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 11/15] arm64: dts: rk3399: Add dfi and dmc nodes
Date:   Mon,  7 Mar 2022 16:09:41 -0800
Message-Id: <20220307160918.v3.11.Ie97993621975c5463d7928a8646f3737c9f2921d@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
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

These are required to support DDR DVFS on RK3399 platforms.

Signed-off-by: Lin Huang <hl@rock-chips.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Gaël PORTAY <gael.portay@collabora.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
Change since Daniel's posting: reordered by unit address, per existing
style

---

(no changes since v2)

Changes in v2:
 - rename dmc to memory-controller

Changes in v1:
This is based on a v5 posting from various authors:
https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/
Much of that series was already merged, so I start over with the
numbering.

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 080457a68e3c..9065bb55ee7d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1295,6 +1295,25 @@ pwm3: pwm@ff420030 {
 		status = "disabled";
 	};
 
+	dfi: dfi@ff630000 {
+		reg = <0x00 0xff630000 0x00 0x4000>;
+		compatible = "rockchip,rk3399-dfi";
+		rockchip,pmu = <&pmugrf>;
+		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru PCLK_DDR_MON>;
+		clock-names = "pclk_ddr_mon";
+		status = "disabled";
+	};
+
+	dmc: memory-controller {
+		compatible = "rockchip,rk3399-dmc";
+		rockchip,pmu = <&pmugrf>;
+		devfreq-events = <&dfi>;
+		clocks = <&cru SCLK_DDRC>;
+		clock-names = "dmc_clk";
+		status = "disabled";
+	};
+
 	vpu: video-codec@ff650000 {
 		compatible = "rockchip,rk3399-vpu";
 		reg = <0x0 0xff650000 0x0 0x800>;
-- 
2.35.1.616.g0bdcbb4464-goog

