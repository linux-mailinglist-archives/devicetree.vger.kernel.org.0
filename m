Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2EDF6E39A0
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 17:12:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbjDPPMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 11:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbjDPPMj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 11:12:39 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A0FA1FDB
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 08:12:37 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id kt6so19664826ejb.0
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 08:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681657956; x=1684249956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xlWlvCWzrovrnqFvYZa6sVT2dx6B7igBCNASIvtKe9k=;
        b=ofuNa16m1w1KPW5fhX8kOZV6iA3lUxhQjy4U44tnXZ0qMuT+JO+fsjXJwxiyc0niJf
         /QUO4b8lsrltY7rwihIhq5ewsI/26fOmG5uCtnB8az4Jt9Anw9vyqUdzCaMw5uh3KgOv
         VAOkGVTZRKq1VXDhzOU5bjND7F57mPLNWUw1mibGlMTsE3LTgROWQlYxM1aJo4QSIU4/
         79A3yLVaOBsBiGzRZuteNFkIcdbGfU+rbwNFZwtQwIXCPFVGdHFbiXqovZmOfKiGS1Kd
         zdA+b9ejFY1YfrI2VZZZpbCQX00CAzB3nK3FyHcvP4+vIu8eepwVva3QRBQz6DDNzbvB
         F4kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681657956; x=1684249956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xlWlvCWzrovrnqFvYZa6sVT2dx6B7igBCNASIvtKe9k=;
        b=Nn6Iniza08Bx1cynBC6fUTzg7tNO3b5m8xuRfQr0Iq7nA4IklyMu9tM9Ix/2CmtAOB
         iHzMZw4kooelSnULRGdo/QWI7q1lsIhqXK78mA7hmSZSRFDvCVg3/1Qau0cbHQSvcOwo
         65IPD4GoqcnhMU2zR2l2W7avUk9Ly2awAqNLI6h9q/Skb2UsulRHfeS1i8TYZt0ZmUOu
         3SJm3ODhH5WyxJ/PEYTujz2fROMrySSFYFlAgQOHNBj/O+Bje3dyjJHrQIJ+jHw+3KY4
         UJ2OccFaGpFzBP7ZwAl2GgSbGNKyi7AK0XcRX83dulgdF0nNNLiRCcQiximEwgt/k/BE
         kF6g==
X-Gm-Message-State: AAQBX9dhDoFSL30hARa1hDpgsZubyD1KrScGQMCT6U061W99AjiK8gma
        +Tti1AloVDSkjqDyETMDg7O5dR7yVqVp067UE+c=
X-Google-Smtp-Source: AKy350ZI6BgnI3mupLhl88+iHzgLlBV1xT4C3FRFxxGbWQfUvHA+oyjPfjPjRJIwh1KODZ7vbnE2QA==
X-Received: by 2002:a17:906:6992:b0:930:6c71:64eb with SMTP id i18-20020a170906699200b009306c7164ebmr4772616ejr.29.1681657955997;
        Sun, 16 Apr 2023 08:12:35 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:ba4d:301c:484d:5c9])
        by smtp.gmail.com with ESMTPSA id s13-20020a1709060c0d00b0094e729d333fsm5169635ejf.222.2023.04.16.08.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 08:12:35 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,edp-phy: allow power-domains
Date:   Sun, 16 Apr 2023 17:12:33 +0200
Message-Id: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

At least on SC8280XP the eDP PHY is part of power domain:

  sc8280xp-crd.dtb: phy@220c2a00: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index c4f8e6ffa5c3..6566353f1a02 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -43,6 +43,9 @@ properties:
   "#phy-cells":
     const: 0
 
+  power-domains:
+    maxItems: 1
+
   vdda-phy-supply: true
   vdda-pll-supply: true
 
-- 
2.34.1

