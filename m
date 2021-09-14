Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6D3D40AB5E
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 12:04:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230509AbhINKFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 06:05:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230045AbhINKFk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 06:05:40 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1579EC061574
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:23 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id g13-20020a17090a3c8d00b00196286963b9so1713252pjc.3
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5d6CXA1cP3EEel/xvIEPXKhDxEQ+6LoVTc/NSVc6i18=;
        b=D0jLsFUjQ6iIm0KNTmvBCltXJHHKp9DUh+5QP4At4WzhfE1iZ2Hvz4oPmk+TNyWdhs
         bahIzVDde9sGXvtepJP5FdtWTkrXN04BEkj8xm+06KomnUBQXpuZzLZuE/ZhaHzPHW94
         TVitY0Uj16lxn9jpBufk7irHKCmD3uTU1g9tQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5d6CXA1cP3EEel/xvIEPXKhDxEQ+6LoVTc/NSVc6i18=;
        b=52U+5EfxDUvs1pdu6mZOwuFZCAorCB2tbiFMBeaG98Y/IJgkPouW1Fcf5KLfnfkJHn
         LNSHkedkOhkCtdfuvZUESsDZmnLXMCaiYJzJpNJhfN/SV9G6T9OjFXX9GGPDpsv0iivd
         /SZTB9+mOquUKTcTSdjDVB2m8UdF51wabu7eucN26RP8fV/HmGCddgoJugrVx7fA6EjV
         8/lcECJ7rIWkI/jiE23LFuVc9E2QHx6JWtNH54dMreyEalOar8QnVMZiiyM1o50j3iUZ
         vvPDwqywAQ9alyJiwdVOah9VUtcvS9XZjqGHR0C+UTRIVUlDQDacOPTHPFBLjyp0WfQe
         jPIQ==
X-Gm-Message-State: AOAM5303SUV0P45e7jNVfPoLvAYvH1isOiILBK+ecIHe0qQrpR7Em4+I
        2eAGCl5Ecq0Q9ckNb6G9XkO11XobmoG3vA==
X-Google-Smtp-Source: ABdhPJyD8YqhRIZYK/9zwD+JYfeg1pbM3Q3rz0kEr/ucAwAKm7OLP4ALWc5K5hHvZ8xo8150j/G3+w==
X-Received: by 2002:a17:90a:7f01:: with SMTP id k1mr1192993pjl.156.1631613862311;
        Tue, 14 Sep 2021 03:04:22 -0700 (PDT)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id b5sm1193140pjq.2.2021.09.14.03.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 03:04:22 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, robh+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de
Cc:     linux-arm-kernel@lists.infradead.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 0/3] SigmaStar SSD20XD GPIO interrupt controller
Date:   Tue, 14 Sep 2021 19:04:12 +0900
Message-Id: <20210914100415.1549208-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In new SigmaStar SoCs they have moved away from having a few
interrupt capable GPIOs and instead have chained yet another
interrupt controller in to provide interrupt support for
all of the GPIOs.

I'm hardly an IRQ expert so I expect I've made a total
mess of this. No one else was going to write this driver
so I had a go.

Daniel Palmer (3):
  dt-bindings: interrupt-controller: Add SigmaStar SSD20xD gpi
  irqchip: SigmaStar SSD20xD gpi
  ARM: dts: mstar: Add gpi interrupt controller to i2m

 .../sstar,ssd20xd-gpi.yaml                    |  53 +++++
 MAINTAINERS                                   |   2 +
 arch/arm/boot/dts/mstar-infinity2m.dtsi       |   8 +
 drivers/irqchip/Kconfig                       |  11 +
 drivers/irqchip/Makefile                      |   2 +
 drivers/irqchip/irq-ssd20xd-gpi.c             | 211 ++++++++++++++++++
 6 files changed, 287 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/sstar,ssd20xd-gpi.yaml
 create mode 100644 drivers/irqchip/irq-ssd20xd-gpi.c

-- 
2.33.0

