Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4751F47FDA1
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236947AbhL0Ngk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:40 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54724
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236909AbhL0NgP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:15 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 355813FFDD
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612174;
        bh=kkUdeG5ceHrjuSuIkqkE8YNWyxg2eHSHTjUTr9KxZzk=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=gm5bSJsa2DGV+Mhjm2yc7yWjzUs/JfnDEcQNcRRReIkGMRReLYQyoLMstOJ7bbfQP
         Q2IOhTtJZhyafx21tB41GdvcpLk/6BsT4RufC6SdWYfLf09CFsasD/Zp5kUPoq3jo1
         waUWDGWiRlE9+m3ovuufn/Dxzk1WSiTbVci7um8RkEUlleI57A9wYsNV37mwmIIwUC
         hVdoRWT0SQKrWDf+3k4Xbxq38IuAOTkIY3ZqKLUE8SdtWOvrDDW7BF30U4Twy8otE3
         AYvpZBtdPgm3IJGPnV0HzruuW6EmzTaEQBoFlwgTePvEUiikRP3aMpC7Y0JWB/F/s4
         g9Sd63gDwhSyA==
Received: by mail-lj1-f200.google.com with SMTP id r20-20020a2eb894000000b0021a4e932846so4976777ljp.6
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kkUdeG5ceHrjuSuIkqkE8YNWyxg2eHSHTjUTr9KxZzk=;
        b=0SN+FWvDVvJxdywoQShphjQ3RkQLnJOxJgITzedEfpgAGbo16wjYoEr5xp6rhRRPTk
         Sn6LgrkqD7iQ99AEiHeSJbUMLf4bN6cMiClGx6vSgZchwx1bkLgnd4f1MUVFZlK8UsBt
         hPrReSW6X4teEvlJZjRduc5w3lx0hDOZdRLoWk0HMzJxHyUzmJercesEe369c2si+16K
         Z/phcpVEVA0uPA9cn2UdKWJOWqN7+QnXfyC6sB+PmJV8awXHrazr5JoKCJXR2YKoXNl7
         T9BDSRABtRxS4LV+TBN5WeiF7NKIv8ag/hbqIsHEptYglXI5rnQxAHXnozuHM9M3p55v
         37Kg==
X-Gm-Message-State: AOAM532HejeGuBaiVKgoeIhqgCUSpt0DCDi2N6EIXmzAzmbdIpo8KTne
        LmnbC8Mse0H62T0tL8o4Ms8DlRLuN/SVmuhxLPCKPoWrEyWeMxrLQZZl6Qrx6g8vJ/+jC/jlLpq
        AQKqjo2RLpRMqbv8q6mJVO1et+JI97mmKNAcDQ6E=
X-Received: by 2002:a05:651c:511:: with SMTP id o17mr8667362ljp.374.1640612173652;
        Mon, 27 Dec 2021 05:36:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzfa+8FB77JaX0hFBrtXh+MFcMU59EojnWCqXY8eabSSi6JcvyGPGjrWdRPz/yX/6OB1oYZEA==
X-Received: by 2002:a05:651c:511:: with SMTP id o17mr8667351ljp.374.1640612173507;
        Mon, 27 Dec 2021 05:36:13 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:12 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 16/19] arm64: dts: stratix10: align regulator node names with dtschema
Date:   Mon, 27 Dec 2021 14:35:55 +0100
Message-Id: <20211227133558.135185-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The devicetree specification requires that node name should be generic.
The dtschema complains if name does not match pattern, so make the
0.33 V regulator node name more generic.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts      | 2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 12392292c62c..5159cd5771dc 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -44,7 +44,7 @@ memory {
 		reg = <0 0 0 0>;
 	};
 
-	ref_033v: 033-v-ref {
+	ref_033v: regulator-v-ref {
 		compatible = "regulator-fixed";
 		regulator-name = "0.33V";
 		regulator-min-microvolt = <330000>;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index 2d53a06deab5..0ab676c639a1 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -44,7 +44,7 @@ memory {
 		reg = <0 0 0 0>;
 	};
 
-	ref_033v: 033-v-ref {
+	ref_033v: regulator-v-ref {
 		compatible = "regulator-fixed";
 		regulator-name = "0.33V";
 		regulator-min-microvolt = <330000>;
-- 
2.32.0

