Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 675E170FCC9
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 19:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235164AbjEXRjI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 13:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230495AbjEXRjG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 13:39:06 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D8B1130
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:39:05 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f60dfc6028so14228855e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684949943; x=1687541943;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aY4E79MucXEj1G8uY/IFTqYqJbaTpE1l8iCW6N5c1W0=;
        b=O6i5GvsayStomqsVWgN7cXot3KUPkVot8vYwvIA1QVth0FUoVJJr+39pE9/lkQmuxk
         mPgU57vrtWrwMYrVA5FKSRgedDSJUxS97gVfkXNIhf+BqoxBzQsnClK5PLPbjpKdGZlg
         nj1VhQn1a3BJqb0+EvAr0fWySqsEniCFeZsJK4cM5fgFdNzB6x0VJuIlPpBnzeOa1eCV
         5AZnXO8IX6mhi0EDJqmvHsbmbH0LY1CsgzDOMH83cm55qRxr2SETROIITE1hJ1FfMZFM
         YnoO10cTpCdnkjO1TH9ZiLt6hKoIu70L/5S2hiwwtsVfF2utCVRE9MmdgLos1KgQ7lm0
         EL4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684949943; x=1687541943;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aY4E79MucXEj1G8uY/IFTqYqJbaTpE1l8iCW6N5c1W0=;
        b=d7bHCHUDoIYT8ezvN4P0asOjZfrRi8SzcRXomn+lbsULq1ZBQAOauMl5ku1Luh3UpS
         tnOd5dOXHR3mYUHY8ufct63EUxKBGZDR6GmtJQ1fWH/NgNz9bBRqkrMoBEK8AvkOwBFz
         LivEP57HyA3FHiGGHuiIWORwB/Lc+IRnRcVAoWwlaqwYbKJrsSBtacEyaajctkLnbhRk
         RQ+tLHVroc7n0Eqd1hov1Efy6FWs/aKs7ZCfEz2NEk2b9AERp4i1EjPY8GLMjf0m6U9i
         dXEqRzkfgVf6MVtjPlzrV9TJCb5LFKOfgKhhfiRF3QXypWil6Tx4QNoX557Ux+gxQKNm
         F6VA==
X-Gm-Message-State: AC+VfDwohaDqT9ZBZIkRdTgm/nWummtIw6nIuKfHurrkHU4SiFlGDVts
        DUXGD49hCj5CZ0RCaeXE7o+LyctX1OtsYO51asyk0Q==
X-Google-Smtp-Source: ACHHUZ6o1IOsj61ybZlJHh7IYbyEZKARqRMyx3CLNFpmGNskUhTtwo7N4WmfmFZBUWBDexi1uQGFYg==
X-Received: by 2002:a1c:e901:0:b0:3f6:490:a7f3 with SMTP id q1-20020a1ce901000000b003f60490a7f3mr351607wmc.9.1684949943682;
        Wed, 24 May 2023 10:39:03 -0700 (PDT)
Received: from lion.localdomain (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id l17-20020a7bc451000000b003f4fb5532a1sm2993053wmi.43.2023.05.24.10.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 10:39:03 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
Date:   Wed, 24 May 2023 18:38:52 +0100
Subject: [PATCH 1/6] dt-bindings: mfd: qcom,spmi-pmic: Document pmi8998
 charger
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230524-pmi8998-charger-dts-v1-1-f9334afc4505@linaro.org>
References: <20230524-pmi8998-charger-dts-v1-0-f9334afc4505@linaro.org>
In-Reply-To: <20230524-pmi8998-charger-dts-v1-0-f9334afc4505@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=820;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=zH+WGeDPvM4ddhJTfMtpW+lYqeFC8v10YNFeDn3WGJc=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBkbku1An1PpKhDnNw1Dcsgd2jrzBFFAA5MX/j4j
 mwhvdVXx+OJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZG5LtQAKCRAFgzErGV9k
 tsKZD/9jSc8i36r+eZXZt2NCJljo9IMuDmgls0ldEx9sfesyXwRk6uPjMqOrCqYI4YgyOgh7Xkl
 Cl4qeidUJayHSBBQEXunwVgZq2DDybH5VYrYQMDILb6cSO6HJTT2HYZ3uxiInXj7tgfgCnzXe7p
 7xyYQH10D/foG37UjQ1Iu2oQjoCprrJH009/pwMP7EvuJPMuhIAIKR6hbhCNsrb/BvMD7iNYfBO
 Qlbwwmx93a2TtOCvz2z689eL1+OYsgl6qvIQIEJQwP71mv5OQrsSBpS2KqyStX+a3vrFVz+19hs
 sbQam9oZ7UTNeK5vLQRYQgA82Q4o3H+LzPyybXHJN4a8Us+jf1s2rag9rAnIohgG3RZkoCJxPj+
 ttqQBDXCrpwTe7oxcWXbi5gitHEw520pxcYnFT/OLjtKTVgUXQImPLThtmiANdgT9zvx6cum5bl
 zqyLtU5lnwYWL40OlMuUQSnp6SPjdi/FwxN6UBlk/UlvNhgZ1ez0a9QluV/puXAMHG955ZLM5/I
 C5/n/BkXNGtF3ZGkCD8tIYKD8+BGiNT+IwTVZvirR1m9MCoRkaYNEKP4nQ+72xt7ti6PnN7JKaK
 yhcEJ/bOLeGcPQnccEJ1RcGnpKXirXBnX3i32r3iG/RxnxNZNuhKr4YeBQl77jdrZJ8+O1GoexD
 tnXxUXtrJEXY96Q==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the new pmi8998 charger bindings

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 36de335a33aa..44590dc112be 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -133,6 +133,7 @@ patternProperties:
     oneOf:
       - $ref: /schemas/power/supply/qcom,pm8941-charger.yaml#
       - $ref: /schemas/power/supply/qcom,pm8941-coincell.yaml#
+      - $ref: /schemas/power/supply/qcom,pmi8998-charger.yaml#
 
   "gpio@[0-9a-f]+$":
     type: object

-- 
2.40.1

