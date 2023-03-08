Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 884246B1629
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 00:09:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbjCHXJg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 18:09:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbjCHXJf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 18:09:35 -0500
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3750962B43
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 15:09:33 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1767a208b30so506275fac.2
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 15:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678316972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BSUy9pqri34RafzXpduDuTiVpZ9W29iQLOdXi9MBbjc=;
        b=W8Fgv56006OYf+0vMpu9nCC7xSYySTNCf0Cq58RxoqFSqWBy3WHUMo0PhtBQmLY2Qh
         JBGa+5hpuL9dZLX2aVOx8lBr+srtTvlGXu/f5ZhjYUzyfKmBBoOY6kENHqWDKBYixMr8
         FwNqVkzrAsR9lMFG0iRbN1LRBTVvPDsVGalUcxtRqIxTbNSDYNy3TW30lH5qZ6LvztCE
         F0Y3hoAAkI8Sb108QzNayVfT7Q4aN+ra9IjCZRR4WrsD1VUETaceIp4CHoa3OyrIBt1i
         ucAL1bOZqlOnn/rLQ78+Ah6f1T48YKRJ5BG5y4Sf0bsGSjpqhaBNSD36Aa4buBlYA1O6
         X6MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678316972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BSUy9pqri34RafzXpduDuTiVpZ9W29iQLOdXi9MBbjc=;
        b=Fm5nGVK4mGxV2q1vaqWqqZ9i+8l2p4eV9u90nlbTpBKW6NooBvUKttt3f5Lp6LNO55
         yH06dgAkjFxvLGh1zzmMHKbJgctgSC5H8xHQBkH7PAY81/MFZ9KBC9UQlXNxyU2Pg4LN
         FfsQM8nnBnDB0PBnRXfhw9o2J7rTcjKNi21ZBKAp8CISGNdWyOx/tgmBNEsg3uk+vlnM
         w0b4cAt2Z1ixhFVfE0C5/cb9YBgLKkWNpU6iu4QH2Hq65TTbgNF5PjMx/4z4KjxvKs6G
         HGIN13BSvVu3y+uaHX2D70vsH9CCbSFgUf31gkZVP1c0UCIWzHdH975+7KQ3+WrvzH92
         tKHA==
X-Gm-Message-State: AO0yUKVCeODKkEBjdZIwO3uh9Hi/NjAafHt+EcHjVFIc3NiimipJ7Giz
        flkvDG5UdP5/AL1YtlUb5Udbfg==
X-Google-Smtp-Source: AK7set8N1gB2a3Ev0DG0ifVpKRpIm2ymT29/NKvYWTyo6j5FanN5C+/s4trt5ujy9fqa+Tgwue1MVw==
X-Received: by 2002:a05:6871:6a0:b0:172:55c5:780 with SMTP id l32-20020a05687106a000b0017255c50780mr12841967oao.23.1678316972450;
        Wed, 08 Mar 2023 15:09:32 -0800 (PST)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id h21-20020a056870d25500b0016e9308e17bsm6704527oac.52.2023.03.08.15.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:09:32 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] soc: samsung: pm_domains: Add Exynos850 support
Date:   Wed,  8 Mar 2023 17:09:25 -0600
Message-Id: <20230308230931.27261-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Power Domains in Exynos850 are not really different from other Exynos
platforms. Enabling Exynos850 support in the PD driver is really just a
matter of adding:

    static const struct exynos_pm_domain_config exynos850_cfg = {
        .local_pwr_cfg = 0x1,
    };

to the driver. But in the face of recent developments, e.g. this patch:

    arm64: dts: exynos: move MIPI phy to PMU node in Exynos5433

it looked logical to rework the PD driver a bit to support its nesting
under the PMU node, while adding Exynos850 support to it. Initially I
only wanted to add syscon regmap support via some dedicated property,
but pulling PD nodes under the PMU syscon looks like more correct way.

This patch series provides next changes:

  1. Make it possible for PD nodes to be children of PMU
  2. Add Exynos850 support to PD driver
  3. A bit of refactoring in PD driver
  4. Corresponding changes to dt-bindings

Dependencies inside of the series:

  - patch #2 depends on patch #1
  - patch #6 depends on patch #1
  - patches 3,4,5,6 should be applied in the same order as in the series

Sam Protsenko (6):
  dt-bindings: power: pd-samsung: Add Exynos850 support
  dt-bindings: power: pd-samsung: Allow pd nodes to be children of PMU
  soc: samsung: pm_domains: Extract DT handling into a separate function
  soc: samsung: pm_domains: Implement proper I/O operations
  soc: samsung: pm_domains: Allow PD to be a child of PMU syscon
  soc: samsung: pm_domains: Add Exynos850 support

 .../devicetree/bindings/power/pd-samsung.yaml |  12 +-
 MAINTAINERS                                   |   1 +
 drivers/soc/samsung/Kconfig                   |   1 +
 drivers/soc/samsung/pm_domains.c              | 132 +++++++++++++++---
 .../power/samsung,exynos850-power.h           |  17 +++
 5 files changed, 142 insertions(+), 21 deletions(-)
 create mode 100644 include/dt-bindings/power/samsung,exynos850-power.h

-- 
2.39.2

