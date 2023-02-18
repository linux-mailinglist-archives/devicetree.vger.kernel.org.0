Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C15B69B9A5
	for <lists+devicetree@lfdr.de>; Sat, 18 Feb 2023 12:17:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbjBRLRg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Feb 2023 06:17:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbjBRLRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Feb 2023 06:17:35 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52C3F1C7F2
        for <devicetree@vger.kernel.org>; Sat, 18 Feb 2023 03:17:30 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id dw24so1150128pjb.1
        for <devicetree@vger.kernel.org>; Sat, 18 Feb 2023 03:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tRUarQyWTXy/UaQ+aTCiS9aEshqx6SrntwaJME4vnY0=;
        b=FhaH7iwlgirzBhkctvbPIaE33nUBelcGHAF8fq0lsjOkQ+cusRFz/4cccjVw6NEftK
         PpoX0TZ8w3vqQVGe5P/lYxblKHcsFlSVpBKNCV54TFjvgawSpSzJc1EE02sPm2cIp82b
         392DVfxuznUnL2wiI4prL2FfCxja2ElN7chAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tRUarQyWTXy/UaQ+aTCiS9aEshqx6SrntwaJME4vnY0=;
        b=iiHkVdYAt32zGDWDJLO9/n8i03cCLEnKzMmR3tlqPmmgpsAumTtiCgfxcGJNnnWnyJ
         fLUggTGaRT5k1xlxucS9sTzxBdKfjsCONayESeeHANIG3KHIjLhJR2B98YpufohSKPLj
         rhbVFGI8X5afTRjvOU37zKVFRINZxOil0MC5cSyl3a9JTn3N7fAQmgKXYqXQ4Bn3efdQ
         WbshoYG8+oBBBHl2+ofPco9Mu0OotnfYYOlm35LpZr4D1IbWyv2063tw3LdtxWXJGFZp
         XT5+UdKFH8K9j5uPiPrEn4OCbcFfZygw8UyTFR6NzOJlEYFm++uBw8ScgfRhLJQwBSYW
         alUg==
X-Gm-Message-State: AO0yUKWNfd+VEt7nqJkR7coa7tD57xBZcCdscb0YKcNnJEJr9YlWxj5N
        mg0OWWgT7rf+tahd2y7/PBRTtA==
X-Google-Smtp-Source: AK7set+FohWYixBOFWTvodfYG9ONEn4rCbUp2cY1CE91qYHZ6E0/D4C1ES2aYaY6oImj8VUL+8mG8A==
X-Received: by 2002:a05:6a20:1610:b0:c7:5983:7a82 with SMTP id l16-20020a056a20161000b000c759837a82mr7002881pzj.27.1676719049830;
        Sat, 18 Feb 2023 03:17:29 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:88dd:be84:8f65:fec2])
        by smtp.gmail.com with ESMTPSA id 23-20020aa79157000000b005a8686b72fcsm4457829pfi.75.2023.02.18.03.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 03:17:29 -0800 (PST)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Benson Leung <bleung@chromium.org>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        devicetree@vger.kernel.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v3 1/5] dt-bindings: display: bridge: Add ddc-i2c-bus for anx7688
Date:   Sat, 18 Feb 2023 19:17:08 +0800
Message-Id: <20230218111712.2380225-2-treapking@chromium.org>
X-Mailer: git-send-email 2.39.2.637.g21b0678d19-goog
In-Reply-To: <20230218111712.2380225-1-treapking@chromium.org>
References: <20230218111712.2380225-1-treapking@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce a optional "ddc-i2c-bus" property for anx7688 bridge. This
allows the bridge to register a .get_edid callback.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

Changes in v3:
- New in v3

 .../bindings/display/bridge/google,cros-ec-anx7688.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml b/Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml
index a44d025d33bd..9d5ce8172e88 100644
--- a/Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml
@@ -25,6 +25,10 @@ properties:
     maxItems: 1
     description: I2C address of the device.
 
+  ddc-i2c-bus:
+    description: phandle link to the I2C controller used for DDC EDID probing
+    $ref: /schemas/types.yaml#/definitions/phandle
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -59,6 +63,7 @@ examples:
         anx7688: anx7688@2c {
             compatible = "google,cros-ec-anx7688";
             reg = <0x2c>;
+            ddc-i2c-bus = <&hdmiddc0>;
 
             ports {
                 #address-cells = <1>;
-- 
2.39.2.637.g21b0678d19-goog

