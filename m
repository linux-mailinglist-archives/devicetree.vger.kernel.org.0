Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CEAC547BC4
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:31:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234285AbiFLTbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:31:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234863AbiFLTaL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:11 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6367541FBB
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id x138so3996008pfc.12
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6f5v9QT7TO75MGEEWVmKFZOsmIXiC+OF2A6uAgjGVTM=;
        b=LmGKF9potBjMBdwlWKMmQHLpRX6NX7+tD1NROe86Rmz0ksnW5uI95Uuo7KOuU6HCpn
         rsC6OkFelUaJHbjxo45jrqtRi9r/ciz+LmSRM0qYIutrFqpMz0JcZQmJWDfw50JsDATk
         lShlhzBSws2h1/nX8Pbv4WzgthOPVXHMFfFEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6f5v9QT7TO75MGEEWVmKFZOsmIXiC+OF2A6uAgjGVTM=;
        b=NyqWzXVFXeAbnPPb2MTKRXtVtrxzmV6tb3gEzlKGrZYn7/fr4IiAbf9MYKnNKDM/G5
         jlcsZwwxfvjQvUiG7IKo5kBhLcJBtE5SKSOq8xuir4agCgN2Zw8AEyAM5Vv1rgJSXtXd
         f6aqmeO8dOc6wBni8E4NY8hk0mHAidjp27dv9LyRU7rPW+jZRy5EuZ82Ss+cDH1s2zfN
         nPyXNgQ9zm0O2ZCa8EwhXQux3Nw6AIUqbWM6ozomG9WsLgOY7RpxkB97Z9VM4KbdaTvW
         4hTKTrY38wS5/d90nVVuqxASwUDphO48Jv9+P0GdrfDkboWHAy6hdVhGyjt+5moPdUMH
         kIuQ==
X-Gm-Message-State: AOAM533p4wDP5A/v11YGW1YYbZJeJZNKJWib015K7ZzNhMyhNRTp2DeR
        Q8TesMtffHHFvvoha/6kV8pqU7x06yUnAbLtsC02fA==
X-Google-Smtp-Source: ABdhPJzydZYIARFwuUW8aZTq/RGOYPOqzwza5QZkNaYquUm6nEMcF3DWMK55ZeWxj2sC4c/I8wKxLA==
X-Received: by 2002:a63:89c1:0:b0:3fc:5fd2:54e4 with SMTP id v184-20020a6389c1000000b003fc5fd254e4mr50006574pgd.344.1655062209676;
        Sun, 12 Jun 2022 12:30:09 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:09 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 01/12] clk: mmp: pxa168: add additional register defines
Date:   Sun, 12 Jun 2022 12:29:26 -0700
Message-Id: <20220612192937.162952-2-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220612192937.162952-1-doug@schmorgal.com>
References: <20220612192937.162952-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In preparation for adding additional peripherals over time, this commit
adds a bunch of extra APBC_* defines based on information from the
datasheet. It also reorganizes the list of defines to be ordered
sequentially by address (grouped by type).

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/clk/mmp/clk-of-pxa168.c | 31 ++++++++++++++++++++++++-------
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/mmp/clk-of-pxa168.c b/drivers/clk/mmp/clk-of-pxa168.c
index f110c02e83cb..c975a45f9bb6 100644
--- a/drivers/clk/mmp/clk-of-pxa168.c
+++ b/drivers/clk/mmp/clk-of-pxa168.c
@@ -22,9 +22,6 @@
 #include "clk.h"
 #include "reset.h"
 
-#define APBC_RTC	0x28
-#define APBC_TWSI0	0x2c
-#define APBC_KPC	0x30
 #define APBC_UART0	0x0
 #define APBC_UART1	0x4
 #define APBC_GPIO	0x8
@@ -32,20 +29,40 @@
 #define APBC_PWM1	0x10
 #define APBC_PWM2	0x14
 #define APBC_PWM3	0x18
+#define APBC_RTC	0x28
+#define APBC_TWSI0	0x2c
+#define APBC_KPC	0x30
 #define APBC_TIMER	0x34
+#define APBC_AIB	0x3c
+#define APBC_SW_JTAG	0x40
+#define APBC_ONEWIRE	0x48
+#define APBC_TWSI1	0x6c
+#define APBC_UART2	0x70
+#define APBC_AC97	0x84
 #define APBC_SSP0	0x81c
 #define APBC_SSP1	0x820
 #define APBC_SSP2	0x84c
 #define APBC_SSP3	0x858
 #define APBC_SSP4	0x85c
-#define APBC_TWSI1	0x6c
-#define APBC_UART2	0x70
+#define APMU_DISP0	0x4c
+#define APMU_CCIC0	0x50
 #define APMU_SDH0	0x54
 #define APMU_SDH1	0x58
 #define APMU_USB	0x5c
-#define APMU_DISP0	0x4c
-#define APMU_CCIC0	0x50
 #define APMU_DFC	0x60
+#define APMU_DMA	0x64
+#define APMU_BUS	0x6c
+#define APMU_GC		0xcc
+#define APMU_SMC	0xd4
+#define APMU_XD		0xdc
+#define APMU_SDH2	0xe0
+#define APMU_SDH3	0xe4
+#define APMU_CF		0xf0
+#define APMU_MSP	0xf4
+#define APMU_CMU	0xf8
+#define APMU_FE		0xfc
+#define APMU_PCIE	0x100
+#define APMU_EPD	0x104
 #define MPMU_UART_PLL	0x14
 
 struct pxa168_clk_unit {
-- 
2.25.1

