Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5D4E4A5B74
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 12:48:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237454AbiBALsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 06:48:35 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56536
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237440AbiBALse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 06:48:34 -0500
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 95C9E3F1DD
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 11:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643716107;
        bh=nPtCkUJvHAiFdwR1aBTRoo7Q3YDQ+MsjF9AD3ZrXCWg=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=D0bczYAuWAw1+eGM69EHL8c2ne/EucAg1YT6+HoQ0bHbTUJ7w1c1Yc0lnjiFqgrhJ
         jOR9ieokpCME/+Y9xS2F/NYg7rbbPbYR1/MSNgV415xtjmJ4vQK+29L/Pr2g23IEcd
         YOVKmY7cF3phywJjAsQobcPwD4pwO9JJaifF37Lx1qRl9fjr97mG9Eic8sYEF6tIHy
         c8qWgoeSf9ZKapzaoew9zZtB4LYIEt+6O6s9s+bWEZn4rRPHJUKLol104+P5RcA4IR
         te1qH5je0kQKLzzXAJg+9cNfP9c7rA82p9ShBxRQNybdez6jnekrOTKZdNzc/kwabu
         MIrOHqyoYiSSQ==
Received: by mail-ej1-f70.google.com with SMTP id p8-20020a1709060e8800b006b39ade8c12so6435701ejf.10
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 03:48:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nPtCkUJvHAiFdwR1aBTRoo7Q3YDQ+MsjF9AD3ZrXCWg=;
        b=zFRfKwl2fLVupefRiEj6cRzl62ao7tPtKiC5wCNyAnm6IZwbxdrdOFKp+L5olPrq6k
         q4dAcyKtB5IrmwLdVUpdtFF3Tc63Ex/PR+EmhaR6chl4eM4mgGgNkOxawNrykITKYymC
         yD5rnpTmoIjNcac3dq104cOraOXqJRU7c4rpoVizI7JhWcbteul5daLrYL1IR9v5obOL
         DUy78IBuyVJgGdYcFkWrEOYuPYDuuCdUVo43Pbwftxv5OpZR+Be2vvcp6cL8d3bhIVbu
         3VNZJkfuEC+gqaC9WZ5OTGtWMYQdBjjYbWT1StB8Asux4qKkuoalBR85X0ia+06++eDq
         FmLw==
X-Gm-Message-State: AOAM530MP4mE6fmrF3TrOqmh6Mf3JsU/9Fh4LVCBU3rEJ3KmCCjYpDK8
        GUuxHa2AC1HSL3pg9q3iZn2GEHnhgybqlV0l9S0lQ9510ek7+4jP8BKA9bJLgoS1C4dJyWFHw1x
        FAK5uCGhQwye77c9daVK3LhQdWisxns5cp5PyCQw=
X-Received: by 2002:a17:907:8a24:: with SMTP id sc36mr20350994ejc.318.1643716107289;
        Tue, 01 Feb 2022 03:48:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzSB+mTN/eqKVxteQU8ZJe5VpQaVxci/PoYo5bHi9rsjmr1K5CgtZb6C+DyJSPH0xcLZmI3cQ==
X-Received: by 2002:a17:907:8a24:: with SMTP id sc36mr20350984ejc.318.1643716107068;
        Tue, 01 Feb 2022 03:48:27 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bo19sm17954484edb.56.2022.02.01.03.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 03:48:26 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 1/6] arm64: dts: exynos: use generic node name for LPDDR3 timings
Date:   Tue,  1 Feb 2022 12:47:44 +0100
Message-Id: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should have generic name, so use "timings" for LPDDR3
timings.  This will also be required by dtschema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 24c428b84192..2f65dcf6ba73 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -358,7 +358,7 @@ samsung_K3QF2F20DB: lpddr3 {
 		tCKESR-min-tck		= <2>;
 		tMRD-min-tck		= <5>;
 
-		timings_samsung_K3QF2F20DB_800mhz: lpddr3-timings@800000000 {
+		timings_samsung_K3QF2F20DB_800mhz: timings@800000000 {
 			compatible	= "jedec,lpddr3-timings";
 			/* workaround: 'reg' shows max-freq */
 			reg		= <800000000>;
-- 
2.32.0

