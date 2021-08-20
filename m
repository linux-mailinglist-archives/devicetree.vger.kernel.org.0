Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 285A33F2844
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232341AbhHTIVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:21:19 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52418
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230490AbhHTIVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:21:18 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E44DD3F31F
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447302;
        bh=+kHKFGwTKXn41PWg7UfAuln8Q8OXBJ2CxByz+s3vd2w=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=VfAjkU2RhE7SpWHE+Po8uN9QLt5auoj5GunfLbwNazy8G9Np9PjIIjrCH2G+vej5y
         PlG+eSMI1rV6wh1D4bXyLT7Ea5oydhGZCBAMefpbmYJWD8HHjykYg3/sGFvQss3V3v
         s+87nojBSXml7ATNxhScmYmE6Jk1Q1ty8esWTYC+qOAgKCCY/wvcDjLUDX2JozF9a3
         ALQlun7Zr3y2tskRmv7n6jmARY2d2bwlBjPhHnZMFEkBCGI1fBhzatpqSlmUtsE+4n
         dULFBjx7nYaiu8OS5lsVfsbiNQju08DFUndEZddjnVvclFzF8+/P4P3WO1YL7OoGvH
         flKr7TJFTUQkg==
Received: by mail-ej1-f70.google.com with SMTP id kf21-20020a17090776d5b02905af6ad96f02so3405441ejc.12
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:15:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+kHKFGwTKXn41PWg7UfAuln8Q8OXBJ2CxByz+s3vd2w=;
        b=UEil4HzoNrISBIrqFlT1PBgK8caULyzQwde/L3Eo9x1E4oa+eGs8l3eYaU5fS20fMd
         Ur/5kGH8HdcWR1/9d2vtoet4hHGMp9ONfnhO8oM25uplktf8a1DTdIBK43jy+w+A28IS
         8uvRNYM8yVx1trgt063YKATF9wRtJe/Z6Wq9cMlE4L/hJuHwKcEt52EO/NfLI7jHAK6f
         xTY4ivlz0yLMKO1pkd9MAShjYMwtn3uz3UeoGMzGNoQofrvyeiBiwvGJZ8NJ9xdwuEYz
         YA1jyDihkf1iu7TuQqKWiNS/cNjRkfIuw65euYHtTu/o0cNfQXzX3VCh3nshPexQeuB3
         3RqQ==
X-Gm-Message-State: AOAM533NBm5zAev1DpFo1zaWHPwgCzJ6OZgJsVkdQ4Slq43JtSTCeM8m
        dDionXcZeDQE/i1yxQxStAkQg4+YXcPn6zhUBiQhS+NkXmvW+uWRg367IMVqH7cyqivdyVAP7dr
        zryFpRqRb3JPGa5K6Vx9evHWi1JZk4jsrE4j0vH8=
X-Received: by 2002:a05:6402:50c9:: with SMTP id h9mr21654132edb.357.1629447302482;
        Fri, 20 Aug 2021 01:15:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMEqHxaJILqth3tDzX13eqFAO3EJLWJDrrCnn+vkSZOV4tjYEACJCJ7+O/QLcOpMQv2o3JsQ==
X-Received: by 2002:a05:6402:50c9:: with SMTP id h9mr21654120edb.357.1629447302372;
        Fri, 20 Aug 2021 01:15:02 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id a2sm3284071edm.72.2021.08.20.01.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:15:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: exynos: align operating-points table name with dtschema in Exynos5433
Date:   Fri, 20 Aug 2021 10:14:57 +0200
Message-Id: <20210820081458.83406-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the name of operating-points node to dtschema to fix warnings like:

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos5433-bus.dtsi | 10 +++++-----
 arch/arm64/boot/dts/exynos/exynos5433.dtsi     |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-bus.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-bus.dtsi
index 8997f8f2b96c..72ccf18eb9d1 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-bus.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-bus.dtsi
@@ -87,7 +87,7 @@ bus_noc2: bus9 {
 		status = "disabled";
 	};
 
-	bus_g2d_400_opp_table: opp-table2 {
+	bus_g2d_400_opp_table: opp-table-2 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -117,7 +117,7 @@ opp-100000000 {
 		};
 	};
 
-	bus_g2d_266_opp_table: opp-table3 {
+	bus_g2d_266_opp_table: opp-table-3 {
 		compatible = "operating-points-v2";
 
 		opp-267000000 {
@@ -137,7 +137,7 @@ opp-100000000 {
 		};
 	};
 
-	bus_gscl_opp_table: opp-table4 {
+	bus_gscl_opp_table: opp-table-4 {
 		compatible = "operating-points-v2";
 
 		opp-333000000 {
@@ -151,7 +151,7 @@ opp-166500000 {
 		};
 	};
 
-	bus_hevc_opp_table: opp-table5 {
+	bus_hevc_opp_table: opp-table-5 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -175,7 +175,7 @@ opp-100000000 {
 		};
 	};
 
-	bus_noc2_opp_table: opp-table6 {
+	bus_noc2_opp_table: opp-table-6 {
 		compatible = "operating-points-v2";
 
 		opp-400000000 {
diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
index 6a6f7dd1d65c..ebd5091d68b4 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
@@ -239,7 +239,7 @@ cluster_a53_l2: l2-cache1 {
 		};
 	};
 
-	cluster_a53_opp_table: opp-table0 {
+	cluster_a53_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -285,7 +285,7 @@ opp-1300000000 {
 		};
 	};
 
-	cluster_a57_opp_table: opp-table1 {
+	cluster_a57_opp_table: opp-table-1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.30.2

