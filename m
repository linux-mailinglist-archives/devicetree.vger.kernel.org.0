Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C81176B650
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 08:11:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725856AbfGQGK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 02:10:58 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:42423 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbfGQGK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 02:10:56 -0400
Received: by mail-pf1-f195.google.com with SMTP id q10so10281286pff.9
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 23:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=tcOipK/CbddDVGFHFiGY3BJRXPaA4gC2lnfl7Hga/DI=;
        b=BrJDYCZJB9PG2HE+zn1d3uzhxRGw8nkXBBsMHHsFrRnoKeB07FH6aBz2TGAHjuOp0u
         bMwUGjgVUahRq2G8WwuPSF/hj3iKHxf4F5ptDWZZfaBUevxVf/iSdoi6hZKhe/e70Bco
         /E3DzKUFLNdGkZYFhmukS2xeKpUl7SzGaXjZDi1GhwHDoJqkcrAneHe4+7mq2beYs0q9
         vQTiBYCUMuuRsxteC/AaQaqJ5pq7gq8drIUbOqlQ3FgJXQ8rbis09pge2Ixb/fASqSOG
         Yv6wFtchoJpRuhsS7sa8ITOyR0whajNhJASDzc58bridZxkGG4iSxY/IdDdloKvjMLe/
         l6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tcOipK/CbddDVGFHFiGY3BJRXPaA4gC2lnfl7Hga/DI=;
        b=GWJdWHNMAC2O+s/6JNu3lE/t1uRwRQVfjO+GHtTQ1msYKjPIH/s3sWlk4P3TqikCNA
         Qp/SPi83Bj41oZdESQDMc05plWUgUPy7CIC8hTlAZzBblWlqHEiY1kAAnQpnqjBTF7sj
         WzoeMWbe1Wxz+/WFvK78jkmHsgeKTNDkyJZmG6M9xz3AoqCuBNrwOXAmlrdErh2/Ms1l
         JkwTv40LJc8YdIItbE19vvFNs3YUPYWwFo5zejdInMYIa4c9vacIB6bxGxahkuCiqroo
         43mcBmypajFwqwaClo5ro2qeIvghSCjRWOgSl8uCBEbOM1U1wZlznH2l+gB/lwH/jdQa
         1/tg==
X-Gm-Message-State: APjAAAUvm3A2NAUEwLROr79LG9UKRw1eyPJCSw+d0s1uYyrzcb62mC2q
        SNkS/TyUYn19QMyx+RuiGKDX
X-Google-Smtp-Source: APXvYqy4gNVYEdgjbXvPK6KcNs5PTafuSPkKcmK8Hq2gFAval1OLYy1Y5GCOnKFcSedCx4Kq8YXApg==
X-Received: by 2002:a17:90a:dac3:: with SMTP id g3mr41743202pjx.45.1563343855049;
        Tue, 16 Jul 2019 23:10:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7301:59e6:f493:40df:9c8a:5041])
        by smtp.gmail.com with ESMTPSA id r27sm25993313pgn.25.2019.07.16.23.10.47
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 16 Jul 2019 23:10:54 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com,
        kinjan.patel@einfochips.com, prajose.john@einfochips.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] Add support for i.MXQXP AI_ML board
Date:   Wed, 17 Jul 2019 11:40:36 +0530
Message-Id: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds support for i.MXQXP AI_ML board from Einfochips.
This board is one of the Consumer Edition boards of the 96Boards family
based on i.MX8QXP SoC from NXP/Freescale.

The initial support includes following peripherals which are tested and
known to be working:

1. Debug serial via UART2
2. uSD
3. WiFi
4. Ethernet

More information about this board can be found in Arrow website:
https://www.arrow.com/en/products/imx8-ai-ml/arrow-development-tools

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: Add Vendor prefix for Einfochips
  dt-bindings: arm: Document i.MX8QXP AI_ML board binding
  arm64: dts: freescale: Add support for i.MX8QXP AI_ML board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      | 249 ++++++++++++++++++
 4 files changed, 253 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts

-- 
2.17.1

