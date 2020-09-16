Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE24A26CC08
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 22:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726794AbgIPUiU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 16:38:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726845AbgIPRIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 13:08:40 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EFDFC061D7D
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 09:35:45 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id b22so7633038lfs.13
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 09:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=jD7242K1QpVoSYp5uQBBtJhxPpRf18m7ysHu0opc35M=;
        b=nD3DKjKHeYWgXplv1RoEalEO6/+75wqWg8pfEf8+x9OtBNVX+QHHLCzOh6O508asM8
         m/HOQsn2H9ey58C5D8qtQDkhoNmdTp/HhYnJMBpM7KVbub9hpnC2YEnh9ge1A68RQF0U
         /6CSMbJsPJmZZa0zSbWsMb+LsSNScil70+/+FEImX1PvlODqB3qlkxnI3KFktkB3nITc
         5GUN1XGF5br0XTUjKQS821WxqUba5eRHgZ3DhVz0ZFuTWy10V9EYpZIErzWoOusiWj8C
         W+c4fryI+TSCoxdNa7CV5VzofUJJTrJyCabmsFNHUpCWiufOYgn1G7m/mX8httFDaz3F
         gu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jD7242K1QpVoSYp5uQBBtJhxPpRf18m7ysHu0opc35M=;
        b=SD/QSUYigik8BUt0NHQQ05AIXKJ5eP8m4N6cB+0jqSkM6nlTEKAcTq6DsMNuHN8tuY
         A9MSpzsn40sK50FDo3+KF9FcATdCs0XGLBXJWa4piQgCNQbb85OOr7IzKqI70EfkPALd
         Wf+dRWXa7tqVTcojlydVat7d8bKOwCwUPZ+ivRYX5TZhrl/E2xfOu9FUJ1xOhH/oAo0t
         fcqjz/EwOIQo3u0JQe24Ak+ZcbxO5/6y2ODoQFjlFqwv8EwAViddwraaWOke+vVDikQO
         ehsfxJ5LonB1HEQmqSNWs7c7vtNxtDFAZAmdDNtjwY9AVGvvZWsknchn2E2rEXVB7MJf
         +2CQ==
X-Gm-Message-State: AOAM532AOSfKmPxNOtKGFqe0MPpZf5aljW9gldATm2PMGJqozDJTrPR+
        dehxxyNaCmDpkhbeCn6ZM6BCfg==
X-Google-Smtp-Source: ABdhPJz0JK7EcxcL5AlGrbijKJf0uRbNc+VCaok5nNdOlG4P6zmEiZi3OZ4YWfLIHRlDDkBrRgrowQ==
X-Received: by 2002:a19:606:: with SMTP id 6mr7272729lfg.407.1600274143884;
        Wed, 16 Sep 2020 09:35:43 -0700 (PDT)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id 144sm5044211lfj.35.2020.09.16.09.35.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 09:35:43 -0700 (PDT)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
        s-anna@ti.com
Cc:     grzegorz.jaszczyk@linaro.org, robh+dt@kernel.org,
        lee.jones@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, david@lechnology.com,
        praneeth@ti.com
Subject: [PATCH v7 0/5] Add TI PRUSS Local Interrupt Controller IRQChip driver
Date:   Wed, 16 Sep 2020 18:35:10 +0200
Message-Id: <1600274110-30384-1-git-send-email-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All,

The following is a v7 version of the series [1-6] that adds an IRQChip
driver for the local interrupt controller present within a Programmable
Real-Time Unit and Industrial Communication Subsystem (PRU-ICSS) present on a
number of TI SoCs including OMAP architecture based AM335x, AM437x, AM57xx SoCs,
Keystone 2 architecture based 66AK2G SoCs, Davinci architecture based
OMAP-L138/DA850 SoCs and the latest K3 architecture based AM65x and J721E SoCs.
Please see the v1 cover-letter [1] for details about the features of this
interrupt controller.  More details can be found in any of the supported SoC
TRMs.  Eg: Chapter 30.1.6 of AM5728 TRM [7]

Please see the individual patches for exact changes in each patch, following are
the main changes from v5:
 - Add Co-developed-by tags.
 - Change the irq type to IRQ_TYPE_LEVEL_HIGH in patch #2.

[1] https://patchwork.kernel.org/cover/11034561/
[2] https://patchwork.kernel.org/cover/11069749/
[3] https://patchwork.kernel.org/cover/11639055/
[4] https://patchwork.kernel.org/cover/11688727/
[5] https://patchwork.kernel.org/cover/11746463/
[6] https://patchwork.kernel.org/cover/11776181/
[7] http://www.ti.com/lit/pdf/spruhz6

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

