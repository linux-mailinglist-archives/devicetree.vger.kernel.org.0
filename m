Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE55059E42A
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 15:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241120AbiHWN16 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 09:27:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241191AbiHWN1c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 09:27:32 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F93C153A94
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:27:18 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id n7so8348967ejh.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=ErvpQRBWkC02/y/WgiYae39JxDxYSGXzZJYCfCsFztw=;
        b=NJzMF0wK36YJI4Y5/nPYhPDEgd/lSMiBsUKJA/yftcv8bqHtHAe1vQ5durqBZtwhOP
         QGavVPDQPOl9xx4SvJd2tSM6TX6ZsoPjUba5PJfhzBQ5IaXO+IhDahlYCPt6CtOk7miI
         TR7jro59NXQ4J5Cn24tsqH2op0dWRMHdGgePZsu/IbRIBzeCMXXqbNLmMw29XAXOnXvC
         Dlmimhnhp8c4DthEkMiYWstqhm3oaJPiHja+RBJAML4cwwGfAhRezNnOewq5+vt/tONa
         hSiIrrG5NctxKxbQmWT97e5Zc8vTeGc7734VD8iqsUTLe/S/b0kvN+TDiQ5A+JeJ3jYY
         CHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=ErvpQRBWkC02/y/WgiYae39JxDxYSGXzZJYCfCsFztw=;
        b=iT4iWtKvt0lX74TW0yjsKM1Vzj5p30hBj2g5H+Bo8wWzgwpXpQy7xUgisTtJvfwwIv
         yIau57g04M+Po5FFrucoV/+8RGNLUH4XxjTH6thEDZgtRhSNxz5Jn31mWcKnAHEupO+L
         SLD2cXCpiRF2RC7Uae6ShreMEKye7sTSO/G9W3L8OUXkNw3M/aV1EbxOc2Uq7fCzKtqc
         V/c3FTWIFPheeJUCboYXMFB0GCvKJG6Nm8qsGGCSkFahYT23HcHpBBJ0DsDsTE/oXyfD
         GK6wA5tN/39JrORBQ9kd+nvXhFtGYS/1KbeGU4NmMKd3TnQTC+F1aj/iBwXs9F41Ynb6
         qJBg==
X-Gm-Message-State: ACgBeo3IitbuPujOX7Xjg5/x75gy/eP7aShe7sq3LH9pstNv+6osbO0u
        BPdt+mSe4LbIagJUHYeXHodRhu9ctLMQVyT1
X-Google-Smtp-Source: AA6agR50Az9/QXs8LIC8w+QkyNn58UqGMVOi0cVByjnt+xxhy/Eyr9XKoNj1PCwgTvUqPphA/x6d8Q==
X-Received: by 2002:a2e:3817:0:b0:261:cfba:ee4c with SMTP id f23-20020a2e3817000000b00261cfbaee4cmr2019651lja.443.1661249381299;
        Tue, 23 Aug 2022 03:09:41 -0700 (PDT)
Received: from krzk-bin.. (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id v11-20020a2ea44b000000b0025e42174f0csm2282737ljn.70.2022.08.23.03.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 03:09:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Serge Semin <fancer.lancer@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] spi: dt-bindings: snps,dw-apb-ssi: drop ref from reg-io-width
Date:   Tue, 23 Aug 2022 13:09:37 +0300
Message-Id: <20220823100937.386880-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

reg-io-width is a standard property, so no need for defining its type

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index 37c3c272407d..d33b72fabc5d 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -104,7 +104,6 @@ properties:
     const: spi
 
   reg-io-width:
-    $ref: /schemas/types.yaml#/definitions/uint32
     description: I/O register width (in bytes) implemented by this device
     default: 4
     enum: [ 2, 4 ]
-- 
2.34.1

