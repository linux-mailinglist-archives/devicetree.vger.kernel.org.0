Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA14B5F3DC8
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 10:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229962AbiJDIIs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 04:08:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229936AbiJDIIf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 04:08:35 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FEB51A22C
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 01:08:32 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id b4so13115572wrs.1
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 01:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=rneLB6WK0hb5ckLAowEuNik00c/MBOlbxObt43YiBik=;
        b=OBgV+joCcJjjl412Nb2zNufQNlOUcvj3WH8jf9uftb33ic8/b2VOiu+XojMIRirUOx
         g48QZO7A2X+AwHJLF6FswUsdPWQDej/w9jrmpXA8cX8tUb18HCczOYm+MWQpfhX59XoL
         nWidOrWacdZS1KLHhhbRPnJ/wNtnB0yKgB/RVU7udc93b4RxRzvC/Qealx2sSHmE/Xnp
         2RuLn2X2rwWyAIZHWwSWrmPJaKUUGBTDbXOPseamjpq6JXjcCsVF3CcltPVGBH/+fwcV
         brBQEi3b0UiAM4zxQelI9dvjcek5mgamDowy8T37COaC7hGk0x3i75TqXWWoSfpBQN+G
         fEJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rneLB6WK0hb5ckLAowEuNik00c/MBOlbxObt43YiBik=;
        b=haLx8I2/BE1s9qLcMj1yzBonvLiALYTgaAf/GKyRwfrYqh5dVuRM17ZtkISXAAnxHH
         7KrfOIXzGEz/637Vx1GkggfVAOJ8i/nS3oMprTRrb/hTiG/dB97m61YxnxEDS4coSU9n
         +t5kL2TazAzlEFvsT1ZtRvXZCrhg8BCwJDR2mHxIe1gqwuigLhwExxhAaza3nDoKtFyR
         w+RUEvA0qP08QhctTQUFZtfM7Ii/LXtOmC9aIdZ6plsR1dNRAfLXOl1XoPmUdsUyd+3H
         dYBLIAZLCnsAwYhaR/ZED3lvcsvAoR6mOPsRSVed2De4Ac8ShiURn7LKQAb3BqPQ+KAD
         UQfQ==
X-Gm-Message-State: ACrzQf0lbCGbpzCR79mkzXRw2vV9ei7isGC3ORs2hHLdlOtGUpfDMGAX
        cGnlvgFjEj2AnIzGT/aTj7jgjg==
X-Google-Smtp-Source: AMsMyM49JGyy91z19GmF3/f/TMYRUSetR0flmwSyXGb961IJCAykvU54pLhQ5z8Z8Eno57XPz9slvw==
X-Received: by 2002:a5d:4c8e:0:b0:22e:3979:7dc9 with SMTP id z14-20020a5d4c8e000000b0022e39797dc9mr5835672wrs.41.1664870911723;
        Tue, 04 Oct 2022 01:08:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id l2-20020a1c7902000000b003b33943ce5esm20228866wme.32.2022.10.04.01.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Oct 2022 01:08:31 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 04 Oct 2022 08:08:23 +0000
Subject: [PATCH v2 07/11] dt-bindings: rtc: qcom-pm8xxx: document qcom,pm8921-rtc as
 fallback of qcom,pm8018-rtc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220928-mdm9615-dt-schema-fixes-v2-7-87fbeb4ae053@linaro.org>
References: <20220928-mdm9615-dt-schema-fixes-v2-0-87fbeb4ae053@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v2-0-87fbeb4ae053@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        linux-input@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-rtc@vger.kernel.org
X-Mailer: b4 0.10.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PM8018 RTC is used as compatible with PM8921 RTC on the MDM9615, document this situation.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

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
b4 0.10.0
