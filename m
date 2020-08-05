Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38A7923D0B1
	for <lists+devicetree@lfdr.de>; Wed,  5 Aug 2020 21:52:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729146AbgHETwD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Aug 2020 15:52:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728109AbgHEQvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Aug 2020 12:51:46 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F7C5C0617AB
        for <devicetree@vger.kernel.org>; Wed,  5 Aug 2020 04:01:23 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id s26so22490100pfm.4
        for <devicetree@vger.kernel.org>; Wed, 05 Aug 2020 04:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IXl0op0XvQYTvwb5bcKNryRkXDVpBLnZpOMVzhjZNkQ=;
        b=EkQQ89yOe1EY9nCbVWZoj+93xO0UKBjV3pPJai1tGnUiFF0YVCdf8dXYFZQB9ONXtR
         ep47VBzoQ6jmxkdmei8O1tV8rewHUskV5pgNaUV3mfnLbFe/qmGR8zOxPkqx/ZrF0iIS
         LOlEzVbCSII1vSt3mVT+9npv7i8tO6fEvWnA0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IXl0op0XvQYTvwb5bcKNryRkXDVpBLnZpOMVzhjZNkQ=;
        b=Ky4wl8mpofC2uDVpwlFaS1oBrju476WLEWE6Vv0kwd8vNg+KsLvvGBMVfFlVKkABXH
         17ulWUbDToY3P/NLzP2Pre1qdc6LD7kALnqgjRHDPYmmuSponUvAt9TmiODLj5XttK3a
         cXRrY6Y/1Kfr5PVRVZmeLNNT2MGNH6b4i0OqCSPZNacBCsedxdZ6GWhDsr7e8qvkq89K
         wSw2LOTuv/JJ8cSlobyYeGeOphNTqrDUkP6Qe705w5d54BukoR1pG2K1KXhB0X/obivv
         BRX0rPcdV5AOVysIHLrZzJwhyqWpvt5JiS94vqovimpCuSQOZ7dG72is6XqS7lmLvr4o
         g0Ig==
X-Gm-Message-State: AOAM533oKUD2Vv1fqts3IEgBASvGVevjgZqTFbLFwZllIONewzZFByDJ
        yis41+bQrmEEb8NpHiu+N6MkO5cyvz0=
X-Google-Smtp-Source: ABdhPJzHQO7oRI8Z0FA40Z+RnWxDwemAbCPf5cqMPN8QdngN6CsqzLsAddBnozTIqq8fndWf2sqZew==
X-Received: by 2002:a63:b74f:: with SMTP id w15mr2581625pgt.314.1596625281526;
        Wed, 05 Aug 2020 04:01:21 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id fv21sm2583142pjb.16.2020.08.05.04.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2020 04:01:20 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
        robh+dt@kernel.org, arnd@arndb.de, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 0/3] irqchip: mstar: msc313 intc driver
Date:   Wed,  5 Aug 2020 20:00:49 +0900
Message-Id: <20200805110052.2655487-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This driver adds support for the interrupt controllers
present between the various IP blocks and the ARM GIC
in MStar/SigmaStar Armv7 SoCs.

All of the chips so far have two instances of this
controller.

One instance controls what are called "IRQ" interrupts
by the vendor code I have seen.

The other instance controls what are called "FIQ" interrupts
by the vendor code. Presumably because they can be FIQ
interrupts. Right now the FIQ bypass is disabled in the
GIC so they operate just the same as the IRQ interrupts.

The register layouts are the same for both. The FIQ one
needs to have the status bit cleared on EOI so that difference
is handled by a compatible string difference.

I initially made this an RFC because this is my first
interrupt controller driver and I expect to have made a
bunch of mistakes. I've cleaned this up a bit since then
but I still expect it's not 100% correct. Especially
the offset to map the INTC interrupt to the GIC interrupt.

Daniel Palmer (3):
  dt: bindings: interrupt-controller: Add binding description for
    msc313-intc
  irqchip: mstar: msc313-intc interrupt controller driver
  ARM: mstar: Add interrupt controller to base dtsi

 .../mstar,msc313-intc.yaml                    |  79 +++++++
 MAINTAINERS                                   |   2 +
 arch/arm/boot/dts/mstar-v7.dtsi               |  20 ++
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-msc313-intc.c             | 210 ++++++++++++++++++
 5 files changed, 312 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mstar,msc313-intc.yaml
 create mode 100644 drivers/irqchip/irq-msc313-intc.c

-- 
2.27.0

