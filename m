Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31BB96EF2B5
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 12:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240655AbjDZKuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 06:50:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240595AbjDZKty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 06:49:54 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7172E422B
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:49:49 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f193ca059bso37286355e9.3
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682506188; x=1685098188;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P8BG56Q0+m7b3FaG//0Q095XeVZlwC5hERE//1oBbUU=;
        b=aYXAZzfvKzrHp5bTwPuhC2l54ThShzXKcWkTdVvcqp9HG8uhapgDMdJqdFU6KEkdFz
         /V8fGA0FaZUxaLCH7un4kCZgIghDz5Ft5t8aLcAUdpfqCYWwvV1vJmfnGCP6Wp+hQRel
         Es9tBOvAyo77i8I5RvjoC68oXyN9eRd4bL3tWrgOPS4G9p4Xjw8RhiaSJ1TtKHuVg0Do
         PMpEeXeHAREKep47txySM/3/9n9c3JTjAlucxSzXT2UtZwObOVhONNVDiOhC+03Y7/s/
         hUp6IB1oLmoXeEBsbOL2h/KUzMlJAwDkVy7kMjxW7Tu8n+P9YjppN+A3m0UiM5XY6lw7
         ZrLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682506188; x=1685098188;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P8BG56Q0+m7b3FaG//0Q095XeVZlwC5hERE//1oBbUU=;
        b=X1xkXqf7q41FRbbWxpWrs/67QEyZC6wtiLJMbNf9DZ9+UcBv6latKsfnGo5+f4QyXV
         H2z5RIzde7hgb4S03+PmSl5xWs/gr4XlOyH+YhyBCiJP1bva7HEdXlXu9xwN9E1bX8rZ
         XxGVWanaUubrzijtrDmB2DGLzGXAMQ2pSkF2x24waO4F4Pw9Pg5ZtN7tTHekEfTgzA6k
         q7yJH8aisNtJERTvlyTF5pVbRYMnhNDmZ3TDyPMQv2AgsEKKOMM+O+LlrOud0tgNu6h1
         W62YUZgg39Nht5isvo8979//avFqC9gLGw7QcvT58Dr7Qdh8s2EFz/uhodTexkhzWPum
         f+6Q==
X-Gm-Message-State: AAQBX9dwz29r7+fQkgrjpZQjiD1X8KAPMZXEtlOiusRTlb+raRcxw0ts
        AOWS3CmNMB5YcqNm+HnRmK/Uhw==
X-Google-Smtp-Source: AKy350YVXLQCLnS1cLdK89PZrv/Z1ugf29n4CNXgA0SCxiYJYfI7aIZG8KPKKkr1P9krW8LpegL6Rg==
X-Received: by 2002:a7b:c3d2:0:b0:3ed:a80e:6dfa with SMTP id t18-20020a7bc3d2000000b003eda80e6dfamr11851697wmj.40.1682506187845;
        Wed, 26 Apr 2023 03:49:47 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 25-20020a05600c025900b003ed2c0a0f37sm17601988wmj.35.2023.04.26.03.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 03:49:47 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Wed, 26 Apr 2023 12:49:10 +0200
Subject: [PATCH v6 10/12] arm64: dts: mediatek: add OPP support for mt8365
 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v6-10-8d6b1cfe7f29@baylibre.com>
References: <20230203-evk-board-support-v6-0-8d6b1cfe7f29@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v6-0-8d6b1cfe7f29@baylibre.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3792; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=iQCxmnK+eQfy1aBNVxZAL4gcwl2Oh2buOTNBmT3l0E0=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkSQG/qLQtJwUDks5xtM/071v6dHlJsLh6Vt6q2cR1
 FuGIjLKJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZEkBvwAKCRArRkmdfjHURS4/EA
 CDkZZ3jekGCJDLaK+PGqUIPjslW2V+405gqb0QmV1eD4IGEXXQV5+Andbixx64BXRH8eXQ05xz85lt
 l8FawZ1bhgHbtXKQ8XW5J5U3h8iBE2Oa7K2/KPBbPHz+KVxdV6uG+FphjYUu6RcwM6ZslqWIXBXLN7
 wrz7/BnNjTt8vu0sDXdL1ZYQlbRrX+7PGeHokyIa7sqsC5hLzXCqvg5Gxre2RhN7w09MSbUr1CeMHR
 DK0Vql3GCTiHtWA5OV9ZYdGW4IZdJX+Z1sK1rByBxPWcObWw8TiosuxMdWeMebQJBsboeAwwk6g/Z3
 3Gr9Tiel2eY2rRzpaphO7nB/dVPIFn+DBFJhO5h3orgncUdmOyEx2ahf1nAvly0ZVMmAWCqI2jIEdp
 S2RMbNgg2Z+42FiQTZeon41z7vO5aGPJvVMrccdePJDUQBNKfq8H6ZIXN8C1DDh8ZeOrd9aXB4PzEA
 xxxe7BRElv/bH8hi8a5u8P8eD8a89HulKYwsW/Jov77Ye5OR8RactDgbmcQ70p71HfXQjix4Auadv/
 mvEbdpwCT4EsZupQGWQOzVtF/PzxVJE3rbPVAnp1po1j8ujpZ3vu1f3uGl3R6ArkyhQglD++HYbLR+
 kpGrqvo6F68v3/O1Rs44x/yv9Ci4+xmsd9mlNtV51SCn7/bYhWGBd3XkEU7g==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to have cpufreq support, this patch adds generic Operating
