Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 06F8424BB1
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 11:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727636AbfEUJfm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 05:35:42 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:32901 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727633AbfEUJfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 05:35:40 -0400
Received: by mail-pl1-f193.google.com with SMTP id g21so107715plq.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 02:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=67/AKyXoPFVp4cqttbJIppWLYmQiwde4dFyqAbFMmds=;
        b=DtcDve6YywCjAO1Gsx8n2ByBki/1JYbbOX381slvKMV9kqYC9i/m6ea1ZqmczWSeKJ
         qqinec8tk6aq3RdfMXDADkRPldNJAIdHTf81Temc82fxlreA37oQX5+dxGSYoBTfK+C8
         aNYiUHcx14/Vg2bePe7wUj8oXrCjHJycTTpDU7/m1nMae4WUhAGfJgeGUAMQAEZHOXnP
         ZpvFoRcx11tWKDofMV0grUAUO+2AHW2K692bkC+Qfckgqfel0BadkZkytFuc0l5oGoTX
         9TtvuHADwTMhqgL6LI75jXktyrisaqvty1N9KqLoE5ZCWGdptB4SH7o82p/0uRv1PQFo
         SRBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=67/AKyXoPFVp4cqttbJIppWLYmQiwde4dFyqAbFMmds=;
        b=DpzzCnz1wwUtFvhJdXbdAZnv5hzoqy+bwMU40ZGDNf/r1CRWvfshiM7MUPh0iPuQ1v
         GUNm9sUdhXcSyxWHpnXbWc/Ocq9f/54rlHGtif6RYeQjjU/T8yxyByZKZzWAmDYKvG7C
         MkjXK4vAawDhQE2D/3DZmtQ6mQ3l27cVsAoUqpnPOn9N49KZvRU5xYbi+R6ahgcbK8f1
         PWYVep/+Jh/rUQ6Dt12hcF2+tJprXjE8wmnoE2q+8AVTGt5zMyC/lV67yjDsZqewvcnv
         J6FceA8jHvbbrJR+8ypMwpmc90wCmh/nrt3JYBd7Zmzi0sGTkE6d9UPwakWqTdZn9XGu
         IB6Q==
X-Gm-Message-State: APjAAAUn6BrUH2q60V4l1jUgJliX8KYpdSE93i8EUc+ysQwymOy07Eki
        oV1aMs92YTu5FP1mjwio3mq8YQ==
X-Google-Smtp-Source: APXvYqxxPPHeM5A1TWlSQXxfOe059MDl8jQsVAYupC1E8gblrClJ2SJk4Nozm6RXlLG4FgvOu7E9vw==
X-Received: by 2002:a17:902:9f8b:: with SMTP id g11mr74826615plq.199.1558431338839;
        Tue, 21 May 2019 02:35:38 -0700 (PDT)
Received: from localhost ([49.248.189.249])
        by smtp.gmail.com with ESMTPSA id n21sm23297281pgf.28.2019.05.21.02.35.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 02:35:38 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        niklas.cassel@linaro.org, marc.w.gonzalez@free.fr,
        sibis@codeaurora.org, daniel.lezcano@linaro.org,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 4/9] arm64: dts: qcom: msm8916: Use more generic idle state names
Date:   Tue, 21 May 2019 15:05:14 +0530
Message-Id: <606afcaab57021faacdb47220b9d9d0f5a27f7b8.1558430617.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Instead of using Qualcomm-specific terminology, use generic node names
for the idle states that are easier to understand. Move the description
into the "idle-state-name" property.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 82ea5b8b37a2..3a8c6c4fcf15 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -110,7 +110,7 @@
 			reg = <0x0>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SPC>;
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
@@ -122,7 +122,7 @@
 			reg = <0x1>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SPC>;
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
@@ -134,7 +134,7 @@
 			reg = <0x2>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SPC>;
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
@@ -146,7 +146,7 @@
 			reg = <0x3>;
 			next-level-cache = <&L2_0>;
 			enable-method = "psci";
-			cpu-idle-states = <&CPU_SPC>;
+			cpu-idle-states = <&CPU_SLEEP_0>;
 			clocks = <&apcs>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>;
@@ -160,8 +160,9 @@
 		idle-states {
 			entry-method = "psci";
 
-			CPU_SPC: spc {
+			CPU_SLEEP_0: cpu-sleep-0 {
 				compatible = "arm,idle-state";
+				idle-state-name = "standalone-power-collapse";
 				arm,psci-suspend-param = <0x40000002>;
 				entry-latency-us = <130>;
 				exit-latency-us = <150>;
-- 
2.17.1

