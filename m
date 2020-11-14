Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 742782B2C30
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 09:47:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726599AbgKNIqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 03:46:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726625AbgKNIqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Nov 2020 03:46:38 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0594BC0617A7
        for <devicetree@vger.kernel.org>; Sat, 14 Nov 2020 00:46:37 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id s9so13790709ljo.11
        for <devicetree@vger.kernel.org>; Sat, 14 Nov 2020 00:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q/odiUkDnhOhV4xQfBLaQspz4F1FM/nkN18y8vgULzY=;
        b=KDGZmUVgbdL/YA7L/+7H1n5zkFOp4DBJzHmWky7TcGvuGfkWWtrcEM4u9zNcvYIdJk
         Yc/LcmM8D3eHuJhmsoM7/X9q7ScXj7KnuIq2yAfTfXw8RtI3JbJafYL0sW4JoOgqrPmu
         SoyYnE7isp6Cz63BbXLBkdGeLRygmAnw/1jl6HurcI8vnKTb/Ub243TvXAvh4Yv78lPk
         3gsJHbRAVLC8rE5QxRwC/v5s+jJsuoBduArDjo6FD6aBlDEZZKhP1jTv+CI4VOvi1M0i
         zXA0/sr0nahI+EFUqPTAka6vI7sltCvf7R8AUU/RBLp9xxl+UNjd2R/wwtb68fSmqoWC
         zJjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q/odiUkDnhOhV4xQfBLaQspz4F1FM/nkN18y8vgULzY=;
        b=sRE+7GlZbWNh3UCP5sJT0udChBkYHklWjN2frAJ2mNxamJMdFivDAhZEnKuVUuzjPd
         Br0+TkCssY+RD5KURg25wslKTO718I6CJcqm4Mx47nNcxzNXi/6ReU1nKRSUFJSm2GOd
         up5nNTa+dyPRLS3cBjT1uD+8n3p05F21K8cYLOT3pHo+5vgnnCf+wKyj77prGFRzi7ZB
         4jNBAeVAfAH6/zpfE2E/QGhotdHPA1FVCm06nzcnlK0S6ctxQhLKvKo4Ui86qIEAQG3f
         HueLwHxT2mp2aP2b+IDUub/JbvZZrE2HUG7rxGDE3P6pOs22sXF84NSeJKJhyXVjAkfr
         FGIg==
X-Gm-Message-State: AOAM530hqchD6ocsqLGLpqJVDaNcjRViQ2fwnrrVwBaGkqhF0AFwOObX
        EVUMGMFfidNqLx/4iXT06x9ZXw==
X-Google-Smtp-Source: ABdhPJxhTC6f2DjKAimnwZMyHtCSx3cdDDyBEURpNSDwedARDzrJHku8HsXdtcAvY5gwDzccBcyyrQ==
X-Received: by 2002:a2e:8504:: with SMTP id j4mr2414944lji.169.1605343596316;
        Sat, 14 Nov 2020 00:46:36 -0800 (PST)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id f62sm1870081lfd.144.2020.11.14.00.46.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 00:46:35 -0800 (PST)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, s-anna@ti.com
Cc:     grzegorz.jaszczyk@linaro.org, linux-remoteproc@vger.kernel.org,
        robh+dt@kernel.org, lee.jones@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        praneeth@ti.com, rogerq@ti.com
Subject: [PATCH 0/6] Add a PRU remoteproc driver
Date:   Sat, 14 Nov 2020 09:46:07 +0100
Message-Id: <20201114084613.13503-1-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All,

The Programmable Real-Time Unit and Industrial Communication Subsystem
(PRU-ICSS or simply PRUSS) on various TI SoCs consists of dual 32-bit
RISC cores (Programmable Real-Time Units, or PRUs) for program execution.

The K3 AM65x amd J721E SoCs have the next generation of the PRU-ICSS IP,
commonly called ICSSG. The ICSSG IP on AM65x SoCs has two PRU cores,
two auxiliary custom PRU cores called Real Time Units (RTUs). The K3
AM65x SR2.0 and J721E SoCs have a revised version of the ICSSG IP, and
include two additional custom auxiliary PRU cores called Transmit PRUs
(Tx_PRUs).

This series contains the PRUSS remoteproc driver together with relevant
dt-binding. This is the 3rd foundation component for PRUSS subsystem, the
previous two were already merged and can be found under:
1) drivers/soc/ti/pruss.c
   Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
2) drivers/irqchip/irq-pruss-intc.c
   Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml

Best regards,
Grzegorz

Grzegorz Jaszczyk (1):
  remoteproc/pru: Add support for PRU specific interrupt configuration

Suman Anna (5):
  dt-bindings: remoteproc: Add binding doc for PRU cores in the PRU-ICSS
  remoteproc/pru: Add a PRU remoteproc driver
  remoteproc/pru: Add pru-specific debugfs support
  remoteproc/pru: Add support for various PRU cores on K3 AM65x SoCs
  remoteproc/pru: Add support for various PRU cores on K3 J721E SoCs

 .../bindings/remoteproc/ti,pru-rproc.yaml     | 214 +++++
 drivers/remoteproc/Kconfig                    |  12 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/pru_rproc.c                | 880 ++++++++++++++++++
 drivers/remoteproc/pru_rproc.h                |  46 +
 5 files changed, 1153 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,pru-rproc.yaml
 create mode 100644 drivers/remoteproc/pru_rproc.c
 create mode 100644 drivers/remoteproc/pru_rproc.h

-- 
2.29.0

