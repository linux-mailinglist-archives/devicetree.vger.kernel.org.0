Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 365F661687C
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 17:22:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231244AbiKBQWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 12:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231649AbiKBQVn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 12:21:43 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D8AC2CC9B
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 09:15:24 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id f8so12054669qkg.3
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 09:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VUIqt5qgvlwR23A+HVBIo3LzIMemIRkCkHJ4mOyl2J8=;
        b=FVlskIjr+sENRJWrtAh2zV8qqLujiM4y+aUUEzUPCKxu10SAzprl2BTMKUDXeAXmsa
         pTBQN5MOerOiiIU+/htxqxDfmOZdm0HsTjVqJeLWIzCHgLCgTULqjUwDQPsR5htfSfdP
         TXsdihcdQ4ldzdjkA1xRdlp3ulMwrXCBglBz7GIv2AVmd1wXV0NYSDXS1cSgYWiNwNIb
         zvR0/0VXuq7jK27wEB8R66hrMMyHG0uMp2KYin1AcEQ6AQNy+qmjYISDrFb4QUyq+6X7
         ZQRZqE58xVizemJiCDA4J54F6ApQY2/EFAQTLeVD1EadMIcZ0UheXRPHvdlSIupGH7p/
         9XGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VUIqt5qgvlwR23A+HVBIo3LzIMemIRkCkHJ4mOyl2J8=;
        b=PsAQiAIFQCHYO/4n0ffVEPVepSfDGa1TQ+vStum1tQmeQnGLw40O30Gw2QPVzKWgId
         b5+YMthGrDVEaxcvsKXB6Pxf7MQsj2gKVqXgijUGwITxm0oxZN8tmfdL8I0O8F2gdsGB
         VyX360z/da2pnJ+ssQ9FyWZN78I4Cs+Km6th7WJE7rNCSJ+Fn9vJnfjSVeDplbF7txtA
         jZL9INl6qJuu0lysnwkR/pXkohFW+kbh19G5oaP6fVkqepR3OMwm0SENTcfIL1y49a27
         WlLvCo64nkfZbmn/EFSyKA/Vw7EP4N4gvf7hNulWcO95+1uoRClCe5OYCY2BfodBdX2B
         mppQ==
X-Gm-Message-State: ACrzQf26p6o0TUqW/2cU9lDa/YQeGZ/gcSHf3JbwiRVkDqHqpPfsPp7e
        OFdwyOYLvyzOk3ZP+YJzyK/giQ==
X-Google-Smtp-Source: AMsMyM41FmWXlA5k6IlmlP57QHOAFPhcgS/Hs4YLXIX7ot05fxx9yV2omsjHYy2A++h3HUiXZE8iBg==
X-Received: by 2002:a37:8847:0:b0:6fa:4e9a:7fbc with SMTP id k68-20020a378847000000b006fa4e9a7fbcmr5790560qkd.576.1667405716686;
        Wed, 02 Nov 2022 09:15:16 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id h12-20020ac8548c000000b003a4ec43f2b5sm6831571qtq.72.2022.11.02.09.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 09:15:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/2] dt-bindings: net: dsa-port: constrain number of 'reg' in ports
Date:   Wed,  2 Nov 2022 12:15:12 -0400
Message-Id: <20221102161512.53399-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102161512.53399-1-krzysztof.kozlowski@linaro.org>
References: <20221102161512.53399-1-krzysztof.kozlowski@linaro.org>
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

'reg' without any constraints allows multiple items which is not the
intention in DSA port schema (as physical port is expected to have only
one address).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v2:
1. New patch
---
 Documentation/devicetree/bindings/net/dsa/dsa-port.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/dsa/dsa-port.yaml b/Documentation/devicetree/bindings/net/dsa/dsa-port.yaml
index 10ad7e71097b..9abb8eba5fad 100644
--- a/Documentation/devicetree/bindings/net/dsa/dsa-port.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/dsa-port.yaml
@@ -19,7 +19,8 @@ allOf:
 
 properties:
   reg:
-    description: Port number
+    items:
+      - description: Port number
 
   label:
     description:
-- 
2.34.1

