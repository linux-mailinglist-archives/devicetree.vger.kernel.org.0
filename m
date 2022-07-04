Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1A2B565675
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 15:06:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233758AbiGDNG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 09:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233140AbiGDNG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 09:06:26 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADDA8BF61
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 06:06:24 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id y16so15665266lfb.9
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 06:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gxXFR2A/Ag3USOyt1g5JtxN+lXj4+CuJbOFExrxBsx8=;
        b=dsIPAzzAB5BLu4z0znbRAe5gDOdiEONnJgCr6D1Oqfvwah7/SX38NfpqBhg1LpqH8a
         jNq9dXrItwoWDFSt6Phx2H2aZ/Ex8pTnpColQKqY/JI5jC1C8KjAU6lNlYGg0mx8IZud
         OYtoLin7Ko3p7cR4iQVLowpFBNWvBKYZX/GldkV7qmld6xBV4CnljhxT9Mx4pvch2qmR
         ZwkfP1w/Led98cL/v6SvHNgLSeoKS7A3GhenxZuLDkr3Qu2jxNTyFWttkZwv8/WtoeP3
         futlahImOrCdJnHXqfi8N5gFcRsxOobn41HfDtjiqpRxzEBFf4Ao/zMBx6N+R2ll2jMt
         epnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gxXFR2A/Ag3USOyt1g5JtxN+lXj4+CuJbOFExrxBsx8=;
        b=ghK2lIJYZgPfV06bLCkgx5mEBD57cPrB4b3phTqt3uBt6cC+IwV1Kd/turTTABZ1Q1
         +Go2UFZ855LkxBZG7MMH2kc9LIz0dNyUrzfcBjy6JJZxLY9PmfOZfKJOK+hcFILFTQ25
         JCz5+qPoA14FSp5c2bJ7FQRDI8ArQwdRVZPJdngORM3yZeSSCTOOlfPHOk4sRXSWG7YQ
         RlHkNkzFYMOjJQgSw/SXiOvS3kkvWySaxd+L8IY5iGwUDvn5j5xxv+O6Hmddk+Pxgry/
         s65UC2hO+JL43qjzj1MnZoBnDQ70yff7LTeageys1F7j+rpBuwRO72qyFsBQza75MBLD
         I53A==
X-Gm-Message-State: AJIora9+gur8VxTwGE5bQZV3eH0+KigzXkSWQ5+xYDqF3FgLxG24zttL
        xcdHIDHwxxsw1Ie+x8Gj/s2pPQ==
X-Google-Smtp-Source: AGRyM1upYqVora/1v2oA5cSs0dnUQ5gJMR2y82/3PByF0WNxBwiIrENqdJxD7jlXV2XiRhZi4G8Htw==
X-Received: by 2002:ac2:4c42:0:b0:482:cb18:25ac with SMTP id o2-20020ac24c42000000b00482cb1825acmr471142lfk.643.1656939983042;
        Mon, 04 Jul 2022 06:06:23 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id bt30-20020a056512261e00b0047861c163d0sm5115092lfb.37.2022.07.04.06.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 06:06:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] spi: dt-bindings: cadence: add missing 'required'
Date:   Mon,  4 Jul 2022 15:06:17 +0200
Message-Id: <20220704130618.199231-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

During the conversion the bindings lost list of required properties.

Fixes: aa7968682a2b ("spi: convert Cadence SPI bindings to YAML")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/spi/spi-cadence.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-cadence.yaml b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
index 9787be21318e..82d0ca5c00f3 100644
--- a/Documentation/devicetree/bindings/spi/spi-cadence.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
@@ -49,6 +49,13 @@ properties:
     enum: [ 0, 1 ]
     default: 0
 
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clock-names
+  - clocks
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1

