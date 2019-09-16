Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A19EB3E03
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2019 17:47:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389475AbfIPPqv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Sep 2019 11:46:51 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:34260 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389498AbfIPPqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Sep 2019 11:46:50 -0400
Received: by mail-pg1-f193.google.com with SMTP id n9so245855pgc.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2019 08:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kTpWa1DIkfpJvRELBVr27cwiqR/tR9AaU9awO2MhQyc=;
        b=pRk3HU+zY6iiNHWJaHFXTtj+RSJ3rHyjAV2n8js3njp8O5MkK7jE+zN8qt+CkzCACP
         BQbioqI6GUv+RYYuXQkrIVsWwHXEW2N5Hp5SApwqEgKB83jINZhsFiePeMXul8W8U/Uw
         tzHfLSTFnr5Uz8o5aX1TDUhZLcOqgCCv3FccW4j0Z8JI4ZdOCZUdcWkFTyV3yEZlfIiI
         kV2xJK8vU7oL0Gs01cvD8pyTO2csDQzm0/e/vI2EvkRiWm6MFjZzwDJdh/v73bOKi0Xu
         PlXJitUH+4KYVTLTdkjzcZyv8rMPYCeKLcNV+gD9HjodqeFZ22yTcO+qDFRr47c9pkj2
         V0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kTpWa1DIkfpJvRELBVr27cwiqR/tR9AaU9awO2MhQyc=;
        b=DOOAuQKW+U6/TIRlQ3/GIxapJhlRlZa6Okqgd32ccJ/pJdl+kItVzyhPB6wuJJSBZ1
         MyZnTywppJBbCT87ZZjtQecRLDvzZGAuHDpKwHvOBTPuz1sG5m/fd4RsLQHlozjXDbPV
         GUI1GH8uNmk59hl2pSRRQVyjm8DCZiu/yps1uXR/mLaX4GUvmz8uw4wkUKc1+EtgRghv
         fCdwZGWllTm30YG3kguUILigPPmbcdMSWpfN3EsVJmOuLl6x1neBamwIiD9oM4+BC8qG
         Z7VqFVbTobh+UgxEfT/S4VU9J4hYmT7IUxSiR/5gx68Bj+yRC5MA63CLG30MiBgU62gZ
         VGyw==
X-Gm-Message-State: APjAAAUDJSKvGJvfKVPdC3LsEGhz6OlIADyhUf4yOgyjKpMUOOTu0qEd
        4a33zHNqcscK74EJQUS49gEX
X-Google-Smtp-Source: APXvYqxbBmmF8P2GlngR6dKtgNi/1ipJpKhOIJola5eIKUtLrYoCvcmNvA3pymXBDbwkMD3NVZMTeg==
X-Received: by 2002:aa7:96a9:: with SMTP id g9mr6542447pfk.16.1568648810185;
        Mon, 16 Sep 2019 08:46:50 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
        by smtp.gmail.com with ESMTPSA id s5sm36227670pfe.52.2019.09.16.08.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 08:46:49 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
        sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        thomas.liau@actions-semi.com, linux-actions@lists.infradead.org,
        linus.walleij@linaro.org, linux-clk@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 6/7] MAINTAINERS: Add entry for Actions Semi SD/MMC driver and binding
Date:   Mon, 16 Sep 2019 21:15:45 +0530
Message-Id: <20190916154546.24982-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MAINTAINERS entry for Actions Semi SD/MMC driver with its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c31e6492b601..d13138330b97 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1375,6 +1375,7 @@ F:	drivers/clk/actions/
 F:	drivers/clocksource/timer-owl*
 F:	drivers/dma/owl-dma.c
 F:	drivers/i2c/busses/i2c-owl.c
+F:	drivers/mmc/host/owl-mmc.c
 F:	drivers/pinctrl/actions/*
 F:	drivers/soc/actions/
 F:	include/dt-bindings/power/owl-*
@@ -1383,6 +1384,7 @@ F:	Documentation/devicetree/bindings/arm/actions.yaml
 F:	Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
 F:	Documentation/devicetree/bindings/dma/owl-dma.txt
 F:	Documentation/devicetree/bindings/i2c/i2c-owl.txt
+F:	Documentation/devicetree/bindings/mmc/owl-mmc.yaml
 F:	Documentation/devicetree/bindings/pinctrl/actions,s900-pinctrl.txt
 F:	Documentation/devicetree/bindings/power/actions,owl-sps.txt
 F:	Documentation/devicetree/bindings/timer/actions,owl-timer.txt
-- 
2.17.1

