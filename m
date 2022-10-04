Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 348C15F4277
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 13:56:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229981AbiJDL44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 07:56:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229914AbiJDL4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 07:56:52 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E43227B37
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 04:56:50 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id bn8so1595778ljb.6
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 04:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=oor+/XzLjMSEgH0pJqAodEYXAhv0OcEOQd7y9LkgWE0=;
        b=y3naKPl7UHsnUbh1WTuVB6HRgYVboggyVObMeecYPoviy9g6Mrj+4MfXic4whfoUF1
         KBGVvT/xdvAqn3lZe0CyU443OquGZUpAj5nFESwKpLcYXjFrUKyoU5FXn5D+IUq9vIVA
         TDyg13onLhI2+HYCILMF7HjgwfTFVdNllG+sh/kJfLoXU98ZNdwur9hbfKrN5qo0twtD
         GBNjgxme1UtXUVfUaq6YgPs/VSBVDK+BgKF+kC4dKaC20/oGeDlri328rtIQE9me/5Tu
         rU3dx5taYA+ErY/PaI97gJoUC+M6zUY5YVrCnn0Z/ZlwavBkRWubHQfqnd9wSsTc1ZQ7
         LwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=oor+/XzLjMSEgH0pJqAodEYXAhv0OcEOQd7y9LkgWE0=;
        b=zVUjIRCKgoWBgJ/Yp1HhdWp1MNNevGJb22sNuWSbiQg0U6g3L6IHLZ70VO9DUTx1Nx
         cnKu2J8qSlw94X3NwDs7mWhQkqKrP//W/m/aCaoH0JfHnwz8Y/Ic9JjdMHUrKxw0VYxG
         E2owve4OoiYJaoI9yFEoZ9VWTneeScjgj/AV3Ul5OjZv2QENYk57mb0YCk1ogHbzPAK1
         oMU22dSTCzGaZ67xLAKb06MtZIbLg2zPg7ePoKUFcZ4HrJSMmRQpCJSv9dgJML0jUF0q
         8bvd96M+e9Bnz7MHscYG+0LvRC9JKwu66sxkGHLowcIg7TqAQZBzeo0mesnRqmc2yjJk
         kZmQ==
X-Gm-Message-State: ACrzQf0JWzR3X1GHQEMbNQb7yBdloaBesPaOjKEo7NXMjz3jwXyAVFop
        6fM7eYEgVIaEHGsconON2II5SQ==
X-Google-Smtp-Source: AMsMyM5MD/zl9gjI6RrO+7AupUtFquRpqK6jLsTQQGg5kg0/vTn9sXz6ljJbizTxZDpkYVx6ySCaAQ==
X-Received: by 2002:a2e:a495:0:b0:26d:8a96:c5c7 with SMTP id h21-20020a2ea495000000b0026d8a96c5c7mr7808183lji.439.1664884609023;
        Tue, 04 Oct 2022 04:56:49 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w8-20020a05651204c800b004a03fd4476esm1878971lfq.287.2022.10.04.04.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Oct 2022 04:56:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Cosmin Tanislav <cosmin.tanislav@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Antoniu Miclaus <antoniu.miclaus@analog.com>,
        Nishant Malpani <nish.malpani25@gmail.com>,
        Rui Miguel Silva <rmfrfs@gmail.com>,
        Nuno Sa <nuno.sa@analog.com>,
        Cristian Pop <cristian.pop@analog.com>,
        Tomasz Duszynski <tduszyns@gmail.com>,
        Matt Ranostay <matt.ranostay@konsulko.com>,
        Matheus Tavares <matheus.bernardino@usp.br>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/8] dt-bindings: iio: gyroscope: use spi-peripheral-props.yaml
Date:   Tue,  4 Oct 2022 13:56:38 +0200
Message-Id: <20221004115642.63749-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004115642.63749-1-krzysztof.kozlowski@linaro.org>
References: <20221004115642.63749-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For devices connectable by SPI bus (e.g. already using
"spi-max-frequency" property), reference the "spi-peripheral-props.yaml"
schema to allow using all SPI device properties, even these which device
bindings author did not tried yet.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/iio/gyroscope/adi,adxrs290.yaml      | 5 ++++-
 .../devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml    | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/gyroscope/adi,adxrs290.yaml b/Documentation/devicetree/bindings/iio/gyroscope/adi,adxrs290.yaml
index 662ec59ca0af..0ae2464b9bc4 100644
--- a/Documentation/devicetree/bindings/iio/gyroscope/adi,adxrs290.yaml
+++ b/Documentation/devicetree/bindings/iio/gyroscope/adi,adxrs290.yaml
@@ -38,7 +38,10 @@ required:
   - spi-cpol
   - spi-cpha
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml b/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml
index 3f57a1b813e6..2c900e9dddc6 100644
--- a/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml
+++ b/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml
@@ -56,7 +56,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1

