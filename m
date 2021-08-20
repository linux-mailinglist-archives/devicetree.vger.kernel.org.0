Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 991B33F2854
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232371AbhHTI0Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:26:16 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46276
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232380AbhHTI0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:26:16 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 15D194076D
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447381;
        bh=rFYV7pHtPVAhRCoujACv0nbWtGdLJ18YOanrxxZY/lQ=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=HjjEX/0lyfdQAwADA7DN2m4DIKJb6dD8TjkUCFnrrW8XTDccUAXglXcFQyOaQirJr
         NpsBTsnhSXShUuQJl/OJiRnPR++I/isRYU0hdyi+LVL/2byr8SQfS+HxHfUyOrAYig
         eNb5qOgU1oquwYALzSEFEz2hfL+J3vopMqJO73+cWsLjW+CCXs+1AIZD3sJIbLWHNZ
         67s4wx2vMjxF5a1tKbp1EKiSWBVluuqzYLFu/fQehVK9QiN9PzmrRA2hOiufvh6qPA
         kJQv97LuWijwI1zBVA3i9GEDdoKpIld11/4BEy7Xt2ev4Xa/unxF8u5CRzAY4eXMeL
         DYNpj0A+aIgAQ==
Received: by mail-ed1-f69.google.com with SMTP id bx23-20020a0564020b5700b003bf2eb11718so4145733edb.20
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:16:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rFYV7pHtPVAhRCoujACv0nbWtGdLJ18YOanrxxZY/lQ=;
        b=Ljcwbr1X9VBwZTQmNamnIQ8oQCkvcDttSOOkRoX8LRVU4GOTSJ2zhxlBOv/wg6xRKL
         jrpQUH3WQI7eniaXviH4X1l1ew1oiom+VWq9uUcJL66QXxULG/M06X4JLs/amXqTmlbz
         z3PK02tTZ+4dTnJgqyOPahsdNR7ZFU30/kdz48+33B19pyEX6JqT07Jk48B5rr+WYxXE
         n+LIiWcw3Ony5eg/KBUkG9tdCGVCAYQyIbu8gVu8hCG9ApS3D5cXXl2lPlVfdefwSiEq
         93s8qt1zS54RrsY7dKYsJWZboKZl+b2S0j/XPWCiTGX2cb1U0Zqi5Co+2KpUTQFA64Sz
         8BdQ==
X-Gm-Message-State: AOAM533J3/tvTHOq+GIlbUDRpcN22iiWzE0vj+L0CrC+2HeSJbOyXamq
        19QziZ5pbGb280JXovUhsp7m1t2+RjspjbI5Sy7Fpj7/aVaMI5VcjWptTP1xLnDEe26CDO+wP1s
        RRDSZ1Bl3RGH4puqKp2V4doH81+kuGro1tv9F+Js=
X-Received: by 2002:a05:6402:13cf:: with SMTP id a15mr21006887edx.117.1629447380409;
        Fri, 20 Aug 2021 01:16:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwhFPcjbeXROTX7e6+Upaf75ZvqQGL1rcjdhNt9+IdhuGxzIbim1t5Pp3fsAw4KLjqKWlg5QA==
X-Received: by 2002:a05:6402:13cf:: with SMTP id a15mr21006874edx.117.1629447380301;
        Fri, 20 Aug 2021 01:16:20 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id w13sm351632edx.67.2021.08.20.01.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:16:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] arm64: dts: mediatek: align thermal zone node names with dtschema
Date:   Fri, 20 Aug 2021 10:16:16 +0200
Message-Id: <20210820081616.83674-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210820081616.83674-1-krzysztof.kozlowski@canonical.com>
References: <20210820081616.83674-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the name of thermal zone node to dtschema to fix warnings like:

  arch/arm64/boot/dts/mediatek/mt8173-elm.dt.yaml:
    thermal-zones: 'cpu_thermal' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi | 4 ++--
 arch/arm64/boot/dts/mediatek/mt8173.dtsi  | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183.dtsi  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
index a9cca9c146fd..640d4fdaa611 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
@@ -19,7 +19,7 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
-	cluster0_opp: opp_table0 {
+	cluster0_opp: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 		opp00 {
@@ -36,7 +36,7 @@ opp02 {
 		};
 	};
 
-	cluster1_opp: opp_table1 {
+	cluster1_opp: opp-table-1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 		opp00 {
diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 49c6b6a5b489..066025d80ca4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -273,7 +273,7 @@ cpum_ck: oscillator2 {
 	};
 
 	thermal-zones {
-		cpu_thermal: cpu_thermal {
+		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <1000>; /* milliseconds */
 			polling-delay = <1000>; /* milliseconds */
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index caab109add28..d836769b87bb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -759,7 +759,7 @@ thermal: thermal@1100b000 {
 		};
 
 		thermal_zones: thermal-zones {
-			cpu_thermal: cpu_thermal {
+			cpu_thermal: cpu-thermal {
 				polling-delay-passive = <100>;
 				polling-delay = <500>;
 				thermal-sensors = <&thermal 0>;
-- 
2.30.2

