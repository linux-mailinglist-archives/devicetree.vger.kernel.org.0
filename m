Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD1DA6A01E1
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 05:23:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233300AbjBWEXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 23:23:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjBWEWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 23:22:31 -0500
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C6ED4AFE6
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 20:21:21 -0800 (PST)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1720600a5f0so13045412fac.11
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 20:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AP/utragEALezW3Ha75no5d74aFMJt+dhmrs5kxzbYM=;
        b=trwPlfAaZmqWVHbqG56+BQQgrz4to+s36ShbBlqZxc1IYWDQeIdikgrVQnjZLhgMcE
         I5u19YbZglTI7Od7NffsaMdUmiYzWSLGVvjmhuABb5W3PkTTgFmDL4J78BjzQOYb66eY
         Nlg3/hmcJuchXHUzFMDAQCZOOXBlQxLSuZoZB1b353xmylnQIYOVGkv/rjKF3SyCb4Fe
         F/bcZaQwfvZSzR1gmlurEFGSgQRU+0oxKUgVxoN5JjJEUHILpaoH4X3JtT06vTeHq6BS
         OJlIny5z43/C5nUzRafzM8lFsCNjUesAI85J04MqX4gzLot1diujtBsYdYPYpGFqEgP7
         TXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AP/utragEALezW3Ha75no5d74aFMJt+dhmrs5kxzbYM=;
        b=212tnXh+BX0Ww+8xNVuMHq9Ea+lsbi5QjuW/bzuGviL1qW5Kdq2cl9sEONpoZ5yNiO
         Rxq45IFApo5X9VEWKgreLDFy71CfhvLh6efsQrQ5Oso/gP/GD5KfKYvlPGRugBTaVNy8
         xCVhvw9i4kMb2EDQVmJtdBkPdeU13H27u8kFmih4ofWxre9D35L8Gj5lPR39lfFpwaUk
         qmQ0czPu+Ik352OFfrhrNQCuFpXkTLH7WitGxMWRBkZGI2ECDnYlnoyE97rmBu+q0Og7
         Tq4HVvU0o5A01tPYDXpVnCID5V+X9oQ0RxzNU9VcfTWDorsAmflU5Ye51wMAR0g2dQnE
         h2gQ==
X-Gm-Message-State: AO0yUKUQK9OzdPdQP97EK5X4eCwVU7q7Ze+srt5NZFHnhfRZJ0Vak8vO
        e7vo4TWcyUlYemSsBsontDM/RfWucAbbyY54eXc=
X-Google-Smtp-Source: AK7set8OI207kgdyNYqKRL+J02jkEgjZ2aDTnLjWbJFGcw8gU+Xa69jUDpGbKyLsnH/EHUz4FQGP1w==
X-Received: by 2002:a05:6870:6586:b0:16d:ea08:cd96 with SMTP id fp6-20020a056870658600b0016dea08cd96mr9717419oab.43.1677126078469;
        Wed, 22 Feb 2023 20:21:18 -0800 (PST)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id p3-20020a056870a54300b0016a37572d17sm5807383oal.2.2023.02.22.20.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 20:21:18 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Virag <virag.david003@gmail.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] clk: samsung: exynos850: Add missing clocks for PM
Date:   Wed, 22 Feb 2023 22:21:27 -0600
Message-Id: <20230223042133.26551-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As a part of preparation for PM enablement in Exynos850 clock driver,
this patch series implements CMU_G3D, and also main gate clocks for AUD
and HSI CMUs. The series brings corresponding changes to bindings, the
driver and SoC dts file.

Changes in v2:
  - Rebased all patches on top of the most recent soc/for-next tree
  - Added A-b and R-b tags
  - Minor fixes

Sam Protsenko (6):
  dt-bindings: clock: exynos850: Add Exynos850 CMU_G3D
  dt-bindings: clock: exynos850: Add AUD and HSI main gate clocks
  clk: samsung: clk-pll: Implement pll0818x PLL type
  clk: samsung: exynos850: Implement CMU_G3D domain
  clk: samsung: exynos850: Add AUD and HSI main gate clocks
  arm64: dts: exynos: Add CMU_G3D node for Exynos850 SoC

 .../clock/samsung,exynos850-clock.yaml        |  19 +++
 arch/arm64/boot/dts/exynos/exynos850.dtsi     |   9 ++
 drivers/clk/samsung/clk-exynos850.c           | 139 ++++++++++++++++++
 drivers/clk/samsung/clk-pll.c                 |   1 +
 drivers/clk/samsung/clk-pll.h                 |   1 +
 include/dt-bindings/clock/exynos850.h         |  28 +++-
 6 files changed, 194 insertions(+), 3 deletions(-)

-- 
2.39.1

