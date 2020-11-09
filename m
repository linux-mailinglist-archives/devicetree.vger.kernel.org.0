Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0A502AB7FC
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 13:18:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729647AbgKIMS0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 07:18:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726956AbgKIMSZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 07:18:25 -0500
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46C08C0613D4
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 04:18:24 -0800 (PST)
Received: by mail-pf1-x442.google.com with SMTP id g7so8016271pfc.2
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 04:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0ECS4fSUjBtwy6Ka0FJ1351R2BmrDJGaIrqok5xLHqc=;
        b=DxTb+0Te0zpg9F3FsAG34GuTxjXeWUPuvJrwvHPeKZSxo9ZoOtHRVx81kpvTcsOfo8
         oR+SMQtkwI5rzaIQudhw95vV2rkohZiS27WQlUwkJfclYxfeps+0wWMDqTVaAXeuUA9J
         7AQKzbmzBfZSNbhm0BM7vSIvZaa9CsOctK/Yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0ECS4fSUjBtwy6Ka0FJ1351R2BmrDJGaIrqok5xLHqc=;
        b=b75SJ8BXAwiAk5N5OT0aqCIjxwlaAeiX8i/eFBUzOLJUul6eW21v2nkldjc6QH+GAl
         gIcJrOXhjsx67ZjIP15fNcuEMaZJ9ZFR4cs2LQDqEUotcJ3OMZy0sjuOrsqh+Ob50jPW
         q04pM/1P6CBQOx8Lu0ry7YW/Mawo3yZpFyuuWUJSETrPQJsosGarUR0YJ8ayf2nTZN6Y
         S+bdG06teVw2qC4vSEL6j5MXT/sVUhc7T8hozmiFRHpbfC0DNA9GdHQfOuZthTgDKdKo
         1d+gkurh2bQH9Y6m16FK7V6qPV3nn+JyXCr72dr/Pcb5DSQLEuzYZHx/rcl/ncnHqN2P
         9cTg==
X-Gm-Message-State: AOAM531I9JFIdbN2wg82IZ6dQTjtb+THyMN3Mk22DtXO5tJUlx+4mD2F
        sp6yjc9KVUqt2IdBKzRQ9+J6xA==
X-Google-Smtp-Source: ABdhPJwiprztaOlzoU+V3h2d05eGOMn560WX/sUv7c/t2PAq7D9nYP6sjKVdAiErqkHfsZHQaOkoGQ==
X-Received: by 2002:a65:6649:: with SMTP id z9mr12193992pgv.18.1604924303784;
        Mon, 09 Nov 2020 04:18:23 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id i123sm11425204pfc.13.2020.11.09.04.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 04:18:23 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org, linux-gpio@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
        maz@kernel.org, w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v3 0/5] Add GPIO support for MStar/SigmaStar ARMv7
Date:   Mon,  9 Nov 2020 21:17:26 +0900
Message-Id: <20201109121731.1537580-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

At the moment the MStar/SigmaStar support is only really
capable of shell from an initramfs and not much else.

Most of the interesting drivers are blocked on clock and pinctrl
drivers and those are going to take me a little while to get cleaned
up.

Clock and pinctrl aren't needed for basic GPIO to work (all pins
start off as GPIOs..) and it makes it possible to actually do something
so this series adds everything that is needed for the main GPIO
block in these chips.

Changes since v2:

- Numerous style and code cleanups as suggested by Andy Shevchenko,
  Linus Walleij, Marc Zyngier and Rob Herring.

- Pad names moved out of the binding header because they are no longer
  needed there. The pin/pad numbers are still there as I couldn't think
  of a better way to do this. meson8b-gpio.h seems to be similar.

Changes since v1:

- Moves the binding header commit before the yaml commit
  
- Fixes the license on the binding header to include BSD-2-Clause

- The driver has been reworked to use the gpiolib irqchip functionality
  as suggested by Linus[0]. I think I got this right. The gpio controller
  doesn't actually do anything with interrupts itself.. It just happens
  to have 4 lines that are also wired to lines on one of the interrupt
  controllers.

- Now that the driver is an interrupt controller in it's own right for
  the gpio lines that have associated interrupts the binding description
  has been updated to add the interrupt-controller bits and remove the
  description of the interrupt-names that described how the interrupts
  used to be passed in.

Daniel Palmer (5):
  dt-bindings: gpio: Add a binding header for the MSC313 GPIO driver
  dt-bindings: gpio: Binding for MStar MSC313 GPIO controller
  gpio: msc313: MStar MSC313 GPIO driver
  ARM: mstar: Add gpio controller to MStar base dtsi
  ARM: mstar: Fill in GPIO controller properties for infinity

 .../bindings/gpio/mstar,msc313-gpio.yaml      |  62 +++
 MAINTAINERS                                   |   3 +
 arch/arm/boot/dts/mstar-infinity.dtsi         |   7 +
 arch/arm/boot/dts/mstar-v7.dtsi               |  10 +
 drivers/gpio/Kconfig                          |  11 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-msc313.c                    | 460 ++++++++++++++++++
 include/dt-bindings/gpio/msc313-gpio.h        |  53 ++
 8 files changed, 607 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
 create mode 100644 drivers/gpio/gpio-msc313.c
 create mode 100644 include/dt-bindings/gpio/msc313-gpio.h

-- 
2.29.2

