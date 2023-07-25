Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E11E776187C
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 14:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233072AbjGYMhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 08:37:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233045AbjGYMhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 08:37:46 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 224519D
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 05:37:45 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-991da766865so920848066b.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 05:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690288663; x=1690893463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=APtGQc3fKP6CePKt+WyyWdo+NMha8U8IFSfN0Ytp6fU=;
        b=rfOeQdJq/fkO3knjEi7hj6+btTSJsEe96Ql9Ht4w0A31ZtOiFgUFQmJPPLA/VU2u3J
         ojSrx8BIMALu8MmDs9dz1sF2HizywkRDJXlbyllpDtKwJRNiTTp6SGtkUtbaMsJ8hzcH
         1a4dBhAY03v1L6REQbaLRzs693MDnC5rSbycUD0Ytdy8aWAdTpkCH8YBLJaa8r5m6UZw
         wxeP22eVdbgFNM+3zFQ1Kd2PFB5owpD80+KxX8hEcBJRNVVZ+bJhXI5BEhbuQgMJSpKo
         0cOKUA+eyOZFK9m17uf7LkgGAofD150kDfD0Ss5m3NpSxL30TzXaFtCr3k0tFBV7A9Fb
         9zmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690288663; x=1690893463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=APtGQc3fKP6CePKt+WyyWdo+NMha8U8IFSfN0Ytp6fU=;
        b=eVSy0VPA/VZjiZ4M2/WEoQwXCDYTxyyNWed3miDVecUavrgnjI4fKER2giJPU9RTS5
         Muu4NUM0myfWmhU7TIRY43La+Vic+kHul5xR1fKhYXJ9pZbYOBN9ICZrOKw7mGDBO8FS
         zlY6wOpPmnDVyL7L1RrS691LMS3IeYiPm3tqlCT3WqrKXJfeFmMuIV0Sj5vjjB7iUCsl
         rkCN8Kl9+F61mXB3qOvkIvJ8rVtyXwgmWODcS/wWdImojstIfHjvrSWW39lXsnZWiPFe
         7eSIitTJ67io8upG4BK7AEM0N+6ItdhmQLZODNOqgX3FfDpX3Jh+YXmM3e2PNR7vaC9A
         wMxA==
X-Gm-Message-State: ABy/qLYCVUMoxvvH2aQZiZWit4R/wzkjuJ95Y/jSj/Lj1arvHeSD5rkh
        4V7b2b0BDS4ctAXggWWTOV4AdA==
X-Google-Smtp-Source: APBJJlESaLhEGVp/bf18e8ykwtg72P9QZ7d8UdyLKLX/krBh/k10sr95jDfGgLl4C7VimtyCU1JePg==
X-Received: by 2002:a17:906:1046:b0:991:cd1f:e67a with SMTP id j6-20020a170906104600b00991cd1fe67amr13784335ejj.29.1690288663684;
        Tue, 25 Jul 2023 05:37:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id qx26-20020a170906fcda00b00982cfe1fe5dsm8187480ejb.65.2023.07.25.05.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 05:37:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        pascal Paillet <p.paillet@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: mfd: st,stpmic1: Add missing unevaluatedProperties for each regulator
Date:   Tue, 25 Jul 2023 14:37:39 +0200
Message-Id: <20230725123740.149559-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Each regulator node, which references common regulator.yaml schema,
should disallow additional or unevaluated properties.  Otherwise
mistakes in properties will go unnoticed.  unevaluatedProperties:false
requires listing existing properties (present in example and in other
regulators of this device).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/st,stpmic1.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/st,stpmic1.yaml b/Documentation/devicetree/bindings/mfd/st,stpmic1.yaml
index 97c61097f9e2..1a1ced489ef7 100644
--- a/Documentation/devicetree/bindings/mfd/st,stpmic1.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stpmic1.yaml
@@ -189,6 +189,16 @@ properties:
 
       "^(buck[1-4]|ldo[1-6]|boost|vref_ddr|pwr_sw[1-2])$":
         $ref: ../regulator/regulator.yaml
+        unevaluatedProperties: false
+
+        properties:
+          interrupts:
+            maxItems: 1
+
+          st,mask-reset:
+            description: mask reset for this regulator, the regulator configuration
+              is maintained during pmic reset.
+            $ref: /schemas/types.yaml#/definitions/flag
 
       "^ldo[1-2,5-6]$":
         type: object
-- 
2.34.1

