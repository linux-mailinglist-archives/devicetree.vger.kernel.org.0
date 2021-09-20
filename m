Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 879DD410FEF
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 09:18:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234813AbhITHTg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 03:19:36 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49484
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234850AbhITHTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 03:19:35 -0400
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5B5F540291
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632122288;
        bh=swGJ1gN3O+A01G8QTLTNdHDVpdphD2BLeeNkqQuo/Sc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=iBQdk/xKpOAu30pawOebJFnbMkdXFn7R8Z9bLYM+X/F0N23/WWgRjnIm8Z4vG5Rov
         gOaVRcapRrwoJP9dREeGO+rLBM1As0J13EpDKumUOqOM0pB/cx/nAsfoHcZPHBaaLL
         dsJKi9F9/4BVCl0IdApiE4/LwaMzbj8JreSZLEUA2a6DdWMgsPD9NOQXwT9Qarl//W
         4ojLQVBebD/vKAUwuk+LevW3nNN1vhhhkm+OFtrqUUS1AzpEaTn7qP+qrApJhvke6I
         JD7/PK/mFmmCEpaXiYuB0BVdYFoWixijwjaWLiG0o+cR9+2T8oys+9NzWQKIlXNMPv
         D6L2aTy+bJ9Gg==
Received: by mail-wm1-f69.google.com with SMTP id a201-20020a1c98d2000000b0030b7383bdc5so1276955wme.7
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 00:18:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=swGJ1gN3O+A01G8QTLTNdHDVpdphD2BLeeNkqQuo/Sc=;
        b=MdyLf0DGfvBRaBuUdL3kT0pEnMvCpn1+LsBWMCfcvYT9HWBMIrJdweyg4MYBri6Js5
         hd5J7QYgcg1oNpXy8+ZgfJIEPLST+QjM2m5h2ySAKUjkRzZtZQdnh9na2o13EM6giPSK
         JZRR25WlIE+0OQfgaMXSrKGk+eYEQPPdYS79u7v663dDXQ19E05s0SYSpV1N81/TYPQU
         81G7QcDMts0VWFLMMrGNYEypT9KlTjePqSpK4p70mmtQXxZxR6zYgE3qWmrlNw/3G818
         +gVJWz4NfmxQYYSJcTv0lwid2XVw/Fy96strKsT16ZmM2xXu4RCtK0VVsH457N6Lq6l4
         vLLw==
X-Gm-Message-State: AOAM531A5B/J2gKoTv378r/q5u20IDUzwTMqUtjs5t04NwWKQBU2T8dJ
        85RSZZEB5iSxA8suegwp6Gn59ZZdtlJvgURoboHiOLh3+r2h7yExTC5ExqkCgXK3pmERlwSqCNm
        R6e/SCKrLmjRZ3UxZL2S93LDZo+E11tdcZnZ//G4=
X-Received: by 2002:a1c:4d01:: with SMTP id o1mr22731738wmh.61.1632122288058;
        Mon, 20 Sep 2021 00:18:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzwD/PArfs9F4Roo/d4YvUWVOAOminsTVQuygI6zh+bxukqW4C/NtN2gDIjven3qWcbaSdyNw==
X-Received: by 2002:a1c:4d01:: with SMTP id o1mr22731719wmh.61.1632122287863;
        Mon, 20 Sep 2021 00:18:07 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id a202sm6990798wmd.15.2021.09.20.00.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 00:18:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH v2 3/3] ARM: dts: exynos: align PPMU event node names with dtschema
Date:   Mon, 20 Sep 2021 09:17:53 +0200
Message-Id: <20210920071753.38560-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920071540.38337-1-krzysztof.kozlowski@canonical.com>
References: <20210920071540.38337-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use hyphen instead of underscore and align the PPMU event node name with
dtschema.  The event-name property must match the node name, by the
design of devfreq events and PPMU driver.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index e23e8ffb093f..b2f30bea96ce 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -302,8 +302,8 @@ ppmu_dmc0_0: ppmu@10d00000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX0_0>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc0_0: ppmu-event3-dmc0_0 {
-					event-name = "ppmu-event3-dmc0_0";
+				ppmu_event3_dmc0_0: ppmu-event3-dmc0-0 {
+					event-name = "ppmu-event3-dmc0-0";
 				};
 			};
 		};
@@ -314,8 +314,8 @@ ppmu_dmc0_1: ppmu@10d10000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX0_1>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc0_1: ppmu-event3-dmc0_1 {
-					event-name = "ppmu-event3-dmc0_1";
+				ppmu_event3_dmc0_1: ppmu-event3-dmc0-1 {
+					event-name = "ppmu-event3-dmc0-1";
 				};
 			};
 		};
@@ -326,8 +326,8 @@ ppmu_dmc1_0: ppmu@10d60000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX1_0>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc1_0: ppmu-event3-dmc1_0 {
-					event-name = "ppmu-event3-dmc1_0";
+				ppmu_event3_dmc1_0: ppmu-event3-dmc1-0 {
+					event-name = "ppmu-event3-dmc1-0";
 				};
 			};
 		};
@@ -338,8 +338,8 @@ ppmu_dmc1_1: ppmu@10d70000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX1_1>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc1_1: ppmu-event3-dmc1_1 {
-					event-name = "ppmu-event3-dmc1_1";
+				ppmu_event3_dmc1_1: ppmu-event3-dmc1-1 {
+					event-name = "ppmu-event3-dmc1-1";
 				};
 			};
 		};
-- 
2.30.2

