Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53AD178D984
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:34:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234186AbjH3SdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:33:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242950AbjH3J65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 05:58:57 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64382CDA
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 02:58:52 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-52a0856b4fdso6959542a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 02:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1693389531; x=1693994331; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YGoqMS3E9hTzuAlLYY6w0VLAfh40RFv1IavK9K8DmYI=;
        b=CjGFqdJfOF8HLg2x3svVkHLT1/f3rtrUo4CK7HQSGxhoVy20LmBAEj1L9Po+E3yu4n
         bi3IZ0cH3MEjXmQSsjkkAfmwagl6MH8sSwrwpPldrxYmzZudD5xz7PT0FXGIrMamye3N
         /U7rBjo/uQQyilCVC8cZOsiRlxkIo7wsKI0XCdANbVdncNhSI9vct5hraMG5elhCWADM
         4hNZGG3oiY5K8mn+YqjdtqILKHv719r91HgKOdHYg0iDiFQfIfEez69/cj4c6O1AsK6g
         tjy/PWkoG7jT3A5Kedvj72XTGWEoYjBiGF5P2z4PfJdcA5Zq0dp5dZExBJYLcISnYJBx
         TT8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693389531; x=1693994331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YGoqMS3E9hTzuAlLYY6w0VLAfh40RFv1IavK9K8DmYI=;
        b=RY8XxqGf3uvZaQYB8mWn6UopN3NQrwMx902hVSX9xmfwi6H2knzMoUxvMgY7dayZP4
         9ot5IFBZs84Nk6et42kKacnBV1VongbrKJtBYOEVo0A8MB+6HqyK8RQ/5vAODSQ1RlU0
         zIgg9BhVNy7+xQX+Qm2MZE06Fk3hTfFNpYvAPZPW/pmwjJKmAX3+uTyakYQ0DG6f+dEX
         1NvhvytmxCciMo5qKOih8R/OgNNXFa9tRHNgipCNjoKLA3n4TIF5dOmfdQ1ZzRmFNRId
         7An89T1kK5fOLdsEKH2u9GA6eYxTYvc/fYZb9eHcdiCNrOEoovMANLAs2s11gk9PtgNX
         z37Q==
X-Gm-Message-State: AOJu0YxLyaCq9SKwsOANUWI/Ix7OSU7AylJIEWngd51ozr5eca4gpjTS
        ub3zjUCt+2PyxC4zwdhps5EKlg==
X-Google-Smtp-Source: AGHT+IGEi+xlIOcDOFaLVY6bYdh1pBTkM7v6Adr6xHtbqgnNFa13d99vlQbglBCKCVSoJg9wbvFyPg==
X-Received: by 2002:a17:906:74d4:b0:9a5:d657:47ee with SMTP id z20-20020a17090674d400b009a5d65747eemr1227676ejl.58.1693389530986;
        Wed, 30 Aug 2023 02:58:50 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (5073ED84.static.ziggozakelijk.nl. [80.115.237.132])
        by smtp.gmail.com with ESMTPSA id i15-20020a1709064ecf00b009a2202bfce5sm6957130ejv.118.2023.08.30.02.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 02:58:50 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
Date:   Wed, 30 Aug 2023 11:58:31 +0200
Subject: [PATCH 06/11] dt-bindings: pinctrl: qcom,sc7280: Allow
 gpio-reserved-ranges
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230830-fp5-initial-v1-6-5a954519bbad@fairphone.com>
References: <20230830-fp5-initial-v1-0-5a954519bbad@fairphone.com>
In-Reply-To: <20230830-fp5-initial-v1-0-5a954519bbad@fairphone.com>
To:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-pm@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow the gpio-reserved-ranges property on SC7280 TLMM.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
index 368d44ff5468..c8735ab97e40 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
@@ -41,6 +41,10 @@ properties:
   gpio-ranges:
     maxItems: 1
 
+  gpio-reserved-ranges:
+    minItems: 1
+    maxItems: 88
+
   gpio-line-names:
     maxItems: 175
 

-- 
2.42.0

