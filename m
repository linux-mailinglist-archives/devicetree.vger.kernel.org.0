Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 632B174621B
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 20:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230389AbjGCSUQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 14:20:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbjGCSUP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 14:20:15 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56B86E60
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 11:20:14 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b6a152a933so73537951fa.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 11:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688408412; x=1691000412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4b/59TX3NkNSrRx1/m56RgmPe4rp5T4RY2auPLNOxCM=;
        b=vEPPO14XFcYlPOIaEAuxo/dZhl7EL0xbkhERdiyxO9jl5hO1Pa/Z5i4RKbrfWqxk5T
         QlbzvIylhE0SxOo2KatRqme3tYrrknajkFtUtTD86/AQ2dGv5m3waBEy5t4jjpqfQP5c
         av5VmAo9fAomrYxIasldvTfbSp4JrFV80pDB8Q+6Aym3JmE+27hta/CBsZSyErSY/N8G
         YYSQLbIpc78CLK4e04yswes1/CjJzHv5FP2Zyo9rAl5lCe/WfZiusUpiCOkd0fRqGHE3
         Sjs6ziqWuOe9xmWn+Ji3/uS+s3p/F5vZBZmuF8A0/rnDl0O9W0bJgBtWgK6zThLbs4zM
         0Z4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688408412; x=1691000412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4b/59TX3NkNSrRx1/m56RgmPe4rp5T4RY2auPLNOxCM=;
        b=TAV0aftn2yhayDIq9cH05GBedemjpAwdOnOtkKkKEH7QWYkxVjdyhdpoU7hfzu6Nr7
         LFZy2BkcyJJTfU2Mdnp7ZT9fDojl5RpmVfrePJPLiIRax4LPOUwMCIlDPIdgCceBrmRM
         dOue8NWPKTWMOONkrlFRdU5LlNshplS37/iENfOraFJ+DGApyQomgs4hf1QO+o9uU8ZR
         u6T1QG9XEF+xWkxuAVYFwP2BTdL+XTR/ZZ0jy6EZSpVoJL0Ny/anI8UxKi0kpgJ8Txur
         1/3mI5as/ZZbSYe3w+Yau63kyJJdOsyrjF8ISBkRkUl8rwMuWKpXK2C206sqOEtLzGPB
         XGFg==
X-Gm-Message-State: ABy/qLYzvX2uGeppvfGyHPVn+xqcnSl8V+mVssUNDuMko+OUu/LQV05s
        2cPtYoCchxd0YlfWWYAgCidHlw==
X-Google-Smtp-Source: APBJJlETYBi4L9GqYgzWWTB1XcujP7DKtsvaHR7Wux9K4DRxHMYt73wftJGDGAHjljx7eKqQX6ulUw==
X-Received: by 2002:a2e:3815:0:b0:2b6:a804:4cc with SMTP id f21-20020a2e3815000000b002b6a80404ccmr7031505lja.53.1688408412303;
        Mon, 03 Jul 2023 11:20:12 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id s9-20020a2e9c09000000b002b6995f38a2sm4946224lji.100.2023.07.03.11.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 11:20:12 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 03 Jul 2023 20:20:06 +0200
Subject: [PATCH v2 2/8] dt-bindings: clock: qcom,mmcc: Add GPLL0_DIV for
 MSM8998
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230622-topic-8998clk-v2-2-6222fbc2916b@linaro.org>
References: <20230622-topic-8998clk-v2-0-6222fbc2916b@linaro.org>
In-Reply-To: <20230622-topic-8998clk-v2-0-6222fbc2916b@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688408407; l=1174;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=NW778pWgYBPPqowr5L2HeywHk4bs4soIi+/Ehlrhk7Y=;
 b=VKw260lOv11+Bdr4GUzbu4N6czUT+8U9InWU83w0agHhegZ8fbsucgItBgK6kRqVlr8r2yyBE
 5QnXGmY9CkNAkb0YfFoedubjdsslTg2PraKIjuu7vByCF0LEmv5bUD4
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We've not been consuming that clock for no apparent reason. Describe it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,mmcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
index 422f5776a771..67e1eae0bbd0 100644
--- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
@@ -297,6 +297,7 @@ allOf:
             - description: HDMI phy PLL clock
             - description: DisplayPort phy PLL link clock
             - description: DisplayPort phy PLL vco clock
+            - description: Global PLL 0 DIV clock
 
         clock-names:
           items:
@@ -309,6 +310,7 @@ allOf:
             - const: hdmipll
             - const: dplink
             - const: dpvco
+            - const: gpll0_div
 
   - if:
       properties:

-- 
2.41.0

