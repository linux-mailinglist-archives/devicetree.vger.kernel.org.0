Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7E15DA0450
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 16:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726506AbfH1OMF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 10:12:05 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41102 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726560AbfH1OME (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 10:12:04 -0400
Received: by mail-wr1-f68.google.com with SMTP id j16so2670825wrr.8
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 07:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mcL3AvqHT7bRzBjlZdaYirVmcHrrTcNQrMrMxpM5Yus=;
        b=Md/3fBANfgsgXmzYx8/JW1lt0iPF0+PbgXaoXZob5EGJKRUx0qIXp/tb6eC1ccBzzi
         XH4G9eKmZPggNRvEG1ARm6Jw/BVdMjs+97H8n469rQWCuUD+0HO/3JPGbgdRDk9tG7zE
         TmIwQtUJjFClFDaBhIE47Nm2hk/Oc8SDriGJYEW3+cryh6Q1BUdoByvZJGna5NEWaJrR
         +9yS/A51lCgFmWEzG166CNY39NrU4osMjpTGwZK8im2l+8IIQ5Hz9D+d0zqvWxU+NPR2
         uy1cxOIlUvTqA7PoSIkSbquL1TgDm3oR8ZaCjHqQpQvxb3N9Z2lz0fQlpVAiNDjsveKN
         Wzmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mcL3AvqHT7bRzBjlZdaYirVmcHrrTcNQrMrMxpM5Yus=;
        b=D/vh0xRekaHwskvHnON3tv5kf9FcEoOOebOvbdQJ5NUCOrJ7fyrnWIBUXiKEduER8H
         c2JtSpEp/VQhYwh1e2wtjK0Pj1t/weU/M4xWdBybYO2xAXMgKn4KPQmI0w8t7sNlP9WS
         5I2wv7NTdRdtXSM+GMaPeBvGeKPVc1PPg4x6L/lR/+zXv5ZvW1GyIgTvG6/HHi7GmufI
         SDlJCRCm7z8OKFR4teJ/PauAaNGWEZ8kXKBGQKkzIUDiYhRSsUMYtgR+qg4kcsusPGYa
         aFFQ7JBOab31ysh/P6evX7SO4NLypv0uDmC3IXoCpDLoZZxbfkugYLjc2lN6DX3fdpjO
         zjiQ==
X-Gm-Message-State: APjAAAVe1rPamJ50WNwPDTQyY9eKJjl0KrrQQMaHSqagp22DmB+b3I2w
        TicwAVUPj/puxB4Dwm3cQmEmWWQGJrcWyw==
X-Google-Smtp-Source: APXvYqyrf0ESs+jD2QyAojNvUhYbZpMQlomaI7+FIXl2yK84Z2ycpyt8wNDFiuQ5NlRktCpu+SKeVQ==
X-Received: by 2002:adf:d852:: with SMTP id k18mr118322wrl.88.1567001522020;
        Wed, 28 Aug 2019 07:12:02 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a11sm2774838wrx.59.2019.08.28.07.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 07:12:01 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] amlogic: arm: add Amlogic SM1 based Khadas VIM3L bindings
Date:   Wed, 28 Aug 2019 16:11:56 +0200
Message-Id: <20190828141157.15503-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190828141157.15503-1-narmstrong@baylibre.com>
References: <20190828141157.15503-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Khadas VIM3 is also available as VIM3L with the Pin-to-pin compatible
Amlogic SM1 SoC in the S905D3 variant package.

Change the description to match the S905X3/D3/Y3 variants like the G12A
description, and add the khadas,vim3l compatible.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index b48ea1e4913a..99015cef8bb1 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -150,9 +150,10 @@ properties:
           - const: amlogic,s922x
           - const: amlogic,g12b
 
-      - description: Boards with the Amlogic Meson SM1 S905X3 SoC
+      - description: Boards with the Amlogic Meson SM1 S905X3/D3/Y3 SoC
         items:
           - enum:
               - seirobotics,sei610
+              - khadas,vim3l
           - const: amlogic,sm1
 ...
-- 
2.22.0

