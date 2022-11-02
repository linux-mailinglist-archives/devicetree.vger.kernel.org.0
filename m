Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58EC4616BEC
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 19:20:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231287AbiKBSUg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 14:20:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbiKBSUT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 14:20:19 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAE392F382
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 11:20:17 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id z30so12299209qkz.13
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 11:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PgH8+iPkG2HkoR14yXypmLmMN1g+buscpWKRVlqLP/4=;
        b=g5qhWsDeWUZf+m5OUQo8qmB9Ed32os7oG2djVX3jvfoPzImGy93QlZFzE0xA6JaAP1
         i3nBl8QrDECNpiCLKSXqjf3AWRSkqVyrIqs/b70/uXT68xqI3AHpNevHd+oVLt67wHS+
         moepsm+88S8MFFd04DVnhHYtvHAPXWHkbiNS9ULg9447FU5uC2UtvPRcg2ls1wAEPQkW
         4952B9OeWlb0zlICo8DNbqbjQvZxbaDG1f5fn4LMfeRa/ZLfi5M/AcN/d7JndSxHH7jc
         y/+1kWOVqGNwO5BZ7J16JdRX7c/2kc+wbCjvDyfiLFprwFxCNHZy+JajwlVUn/SSVPwP
         hjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PgH8+iPkG2HkoR14yXypmLmMN1g+buscpWKRVlqLP/4=;
        b=Lf7Ou2r6sdyXuiDTSairdO0XyrgMoLzov2QVYER5ly+sNAXFsLF8HwtO/ICtci+O7Y
         OLZHoFO1QlOKGjn1a+cl64aw4QnW8E8YhvMhs0zTr6QMt87n5O5AGtz2SNXa/PWK7a+0
         hFr/kC3RphkiSXAVypLPrgwrw3MUeIvpo6c+fSbCANR1mCdVherX6ax7Ctlc3e+JLdR8
         g1Rd4a5ylzyplSn4rhVOlfmmJO12Ck0V2bwovBXHLyufDIqOYemNAYYd1xJKLPFYzd3N
         GTl96jeiMPTLFokWXeZEXbEM1eSQPzKpgEtgywrGS7mJ1VR0qdqWIqICoO1sE25F0DfL
         vHyw==
X-Gm-Message-State: ACrzQf2+Jj/zwrI3rLnxE2M3vlQ/stqhnP9UqkYv53QzN7uHO7y+BiBU
        IPnxGGFxHO4ziiPRdX3K1XxNMg==
X-Google-Smtp-Source: AMsMyM5GtSz9/EmO99tqJRfQlpAcEwjit/B/NA1gRPPe8Y5GADPc9XgrOLxcMC64wuxEdHAyb+b5vA==
X-Received: by 2002:a37:96c4:0:b0:6f9:f3f1:8e4e with SMTP id y187-20020a3796c4000000b006f9f3f18e4emr18631503qkd.534.1667413216822;
        Wed, 02 Nov 2022 11:20:16 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id t1-20020a05620a450100b006cbcdc6efedsm9081995qkp.41.2022.11.02.11.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:20:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: power: supply: bq25890: use one fallback compatible
Date:   Wed,  2 Nov 2022 14:20:11 -0400
Message-Id: <20221102182011.106040-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

BQ2589[0256] seem compatible between each other in major aspects and
remaining features are auto-detectable (by reading device revision ID
register).  Existing DTS already uses the compatibles with a fallback,
so adjust the bindings to reflect this and fix dtbs_check warning:

  arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb: charger@6a: compatible: ['ti,bq25895', 'ti,bq25890'] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/power/supply/bq25890.yaml  | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/bq25890.yaml b/Documentation/devicetree/bindings/power/supply/bq25890.yaml
index fd01ff10b4e0..ee51b6335e72 100644
--- a/Documentation/devicetree/bindings/power/supply/bq25890.yaml
+++ b/Documentation/devicetree/bindings/power/supply/bq25890.yaml
@@ -15,11 +15,15 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - ti,bq25890
-      - ti,bq25892
-      - ti,bq25895
-      - ti,bq25896
+    oneOf:
+      - enum:
+          - ti,bq25890
+      - items:
+          - enum:
+              - ti,bq25892
+              - ti,bq25895
+              - ti,bq25896
+          - const: ti,bq25890
 
   reg:
     maxItems: 1
-- 
2.34.1

