Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E3685A5C21
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 08:51:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230003AbiH3Gv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 02:51:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbiH3Gv4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 02:51:56 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9166B9C50E
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 23:51:55 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id i5-20020a17090a2a0500b001fd8708ffdfso7749728pjd.2
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 23:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=FhUz9eJE2XOu3UgXEAzPMUljoPBJG7NhYNYPepyAZw0=;
        b=oQRMAyIeAMFn4DY4zJ3Ik0osz4EPpbLiOJiMDfLctyRtLfvfLBbizSX7JFHe10q9a7
         /He4aWOJVN9coTY7m1NgWAAFV90txARa80wHJ6ZQOhB7ZiWWDQI2mg85hcFpVMvEY6hl
         RMYkw+NOtzyc+NC07/kPDUhW/Izt5PCZLqsaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=FhUz9eJE2XOu3UgXEAzPMUljoPBJG7NhYNYPepyAZw0=;
        b=vgcLfZIci9zSOsZXGip1Re8WovpmYFT+QjamqI3xvZOX67XkPjPVkSmS1fUb3fkDgm
         r24PU4CX/GkpGYX7/PJ4AxdHNiENiop1DH3jgj5tZgsuNHwZvstM8Db6/gtod7ZigEkT
         7nSQOJA3D33x+aoQkSpObG1yLn1DRPVOD7iaDEYMYm3AnyoRHtrpZJ10bYCxP5BFpgbX
         Os7oc4rdqF1d2cx30MoBo1FkRZzSaxaVQJMqMc/iQLx58DW23O+sU3czrpehr5O22JGB
         DVon3BUV4zzXNSq9S6vjph/VnDBm7y0fBMnruMkD8Y7AifSV+9eZFfhr46sqKOfOLVPi
         hTcQ==
X-Gm-Message-State: ACgBeo01Jh/WRcYKpRmvN3rTO4n72SVS3ch05dC+GEgMOU9wyCgo0sqH
        Kr4FUxf2c7aRJ+sF8knThFUMkA==
X-Google-Smtp-Source: AA6agR6XZYkNzdx6alsztuL0LBPi4vUoo/o+qOCworvgIncDm1t08KUm8Aty1z6QmgAhNfzXwZMpEQ==
X-Received: by 2002:a17:902:f711:b0:170:9e3c:1540 with SMTP id h17-20020a170902f71100b001709e3c1540mr19537990plo.22.1661842315093;
        Mon, 29 Aug 2022 23:51:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:8d7b:a73a:5272:1b81])
        by smtp.gmail.com with ESMTPSA id x14-20020a1709027c0e00b0016c78f9f024sm8854460pll.104.2022.08.29.23.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 23:51:54 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 2/3] arm64: dts: rockchip: Add RK3399-T OPP table
Date:   Tue, 30 Aug 2022 12:21:18 +0530
Message-Id: <20220830065119.120844-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220830065119.120844-1-jagan@amarulasolutions.com>
References: <20220830065119.120844-1-jagan@amarulasolutions.com>
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
Changes for v3:
- new patch

 .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
new file mode 100644
index 000000000000..b41c765bd07b
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
+	cluster0_opp: opp-table0 {
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
+	cluster1_opp: opp-table1 {
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
+	gpu_opp_table: opp-table2 {
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