Performance Points support.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 101 +++++++++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index bb45aab2e6a9..cfe0c67ad61f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -20,6 +20,91 @@ cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+	cluster0_opp: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-850000000 {
+			opp-hz = /bits/ 64 <850000000>;
+			opp-microvolt = <650000>;
+		};
+
+		opp-918000000 {
+			opp-hz = /bits/ 64 <918000000>;
+			opp-microvolt = <668750>;
+		};
+
+		opp-987000000 {
+			opp-hz = /bits/ 64 <987000000>;
+			opp-microvolt = <687500>;
+		};
+
+		opp-1056000000 {
+			opp-hz = /bits/ 64 <1056000000>;
+			opp-microvolt = <706250>;
+		};
+
+		opp-1125000000 {
+			opp-hz = /bits/ 64 <1125000000>;
+			opp-microvolt = <725000>;
+		};
+
+		opp-1216000000 {
+			opp-hz = /bits/ 64 <1216000000>;
+			opp-microvolt = <750000>;
+		};
+
+		opp-1308000000 {
+			opp-hz = /bits/ 64 <1308000000>;
+			opp-microvolt = <775000>;
+		};
+
+		opp-1400000000 {
+			opp-hz = /bits/ 64 <1400000000>;
+			opp-microvolt = <800000>;
+		};
+
+		opp-1466000000 {
+			opp-hz = /bits/ 64 <1466000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-1533000000 {
+			opp-hz = /bits/ 64 <1533000000>;
+			opp-microvolt = <850000>;
+		};
+
+		opp-1633000000 {
+			opp-hz = /bits/ 64 <1633000000>;
+			opp-microvolt = <887500>;
+		};
+
+		opp-1700000000 {
+			opp-hz = /bits/ 64 <1700000000>;
+			opp-microvolt = <912500>;
+		};
+
+		opp-1767000000 {
+			opp-hz = /bits/ 64 <1767000000>;
+			opp-microvolt = <937500>;
+		};
+
+		opp-1834000000 {
+			opp-hz = /bits/ 64 <1834000000>;
+			opp-microvolt = <962500>;
+		};
+
+		opp-1917000000 {
+			opp-hz = /bits/ 64 <1917000000>;
+			opp-microvolt = <993750>;
+		};
+
+		opp-2001000000 {
+			opp-hz = /bits/ 64 <2001000000>;
+			opp-microvolt = <1025000>;
+		};
+	};
+
 		cpu-map {
 			cluster0 {
 				core0 {
@@ -50,6 +135,10 @@ cpu0: cpu@0 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&l2>;
+			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
+				 <&apmixedsys CLK_APMIXED_MAINPLL>;
+			clock-names = "cpu", "intermediate";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu1: cpu@1 {
@@ -65,6 +154,10 @@ cpu1: cpu@1 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&l2>;
+			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
+				 <&apmixedsys CLK_APMIXED_MAINPLL>;
+			clock-names = "cpu", "intermediate", "armpll";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu2: cpu@2 {
@@ -80,6 +173,10 @@ cpu2: cpu@2 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&l2>;
+			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
+				 <&apmixedsys CLK_APMIXED_MAINPLL>;
+			clock-names = "cpu", "intermediate", "armpll";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		cpu3: cpu@3 {
@@ -95,6 +192,10 @@ cpu3: cpu@3 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&l2>;
+			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
+				 <&apmixedsys CLK_APMIXED_MAINPLL>;
+			clock-names = "cpu", "intermediate", "armpll";
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		l2: l2-cache {

-- 
2.25.1

