Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1556F6EB4C6
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233825AbjDUWbw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:31:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233726AbjDUWbr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:31:47 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8277E2139
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:44 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-956eacbe651so322843366b.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116303; x=1684708303;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T5G5eTQWSJPb94VmQkRHxXF/9L/PIrlRWPi/+6JYRg0=;
        b=o4KneEv7ECsbsIcefEsmVAFknDk+c54WAGuFoZwiKl2c1paFm2RBJXBnWax7ISR8Ae
         ybUdNXZUgqbLs81KHuzgD9TH4mnbIOfpv1iIMbvVgI1G2nE1NjZqm6xDU4VjkHe9pitx
         CHIj8dgqomohl9c0jgoq9NN3amzHpif3F+0Ip2k4vyuXG43Wnkgik+lKo5JmONeGrAzY
         hsUi4ZJcewktcsHUqaQ97uOg2h6Rzgbsbbc4DJuVX2bN4Yt8DwEs4oxudM2Y8GXHTlHo
         vDpptQ5ohnEHtm/J9X1mM9o/3bjXJI6qGM01hA8bV0z2oGLA/CicEJclNtaYMhHOZt8X
         jw6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116303; x=1684708303;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T5G5eTQWSJPb94VmQkRHxXF/9L/PIrlRWPi/+6JYRg0=;
        b=aopgMpjT7jYflpjGYn//HkKvo7E1HtinOcmnTlHFnYDCbgNIEGc4dXGiDzZle8LZie
         VPLuDIMOE8hHbx2/iPiEEdbCQVjkYUkIicnScQioOsOsVHLEheL0iNxT1jToUeH+mF2C
         foVVzdiZ/JFHNt0J+ivtuHmVHjCwB9LLelZfTyBxoU0VYupDfydjgsC8CngAyWUnb/La
         U2XmdfJhKjOvQi1mF53MlfLL8Q595eAwBYKfctUJyeDh5JNPNCeMfCm6hsB9I0RFiBSV
         uObRBMlL4/FiW/VTEJOdSuc248jMFCSp6wvbb6GN0c0UKJze6R7IuqFFN9d2opK0StVU
         6acQ==
X-Gm-Message-State: AAQBX9de1Uu+S0LFCta+jgvlmcaZcMMCUrrjcPj5be0JI4MfMGtY+3X4
        lUK1CuJ9c01K+67iczMpJsXQtg==
X-Google-Smtp-Source: AKy350aBhEremxKvZPFc3KIYvIWwmM7uyCZmAJ+pZRXUpsz5RUt9lMo9k3bYoLTGjuL1nr2I3UGJ8Q==
X-Received: by 2002:a17:906:5808:b0:94e:eb42:2a7a with SMTP id m8-20020a170906580800b0094eeb422a7amr3392251ejq.0.1682116302976;
        Fri, 21 Apr 2023 15:31:42 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id b21-20020a170906151500b0094edd8e38fasm2557862ejd.76.2023.04.21.15.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:42 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Tsahee Zidenberg <tsahee@annapurnalabs.com>,
        Antoine Tenart <atenart@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amazon: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:40 +0200
Message-Id: <20230421223141.115072-1-krzysztof.kozlowski@linaro.org>
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

As all level 2 and level 3 caches are unified, add required
cache-unified properties to fix warnings like:

  alpine-v3-evp.dtb: cache@0: 'cache-unified' is a dependency of 'cache-size'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/amazon/alpine-v3.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
index 73a352ea8fd5..39481d7fd7d4 100644
--- a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
+++ b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
@@ -250,6 +250,7 @@ cluster0_l2: cache@0 {
 			cache-line-size = <64>;
 			cache-sets = <2048>;
 			cache-level = <2>;
+			cache-unified;
 		};
 
 		cluster1_l2: cache@100 {
@@ -258,6 +259,7 @@ cluster1_l2: cache@100 {
 			cache-line-size = <64>;
 			cache-sets = <2048>;
 			cache-level = <2>;
+			cache-unified;
 		};
 
 		cluster2_l2: cache@200 {
@@ -266,6 +268,7 @@ cluster2_l2: cache@200 {
 			cache-line-size = <64>;
 			cache-sets = <2048>;
 			cache-level = <2>;
+			cache-unified;
 		};
 
 		cluster3_l2: cache@300 {
@@ -274,6 +277,7 @@ cluster3_l2: cache@300 {
 			cache-line-size = <64>;
 			cache-sets = <2048>;
 			cache-level = <2>;
+			cache-unified;
 		};
 
 	};
-- 
2.34.1

