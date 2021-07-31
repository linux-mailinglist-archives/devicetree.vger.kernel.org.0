Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D114A3DC555
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 11:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232919AbhGaJYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 05:24:49 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:59980
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232568AbhGaJYr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Jul 2021 05:24:47 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 205F83F235
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 09:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627723481;
        bh=oZaMws7fwrXQ+39v59StjW2jRchmqWMSe99swu1ZncA=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=nXg/FIqSDxEjmBHEH0h9pnjLLCOQJDVVzCZ/umh/7rFsyRWezPguqgjA0HW2TJTZE
         +h6JdFvLqhFLZ4jtVdtXc08Qe2yT0H1grLb72dwEmhd+WuE38yov3ldUknvN4K2UoZ
         MftRET4rUAvA9kAKppuyGLN1TYMKaeMWmqel+MRgLmhUwdgYj/PHmjl9U5rNN8BH2u
         O8qHuW+bKlLXDwxu5Lqx7wJwzlQYGn5AN6MYtLKuB+iDlKGa68+aMr9IqSUh9Mm9o1
         S2dBjrQhtmzrH3AD2CRYSn1FJson4RI4y6+FquLNIMhaqEd2GEzPFjZGiMWCl4sDSl
         GNJumKlHwx5+Q==
Received: by mail-ed1-f70.google.com with SMTP id a23-20020a50ff170000b02903b85a16b672so5886964edu.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 02:24:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oZaMws7fwrXQ+39v59StjW2jRchmqWMSe99swu1ZncA=;
        b=HqQOQ/+GVOIDjcx8xDpeLFHEPVrZL61j002kcBWfknMePu30uon6Y8XlmbxaR5sDJq
         dbUKgNetkZzI4iFRRy8j8/Db4GBDLqztSYm9YcH2Ou6pZQ9DsFfOqfFfp/Y1XDK1xxkC
         1X4uUMPFXe1/ecqSdrqXcHKqtD/S/nYc8hb6c9HnwhEf45dILH5yFyK3hPNFOjNBVGsG
         XbwttFN6MRAZNCRtSutk/xzcDAb8afb5fLZU3PB/3rFzU0EaLIaL6YOIvmgoEn8RknCb
         /pn5nkN41NCFT4u3UyBxIP/GDATqDuNoXoZ1TIWfn59SE7nlo7W6cq1hVik0ZohBZmbm
         3xWg==
X-Gm-Message-State: AOAM532Mm4D9nvnBCCqbnyvy3nAD3aDo6gPiv0ilJCyzpaB8vGu9w8h2
        xlfbs6M+g450b15X3k2sZD2AdRlzm/4N7dcZpYsGbN5exx0G+Of8ox82ADBe7ZqO78IYMyIYHCE
        ph4lDPgwypkDp21IEpxtgwJH/DyEloo+/MIbeodI=
X-Received: by 2002:aa7:c792:: with SMTP id n18mr8329666eds.269.1627723480791;
        Sat, 31 Jul 2021 02:24:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/sf10Y8srbg8K+efQ4NmEX6nec9k/+iYcFltTGdhcbdRPp/dreDc16TZIWHAzqpOtGFDNEg==
X-Received: by 2002:aa7:c792:: with SMTP id n18mr8329653eds.269.1627723480696;
        Sat, 31 Jul 2021 02:24:40 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id r16sm1947693edt.15.2021.07.31.02.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 02:24:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH 6/8] ARM: dts: exynos: add CPU topology to Exynos5420
Date:   Sat, 31 Jul 2021 11:24:07 +0200
Message-Id: <20210731092409.31496-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
References: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe Exynos5420 CPU topology.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420-cpus.dtsi | 32 ++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420-cpus.dtsi b/arch/arm/boot/dts/exynos5420-cpus.dtsi
index 58d1c54cf925..e9f4eb75b50f 100644
--- a/arch/arm/boot/dts/exynos5420-cpus.dtsi
+++ b/arch/arm/boot/dts/exynos5420-cpus.dtsi
@@ -22,6 +22,38 @@ cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+				core1 {
+					cpu = <&cpu1>;
+				};
+				core2 {
+					cpu = <&cpu2>;
+				};
+				core3 {
+					cpu = <&cpu3>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu = <&cpu4>;
+				};
+				core1 {
+					cpu = <&cpu5>;
+				};
+				core2 {
+					cpu = <&cpu6>;
+				};
+				core3 {
+					cpu = <&cpu7>;
+				};
+			};
+		};
+
 		cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
-- 
2.27.0

