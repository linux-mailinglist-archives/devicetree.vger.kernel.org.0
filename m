Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13CA63F1FD1
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:23:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232909AbhHSSX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:23:58 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:51094
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234119AbhHSSX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 14:23:57 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 925F8411FB
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 18:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629397399;
        bh=+SImrCqkRrEul7rOhsI1qKN3yyKy4TchkaDMWtndibE=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=G/LnCKB2Tnwr6Kn+fAilkemau+kXs5YNZ1MiPQnGqMgbJFgMH0IzTM95pWi2yLNNR
         Yoa15LupGu2t06B1Uk1l1F0gicbpke13av8fDLIEDF6i4DcS5C31QNndYjbKKp4aD1
         /nJlrAGpNSa/DxvE/SD6E3Q6yTlC89wWnhswKbuqn5CYhiA+uhQtVyIC7HP8wKi90R
         h0PhoQkbhnsXn8gE2UEtqQ+9WEcnTTDy6yY/lfBhBFCkfKpI9BoCuwvuv+hVGqszIu
         agWC1xCy9GgDU9oJ0Oj49s/3FVVMGRKGIrs6qvh6n90Mxpka740Lqor3yxLfRSgeT/
         T6a9onR57SBEQ==
Received: by mail-ej1-f70.google.com with SMTP id s11-20020a170906060b00b005be824f15daso2599607ejb.2
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:23:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+SImrCqkRrEul7rOhsI1qKN3yyKy4TchkaDMWtndibE=;
        b=rzlVH3wA+USSpmTxeWwLyr6Zytcoet161oEOyjxakTRXvHHI6zacsPCp6qnTP39iPG
         zdOzBKN0xo7j0KXpFWgh0OUTYU5ahbBfnkbRMNeFnzMiQVaAyxb9FywwbkCXLXJC0xCB
         w0HrXMYGIGLbW4y29IYKLcfu87rzLzD4chVQ1BF3KIZuweSVkvj3wliwQgwy9zl0pg2h
         1sY0rB7ZNSUdM0ZnAbPJuxBgFzGNez1pCsZOaGvWWEU8kuURY/0RyJosVHMmDhhg03Io
         VlL9/eYaRxa2S61D9dCUKgslvRE1+FQC+je96Pyj/iki2yE8mpagAn83Vw/pDM535l4I
         mVKg==
X-Gm-Message-State: AOAM5330FQZmAd/BBT4dzr0Sy5/ebypAQBV255zxRlxlbKp108YNVxuh
        AzDmOkQcc5UxCJr+bz2LUk0ASiMvRhCcyGq6eT9BKkpTlVNh1uOrsv2YNxuY63i22Hy+frYm95q
        oAwzjpQO3sPZCBoazLsaeutWPs9BTOFQ8HMsqQTs=
X-Received: by 2002:a17:906:d7af:: with SMTP id pk15mr17201995ejb.51.1629397399212;
        Thu, 19 Aug 2021 11:23:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9PKf5AeLlWZLsjYyjKkajB0HXk5eiV1OQHU9saAg2/lrKktHhdXLSwy83GBdrBFriYHkvWA==
X-Received: by 2002:a17:906:d7af:: with SMTP id pk15mr17201982ejb.51.1629397399060;
        Thu, 19 Aug 2021 11:23:19 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id c28sm1602113ejc.102.2021.08.19.11.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:23:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: align operating-points table name with dtschema
Date:   Thu, 19 Aug 2021 20:23:11 +0200
Message-Id: <20210819182311.223443-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819182311.223443-1-krzysztof.kozlowski@canonical.com>
References: <20210819182311.223443-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the name of operating-points node to dtschema to fix warnings
like:

  opp-table0: $nodename:0: 'opp-table0' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi           | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3308.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi     | 6 +++---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi         | 2 +-
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 64f643145688..5dbe6bd3b189 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -110,7 +110,7 @@ CLUSTER_SLEEP: cluster-sleep {
 		};
 	};
 
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -1014,7 +1014,7 @@ nfc: nand-controller@ff3b0000 {
 		status = "disabled";
 	};
 
-	gpu_opp_table: opp-table2 {
+	gpu_opp_table: opp-table-1 {
 		compatible = "operating-points-v2";
 
 		opp-200000000 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ce6f4a28d169..7ba9ce4e9826 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -99,7 +99,7 @@ l2: l2-cache {
 		};
 	};
 
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index becc1c61b182..1c1608d8de01 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -105,7 +105,7 @@ l2: l2-cache0 {
 		};
 	};
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
index 69cc9b05baa5..2180e0f75003 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
@@ -4,7 +4,7 @@
  */
 
 / {
-	cluster0_opp: opp-table0 {
+	cluster0_opp: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -39,7 +39,7 @@ opp06 {
 		};
 	};
 
-	cluster1_opp: opp-table1 {
+	cluster1_opp: opp-table-1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -82,7 +82,7 @@ opp08 {
 		};
 	};
 
-	gpu_opp_table: opp-table2 {
+	gpu_opp_table: opp-table-2 {
 		compatible = "operating-points-v2";
 
 		opp00 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
index da41cd81ebb7..fee5e7111279 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
@@ -4,7 +4,7 @@
  */
 
 / {
-	cluster0_opp: opp-table0 {
+	cluster0_opp: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -35,7 +35,7 @@ opp05 {
 		};
 	};
 
-	cluster1_opp: opp-table1 {
+	cluster1_opp: opp-table-1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -74,7 +74,7 @@ opp07 {
 		};
 	};
 
-	gpu_opp_table: opp-table2 {
+	gpu_opp_table: opp-table-2 {
 		compatible = "operating-points-v2";
 
 		opp00 {
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d89831bee1eb..949322df3b88 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -83,7 +83,7 @@ cpu3: cpu@300 {
 		};
 	};
 
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.30.2

