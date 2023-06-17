Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90D75734256
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 18:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229782AbjFQQ5X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 12:57:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbjFQQ5W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 12:57:22 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D092199F
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 09:57:21 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-982a0232bdcso292738566b.1
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 09:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687021040; x=1689613040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SApWG7ViMWJvCzoOl336TbaVolfomzcROxDi+nk82RE=;
        b=yBVR5wz9KmiqLKq0XWprugXY4kG8itegBn3oHUXWqQQT0AJhdFtAVJPJ+yc3vVgbp/
         aneq6PsQlQhBvwrO7xTyAZk8QkrsTF4FWaVjtkKkIV/j71pUU7zS+x0kOa5VlFuuLqMR
         Rf46r0cPfgh/97hIMcVajBtXWyIsLDvRk9wLwXo68WtLEHHSLRILunis/2rxerxFwdev
         VUIYbAju5LQu2RRMFRpva/UwAFxoqukgvZ2y1ybcBoBd2YexK5XQvUId4tl9VbnUgVhX
         zLeOPgXybkzT9vf6ucWwt1/1bDy0MlpgQRdvvRc5He+4V/zjx0uV8TYRFYw6vIvIl1Yx
         2OCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687021040; x=1689613040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SApWG7ViMWJvCzoOl336TbaVolfomzcROxDi+nk82RE=;
        b=gmxQ/lZziStEoBLIFmSw9d2XI8KJfs0KYpSRodnvtD1r3+8w9sf3GwyrOwAitD6A9X
         qgSPZlizMNlPJSj3NqgbZXw1QsrZJi7BiKyF2l15OO4pq13vrGbUHz2Ir3W3aETo/T8B
         ZXkzNh7KTAtZlRD8pKGMQ1vj4G2xi+cJdeZNLPyB69fhseHsf/t9x3FMLbU4Z3QV+3MI
         +6pqW2aIdVI4n4jmFl3Jt/SVU7ofiE1HPwhyFNARwFqCCdsFDWvjLNUtzyws/HBFs85L
         HqjCLxfi9SazoEmG73L9kHFKhyoK3kpvN61dzBogpQHsB4vzRRNRYJhFL636OayWi7b5
         4Xqw==
X-Gm-Message-State: AC+VfDxosyuFbI0Sw7OdXDF2n1/46OOfPgNhqfwFZjWZcNHybB7Usl1m
        0fIiYnUBNheFgcK9Rfj8LMNO4A==
X-Google-Smtp-Source: ACHHUZ57X2+ydR3mHcPYdCgEjBVpw+J0EnKnU7lZAnkZuvejj4C13bGLtiyW9IBmPRyhKS+pMZTD8g==
X-Received: by 2002:a17:907:c10:b0:973:fe5d:ef71 with SMTP id ga16-20020a1709070c1000b00973fe5def71mr6173723ejc.14.1687021039975;
        Sat, 17 Jun 2023 09:57:19 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e10-20020a170906044a00b009845c187bdcsm2603430eja.137.2023.06.17.09.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 09:57:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <bgodavar@codeaurora.org>,
        Rocky Liao <rjliao@codeaurora.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net-next] dt-bindings: net: bluetooth: qualcomm: document VDD_CH1
Date:   Sat, 17 Jun 2023 18:57:16 +0200
Message-Id: <20230617165716.279857-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

WCN3990 comes with two chains - CH0 and CH1 - where each takes VDD
regulator.  It seems VDD_CH1 is optional (Linux driver does not care
about it), so document it to fix dtbs_check warnings like:

  sdm850-lenovo-yoga-c630.dtb: bluetooth: 'vddch1-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml  | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index e3a51d66527c..2735c6a4f336 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -52,6 +52,9 @@ properties:
   vddch0-supply:
     description: VDD_CH0 supply regulator handle
 
+  vddch1-supply:
+    description: VDD_CH1 supply regulator handle
+
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
-- 
2.34.1

