Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B12633F2E89
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 17:04:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241007AbhHTPFc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 11:05:32 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:60660
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240988AbhHTPFa (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 11:05:30 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0C7134076E
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 15:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629471890;
        bh=co/K2QfxDh6TErvx3NAqZuZOZOZtgloEm8goQR7xz/0=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=ePhZu6dunAFII3wRiyVvAta/C/lhJdsN0z/PhzH5y4z+csMfd0PSFJv4xiDbSmAKv
         kPYMER/0BBK1iKZlKiTc6pRxbJW7w3FKzglpWIqAxNLF8P/B8Q9O9yw0aB3gV7dgv0
         IwQPs3xq8PtKw1QHOLWnP1SqI8LBgQ8TB4S8TLcZ3CddHapCnu/F4TuQ9IBKyaAlKr
         Xr1RKSyKG6DdaI0wWjiQ21nmLlK4BIpPzy1gM6Wb38p8fnvN8dcUCF8QBHUvJyGdhj
         hQ2bGL2Q+gZjbUu4HEs8tSdFVH9pswqzDxZkB9VBwnVA6Ev8G8F798tR2FpXEbZtOA
         UapOMVyBAcHdA==
Received: by mail-ed1-f69.google.com with SMTP id k13-20020aa7c04d000000b003bf04c03fc4so4698106edo.22
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=co/K2QfxDh6TErvx3NAqZuZOZOZtgloEm8goQR7xz/0=;
        b=APeYK40rHicuKrG6L7Q4jHo424P+X5ddSFc9JvDImNvix5ioYPS/C0TcBx6gHWkJmt
         B7iSUB6p4QbpfbsCe3L5n2QljktCLlV7IuhYyohuhFxAiT//Zq/nrYUo93wO6FmonWd9
         mzrmmKJINNO3S2UWgWXUD1uV8QEynJiFRHN9g8nEPuqFCVR2swRPhvlWbAYo0gd4S+Q/
         Yz75eWLUCsL/MdQ85UgV4Tu9fNp6Pw50UuI2sAaj0QeAUyqUzWXLIRg2rxb+4ULxrFmX
         QcNRA2atG8U7LXQFzShB/HCz9Wn/sMqKj+HB3sW16it66/J4ZQoY2vt7D3PTxTBTTNNj
         5lcQ==
X-Gm-Message-State: AOAM530kIa/rgkfeoQYOcoZeO3PP5cB6tPED723InU90Bue7Q5B4/+aS
        BjTrbcM/PsKopssTcb8XhS1mDBmHaraMWuOX2IrikX69NzXV0hPtYXWwD57OkV0VIMjFskgQ0Dn
        Zf7wwfC0R8AiVcWm0uitEnu+aqwj4t0/94oG+MT8=
X-Received: by 2002:aa7:de85:: with SMTP id j5mr22065116edv.147.1629471889808;
        Fri, 20 Aug 2021 08:04:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdeLXpscZy4Zhp5zOqh9nMZYRaJqrPl/dZjs2YnBELKdAFBq4I5kEdodoEKntp1GvfTauNag==
X-Received: by 2002:aa7:de85:: with SMTP id j5mr22065094edv.147.1629471889655;
        Fri, 20 Aug 2021 08:04:49 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id ck17sm3690735edb.88.2021.08.20.08.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 08:04:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] ARM: dts: exynos: align PPMU event node names with dtschema
Date:   Fri, 20 Aug 2021 17:03:53 +0200
Message-Id: <20210820150353.161161-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210820150353.161161-1-krzysztof.kozlowski@canonical.com>
References: <20210820150353.161161-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use hyphen instead of underscore and align the PPMU event node name with
dtschema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. New patch
---
 arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index e23e8ffb093f..10ccd5cb69fd 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -302,7 +302,7 @@ ppmu_dmc0_0: ppmu@10d00000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX0_0>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc0_0: ppmu-event3-dmc0_0 {
+				ppmu_event3_dmc0_0: ppmu-event3-dmc0-0 {
 					event-name = "ppmu-event3-dmc0_0";
 				};
 			};
@@ -314,7 +314,7 @@ ppmu_dmc0_1: ppmu@10d10000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX0_1>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc0_1: ppmu-event3-dmc0_1 {
+				ppmu_event3_dmc0_1: ppmu-event3-dmc0-1 {
 					event-name = "ppmu-event3-dmc0_1";
 				};
 			};
@@ -326,7 +326,7 @@ ppmu_dmc1_0: ppmu@10d60000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX1_0>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc1_0: ppmu-event3-dmc1_0 {
+				ppmu_event3_dmc1_0: ppmu-event3-dmc1-0 {
 					event-name = "ppmu-event3-dmc1_0";
 				};
 			};
@@ -338,7 +338,7 @@ ppmu_dmc1_1: ppmu@10d70000 {
 			clocks = <&clock CLK_PCLK_PPMU_DREX1_1>;
 			clock-names = "ppmu";
 			events {
-				ppmu_event3_dmc1_1: ppmu-event3-dmc1_1 {
+				ppmu_event3_dmc1_1: ppmu-event3-dmc1-1 {
 					event-name = "ppmu-event3-dmc1_1";
 				};
 			};
-- 
2.30.2

