Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75D4C3DC55F
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 11:25:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233273AbhGaJY4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 05:24:56 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:47746
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232964AbhGaJYz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Jul 2021 05:24:55 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 83FCE3F22A
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 09:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627723488;
        bh=UFrU0S2bBX7EdA6lqG0g8Nn8+OpcqLpY1eSVFyrsvVw=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=hv95Psv5VXrVqAf1wWO9neBwg+KWuLRry5vuxP1fNi0TqlVkruhI8c5vmQ8vlLDYn
         Q6yNpTCW1fpqRg6uEgs6J9QVsqu2wj22m05kSz5uP7A8qgXVxwnpaGAE33EFAfBsRO
         wW4acWNEKrAYwN6yCbbmbgpmHbqHDGkVKCVUAfuUYV8K2T5qjbd2hpuKTArf0VxH0C
         ZoAk29tsH0TR4ql8beHYvS1se0LuX2cvNklJjV33dy1dCI2Hxr1GEPZDybQ/sHNTlA
         M6fIsSWQBMGc3n7dBt8oKALFpKQw9vjdRNZYjfnm4/qiHd2utTtA5EW787/Co9KLzR
         d65b61F1mnzGg==
Received: by mail-ed1-f72.google.com with SMTP id b13-20020a056402278db029039c013d5b80so5901833ede.7
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 02:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UFrU0S2bBX7EdA6lqG0g8Nn8+OpcqLpY1eSVFyrsvVw=;
        b=XD7f9YR4GHkeRmaoPAz1ycm+NM4Xp28ubXyP1X2qGZFrzfNvyPbxXD5hRDeZ9LxEbU
         l6TOt69pvY2yEhEYZv1GZ2IYBm2AYIIXRwFb/TsEAf5uGH0++bl5ZJmZcKkCWYK+boAj
         U+aFNtbUBHFtaPjTu54uO4QgNHgDIN9v/MvdnuPG0jOA4yIPYAFfVc8XApJNC1YiejKI
         a67wGHhBdpG9OS8CdbkoQQ4EEczTToJ7uCzAdF1QJQefoZ1KWH/tVIAnLfpwy3rhPrcU
         Ko1vZpuHU2VsYOJFD8O7Sp2x80f8uo0YM+6XN7QmGbEkZrFOSupaaZGlUr4OjsuYUMiP
         z2EA==
X-Gm-Message-State: AOAM531N9oE2UHfmAqUOnb7eeV8rv6yV53iXSx8fwtz/uvKHQA0VK7S/
        QPia2wbXIIbMgECllt373+R5nHC9yHedXudKg5LKkkjcPHMZ/gifU2xSUZJXEqNwLWlk0Ochb9W
        pkWXRQWqPPO2UwJ1Psxo09SzJYiSnOODkTrHfU9k=
X-Received: by 2002:a17:906:6b1b:: with SMTP id q27mr6575539ejr.169.1627723487679;
        Sat, 31 Jul 2021 02:24:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy1xUNY9MDqXQPMmbYu8q3NXm6Wwff2iuWqe6SEijIFM6pC3pnzQBfwNFCRmBOiJeVKeItFrg==
X-Received: by 2002:a05:6402:40d4:: with SMTP id z20mr1261891edb.89.1627723477052;
        Sat, 31 Jul 2021 02:24:37 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id r16sm1947693edt.15.2021.07.31.02.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 02:24:36 -0700 (PDT)
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
Subject: [PATCH 3/8] ARM: dts: exynos: add CPU topology to Exynos4412
Date:   Sat, 31 Jul 2021 11:24:04 +0200
Message-Id: <20210731092409.31496-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
References: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe Exynos4412 CPU topology.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4412.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index a142fe84010b..d3802046c8b8 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -35,6 +35,23 @@ cpus {
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
+		};
+
 		cpu0: cpu@a00 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a9";
-- 
2.27.0

