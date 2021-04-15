Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EEE63605DE
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 11:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231809AbhDOJfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 05:35:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231196AbhDOJfr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 05:35:47 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAB61C061574
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:24 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id n10so593719plc.0
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZyoS2ZBG8ahkdIChoIs4gLo+docOh48ixE/wuajUrXs=;
        b=f/a4F6+veKHqWHp3c65ip8d8mqjOeh1lEQsyDOeZ41/LakIrgaBTP0ZEpSOZI+0IHa
         U45srKBFRuBlw3G3tZBKwEWpf7UaGNR128ZdAI8wOQcSbqeVkperNDE4dLoYdM51j5Oo
         SuhWzy7wph4un1f2SuhtgO1Ryige3CWzWEUd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZyoS2ZBG8ahkdIChoIs4gLo+docOh48ixE/wuajUrXs=;
        b=kfvlSFRX/fX+uDKekZMZSyeC04l01T/CJi1iJe/5gL+5ybbTNhTTJEXs/H7OWEwBDS
         Hviso+Tmo9rvnFd3oPS14lmsKLENDj4hcSsmpsOn5Y3YiQOssyJLfOIA7a+WZ1Q/+5dI
         oMTsSprmH9bqBkskK3o8EPslSgxZ9B34b5ljJkwPwfM9dNQFrIL4tAWHyCfuyLAMX/4z
         nAwLHD62eeLtC1eeg2vc2pIk53EtsMGE9HzdpxatS1OQPmSTiezjv558PQSVBWZ5WYme
         53pA4Gi2eM7iIhE/jSJdwJ7i4zap01R0C/VIJcHy3OTbw5KISPMgpAROaxzfpr6sMOk7
         jfOg==
X-Gm-Message-State: AOAM5332E1bko/uN2jY7PjyUqe3MP1NAex/PW8IVTZ8sNZqfTIGWCw6v
        1RenWiftaa9UjxWdCga6LE3OaFMbYJ8I4w==
X-Google-Smtp-Source: ABdhPJxIL1LMg/3+/Ru1IretOlvAMNJ2751PLJGu15xRh8Lu3qBxQXABg4DLvO8WkYRUIxl8Mr8qQw==
X-Received: by 2002:a17:90a:5806:: with SMTP id h6mr2844408pji.17.1618479324339;
        Thu, 15 Apr 2021 02:35:24 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6432:a6cb:91d2:5e32])
        by smtp.gmail.com with ESMTPSA id a13sm1849502pgm.43.2021.04.15.02.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 02:35:24 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 1/8] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kappa
Date:   Thu, 15 Apr 2021 17:35:12 +0800
Message-Id: <20210415093519.1920877-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kappa is known as HP Chromebook 11a.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index aff57a8c8c30..81b86b189a8d 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -144,6 +144,10 @@ properties:
           - const: google,kakadu-rev2
           - const: google,kakadu
           - const: mediatek,mt8183
+      - description: Google Kappa (HP Chromebook 11a)
+        items:
+          - const: google,kappa
+          - const: mediatek,mt8183
       - description: Google Kodama (Lenovo 10e Chromebook Tablet)
         items:
           - enum:
-- 
2.31.1.295.g9ea45b61b8-goog

