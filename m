Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA574114B6
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 14:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234370AbhITMnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 08:43:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233874AbhITMnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 08:43:32 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C321C061760
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:42:05 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id b20so8604211lfv.3
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3Jyaaz7vsLz5usd/SRKYitd1GGLRRfy3n82omug9pAA=;
        b=L/kr3gQxhCNlhY6qH1CLUHlheQzY/Uh+X/1bxbkbfOsRhN5fgPZdylx7AksknyVZx0
         ZavNwA4iIjTf8EcdStQfTAE/CRJna1NdH2D1H7fxIYHEiQ+0MHOPC7853nFtRKP48Vb1
         GJzyA8LSMUDfFgdLyXv74OeaA8br/7jymBKqKQKfeYRtMB2s0FkIFGGt5rTgnSKxV8mU
         X4NlHShLxa3rlaPq+R/xlNlW86R+vVxLpXI2xSERkAr/iLu0cn1PCrZkVQlCaSVrLeQt
         SndtPNzU3Ga5dMxXpv6OGJSxycuUZb6UBdv2g/0rC2zCOClhczAXcpdZBuLYOnmaI5kz
         GHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3Jyaaz7vsLz5usd/SRKYitd1GGLRRfy3n82omug9pAA=;
        b=P3QjR9yAfDalQRiCl8mvYUv86DcLSw0Dgex51ChCffi7sN61xielHb4YFfxorzCEcc
         dIb7iNnrLvNnslu+OKLOiVI1fYQopcipGnSb8CuCGTWAt2WFLiwBjo3tedx3xsZGMWTm
         xay6fF89SJ4ef9ji396+3SNvrDlRfMjV15h2Bhvot3LeX75e/00Nb+8+pl+Rjb5EwbHb
         DWyXBFJMJOF1N8SqFM5Rss4A4N98gVxKAusDA3+iNHpqLna8kFPS1afl/yfTqq4/A+pQ
         OFxmWuX6c/MlceNlwaCsg/PsKkjWWVoUCItvVMm73xO8Gl5XO++lcr7+HPGXQ680+TMa
         DuoA==
X-Gm-Message-State: AOAM531c8zdMGR7lKGSDOjPcy4s/wgB44ZsKF0cR+2mRYWwLDGX6yGlC
        D7cPwSRxoCDmUWAPQA3I5k9Gvg==
X-Google-Smtp-Source: ABdhPJwptMV9N4Ai1/dhNdrr/uDN6aHZsMXxgGcaXehA6fzWLlCPes1ne4JSuGwqmkcUqu3FgLPPGw==
X-Received: by 2002:a2e:501a:: with SMTP id e26mr20763529ljb.57.1632141723926;
        Mon, 20 Sep 2021 05:42:03 -0700 (PDT)
Received: from grasshopper.googchameleon.semihalf.net ([83.142.187.85])
        by smtp.gmail.com with ESMTPSA id v1sm630944lfo.308.2021.09.20.05.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 05:42:03 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, arnd@arndb.de, olof@lixom.net, soc@kernel.org,
        dinguyen@kernel.org, p.zabel@pengutronix.de
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        tn@semihalf.com, ka@semihalf.com, jam@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH 0/3] Add support for the Mercury+ AA1 module
Date:   Mon, 20 Sep 2021 14:41:38 +0200
Message-Id: <20210920124141.1166544-1-pan@semihalf.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The following patches add support for the Mercury+ AA1 with an
Arria 10 SoCFPGA, namely a device tree, and a fix regarding the
Arria 10 reset manager driver.

Paweł Anikiel (3):
  dt-bindings: mtd: spi-nor: add n25q00 schema
  dts: socfpga: Add Mercury+ AA1 devicetree
  reset: socfpga: add empty driver allowing consumers to probe

 .../bindings/mtd/jedec,spi-nor.yaml           |   2 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/socfpga_arria10_mercury_aa1.dts  | 127 ++++++++++++++++++
 drivers/reset/reset-socfpga.c                 |  26 ++++
 4 files changed, 155 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts

-- 
2.25.1

