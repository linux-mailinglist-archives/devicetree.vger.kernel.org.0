Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 346AD33375B
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 09:34:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232170AbhCJIeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 03:34:03 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:41006 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231207AbhCJIdd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 03:33:33 -0500
Received: from mail-wr1-f72.google.com ([209.85.221.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJuHb-0003GU-Eu
        for devicetree@vger.kernel.org; Wed, 10 Mar 2021 08:33:31 +0000
Received: by mail-wr1-f72.google.com with SMTP id n16so6576371wro.1
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 00:33:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RZxvgYZhRwx3vtBKrExOY7yB1Rao/D3y6ddDmt53T8k=;
        b=Ra/JAU97iUlwC/1jhvuUg+USMJMY6jSyEH5NLts1VO1UkE7LbL8qAWZFgyCUXud87T
         E9eJNYmOKM3OE8QSFYmN5yc48+/LtLy4WI1Q3y44EYDf+yRs2wScFQ6x64HGAGgBeYbl
         0xfg5oaQ2e9PMS09n9uP5/bTYmnc0J85CbYhgfwR+V6H8JXghtA10YNgzDG+Chi3quw5
         rbIm22KSf4I4x0VEL3TizlhCqx7iIifqUe3YzJGX3+KnQATAx3XKXFfUKrVJWq9tL2XP
         OqQEfUGmu5Z1Lh4Kfby6iwjBcMI43WU9tZoZY0R3wAEITPviKMQysf00BTieOcCAKgJz
         5CeQ==
X-Gm-Message-State: AOAM533yObSoQqME5lm6X1y2/TmgbK0wERN5XpXnuNEl7DwT+Xi19JnR
        B+g6sK5WCn9DeKSK4MI/3ItJrzY7zaxEapaY1z2eQqKWbverfA2D4XHI6CdWgwv8pLD4ha2Iebt
        rj9fjzFbsj2P7X1c4rqgNIb7kPDiPyRIhegS4EBo=
X-Received: by 2002:a1c:f406:: with SMTP id z6mr2225366wma.24.1615365211048;
        Wed, 10 Mar 2021 00:33:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx+uPRMBgFfoVCHx5kur24yVECBMZDDtyDQfyluEn8gAohH3gku3X1wAI4MIWrYIO0FNDk1jQ==
X-Received: by 2002:a1c:f406:: with SMTP id z6mr2225348wma.24.1615365210807;
        Wed, 10 Mar 2021 00:33:30 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id m17sm28675495wrx.92.2021.03.10.00.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 00:33:30 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Moritz Fischer <mdf@kernel.org>, Tom Rix <trix@redhat.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-edac@vger.kernel.org, linux-fpga@vger.kernel.org,
        netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
        arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [RFC v2 0/5] arm64 / clk: socfpga: simplifying, cleanups and compile testing
Date:   Wed, 10 Mar 2021 09:33:22 +0100
Message-Id: <20210310083327.480837-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

All three Intel arm64 SoCFPGA architectures (Agilex, N5X and Stratix 10)
are basically flavors/platforms of the same architecture.  At least from
the Linux point of view.  Up to a point that N5X and Agilex share DTSI.
Having three top-level architectures for the same one barely makes
sense and complicates driver selection.

Try to unify them.

Changes since v1:
=================
1. New patch 3/5: arm64: socfpga: rename ARCH_STRATIX10 to ARCH_SOCFPGA64
2. New patch 4/5: arm64: intel: merge Agilex and N5X into ARCH_SOCFPGA64
3. Fix build issue reported by kernel test robot (with ARCH_STRATIX10
   and COMPILE_TEST but without selecting some of the clocks).

I tested compile builds on few configurations, so I hope kbuild 0-day
will check more options (please give it few days on the lists).

Best regards,
Krzysztof


Krzysztof Kozlowski (5):
  clk: socfpga: allow building N5X clocks with ARCH_N5X
  clk: socfpga: build together Stratix 10, Agilex and N5X clock drivers
  arm64: socfpga: rename ARCH_STRATIX10 to ARCH_SOCFPGA64
  arm64: intel: merge Agilex and N5X into ARCH_SOCFPGA64
  clk: socfpga: allow compile testing of Stratix 10 / Agilex clocks

 arch/arm64/Kconfig.platforms                | 17 ++++-------------
 arch/arm64/boot/dts/altera/Makefile         |  2 +-
 arch/arm64/boot/dts/intel/Makefile          |  6 +++---
 arch/arm64/configs/defconfig                |  3 +--
 drivers/clk/Kconfig                         |  1 +
 drivers/clk/Makefile                        |  4 +---
 drivers/clk/socfpga/Kconfig                 | 17 +++++++++++++++++
 drivers/clk/socfpga/Makefile                |  7 +++----
 drivers/edac/Kconfig                        |  2 +-
 drivers/edac/altera_edac.c                  | 10 +++++-----
 drivers/firmware/Kconfig                    |  2 +-
 drivers/fpga/Kconfig                        |  2 +-
 drivers/mfd/Kconfig                         |  2 +-
 drivers/net/ethernet/stmicro/stmmac/Kconfig |  4 ++--
 drivers/reset/Kconfig                       |  2 +-
 15 files changed, 43 insertions(+), 38 deletions(-)
 create mode 100644 drivers/clk/socfpga/Kconfig

-- 
2.25.1

