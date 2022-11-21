Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 010D2631860
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiKUBzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbiKUBzR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:17 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB9930F4F
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:15 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id h23so6377471edj.1
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s0ctC1HBzrEcX8aGCkBsEcMDXbkMcvKFankt1AR6uBI=;
        b=oVCf0dBaQRUO/gNISGiOEDyHf8reuBaW9Oxyg1O/ZGzHJ5YXsDFXnlrjsLPEDwA6iY
         1B7mGDWxJ73VNrrjyOjgUsSs92kTyc1G+XG6xfKt8nIxEdr2ZKDUlJtfN5QVy8BuTwsB
         9W7b/HerQrh81GVwJAMabl6TMfsl4lII31gonekpYq4KqggIGhhtGRRpcONaqIi23c3b
         oY2+tgIg7Q+TrwHZZDGupOXL81I5c5UaOpUX50ra50fhIwuTU5EQhHYy3whJew9KFPoe
         ri6ovgIpdlKPxqR//i7BF56aNDfWijWLOfoMcDoFQ4b4rroG1R4N5oF0FOaq2x9eZivn
         oRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s0ctC1HBzrEcX8aGCkBsEcMDXbkMcvKFankt1AR6uBI=;
        b=jNCIh9RylwsdEPVPHOs8nbcwKekJtpng9zMZVR3+Fjsrv4H2HE1foclRz3Agqs7jHg
         iAefJnDJg+Ygw5x1p/O7rmG9YYEs3+2jJNpc/lSeh8mA0Ng92ODpYFcX6yX2yqet2gev
         ++6p4DI6Xh3foRwb9yRvNwqeMUf2NalF4Fdoh82tNWJBqk1EXlw/oyeOqEeNJKzAsSVb
         NCfHvxAsaETof2xLp7JR8Aa7C7IMlFIckdiREdY37LDu1Di8sxr8BLgu6pk4C4Z9e7nR
         KJ0JSLqZRTqwKgdV1ZosasLqHvyWU9R9VoLzpvv0DJls5fxD5eUP5eRo7vph5AGnblkF
         T9Qg==
X-Gm-Message-State: ANoB5pkptMeB6sBQBwQHeZCXBbMPGAtAQ4aBc8OEk84qdQl06svkmSdW
        IBl/O6cl6piUWWKcIIm/E5MtNnCwb9qZkV81
X-Google-Smtp-Source: AA0mqf5nzqeHeQ0W8nAAWBt3HPWJvXZEGRmFHyAZn6AsruvHH8sia9+rdRmozi+VGBC6564aCklRpw==
X-Received: by 2002:a05:6402:294d:b0:467:6b55:3cf5 with SMTP id ed13-20020a056402294d00b004676b553cf5mr14476119edb.22.1668995713305;
        Sun, 20 Nov 2022 17:55:13 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:13 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 8/9] dt-bindings: pinctrl: mediatek,mt65xx: Drop the pins-are-numbered property
Date:   Mon, 21 Nov 2022 02:54:50 +0100
Message-Id: <20221121015451.2471196-9-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221121015451.2471196-1-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Drop the pins-are-numbered property from the Mediatek MT65xx DeviceTree
schema

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml           | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
index cca9cc58a6934..cb450da49e6e9 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
@@ -28,11 +28,6 @@ properties:
   reg:
     maxItems: 1
 
-  pins-are-numbered:
-    $ref: /schemas/types.yaml#/definitions/flag
-    description: |
-      Specify the subnodes are using numbered pinmux to specify pins.
-
   gpio-controller: true
 
   "#gpio-cells":
@@ -149,7 +144,6 @@ examples:
           compatible = "mediatek,mt8135-pinctrl";
           reg = <0 0x1000B000 0 0x1000>;
           mediatek,pctl-regmap = <&syscfg_pctl_a>, <&syscfg_pctl_b>;
-          pins-are-numbered;
           gpio-controller;
           #gpio-cells = <2>;
           interrupt-controller;
-- 
2.38.1

