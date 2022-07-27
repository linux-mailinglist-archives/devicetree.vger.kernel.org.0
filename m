Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5A25582EF5
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 19:19:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233456AbiG0RTz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 13:19:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241957AbiG0RTX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 13:19:23 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA92D63C7
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:44:30 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id m12so26847511lfj.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qv+tFO3iVUXUNREagnHRuvzfKQ4XANRmY41oXciez7s=;
        b=VpUr8WZzvk/70naH3E5ljPCC7SXcAd2oWXir/QRuBfrM32YukAsycb3/7a6MswYIFB
         8au4ZS44YZ7gTcUXkduYQvbfvM3zFS5HmsLM5aXum9nr+B4OtX+Xme4rnn4n92rq2eQ4
         OjZKolzqvL1vUhI7dSir2ndIIX6emH1yH5uhNQxTAQ47+VtwwFJJx43TyUVheFoLPSFe
         +B6Fkc21IGUO+8TmrxZxkxXnv+H8s9wWeYMEsetCTk+Q6sOBe0dfkhzROTPiQbSVdj6K
         GynbEKhpJA7rvsvyiQcoGkwbBBjohS3+96RzRjmNtBcK1lonKsqFBhl0oaa96GoCtLZf
         qfMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qv+tFO3iVUXUNREagnHRuvzfKQ4XANRmY41oXciez7s=;
        b=mKaFon3n/9Ku9dVS2Uuji3Ee42FDf1nAlokXyPwPv2HzAP3yWuKb5gl1E3W5NQJeU1
         arC7eWOUDgWbXrSdF6oxWAzFIvS5LUzcaULcax24+LHHe+SCoAmPefNsiBK1DvHOtyaN
         mXHlX9wukwgpM3NRr65P6yBOcpfWP6SXlPYOAVPxC7A0cBiMVUa1EVzm//i0eskQNU9H
         RxvoD85JJjxayTg4iuMZ0xfIwTMLtbOc1s4PQZyjgXZiTt1nuEicC0002mN1lEBcOTMm
         SuNKGRwRNq6bUS8Kvl+e1S/8Hrsjk9NxnpyxIkxPi/gJEF5aYBVkxkjvkD35F+IJYR/D
         I4PQ==
X-Gm-Message-State: AJIora9/Z7Cf6f8da5iynIpIAqoQM9OKWdZiI+sCvwFcMS2auKZqf5FG
        jHTJALQ218v+MV7Cgkd13jvsFw==
X-Google-Smtp-Source: AGRyM1umGs5Yk2YbEssJmkpDUxk4neBAAlemkXsZmTCJJk92tB0H6TbpgzvyFy6sR8qZ3Gq5+1jZTQ==
X-Received: by 2002:a19:6a04:0:b0:48a:7400:d0bd with SMTP id u4-20020a196a04000000b0048a7400d0bdmr9411882lfu.195.1658940267678;
        Wed, 27 Jul 2022 09:44:27 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id m4-20020a056512358400b0048a95ffc6a2sm1462673lfr.123.2022.07.27.09.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 09:44:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Christian Eggers <ceggers@arri.de>,
        Cory Tusar <cory.tusar@pid1solutions.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: eeprom: at25: use spi-peripheral-props.yaml
Date:   Wed, 27 Jul 2022 18:44:23 +0200
Message-Id: <20220727164424.386499-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Instead of listing directly properties typical for SPI peripherals,
reference the spi-peripheral-props.yaml schema.  This allows using all
properties typical for SPI-connected devices, even these which device
bindings author did not tried yet.

Remove the spi-* properties which now come via spi-peripheral-props.yaml
schema, except for the cases when device schema adds some constraints
like maximum frequency.

While changing additionalProperties->unevaluatedProperties, put it in
typical place, just before example DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Technically, this depends on [1] merged to SPI tree, if we want to
preserve existing behavior of not allowing SPI CPHA and CPOL in each of
schemas in this patch.

If this patch comes independently via different tree, the SPI CPHA and
CPOL will be allowed for brief period of time, before [1] is merged.
This will not have negative impact, just DT schema checks will be
loosened for that period.

[1] https://lore.kernel.org/all/20220722191539.90641-2-krzysztof.kozlowski@linaro.org/
---
 Documentation/devicetree/bindings/eeprom/at25.yaml       | 5 ++---
 .../devicetree/bindings/misc/eeprom-93xx46.yaml          | 9 ++++-----
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/eeprom/at25.yaml b/Documentation/devicetree/bindings/eeprom/at25.yaml
index fbf99e346966..8b1c997caac1 100644
--- a/Documentation/devicetree/bindings/eeprom/at25.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at25.yaml
@@ -44,8 +44,6 @@ properties:
   reg:
     maxItems: 1
 
-  spi-max-frequency: true
-
   pagesize:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [1, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072]
@@ -105,6 +103,7 @@ required:
   - spi-max-frequency
 
 allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
   - if:
       properties:
         compatible:
@@ -117,7 +116,7 @@ allOf:
         - size
         - address-width
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/misc/eeprom-93xx46.yaml b/Documentation/devicetree/bindings/misc/eeprom-93xx46.yaml
index 44fd2f6f0d8a..43ac2376a453 100644
--- a/Documentation/devicetree/bindings/misc/eeprom-93xx46.yaml
+++ b/Documentation/devicetree/bindings/misc/eeprom-93xx46.yaml
@@ -28,9 +28,6 @@ properties:
     description: chip select of EEPROM
     maxItems: 1
 
-  spi-max-frequency: true
-  spi-cs-high: true
-
   read-only:
     description:
       parameter-less property which disables writes to the EEPROM
@@ -42,14 +39,16 @@ properties:
       of EEPROM (e.g. for SPI bus multiplexing)
     maxItems: 1
 
-
 required:
   - compatible
   - reg
   - data-size
   - spi-max-frequency
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1

