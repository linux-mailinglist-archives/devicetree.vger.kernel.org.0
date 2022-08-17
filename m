Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB825976BC
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 21:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232702AbiHQTfd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 15:35:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241549AbiHQTfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 15:35:07 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859F4A5711
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 12:34:03 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id c24so12789499pgg.11
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 12:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=UVubpDzNU5FD14ZbDX7qhSf8BElNNZ8LWgEYMHmernI=;
        b=fnSzpe95Lx6Q+Hs5I5E/U2TnmezCPAQzOT1A4YSdSpqfOMy51Z6SVoy9BwHa4a6f+G
         DlFo8F7c3ZvSIzmMRZ9tdXojjROubIGCnx2Rg4oSL3n6gsVWnzz+GY9YoeIMZ3sgCC00
         PMWLxWRgXIHvHlaZb2Nm+HNZQ7P7Wy4gsQRv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=UVubpDzNU5FD14ZbDX7qhSf8BElNNZ8LWgEYMHmernI=;
        b=HzaBEyFYq1Vkd3TRI7u5JIw+1FFouq0ROZYTnnYD6ueTWfuORxHNqplON8u5SXpG3d
         sGltGmKGG7PpUPUPMZUCbtIDeG954Se+nksG3nibWYGbFtQiquDy6dX5CQaq6UFrHTZX
         c3oosQ6bcISHnojeqeZ4JHKGFoB/8vguNuiqpXKGxtwk5sPSzffLKIwLiX/Us44xzO5x
         8X1M+z0Ju6gLtYNHPgenMOjNRBZd2yy+h43LdlRipQ+4FK5PAKDftHL5kM28bIg3qfVd
         0Gqzr/8CzpvSVrK+3rms7DrEVb0Bxs4MoizMm2qUk1yE49GvUau3KVyUm7C/29pWEGea
         OMHw==
X-Gm-Message-State: ACgBeo3AsXSYsqJz9OrsZV4VrASBpsOiIlVFcmfwnpJ7lM6K6XhuVl9T
        SPvAYN7zxx1iUvi0z3+yj1yb4ms966C6jQ==
X-Google-Smtp-Source: AA6agR64wxqpWQ6e4NkUpXw5W0AVNCd9+SEb0z0uT7ZeP+UZOoEWEaCMKJbohcsr8jh/xkAU0wvsKg==
X-Received: by 2002:a63:ec10:0:b0:429:ee05:b3 with SMTP id j16-20020a63ec10000000b00429ee0500b3mr933809pgh.553.1660764842880;
        Wed, 17 Aug 2022 12:34:02 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:256f:e7cd:3f8c:19fd])
        by smtp.gmail.com with UTF8SMTPSA id y9-20020a17090a1f4900b001f239783e3dsm1925647pjy.34.2022.08.17.12.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 12:34:02 -0700 (PDT)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4} variants
Date:   Wed, 17 Aug 2022 12:33:55 -0700
Message-Id: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
X-Mailer: git-send-email 2.37.1.595.g718a3a8f04-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Gru-Scarlet family includes a variety of SKU identifiers, using
parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
different manufacturer names) also use the Innolux display.

For reference, the original vendor tree source:

CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97

CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../devicetree/bindings/arm/rockchip.yaml     | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..dcae534e3971 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -363,30 +363,55 @@ properties:
           - const: google,gru
           - const: rockchip,rk3399
 
-      - description: Google Scarlet - Innolux display (Acer Chromebook Tab 10)
+      - description: |
+          Google Scarlet - Innolux display (Acer Chromebook Tab 10 and more)
         items:
+          - const: google,scarlet-rev15-sku2
+          - const: google,scarlet-rev15-sku4
           - const: google,scarlet-rev15-sku6
           - const: google,scarlet-rev15
+          - const: google,scarlet-rev14-sku2
+          - const: google,scarlet-rev14-sku4
           - const: google,scarlet-rev14-sku6
           - const: google,scarlet-rev14
+          - const: google,scarlet-rev13-sku2
+          - const: google,scarlet-rev13-sku4
           - const: google,scarlet-rev13-sku6
           - const: google,scarlet-rev13
+          - const: google,scarlet-rev12-sku2
+          - const: google,scarlet-rev12-sku4
           - const: google,scarlet-rev12-sku6
           - const: google,scarlet-rev12
+          - const: google,scarlet-rev11-sku2
+          - const: google,scarlet-rev11-sku4
           - const: google,scarlet-rev11-sku6
           - const: google,scarlet-rev11
+          - const: google,scarlet-rev10-sku2
+          - const: google,scarlet-rev10-sku4
           - const: google,scarlet-rev10-sku6
           - const: google,scarlet-rev10
+          - const: google,scarlet-rev9-sku2
+          - const: google,scarlet-rev9-sku4
           - const: google,scarlet-rev9-sku6
           - const: google,scarlet-rev9
+          - const: google,scarlet-rev8-sku2
+          - const: google,scarlet-rev8-sku4
           - const: google,scarlet-rev8-sku6
           - const: google,scarlet-rev8
+          - const: google,scarlet-rev7-sku2
+          - const: google,scarlet-rev7-sku4
           - const: google,scarlet-rev7-sku6
           - const: google,scarlet-rev7
+          - const: google,scarlet-rev6-sku2
+          - const: google,scarlet-rev6-sku4
           - const: google,scarlet-rev6-sku6
           - const: google,scarlet-rev6
+          - const: google,scarlet-rev5-sku2
+          - const: google,scarlet-rev5-sku4
           - const: google,scarlet-rev5-sku6
           - const: google,scarlet-rev5
+          - const: google,scarlet-rev4-sku2
+          - const: google,scarlet-rev4-sku4
           - const: google,scarlet-rev4-sku6
           - const: google,scarlet-rev4
           - const: google,scarlet
-- 
2.37.1.595.g718a3a8f04-goog

