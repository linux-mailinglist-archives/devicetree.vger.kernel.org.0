Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33AC55E6C64
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 21:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232679AbiIVT5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 15:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232597AbiIVT5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 15:57:09 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90204DCCF2
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:57:07 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id f14so16472952lfg.5
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=XXRDPvErLE/Xf90r7YlAXBp4jjlmgCijUS+mIOPYPBU=;
        b=efgsu16VJ4Iw9Z9EYi9RQIHR9UKUw7mN3w3p3PqB8ZuhMS5ZCC8txZz71WsPZ0ckfy
         jWCF8es7M87T/DSeTbqmlH5KZlR5ajCKXYTlFAFCYa+uneAOT2KltrdpfPDhDNCcNKnJ
         5PK8qfQzTd7giYLpX0qkGWLwVEx5LAfigZts//o+5fODa7uVNppvaoA3XhQOyCJWLO5X
         yXp8JYalXOIEm+ACCh5F0oLfx0OxuMTIpzDDGtopBJxnt1jL6j8SjloNSq+eNaUVn0so
         N2Yq7zNeY6OsH8T+AjPYNNvdg2ktu4Bs0MSCJHNG6TMKZZXr+uqF89LjO+EbLkVuXDGc
         utKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=XXRDPvErLE/Xf90r7YlAXBp4jjlmgCijUS+mIOPYPBU=;
        b=Eqi5qMrLTTuLb1QXN4Sn42JNiB/QqCPPZcPevM6skkGMViU2kCkUf+SuxXQlfTFo82
         0N6PRgQyeze5oqZ3WJFpALQhzXx9OqK9Az38Yqdlzi7EDApfFZhsorsGP064NGVvTM80
         Wuvb+0F9kUodFVVjtkQ8/lWCFuqiYyej6LbDgUOhUGIq5lkkOGarHS7OEf/MlLNlOcZA
         59CHeCVzfIoVGMAjRpu7ufb4oruPbhqIzyasAZhA/esDCA/vjLfaQtoAwgB1ICkfgMca
         GPlCApCrg8MU9oZl3yXJFNwYmG0UlvbVh6ko5by9MOChoT94sGGQnKSdB5xIvST7JuNi
         cWgw==
X-Gm-Message-State: ACrzQf2u+W3TK0daJPv531Gd4Hfy/TYBdEHilZfG6fVGlYAJza+WBFu0
        Uf9vE8FnKYweDESin0Vw+m3hHg==
X-Google-Smtp-Source: AMsMyM5xn/8bcG0B+rcEaUzn0EbCkhO45/iduxcOhIwHCB9dI+K3GyAYKaZh3j0Xs1+8pQmp4dtgDA==
X-Received: by 2002:a05:6512:3a8e:b0:49a:e5ed:d6aa with SMTP id q14-20020a0565123a8e00b0049ae5edd6aamr1972981lfu.271.1663876625643;
        Thu, 22 Sep 2022 12:57:05 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x15-20020a19e00f000000b00498fc3d4d15sm1079375lfg.190.2022.09.22.12.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 12:57:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/12] dt-bindings: pinctrl: qcom,sc7280-lpass-lpi: add bias-bus-hold
Date:   Thu, 22 Sep 2022 21:56:46 +0200
Message-Id: <20220922195651.345369-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
References: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
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

The existing SC7280 LPASS pin controller nodes use bias-bus-hold, so
allow it.  Squash also blank lines for readability.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml      | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
index 1daeca62625d..c8c8fb927a65 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
@@ -91,13 +91,10 @@ $defs:
             3: Reserved (No adjustments)
 
       bias-pull-down: true
-
       bias-pull-up: true
-
+      bias-bus-hold: true
       bias-disable: true
-
       output-high: true
-
       output-low: true
 
     required:
-- 
2.34.1

