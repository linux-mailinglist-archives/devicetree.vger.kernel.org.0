Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3E865B4DBA
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbiIKLMR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:12:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230196AbiIKLMO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:12:14 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B7D32BA3
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:12 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id a8so10314404lff.13
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=fEX3mEf1YS0VEGkwrFu/5ECJ6Ev0hCKVagP2clm1WMU=;
        b=qeciX+TWGDfUK40JVCy8bjdUUjMi4bEQkh5hMq0SRZhDTi43dQ6/Ck0gV7nTCQ6oA0
         ncU4DoBuR57Mih3OnSjoAdJ6WBu/VFJ/J8GOrHZ9vYJNIc+2MtjMF59haBCgbyI/Yw/t
         1qpcGoWU2uEuOGUWNKiBR6BwrukF9gZamU51NjO7NH5Goe/5REwPz6SJBwL2slfMh7VY
         9F82YKUyW6oQqtAEF93+fFskexR0RLUuywZOynPhGZ5GaMQCvJfUsDzHtaqmXEAvW+GB
         ykfznPsu1hvJfvQxy/iME39wL5ZO3BcceLppXcxv9E477TDiv5GZFbrYJ8SQNs8hL2PW
         0czA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=fEX3mEf1YS0VEGkwrFu/5ECJ6Ev0hCKVagP2clm1WMU=;
        b=R1zEoxjIIDJxesRG/bTyMByqn9X/YXpPmoTBaMyt6AI/mGAqZahqZkXLWKjp19Gttx
         uGL0onwS/IEz6rJPC3/sb0I0P9OTQ5WZLAa9dQN0bFkrPl1Is4GCchjuXQItWSIE40Za
         Jm0qT88RqZ20/RcUDRDp4+NOuryzfRLT5UxkBnNrHWIoMBGOVW+sxErBWG36qRG6kk/E
         db9fmJArphPDGWzr0xNnrvBSDv0zTjS5rPpra2HpU/PYHgN3NMUIBuGN1ltEUKZi9e58
         ggpePtSPFQfp3f9owfM0jqvPVf9P/JomtN5apw5W3asTdgCznNdCt2hsGDZfnkxwgyl7
         D1cA==
X-Gm-Message-State: ACgBeo2CufUKA4fmSpeFBgKgCl/iO80g5JLPiV3RYt2KdQuPpmu5o2mu
        GKOi6ISkIW094XRHEunj6FUS9w==
X-Google-Smtp-Source: AA6agR6HhHU4p1Z34Whm2Z68eV/aRL0t7FUMIYY9sEGr+GOVpWdXE1O+lEfazFZ1yAJmklfBDDJGVA==
X-Received: by 2002:ac2:4f02:0:b0:496:d15:ea89 with SMTP id k2-20020ac24f02000000b004960d15ea89mr6859532lfr.69.1662894730819;
        Sun, 11 Sep 2022 04:12:10 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:10 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 05/40] dt-bindings: pinctrl: qcom,sm6125-pinctrl: do not require function on non-GPIOs
Date:   Sun, 11 Sep 2022 13:11:25 +0200
Message-Id: <20220911111200.199182-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
References: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Certain pins, like SDcard related, do not have functions and such should
not be required:

  sdc1-clk-pins: 'function' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Another question is whether 'function' should be disallowed for such
pins?
---
 .../bindings/pinctrl/qcom,sm6125-pinctrl.yaml        | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml
index 84ed16f9915d..735eb5d6834d 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6125-pinctrl.yaml
@@ -61,7 +61,6 @@ $defs:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
-    $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
 
     properties:
       pins:
@@ -112,7 +111,16 @@ $defs:
 
     required:
       - pins
-      - function
+
+    allOf:
+      - $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
+      - if:
+          properties:
+            pins:
+              pattern: "^gpio[0-9]|[1-9][0-9]|1[0-2][0-9]|13[0-2]$"
+        then:
+          required:
+            - function
 
     additionalProperties: false
 
-- 
2.34.1

