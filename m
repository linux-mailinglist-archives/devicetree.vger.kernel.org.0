Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E988465606
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 20:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352049AbhLATIV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 14:08:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244979AbhLATIU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 14:08:20 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECBE8C061757
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 11:04:58 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id t26so65436567lfk.9
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 11:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2S6hx0MV4TxSsUYQQR+njxfOFM+b7JLj1PpbrKzlUg0=;
        b=mLisBxqhY2tHpta2ymGhdyh3ACjOQoYQx0GwkeYnH/Gc7J68rGxhcSRLtW+zHehdqz
         uOVim29pwUIijDYo8e8dbiOmy7Yfz1yZgr0W+kvFLLIhv3t9obn18aSknPdLUYPsUmU4
         ShhDvBub9Wf64wFHeegAxi4SKiyLdJ8OtC/1mTzHh0YowUj6qeYrogRav6UzVM+l/rqU
         Et1FVjy9ftZkBgrTBBbp4RrN6sEc8jqHTiYTQ2psyX3bGeRxm6Z6cooxjRsw98Sl4lcY
         VzLz+WtwsA2FqLg6AjqEQUrBk5rzRuKkcu5y4oBu9p681e3HbXF9bsWbj1cIW09bizzI
         a8wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2S6hx0MV4TxSsUYQQR+njxfOFM+b7JLj1PpbrKzlUg0=;
        b=qhXQHrjF8t4eJ2O9vNVqWVdycwXLPag75+SBh/2ymrowKr44LFmEH1Ly0rl0qCYiHa
         CbfW0maHMEvHzixxjnxHXxsForCcSpgcWOHNtbNiqFrZJZS6nxT4ULo2IXt8qQodHu9Y
         lOF93c307/iow5aCKPilw8HHfbp5HHSFL+bszdWHdu2fTtWHx88w6HekyVlji/TLeQNU
         DSiKf1hmV09Hd2W80QjsZJdDwZj4jRBERGNpgS3S5gSPt13zuMrXeqttXDfSuIcVv+ga
         s1mii/P3S5BtgH1y2fAmaJ/aUTHwhoee6cDCJhOqf0Coga0LtwAlHaoMEVQW3EUmEUxb
         HbaQ==
X-Gm-Message-State: AOAM530WZgAr1U340saIHCAxM4ACKZVfZEONuvwiRlWhIkC48vlm7FyR
        BB2KxYCYJZZvDvQImthIv3pHyg==
X-Google-Smtp-Source: ABdhPJyP1ERY1EI8D9ikdeJS5WWuST1ZEZPWU6aaPu3mbArN+6Dgoz1u7yoccdF54uUzaY2q3qi22w==
X-Received: by 2002:a05:6512:3d90:: with SMTP id k16mr7616729lfv.361.1638385497034;
        Wed, 01 Dec 2021 11:04:57 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id g36sm73610lfv.16.2021.12.01.11.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 11:04:56 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Wolfram Sang <wsa@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 0/6] i2c: exynos5: Add support for modern Exynos SoCs
Date:   Wed,  1 Dec 2021 21:04:49 +0200
Message-Id: <20211201190455.31646-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Modern ARM64 Samsung Exynos SoCs (like Exynos Auto V9 and Exynos850) use
pretty much the same High-Speed I2C controller supported in i2c-exynos5
driver ("samsung,exynos7-hsi2c" variant), but with some differences:
  - timings are now calculated and configured a bit differently
  - two clocks are now provided to HSI2C controller (and must be
    asserted during I2C operation and register access)

This patch series implements these changes, making it possible to use
HSI2C driver on modern Exynos SoCs.

Another change in mentioned SoCs is that HSI2C controller is now a part
of USIv2 IP-core. But no USI modifications are needed in HSI2C driver,
as all USI related configuration is done in USI driver independently.
USI driver is added in [1] series (or its later revision, if available).
To make HSI2C functional, both patch series (this one and [1]) have to
be applied, but those can be applied independently.

[1] https://patchwork.kernel.org/project/linux-samsung-soc/cover/20211130111325.29328-1-semen.protsenko@linaro.org/

Jaewon Kim (2):
  dt-bindings: i2c: exynos5: Add exynosautov9-hsi2c compatible
  i2c: exynos5: Add support for ExynosAutoV9 SoC

Sam Protsenko (4):
  dt-bindings: i2c: exynos5: Convert to dtschema
  dt-bindings: i2c: exynos5: Add bus clock
  i2c: exynos5: Add bus clock support
  i2c: exynos5: Mention Exynos850 and ExynosAutoV9 in Kconfig

 .../devicetree/bindings/i2c/i2c-exynos5.txt   |  53 ---------
 .../devicetree/bindings/i2c/i2c-exynos5.yaml  |  91 +++++++++++++++
 drivers/i2c/busses/Kconfig                    |   2 +-
 drivers/i2c/busses/i2c-exynos5.c              | 108 +++++++++++++++---
 4 files changed, 183 insertions(+), 71 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-exynos5.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml

-- 
2.30.2

