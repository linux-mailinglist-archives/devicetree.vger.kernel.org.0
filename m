Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 348C47500B8
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 10:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231881AbjGLIFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 04:05:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbjGLIFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 04:05:18 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE3F611D
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:05:17 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-992b66e5affso824345766b.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689149116; x=1691741116;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sSg23a2DXPnXPRfvvK9Mx/osRf8Ae4RG5mKJNQXhN5k=;
        b=q7RjA0HivqD+RDHMx3UQZEqFsZdA6ydRdSed+xg0XxHFvRyUn0mD0/KdP57Yv38G44
         AHL3lx1gkhfTKkLBJPjjzXiXhf/FHj8ItKxYEjQ5FTlaywH67WXZb+4KCqdyJWdIZPxF
         56MRnxbTa4TcsZcW7vlXwUkAPFS3d9BdxX5uZfRUD13DInlF4vaj0tC15jhsY3I/IGVZ
         qZDZrZcC/sBlm+K6fg6odsA5tIbc1qujGy0x3X2NsHpHCGJSDIlPYAAXvlLRaKJj3gX8
         8JUcqTSvW4KwaSTV6PLBN49NoIUV7rPTP6/h+7am7At5+lYvkbvOqKirvGedFdnK83uO
         Xkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689149116; x=1691741116;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sSg23a2DXPnXPRfvvK9Mx/osRf8Ae4RG5mKJNQXhN5k=;
        b=CRl5LQDGVRHmsKW9An7AXhmQHnNRGavTXPNQLsS4TpdialZAqAr8KjFOk/CGwim0Rk
         66vH0Nwq7X2qnLrKtYHD+cO6whVURBjisoFxtI3YknjjCNJ0d0p385AF7gKTeyeSOQrb
         CD5LGicx+mFcIP1ReEaeYkC4trKtaJkxfRRSYgOVDeSU9Zrrz0V0K42yJZIVkbJu1npq
         eZpoBNRESqMOkggvw2mkemVYiW8dzBq+olZ+ZsvNJTl9JHFH/mGFxifV5JoLY/NLCUo+
         nBtmB2dn/2QPPlOQXwPWnxmehPDe7190wtdM5ycVa8QPiqxt3GnXsAxFQkeVPXbS6fO/
         aEYA==
X-Gm-Message-State: ABy/qLYxKzRsX4ZNKPqfHRDQuq0sqe7U/9Znj27YRMH1wReQehJ6pdCj
        HYMXldgax1R8MtpuCmq0uFLDgg==
X-Google-Smtp-Source: APBJJlGuEMmKso5MUdYoEiFULb9iWDBQpQww6tTjmzPm+weanSTkadqatfy0QDEmRMC2bxom3PEksQ==
X-Received: by 2002:a17:906:77ca:b0:993:d7c4:1a78 with SMTP id m10-20020a17090677ca00b00993d7c41a78mr14163744ejn.10.1689149116103;
        Wed, 12 Jul 2023 01:05:16 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id h21-20020a170906261500b0099236e3f270sm2188441ejc.58.2023.07.12.01.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 01:05:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Cosmin Tanislav <cosmin.tanislav@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Cosmin Tanislav <demonsingur@gmail.com>
Subject: [PATCH] dt-bindings: iio: adi,ad74115: remove ref from -nanoamp
Date:   Wed, 12 Jul 2023 10:05:12 +0200
Message-Id: <20230712080512.94964-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dtschema v2023.06 comes with support for properties with -nanoamp
suffix, thus bindings should not have a ref for it:

  adi,ad74115.yaml: properties:adi,ext1-burnout-current-nanoamp: '$ref' should not be valid under {'const': '$ref'}

Cc: Cosmin Tanislav <demonsingur@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml b/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
index 72d2e910f206..2594fa192f93 100644
--- a/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
+++ b/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
@@ -216,7 +216,6 @@ properties:
     description: Whether to enable burnout current for EXT1.
 
   adi,ext1-burnout-current-nanoamp:
-    $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Burnout current in nanoamps to be applied to EXT1.
     enum: [0, 50, 500, 1000, 10000]
@@ -233,7 +232,6 @@ properties:
     description: Whether to enable burnout current for EXT2.
 
   adi,ext2-burnout-current-nanoamp:
-    $ref: /schemas/types.yaml#/definitions/uint32
     description: Burnout current in nanoamps to be applied to EXT2.
     enum: [0, 50, 500, 1000, 10000]
     default: 0
@@ -249,7 +247,6 @@ properties:
     description: Whether to enable burnout current for VIOUT.
 
   adi,viout-burnout-current-nanoamp:
-    $ref: /schemas/types.yaml#/definitions/uint32
     description: Burnout current in nanoamps to be applied to VIOUT.
     enum: [0, 1000, 10000]
     default: 0
-- 
2.34.1

