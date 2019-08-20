Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F1B79629E
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 16:41:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730417AbfHTOlR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 10:41:17 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:33279 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730256AbfHTOlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 10:41:02 -0400
Received: by mail-wm1-f66.google.com with SMTP id p77so2572059wme.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 07:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9n4vL5AKnXTdEpCX2BHNEpG2Tbnp3//JpmPid0dGPgs=;
        b=tK+RLHY6zUlOOhsKM4rznnfPISNI24hB1YvLotfEWrM86a66y6A2twRdVzvLjA5o9f
         I/XIEzeTDjmV5nILoSjmz5Qsb/tQo3ykPKXnKzwe+Ne/PAWIHztByhdEN1RdgvJBgpn4
         +eqFRwLRneDDaHQM+g1OO5D9m2F+CT+2a8uHnAXC4XvGFfRWtq58SZxiTEAShxfGGCA2
         uoNZSai4xYdpugLLZZ8oaG6RgAlO+Ebfozs9N1mOws7dZqhhbna/3KqhiGxHIEO7dAbz
         MINfNe5FDClZw6BQiJNzBcQgeB7WVsDX99H0cPBaI6SLvAU42TtQ2zrra22jUBq9vQWA
         NfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9n4vL5AKnXTdEpCX2BHNEpG2Tbnp3//JpmPid0dGPgs=;
        b=QWXShyftJsBjj831vkHBLrsp2Y/vEsepCiUoRl9TdGkUqw+JJ1RtRnbfI8c04Ivm9w
         Z2Xtm3E5jkdQVQTvisV+KMcV+dxwGMOZZlRUYQdEWzeTzVQHHynJQCT41aReNkSvmSt0
         yeDxh+MV3p4zsMA7p+ABx/E/CfBU9S4rkUa7OdKUNMBUXMQD76+wMJf4jvQHZketXAT2
         3Zabai7WiNKQWN1EMFeAXkKrlUzfGierBS9q6ftc6770hBv1SgUxY2y77rgAmGw3X04E
         BOrqOPY4Jl/40e6X5BFYAj3SLPAVp7MBT3MMAz3vYfEWvIir/zaG1PLX56O4nxMkMrBe
         KqIQ==
X-Gm-Message-State: APjAAAXBog3393idHDXAeTV3eDQ2bck4I6D1kVgAEgItCVpO6x+0VZ1y
        RqbTV/DTcP5I6XcAiPvKXA0euQ==
X-Google-Smtp-Source: APXvYqzMgawTTA6xqA+odeNgl1YDT1Da7njoTjpy/er3HfA/XKn/fAVRNydIf3lGgZQmeLbxRI+uNw==
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr351562wma.53.1566312060700;
        Tue, 20 Aug 2019 07:41:00 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 07:40:59 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 5/6] dt-bindings: arm: amlogic: add SEI Robotics SEI610 bindings
Date:   Tue, 20 Aug 2019 16:40:51 +0200
Message-Id: <20190820144052.18269-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible for the Amlogic SM1 Based SEI610 board.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index d701e8447363..b48ea1e4913a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -152,5 +152,7 @@ properties:
 
       - description: Boards with the Amlogic Meson SM1 S905X3 SoC
         items:
+          - enum:
+              - seirobotics,sei610
           - const: amlogic,sm1
 ...
-- 
2.22.0

