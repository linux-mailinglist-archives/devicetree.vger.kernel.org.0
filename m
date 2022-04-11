Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86934FBA4E
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 12:59:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345829AbiDKLB1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 07:01:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345813AbiDKLBX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 07:01:23 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95899C2F
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 03:59:08 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id u18so7181914eda.3
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 03:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zw3vSAK0pJhTjl0Tya4Qny5h2u5hqroyCgDzzcOD6F4=;
        b=JQeWz9JruHE6fvJG/mAZuZxY/g7URi8MDaPjHIdq/u3Taoj39k1J8FMGd25pw6oHk2
         hgo3QpiJ+fgVAE6hhqRhbXLssCANlOVUY7wGthfaFuvsqSU9O8q+LBsDfiUzOjzayZGP
         jSsviHKu4xvFW/58sQjouIHT6ZH+mJ8stvib5ocpr5xpisEtBijU1s1eOgOn4WRhwtco
         IDlGjrsx1Mj34NOM5xqzrkHOyYx3h/tdXWsDelEhLijhPJJfXz3gfNT0eNB/PjqgIh4z
         3dNRcnaQYwdVbBSbnEquje6EeCN4Xw2IpvrTccj3aF1ngh0kQ/RaV/kM+Vqeo/nGz/4m
         bhkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zw3vSAK0pJhTjl0Tya4Qny5h2u5hqroyCgDzzcOD6F4=;
        b=0GEUe/gao7RADgny0HvOxwKE2uJcKfqTwQvnxdZu2w5KpehKwcJqja7P5JKxPsw037
         xfybu8hrc31634HRfQWQYXDEcb82tseaiS0ux2381nSt1je6d0MM+k6Ow+LsWvg1De6Z
         Ut2pQsH/mb8D0Ew8lrs3t2JxCNB1ryOTjhKzlEzy2byzJhy6hSHFcs3TohjSTuxr45oS
         hleyOhU8AwEBTPr9P+NXKq4ThrZHljdyIETZ0/l6yIRENuEGXkCDkfkZF53teyf4sA8c
         3KImgD1P7rltWlLkK0u9dxdhKgjaivKr8D/xtNDuFFaI2OJn7Ig/vJQbgFXxKNjAEkij
         7xmQ==
X-Gm-Message-State: AOAM533W+30YfsHsVCz7OxOaZAhaVLgrhP8HcgiQJYKOo14XbrEDKB5R
        et2F2b3TRC2UFSkGlKIdNJ60vQ==
X-Google-Smtp-Source: ABdhPJyEOy7ko1JKO6Gp9yC03o5o0k/8DcPcwlJQDltuZcFVFm1jJVVIip/g86PxqzRvehue9AHgHg==
X-Received: by 2002:a05:6402:4248:b0:419:4583:eaa2 with SMTP id g8-20020a056402424800b004194583eaa2mr32575686edb.376.1649674747020;
        Mon, 11 Apr 2022 03:59:07 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id kk23-20020a170907767700b006e8a6e53a7bsm70276ejc.139.2022.04.11.03.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 03:59:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Collins <collinsd@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] regulator: dt-bindings: qcom,rpmh: document h and k ID
Date:   Mon, 11 Apr 2022 12:59:03 +0200
Message-Id: <20220411105903.230733-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document used PMIC IDs: 'h' (sm8450-hdk, sm8450-qrd) and 'k'
(sc7280-crd).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index e28ee9e46788..2714a790ff83 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -78,7 +78,7 @@ properties:
         RPMh resource name suffix used for the regulators found
         on this PMIC.
     $ref: /schemas/types.yaml#/definitions/string
-    enum: [a, b, c, d, e, f]
+    enum: [a, b, c, d, e, f, h, k]
 
   qcom,always-wait-for-ack:
     description: |
-- 
2.32.0

