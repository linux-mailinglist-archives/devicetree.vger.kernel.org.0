Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46A6266D00E
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 21:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232346AbjAPUVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 15:21:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232305AbjAPUVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 15:21:30 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9704A2412D
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 12:21:28 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id o15so20779858wmr.4
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 12:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xH7zwAfFsU4hSOt8Nu/uXInG1jqijJGp3H2KKy8TUCA=;
        b=AhW5C8erIYLnVM/z5phd56SYA3W4rHNlLxv2AW2UT7iFSnlvz1a88TvTOVx4NdYfG/
         30IqlEYD57aiwtNPanCJlD5VMeQ8sdLBGexl4dpFHpNlNuE+BedfmoJ0S6/PsaKj91Gm
         jwG4+rQ5ye1IO0LoqX+yopQG9YXHzWDDaue8e6G6lJRwTBVOe7G1f3UzgLKzShVhEui5
         cCDpLU5iPDDdvnVmVYxWGuBFTT6w0FQ10tr8Rit0ImGFT/uWgmZTE3ZrGhn5WUghcR+n
         xUl+oWfKFFVu0j5hV9UlGlW5CEQZS8LgB3gSxAxv6KFmPYVXsbrtYwriWeG8FcOfoS7L
         FimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xH7zwAfFsU4hSOt8Nu/uXInG1jqijJGp3H2KKy8TUCA=;
        b=myultPmqMsCjKd7SfkpmX/NTEyuwblF1c8vClijuLoSydI4ezngzxGoHdUsxULq+0G
         WbG7ypAAvzzpSO+YYtjibSkHYrthmb8h1MOACJPpWX4hzX5kAEnErzP5wm/NEZBS2e90
         76v6DCAQvsEHvbbUyAW1+SjdlriI0/C8b5GJYGjAVfrwskLDRRO+yBFq6m6ANfO/f5+W
         orn/lFOH/7LitEU+12JK11UihM1CIBErhXeUV0KFW+t1D5pNnfczeSUS9nqtlhjLO34N
         g8QahK2hCxEAhdvUh0bBTGaBf5AB+22DdI9UZJVIWZpgE5KrPmIHlEwT3kzHk9+20fBq
         gK3A==
X-Gm-Message-State: AFqh2kpvoS/PLKaikZs4Qpb5uJN4C4Xw5T2kQXomX1LWigyk1eAhSREm
        n5FlVdAYOv79UuaRR01uMkfQoWJH+js=
X-Google-Smtp-Source: AMrXdXu0FqeVt0rkHCQ33xM0TzpeYE00MhqFIfpgSguQRDu5mEab3TosOT8ycH0pOOMnXOZ6H8zIdQ==
X-Received: by 2002:a05:600c:34ce:b0:3db:25f:be9e with SMTP id d14-20020a05600c34ce00b003db025fbe9emr638147wmq.33.1673900487005;
        Mon, 16 Jan 2023 12:21:27 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4bc:ff00:1041:a2b8:3c58:ba6d? (dynamic-2a01-0c23-c4bc-ff00-1041-a2b8-3c58-ba6d.c23.pool.telefonica.de. [2a01:c23:c4bc:ff00:1041:a2b8:3c58:ba6d])
        by smtp.googlemail.com with ESMTPSA id j18-20020a05600c191200b003d9dee823a3sm38095616wmq.5.2023.01.16.12.21.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 12:21:26 -0800 (PST)
Message-ID: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
Date:   Mon, 16 Jan 2023 21:17:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The compatible strings in the driver don't have the meson prefix.
Fix this in the documentation and rename the file accordingly.

Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- align $id with new file name
---
 ...eson-g12a-usb2-phy.yaml => amlogic,g12a-usb2-phy.yaml} | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb2-phy.yaml => amlogic,g12a-usb2-phy.yaml} (85%)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
similarity index 85%
rename from Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
rename to Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
index f3a5fbabb..bb01c6b34 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
@@ -2,7 +2,7 @@
 # Copyright 2019 BayLibre, SAS
 %YAML 1.2
 ---
-$id: "http://devicetree.org/schemas/phy/amlogic,meson-g12a-usb2-phy.yaml#"
+$id: "http://devicetree.org/schemas/phy/amlogic,g12a-usb2-phy.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
 title: Amlogic G12A USB2 PHY
@@ -13,8 +13,8 @@ maintainers:
 properties:
   compatible:
     enum:
-      - amlogic,meson-g12a-usb2-phy
-      - amlogic,meson-a1-usb2-phy
+      - amlogic,g12a-usb2-phy
+      - amlogic,a1-usb2-phy
 
   reg:
     maxItems: 1
@@ -68,7 +68,7 @@ additionalProperties: false
 examples:
   - |
     phy@36000 {
-          compatible = "amlogic,meson-g12a-usb2-phy";
+          compatible = "amlogic,g12a-usb2-phy";
           reg = <0x36000 0x2000>;
           clocks = <&xtal>;
           clock-names = "xtal";
-- 
2.39.0

