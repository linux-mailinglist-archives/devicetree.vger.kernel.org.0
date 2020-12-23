Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B481B2E20BA
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 20:16:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727794AbgLWTQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 14:16:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727624AbgLWTQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 14:16:26 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E67C06179C
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:15:45 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id j1so163427pld.3
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ALRcLK4O4+D5f37pUZG4i9TvZILQCAE+H6Afc3wmxiQ=;
        b=Su8AVDFmrOjPvMr6V+fcjbSTsmzpK729Jx+V31N47wJjGaIr10pxavsx/8lpmUVSnG
         Ci/W3O9rOZIuEz6S8Qgsue/v5s0IuaPo/OV2pmZe+l+Dl3uSbBz7ifp7VCuLQU7SXYTY
         3tWA0qrYk/Hmbm51roluWdyAZEv4rbHOIVA7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ALRcLK4O4+D5f37pUZG4i9TvZILQCAE+H6Afc3wmxiQ=;
        b=As3t8iUnuFx9djAt3NH1J0oW89+xWDWgH6DjwS4di5vXTnf3Je7mQvKlBb982OcvdS
         +RECy8jEhC66iOQJLjev9igQDyU5HLhQ3q1rLBtVG4da6SM+IqdxIF8HVlpejPk7Gqv7
         G+joC0xiFJUWahgSrmWfRswrT5ZTrq/66eARjLkQiqndF2ePT6Y0Ukg+PMg8bHd1iQ2m
         eP8Uv25odpFJVQyNY7xHi3urTIQKgf+jzP9H1o1M8ajLZePMMewGWW+6mHBUgReuEIfO
         SwiegMaDzz/XyTepBbPPIRK9ktaCQoWYRD3MegTxEeUck53Ylj8/LiLCGUk7NuxCCABT
         CmvA==
X-Gm-Message-State: AOAM532UFnDsFNHeikh1MexuNkr9TDnSGLYvrbNThWEzvif/VcrzNk4n
        vsUPrV/fk0tMiH1PaG1Ve9FH8A==
X-Google-Smtp-Source: ABdhPJzHHsKKA8084Hskzd1mlI1QvZ3SKWcsCeQXrWzvCLkGCuL8qKsUSiCpa3sQ6tsy0wTJbGphpw==
X-Received: by 2002:a17:902:ed45:b029:da:c274:d7ac with SMTP id y5-20020a170902ed45b02900dac274d7acmr26550233plb.69.1608750945056;
        Wed, 23 Dec 2020 11:15:45 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:29f0:6e54:608c:e1b9])
        by smtp.gmail.com with ESMTPSA id i2sm397640pjd.21.2020.12.23.11.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 11:15:44 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/5] ARM: dts: stm32: Add Engicam MicroGEA STM32MP1
Date:   Thu, 24 Dec 2020 00:43:57 +0530
Message-Id: <20201223191402.378560-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the initial series to support Engicam MicroGEA STM32MP1
SoM and it's associated carrier board dts(i) support.

MicroGEA STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

MicroGEA STM32MP1 needs to mount on top of Engicam carrier boards for
creating complete platform boards.

Possible carrier boards are,
- MicroDev 2.0
- MicroDev 7" Open Frame.

Any inputs?
Jagan.

Jagan Teki (5):
  dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 SoM
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 board
  dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 7" OF
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 7" OF

 .../devicetree/bindings/arm/stm32/stm32.yaml  |   9 ++
 arch/arm/boot/dts/Makefile                    |   2 +
 .../dts/stm32mp157a-engicam-microdev2.0.dtsi  |  44 ++++++
 ...157a-microgea-stm32mp1-microdev2.0-of7.dts | 120 ++++++++++++++
 ...32mp157a-microgea-stm32mp1-microdev2.0.dts |  21 +++
 .../dts/stm32mp157a-microgea-stm32mp1.dtsi    | 147 ++++++++++++++++++
 6 files changed, 343 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-engicam-microdev2.0.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi

-- 
2.25.1

