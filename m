Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E541582E86
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 19:13:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241426AbiG0RNn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 13:13:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241511AbiG0RM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 13:12:57 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F02476450
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:42:06 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id t17so15674831lfk.0
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eSPaxO046Ze33lKCriyBi8yHHhzQgKxgn//51vCRfws=;
        b=AbbhqBv9E178tMhwtsG5r7YM5oszCwrW9k1hW7z+DlAQTz6Lt/6jGLCEB0pJXBYqTb
         qGGCKjH1dHXi+rkpdvlJp4Gf41vcYJ/fDKD9Pb+DupvIZkF6xiEqz2EjjqyjJw5CxCea
         vcZYtGeykc+4WHvvwczUw+ZTAOJgAGMZxX75x8adytC0aQbpvCJuroAPPWboUeSG2JgP
         Sb/VvWX624MEMNeEhO7Kz1ZmX1fiEyXIg80rbAHqyvEy4stbPqAD3DjfypWtQb1h92b4
         nTxen8Y1UzzFj3pHKbdcwyIQiAjeXXsHqxdz4twV6JzQZoQ+J7ag9BannbCD1kKhcJnT
         idnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eSPaxO046Ze33lKCriyBi8yHHhzQgKxgn//51vCRfws=;
        b=Ct9IQlugVwNnsjS/d7oqeG8BR7lr6WbNWpFo+w+7BG3mjWKrdM1ERVCzc6QHVCEjzi
         LEVH6hbH30Jx66f8FoZ9UWuccI5/5iMbv+2FOIfwG4E1ywnO6/vpiE5JPHZaFhGLV25k
         R9wRifgxgkjGo05Une7Pp3nNiMfnn+dm6IMNVRp+vc+IaClmCMkk4Dczu/ztKsSL6Wwz
         bHsVVPuYsPXqDu6tZN9HPaeymO91wZ7kZRUnmglu4i1/H4OU0dTtyyC4Td+mqkq8HInN
         0hUy+9Y2aNTddY1i/YDiry5nZmT++rV9OMpmTxMc3Mc9q7wz1BOOVLBV+CzcnaLfQxXz
         S7iQ==
X-Gm-Message-State: AJIora9p3R8gtwJhfqrXGBTl908OJG90akEDbZgiyQkJWnvg8+DZKmQh
        tR0KwR4Cx9P9E5fW31yd8Yf91A==
X-Google-Smtp-Source: AGRyM1uhBH6wuAdgpcLkgYgpaPQs3mxVcKJnj5iurbEFj6ZPkbZ2ibDfKFQvRyZPsqlhyOim+ut2cA==
X-Received: by 2002:ac2:4f06:0:b0:489:4a1b:ad7f with SMTP id k6-20020ac24f06000000b004894a1bad7fmr9274231lfr.311.1658940125963;
        Wed, 27 Jul 2022 09:42:05 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id c1-20020a056512238100b0048a706d9fe5sm3509260lfv.294.2022.07.27.09.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 09:42:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mmc: mmc-spi-slot: drop unneeded spi-max-frequency
Date:   Wed, 27 Jul 2022 18:42:02 +0200
Message-Id: <20220727164202.385531-1-krzysztof.kozlowski@linaro.org>
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

spi-max-frequency comes from spi-peripheral-props.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml b/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml
index c45b91099325..c0662ce9946d 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml
@@ -23,8 +23,6 @@ properties:
   reg:
     maxItems: 1
 
-  spi-max-frequency: true
-
   interrupts:
     maxItems: 1
 
-- 
2.34.1

