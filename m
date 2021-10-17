Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA144307C5
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 12:12:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241754AbhJQKOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 06:14:43 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44182
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241644AbhJQKOm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 17 Oct 2021 06:14:42 -0400
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4A67D4005D
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 10:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634465552;
        bh=elX2pBDZzaz8eqhk96ts7Ds6K1T0utB9mlEa7CNLq5A=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=qaLcUjsCHb0vV5hyc5l3Ni4x3iRL3/wAAdFcPle1yuSxs3nYDmtvK7HHs7zlWrDi7
         XrCsyX/2Zxxirt6iolNcSZPL0Gk0kQ4/QdwEHD6/9UFu7GJ2qTN+M88tJEOi2/rzbQ
         rB/dneZYL+1IGG/miRkVx7XTlo2my5TR41eP2JWn7XyRAV69z6GY1qEl/Vgz68bqID
         GPxWgWrfv3/cZtW20Gr2LuKdRjbBMCCYrGDkersD2kByFIZHFwHCOkOBR2TcQ6XOXg
         QSEobttKZZaB0y6glsiXkACpkJ2B6jYrl4kunavo5XOJWWi7Xr/1D021ILlmkVPakU
         NwCpVK0S0EmaQ==
Received: by mail-lj1-f199.google.com with SMTP id w9-20020a2e9989000000b00210af61ebbdso262424lji.2
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 03:12:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=elX2pBDZzaz8eqhk96ts7Ds6K1T0utB9mlEa7CNLq5A=;
        b=zdI9Un7JJtcyVE5WOwJQReJCeKUWqOKuDGGVGodDzjZ0CJVxzGypUgZHeIMHme0Qge
         y9aqZqX8YhObkb2dAzOz+TsSGqRnEGNVBzglNgPq8ylGdew4fvM3qfxi9C343jCfi7r3
         8yfqPVx4DSDOL0I37dugpvb7uawiEJyx/PbA0NUIDOwEdNIB4eQJ+2ukDwvgBg2dQyNQ
         ocvOqSaYATAhG7HjFmDfc5cWzrw47TYNx6KDS7ro96hzyo5Jttd2RcDxCbjANqsCCEtz
         9uc+Sej3IDrx6m4SofqBAxLn8rirvkcrGhTRy8We/kRli/vpHPmdHW/YU4Q1epb07mb/
         a5Hw==
X-Gm-Message-State: AOAM532ZA3V4H6oz0dmCoHUIueZUbUf+Y7UH5NpGbNul6qLT2/oIJFGA
        BFu2prwNugvGW/0PpRvFtvTAnHdf7nBKwM4zdLuflWp1nonYHGvJrOnxEfxWK/sni/qUQgAhDBg
        q1KdyDHyPXD0PCFoaGIYW4GjLbjx3Wv7bsrR7Mag=
X-Received: by 2002:a05:6512:988:: with SMTP id w8mr21250570lft.361.1634465551543;
        Sun, 17 Oct 2021 03:12:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3IsWFOQ9rmXJOqYrT0Qx7hM86wCCMZBN6puet5W+1YsvKevv/Kz/o+HT5Me2RmPCBTDHTTg==
X-Received: by 2002:a05:6512:988:: with SMTP id w8mr21250548lft.361.1634465551358;
        Sun, 17 Oct 2021 03:12:31 -0700 (PDT)
Received: from kozik-lap.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o26sm1263077ljg.92.2021.10.17.03.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 03:12:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: [PATCH 1/3] arm64: dts: exynos: add 'chassis-type' property
Date:   Sun, 17 Oct 2021 12:12:26 +0200
Message-Id: <20211017101228.19478-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A new 'chassis-type' root node property has recently been approved for
the device-tree specification.

Add this property for end-user devices (such as laptops,
smartphones and tablets) based on Samsung Exynos ARM64 SoCs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos5433-tm2.dts  | 1 +
 arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts b/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
index fdd0796b29d4..aca01709fd29 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
@@ -13,6 +13,7 @@
 / {
 	model = "Samsung TM2 board";
 	compatible = "samsung,tm2", "samsung,exynos5433";
+	chassis-type = "handset";
 };
 
 &cmu_disp {
diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts b/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
index 089fc7a1af67..22d26460f3dd 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2e.dts
@@ -13,6 +13,7 @@
 / {
 	model = "Samsung TM2E board";
 	compatible = "samsung,tm2e", "samsung,exynos5433";
+	chassis-type = "handset";
 };
 
 &cmu_disp {
-- 
2.30.2

