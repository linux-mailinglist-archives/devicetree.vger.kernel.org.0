Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 898544E890A
	for <lists+devicetree@lfdr.de>; Sun, 27 Mar 2022 18:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236084AbiC0RBO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 13:01:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234230AbiC0RBN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 13:01:13 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E703D1AD8D
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 09:59:33 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 125-20020a1c0283000000b0038d043aac51so362564wmc.0
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 09:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GrkiYksIXcCr7YZZWEOvdXT2DA/jInP9u8Xo7/nCL0M=;
        b=GTZ2XxQZHx/jRc8T3Lv8E/z/1GWp49b6uLzBucRMSL8INJw5DyBeUQhnVhdavWirNL
         tmbW/itm/3LLUXpvwmVjZtWKBlaucszhH7zqf2ICmRqR+ZSLdu/uBqWj/+M5nzzzBn6U
         nmt5JvEmbzXijPg3VkZYogg+nJGQKOML2CgpTCo5P3ARFH9+ptXLbkv9C2YmJZMXQ1iZ
         7n8JkRVZjiFQla+jJumiLaTgmNmDSEsF47JF+ICa995EBRgvQ9R2A/0MyLBRZsMqki48
         sYxCPujMABUPs1bSP2dlqvfbClKwfe0fuPkhxyLkX0IXqK0iAzHHK8opy/CvaDSjhehd
         i2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GrkiYksIXcCr7YZZWEOvdXT2DA/jInP9u8Xo7/nCL0M=;
        b=3wD8VbFwFVS99YOqjgPgTKSoNpvdfIeAfpqImw5vbbt2qNKCAnEJH4MrpK96BPzO8U
         +yrqIgROG49Vx8c/Gqa0tg0+Li8g7WU3OrIQ/DdIZcoxmOCQNmfuMDZG+C0hRCka+SXL
         n0nIs72/emc6GgXChqBNZpphy1ZnAG+bNEA20FporAag4Z2TXrdja6M4bz1xwYf+jxT+
         9/KCV7mwO0cFffQBNeZqTq8yxiOmqz7RCS5ZRJIRNOf3fS43VOG+oCjP1y/HMMRj8p1W
         NtDOJdzrPrDriZpaEx762mxpcthEnf0wtp6GtFr2TVS9PfO55w63OVxaJPty4O7SXqyy
         0qFg==
X-Gm-Message-State: AOAM530fZAhowdH7jYlAdVl44EaLyix1T/AYb97CX+6szhyQixrlK1x/
        68UbR8u8ZFvdGMyxWfy3wfx9zA==
X-Google-Smtp-Source: ABdhPJy/tdJJQlDuv4mW16c8o9cKE4bOlxZGTM69qH8mj9pl3CI+OQLQ5IbGpH33qgENVnCRDEzp4A==
X-Received: by 2002:a7b:c77a:0:b0:38c:2c33:d8f1 with SMTP id x26-20020a7bc77a000000b0038c2c33d8f1mr29485151wmk.115.1648400372558;
        Sun, 27 Mar 2022 09:59:32 -0700 (PDT)
Received: from radium.lan ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id 2-20020a1c1902000000b00380d3873d6asm9979423wmz.43.2022.03.27.09.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Mar 2022 09:59:32 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/4] dt-bindings: arm64: dts: mediatek: Add mt8195-demo board
Date:   Sun, 27 Mar 2022 18:58:34 +0200
Message-Id: <20220327165837.3048639-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220327165837.3048639-1-fparent@baylibre.com>
References: <20220327165837.3048639-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the MediaTek mt8195-demo board.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index ab0593c77321..1f68afb19d81 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -131,6 +131,10 @@ properties:
           - enum:
               - mediatek,mt8183-evb
           - const: mediatek,mt8183
+      - items:
+          - enum:
+              - mediatek,mt8195-demo
+          - const: mediatek,mt8195
       - items:
           - enum:
               - mediatek,mt8195-evb
-- 
2.35.1

