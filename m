Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71DED26A3D9
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 13:09:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726039AbgIOLIy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 07:08:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726061AbgIOLIl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 07:08:41 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C9D1C06174A
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 04:01:14 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id u8so2660948lff.1
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 04:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=VDzzatZNSBpQX7pKPfZ2Jk0vfUIzw5Bf9Eon3mMy8po=;
        b=CHlUmc7RPVH81nY89i759+N+3bpbtClFAivxfPnGTq9kK/PratYX/V4yYmYbJLtMDd
         NO5VHoN4YOOLfTO/j8oKpQI2nbjZvaC1AT0Eld357rjKFHYr4oBW/7NxNK2ZyM2MVfwJ
         08KmfRMz1/MvFhWIE+gDl+z3i2aoJzirAiUmsMPO9L0eCy8+F89ZRgYm+GmVvU9yW3rY
         eZXcf5c3+Abvvs7QtdE2T9AWD5ahLttZm+fTEMgOAQ8XiuWBQDROs/EMmK1gdskB0Zxp
         zPo8CGPEUs4MmjcULfpxqYQ6PvrqP08HEJ2fv0nHB1vvw3gci9DzA9Q2wvRfqNqmPSVx
         uOPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VDzzatZNSBpQX7pKPfZ2Jk0vfUIzw5Bf9Eon3mMy8po=;
        b=Z2USSoieUhqoWXXLL4TQRN+JgDsII6B1ceDvQdrxH+3OXz+YgBMKVBtR/feurgCEHF
         5p5q3WwLkxqDyvD5YMmuETrNJuucHBsgjE7pXKhdef2ZkTShP46V2yrP4xIFUpTB/gSv
         gcxh6pM8Fms/RSq5B07b3eynEOJdiBO9NJtbfBp2Y0xtiTmLC+SezMtwtqV45cERVilA
         Rh0uRs9lgqf5zsMELBAZNPZ19Wsqa7Es3gfDUKBT36Bnyx7kyKz5mV9JxlmWxBtqRK8C
         z3B3T2tfTgZEKMa/TG/trSGtx9DcAcr6AXPVddntnmSM2nQlGcUfAeNlTA+6lUHkHTeL
         7Vzg==
X-Gm-Message-State: AOAM532Ooc9b46rk8KaObxzHhWHjczfzdEx0u6TmyV9jZ5+WDEwTwigP
        ShYe4XfVPmIjgmhHGI1bJnHOlQ==
X-Google-Smtp-Source: ABdhPJxi1eJT7NU7liu0QBCxMR+g+0qBdUBCH3RJ43+uG7Hm3Dkdke+R9A2OiggP5qYYPyl76lzKNQ==
X-Received: by 2002:ac2:5547:: with SMTP id l7mr5848074lfk.153.1600167672741;
        Tue, 15 Sep 2020 04:01:12 -0700 (PDT)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id n3sm4588916ljj.59.2020.09.15.04.01.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 04:01:12 -0700 (PDT)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
        s-anna@ti.com
Cc:     grzegorz.jaszczyk@linaro.org, robh+dt@kernel.org,
        lee.jones@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, david@lechnology.com,
        praneeth@ti.com
Subject: [PATCH v6 0/5] Add TI PRUSS Local Interrupt Controller IRQChip driver
Date:   Tue, 15 Sep 2020 13:00:46 +0200
Message-Id: <1600167651-20851-1-git-send-email-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All,

The following is a v6 version of the series [1-5] that adds an IRQChip
driver for the local interrupt controller present within a Programmable
Real-Time Unit and Industrial Communication Subsystem (PRU-ICSS) present on a
number of TI SoCs including OMAP architecture based AM335x, AM437x, AM57xx SoCs,
Keystone 2 architecture based 66AK2G SoCs, Davinci architecture based
OMAP-L138/DA850 SoCs and the latest K3 architecture based AM65x and J721E SoCs.
Please see the v1 cover-letter [1] for details about the features of this
interrupt controller.  More details can be found in any of the supported SoC
TRMs.  Eg: Chapter 30.1.6 of AM5728 TRM [6]

Please see the individual patches for exact changes in each patch, following are
the main changes from v5:
 - Improve patch #2 with regards to various Marc Zyngier comments.
 - Drop example from commit description of patch #4.

[1] https://patchwork.kernel.org/cover/11034561/
[2] https://patchwork.kernel.org/cover/11069749/
[3] https://patchwork.kernel.org/cover/11639055/
[4] https://patchwork.kernel.org/cover/11688727/
[5] https://patchwork.kernel.org/cover/11746463/
[6] http://www.ti.com/lit/pdf/spruhz6

Best regards
Grzegorz

David Lechner (1):
  irqchip/irq-pruss-intc: Implement irq_{get,set}_irqchip_state ops

Grzegorz Jaszczyk (1):
  irqchip/irq-pruss-intc: Add a PRUSS irqchip driver for PRUSS
    interrupts

Suman Anna (3):
  dt-bindings: irqchip: Add PRU-ICSS interrupt controller bindings
  irqchip/irq-pruss-intc: Add logic for handling reserved interrupts
  irqchip/irq-pruss-intc: Add support for ICSSG INTC on K3 SoCs

 .../interrupt-controller/ti,pruss-intc.yaml        | 158 +++++
 drivers/irqchip/Kconfig                            |  10 +
 drivers/irqchip/Makefile                           |   1 +
 drivers/irqchip/irq-pruss-intc.c                   | 664 +++++++++++++++++++++
 4 files changed, 833 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
 create mode 100644 drivers/irqchip/irq-pruss-intc.c

-- 
2.7.4

