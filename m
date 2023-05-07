Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CA2C6F9AA1
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 19:39:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230415AbjEGRja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 13:39:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjEGRj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 13:39:29 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00A6F11568
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 10:39:27 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-965ddb2093bso421425466b.2
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 10:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683481166; x=1686073166;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LoF4WV0BiOdiUqctxI48P3XQpok9OwnG41NCGB7Ci+g=;
        b=J3SPgi/Hrrqt8P6pJd4ce+Pt7mndE9ulT+4WzUHjNug7lbuWW7AD5FifVORN9qt3dR
         r0Zs3IjbCi4qLeVeyeyE9EiT05MrVUGVFVL8L5+18Dda6kjPEwcwbvpL8COicw2XEZFR
         oTbFh1aDyIK68r0O42HfjvcWgc3K5oXkMX8d6kZ5DNz3QxC70CacohJo5N9yIEIP3z5I
         aYqTW+4ful4MsN5E0x0ompIgfiFD/on40w/S3/uLWhZB7Cs4FAg9kKcwKd2ehNOqxAXo
         j62LSm1mfPVdjTgaiLF2HI7gKcW1yrxm+LvPWAuatsZYeFBw8gMGVdCyY+nYfgQRE2zD
         02AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683481166; x=1686073166;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LoF4WV0BiOdiUqctxI48P3XQpok9OwnG41NCGB7Ci+g=;
        b=eFMY6CSu+NVcA0yxkCM3WGKztNfnWel4Hn0DVVBLBIynbtxCsn8Cu/wv7t9bZRIicL
         PefDYCt6w5Q0kWgt3rflDN0ib+ra4UdVAiurPB0yxy5f3f6nnxJWJqikjsoJ6WOU5QMc
         DtJDRqL306sFCSJZ7aVStkcrNkfePOWCwU3X1uCerZJuEEydN2atmkV6Ch16+jfeUqlQ
         ESaDnlGKbb4wL1XZSVlIVIEegI/pbVPvbza2k2MKs96E6jyiarwqLa3exTaxotY7qUSI
         kiRvZHFOl7GV29bufJWlaXl9w8DATFH4cSw84V1IC0pidAU7SgD4wqlDAyFq0TetVKX2
         3B9g==
X-Gm-Message-State: AC+VfDzl9BH0CGpotWMNYXKYEM7JHPvMHo7U+8yU1F1nbkVwF60JxmfM
        t7H75aVhWLmGyX8aX15OWMXu8ErHpVWpPKyfOljjUQ==
X-Google-Smtp-Source: ACHHUZ4VMoFxk4J4c//8OQoq0a1oBtfgyeuIbzK9TidhI5YfwotB5XPtaiGMwBB95pRrIWEn8HWuOQ==
X-Received: by 2002:a17:907:d06:b0:966:37b2:734a with SMTP id gn6-20020a1709070d0600b0096637b2734amr3130231ejc.22.1683481166403;
        Sun, 07 May 2023 10:39:26 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:1757:b51a:9965:e81])
        by smtp.gmail.com with ESMTPSA id gz6-20020a170907a04600b0094a90d3e385sm3912065ejc.30.2023.05.07.10.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 10:39:25 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lorenzo Bianconi <lorenzo@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Campello <campello@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: iio: st,lsm6dsx: reference common schema for mount-matrix
Date:   Sun,  7 May 2023 19:39:21 +0200
Message-Id: <20230507173923.263741-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reference iio.yaml schema from dtschema to allow already used
mount-matrix property:

  msm8953-xiaomi-daisy.dtb: imu@6a: Unevaluated properties are not allowed ('mount-matrix' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml b/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
index b39f5217d8ff..ee8724ad33ab 100644
--- a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
@@ -98,6 +98,7 @@ required:
   - reg
 
 allOf:
+  - $ref: /schemas/iio/iio.yaml#
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
 
 unevaluatedProperties: false
-- 
2.34.1

