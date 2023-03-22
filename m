Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76EB06C529C
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 18:36:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230013AbjCVRgY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 13:36:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbjCVRgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 13:36:21 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD1214A1DD
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 10:36:06 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id ew6so13107316edb.7
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 10:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679506565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MBlLp+0COLFxAjxryxu/P8CBoMJIEp3vPYn/Fr6xqvk=;
        b=wxf91wgaovn1sPcZjKkD1e6QUyZrlG4PQ/w5KiRKmWKuioZ4yKHJDJEgdQOLpAKTJ1
         mah7022M1pqFzoxl7pnlr4tIzaf6CRmAKaIqG/aHJTPbXeqbZ62uyUqAPOVSr9VxfjX1
         3rol8jDfhjaIy55WHQdKk+jyvbCfCWw1tf6ctnxt3guGI83dIIPS8Tz4aZOgKq6oZdck
         yGCNG2c0WNUN29oR39PkKvoOn/P7llgr5BZx1VnchrTBqRXIHS+TZFIzu5Ay9X75P/aE
         pgx4cd7ElZErKUIx+l98CT2QpKX6tkmoD+FNjocrFrrntvKgQPMYL1UxPpKYbAVvDNRi
         p+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679506565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MBlLp+0COLFxAjxryxu/P8CBoMJIEp3vPYn/Fr6xqvk=;
        b=ZCP1SMsMwi9LOUbihpBcHcu9tOENA2iqkTUb0q3ygXupOze9pjlGBXQgO1XUrbQnMW
         LQ/chxcyQymh90Onvj7vppyWv0/PQroz3grhiWeGDWA+7krWB4j1aRGHvvuA5Vm06UoO
         7H7GsOn6H3A6RkOuKo5J6ZUxEkLOxt5bzWzJs/iv2vc2h7kC8pjWq40q0/vjPZbtLaZk
         QV5uOkFoQALPz770W/Yc+7Njg+Od/kxli1wfEDuSXr4CysddHWhjwyaPaXkhHCoEQ+Bq
         2xJfJJLFq1pUlNgTJ3Y52TiyhJ3uD7VUrm3xVfpwMHY+QUwKxdVPd8xKgcy6ChV4SkNQ
         ssjA==
X-Gm-Message-State: AO0yUKXpcdJGDtCedkEdaAQp4n8heWTkZcd3tYF5CEPTUSAPT7eY6csG
        Pud9bvzSb2n00L1q5nqSACCcQQ==
X-Google-Smtp-Source: AK7set80Ohan4+zADPF7N9dl/mF1PS4BNi6YVaTTochudYtLQKvAb6y+FGjU2UTrTkECgmA8VLd5Mg==
X-Received: by 2002:a17:906:300c:b0:8e5:dfa3:ab06 with SMTP id 12-20020a170906300c00b008e5dfa3ab06mr7101378ejz.14.1679506565028;
        Wed, 22 Mar 2023 10:36:05 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id t25-20020a170906065900b00939a61113d3sm2743910ejb.110.2023.03.22.10.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 10:36:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/2] dt-bindings: mailbox: qcom,apcs-kpss-global: fix SDX55 'if' match
Date:   Wed, 22 Mar 2023 18:35:59 +0100
Message-Id: <20230322173559.809805-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322173559.809805-1-krzysztof.kozlowski@linaro.org>
References: <20230322173559.809805-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The qcom,sdx55-apcs-gcc is followed by another compatible (syscon), thus
the 'if' clause must match by contains.

Fixes: 0d17014e9189 ("dt-bindings: mailbox: Add binding for SDX55 APCS")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>

---

Changes since v1:
1. Add Acks
2. Split from other patchset, so it can be applied independently
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml   | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 2992227631c4..4d2f408a5efb 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -91,8 +91,9 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sdx55-apcs-gcc
+          contains:
+            enum:
+              - qcom,sdx55-apcs-gcc
     then:
       properties:
         clocks:
-- 
2.34.1

