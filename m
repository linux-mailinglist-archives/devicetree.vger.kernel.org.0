Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA3432731C
	for <lists+devicetree@lfdr.de>; Sun, 28 Feb 2021 16:44:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230414AbhB1Po1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Feb 2021 10:44:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230406AbhB1PoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Feb 2021 10:44:21 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12168C06174A
        for <devicetree@vger.kernel.org>; Sun, 28 Feb 2021 07:43:41 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id n10so9795210pgl.10
        for <devicetree@vger.kernel.org>; Sun, 28 Feb 2021 07:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nJS6qrjZ8dafduMG2mJ+d0lKpg1t0+WahrbSxWdeR6w=;
        b=WpOAosuE+317rG0hKkZT1QmVtawXOC+4f0laoXjx8uwmSbOFP/rSCEua8dh6FW8kZa
         zjYOpFaJ5oUASIXytJIJVFymbethww49+LhvwpTBDFr65qYW1qDu6r46/hxteb0f4YVo
         nCDIkJVk4mKuqUZR6njHPeqGpdkS3WFpbhQ6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nJS6qrjZ8dafduMG2mJ+d0lKpg1t0+WahrbSxWdeR6w=;
        b=OyA3PMEWTBqeYxZSYnzrk2V0KHIk+8mjidHM3gy+HmRSo0nD+ujqJX0wDPv2bQSOK+
         MLHJ2hM9bu6A6Ju7tPheshWPiEIdCU1bZK9uY+6PSQKhRkbu8K16LeIxiNbdZLsBB3CB
         ETEMwsilg577LIpf6NZ6vrae5J6TQ0DPRAO5Mrio1vdF0f5JR40UflwBajO38LBxHaPm
         73T+G7lK5hUc5Bv9FgK9URJ5yGb8eZqc6pr68DBEQT34dw28SMl+CrT4ULdAn/q8oETc
         9hsAvkFyQXcDj9xWNNRLTxOlX8/sVxcQE1wt2IQg7Ta4a0dnlW3mboVU3ZfW8JzY2xIS
         I6xA==
X-Gm-Message-State: AOAM530rcYTUGq9awIhADRDa7ZJrth77JJ2r7wyLggSxcl3tU607kM1K
        m5KlaAYR/pb9OOBcvfHgfCr7Mw==
X-Google-Smtp-Source: ABdhPJwU+CCyfO3HGbmKVzzzxLyes6sekTdA2PHQPy2a8tgbO6xRdrip418RZFLLHbJMbMkv3iS/pw==
X-Received: by 2002:a63:1505:: with SMTP id v5mr10567310pgl.95.1614527020647;
        Sun, 28 Feb 2021 07:43:40 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.225])
        by smtp.gmail.com with ESMTPSA id j3sm13522133pgk.24.2021.02.28.07.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 07:43:40 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 00/10] ARM: dts: stm32: Add Engicam STM32MP1 SoM
Date:   Sun, 28 Feb 2021 21:13:13 +0530
Message-Id: <20210228154323.76911-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the initial series to support Engicam MicroGEA STM32MP1 and
i.Core STM32MP1 SoM and it's associated carrier board dts(i) support.

Changes for v3:
- fixed v2 comments
- updated commit messages
Changes for v2:
- fixed v1 comments
- add i.Core STM32MP1 SoM 

Any inputs?
Jagan.

Jagan Teki (10):
  dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 SoM
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 board
  dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 7" OF
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 7" OF
  dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0
  ARM: dts: stm32: Add Engicam i.Core STM32MP1 SoM
  ARM: dts: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0
  dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit
  ARM: dts: stm32: Add Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit

 .../devicetree/bindings/arm/stm32/stm32.yaml  |  17 ++
 arch/arm/boot/dts/Makefile                    |   4 +
 .../stm32mp157a-icore-stm32mp1-ctouch2.dts    |  47 +++++
 .../stm32mp157a-icore-stm32mp1-edimm2.2.dts   |  47 +++++
 .../boot/dts/stm32mp157a-icore-stm32mp1.dtsi  | 196 ++++++++++++++++++
 ...157a-microgea-stm32mp1-microdev2.0-of7.dts | 154 ++++++++++++++
 ...32mp157a-microgea-stm32mp1-microdev2.0.dts |  55 +++++
 .../dts/stm32mp157a-microgea-stm32mp1.dtsi    | 148 +++++++++++++
 8 files changed, 668 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi

-- 
2.25.1

