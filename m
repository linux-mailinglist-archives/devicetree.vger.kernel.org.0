Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C035E6BD8D2
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 20:19:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbjCPTT4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 15:19:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbjCPTTy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 15:19:54 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 802055AB4D
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:19:29 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id fd5so11745920edb.7
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678994367;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=90d6EZJHhEShbZuOARV563ZCCttMirKZkXghPJBLmlk=;
        b=Cw4np8IY84u1QT6in23c/ZTCQqKGWKCE9102S8kdWJqD/2lw6RpSaQETeLwFzEPKK/
         IrMdQgLw2py51Fp7DjMvABeQ9rjA79ShpOfX/tnv60TyTsxieqQJ0zgHyMoq3JiIIw4V
         d1d/a6sthfMJDOwv9EyLSpiP8/qmwVtwG1b4re1BaVfggSqNVxN/INRkCx3jKIcQ7q6U
         a9K01YB0sTrFY/tbzJtVEJSyU8mk6ubwwzBpceg/zdndOCOSHZZH82T17gVrHqci+8Ni
         tetCiXsZVP5yurD1QRPYRDa+5o210sJrHCkCDYwHK0P0+moAxSafPMp8vtYBGOtlO4h+
         c74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678994367;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=90d6EZJHhEShbZuOARV563ZCCttMirKZkXghPJBLmlk=;
        b=eUbPv88o6VS2KRGDH9yiU1VpkZZAdMHiCH7v3O3xCkOihgc3oRnq6UM1Ng9ts/3qiS
         HR4Xqq9sRNHtR+f0RNowlCzDrA8oksNUJ3IJhnwOrtaRnJa/F1S73GHkB3z7Xa++75/J
         ExZExChOp1NG5QbpJ3gYO7lqBKim/g9UDAeZCq5soqrJcVyMvi3NSC96w2u46Lye8V3N
         FftXQIXdCuB8zIcVRp4Vu044M6TzkWHZypmc1z3d3dLumrE/LvheBa3tdMLRMfSac4rA
         A6lV+s7r8jbjCHxNKf7qwVkqJNOO+9qKN/s8JHTRJz+CeUOAxCNtdQ+0omaxMn0+hG55
         rq5A==
X-Gm-Message-State: AO0yUKUUQ3hNQczHkW6/kmo1EUHPQgHEy/EEHyStbUWLBfkBF5Ff+F+f
        uaATrpsCVTPtIO+GyGLX123rBQ==
X-Google-Smtp-Source: AK7set/rm7TAVGUo96+eJ+4VC45QVThvUaS6aZsQf8HKQ7yinBKnymIaUD/mNsYnsLSRS8LwInJJMQ==
X-Received: by 2002:a17:906:d96f:b0:914:859:1408 with SMTP id rp15-20020a170906d96f00b0091408591408mr12053924ejb.25.1678994367001;
        Thu, 16 Mar 2023 12:19:27 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id s9-20020a170906454900b008f89953b761sm18527ejq.3.2023.03.16.12.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 12:19:26 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: adi,adau17x1: fix indentaion and example
Date:   Thu, 16 Mar 2023 20:19:18 +0100
Message-Id: <20230316191918.266312-1-krzysztof.kozlowski@linaro.org>
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

Fix errors in binding indentation and example:

  adi,adau17x1.yaml:8:2: [warning] wrong indentation: expected 2 but found 1 (indentation)
  adi,adau17x1.example.dts:29.3-30.1 syntax error

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/adi,adau17x1.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/adi,adau17x1.yaml b/Documentation/devicetree/bindings/sound/adi,adau17x1.yaml
index 45955f38b6fd..8ef1e7f6ec91 100644
--- a/Documentation/devicetree/bindings/sound/adi,adau17x1.yaml
+++ b/Documentation/devicetree/bindings/sound/adi,adau17x1.yaml
@@ -4,8 +4,7 @@
 $id: http://devicetree.org/schemas/sound/adi,adau17x1.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title:
- Analog Devices ADAU1361/ADAU1461/ADAU1761/ADAU1961/ADAU1381/ADAU1781 Codec
+title: Analog Devices ADAU1361/ADAU1461/ADAU1761/ADAU1961/ADAU1381/ADAU1781 Codec
 
 maintainers:
   - Lars-Peter Clausen <lars@metafoo.de>
@@ -50,3 +49,4 @@ examples:
         clock-names = "mclk";
         clocks = <&audio_clock>;
       };
+    };
-- 
2.34.1

