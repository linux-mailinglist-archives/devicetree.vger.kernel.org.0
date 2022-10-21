Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B821607356
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 11:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230520AbiJUJJF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 05:09:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbiJUJI6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 05:08:58 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EA171A3E08
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 02:08:56 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id az22-20020a05600c601600b003c6b72797fdso1540962wmb.5
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 02:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCCT8tgaqG5OldHtlkklSVmkDx8WUdXNiCaVQRja2yA=;
        b=dZuUPjkXDyO+JwX9iQ1/T+pcgE0GMJPiQc5s7Bc2JsIlkHOdiST3HXo13hVM01+Ms/
         aVZkKVK4BWd8QBk5/Z/rm52gMHY6bC8EDOzjz4b9huS/6G8Bg+bP+/eWD0FCEnK5OKYy
         dKSxmXX5cr1jsGyY6k6CL0EZkHjD5EVQcmV0aWLjji+gsJTPvF0zqvM3wf0r35NbQo3Q
         hWpkeXnA7ZyyQYLBh9X3asjuZr8031Izd01DblMbLIA2L9yZTkCqfN3Xj8hq+Huy62Q0
         l694WIL9vudrKRXoKV7wnVRVJMN9XBjj+phNPZWAIv0ZEEbD3fvWih8RuWi4FmmffiCE
         5Rig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCCT8tgaqG5OldHtlkklSVmkDx8WUdXNiCaVQRja2yA=;
        b=nQsVmnRjp3J33//iLMKSnmjjC5LMGHCe4KuadORcJeHc5lm8Jc65DjohmZmfJvkAxW
         XhzFT354VHg5OyzQJrcC/65jIJajVOgoqk25mn3GtqgCFwRUo096lLoB/y2SHRnggsO0
         A6aKdV1QhToJlt7MI2w0vbhg9w8IeIwSPnnbQrq+A8RYcFK8BGI8qVNGHb0sr/Ke36AO
         KDQnYZJyh9F3VNSrgsmFZiT5Hs/hiGAm2U7bUtpLREDlMxM0ZPfQGX/V0YvtWFer8TFe
         4ePwzDUzT0tEefAAXojyR1f802sxJOo6F720yTeL8g+wl8KgIuNXff87H/JFTfoq2OCs
         K/1A==
X-Gm-Message-State: ACrzQf310ulyu6JjlbI/ZHNHkpeusMywKeSOXtbGABqvDdKwJfSFu9HB
        5aVI5IQY34UuwGnkI+zguHH9MA==
X-Google-Smtp-Source: AMsMyM65oSY3CowVzCTi0eRv8Brn1m3ghjqcq9cwWETRiYmKlJkcqTRSHLPpChf5SnPq8XWs6VfwBg==
X-Received: by 2002:a05:600c:5c4:b0:3c5:9a14:e5f6 with SMTP id p4-20020a05600c05c400b003c59a14e5f6mr12729629wmd.153.1666343335526;
        Fri, 21 Oct 2022 02:08:55 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c444a00b003c6f27d275dsm2230286wmn.33.2022.10.21.02.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 02:08:55 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 21 Oct 2022 11:06:43 +0200
Subject: [PATCH v4 07/11] dt-bindings: rtc: qcom-pm8xxx: document qcom,pm8921-rtc as
 fallback of qcom,pm8018-rtc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220928-mdm9615-dt-schema-fixes-v4-7-dac2dfaac703@linaro.org>
References: <20220928-mdm9615-dt-schema-fixes-v4-0-dac2dfaac703@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v4-0-dac2dfaac703@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andy Gross <agross@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PM8018 RTC is used as compatible with PM8921 RTC on the MDM9615,
document this situation.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml         | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml b/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
index 23ab5bb4f395..0a7aa29563c1 100644
--- a/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
@@ -11,12 +11,16 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - qcom,pm8058-rtc
-      - qcom,pm8921-rtc
-      - qcom,pm8941-rtc
-      - qcom,pm8018-rtc
-      - qcom,pmk8350-rtc
+    oneOf:
+      - enum:
+          - qcom,pm8058-rtc
+          - qcom,pm8921-rtc
+          - qcom,pm8941-rtc
+          - qcom,pmk8350-rtc
+      - items:
+          - enum:
+              - qcom,pm8018-rtc
+          - const: qcom,pm8921-rtc
 
   reg:
     minItems: 1

-- 
b4 0.10.1
