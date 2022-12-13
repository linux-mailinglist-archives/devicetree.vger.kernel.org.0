Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C65E64AC52
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 01:24:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233813AbiLMAYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 19:24:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233798AbiLMAYb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 19:24:31 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 237F9B9E
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 16:24:30 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id p36so2278619lfa.12
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 16:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+igP2QJ4zhnmJmTalpeVUPlHJ3uUv+ijfE0j0lwlwk=;
        b=k4vUYoD4QEVuww17VhwsQtpXRPQTJZeIdU2yeKwCezoDrS5lsP0U0PJYIXYltp4Kml
         mQKGGsGkwfOu50t9XT/X/NMw4Qta5iV06ySKAkPD0o2ztCvWcrAHV0x7CbJeyq4zVW0x
         ByDflb5B0e0qXSRizIFVtPzfoa2Px976YBvU+0cdiL/tH0T5VLnfzUQfHqeOmAc5TwRm
         sQfUsE0eE504iLZpqB5U6qii3Z3F9kmw6sDd6ce7tWdc/lm27q0HbMUFg/UmoUKDC/a3
         o+aLx2YbScD1c4Muf/YDsnVecYmK2WnrBDqAO+IvriulZGPkv+s/p1RfRL6f9MvnOw91
         jsKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u+igP2QJ4zhnmJmTalpeVUPlHJ3uUv+ijfE0j0lwlwk=;
        b=3Wic007s7hHdGQUDMd/vZXd+0crgSJ7Rs8MofwURVY0BQQB7X3I8zYGaPk/Lv3hmVF
         WZJB40FQm9uF/hpLuwK8L9vl4ev6FGegIMe9/VgAbNSwD1ls8a74/7hGRb7FrCfWr8eS
         cmTwIrvpamZw8MywACCPSaDXWO9KRHJhMd0yKJ/ZUmhHaE/9FH/qT80fO9FztG1Cx9hx
         VTmRzopRU+ePyClGDFmk8oL99jjCvpgCOKl909zcLbTy6J9kc4ejfUIm7mq2zmtgmcZ7
         +LBEy5hBeZO8UqR+SvMO7KOGZJyoIpNzLhYZzlkGZEXltp0M8+9eaJh8nSiPsUGfmH7U
         tgiQ==
X-Gm-Message-State: ANoB5plr2XKNLNAZxiNnjKKp1iQ/oNNa6815pkm2AShtj/Efbono1sMQ
        3LWu4utPAeLGJXMGdp2HikXuKA==
X-Google-Smtp-Source: AA0mqf6BYAF1pc+MKAQRYlGa5eC8aZamI4avbyvA7Je2i7JVNS6Eg+GPuY3Fdw9mNRQKakPAGB+i2Q==
X-Received: by 2002:a05:6512:2a86:b0:4a4:68b7:d625 with SMTP id dt6-20020a0565122a8600b004a468b7d625mr4719629lfb.12.1670891068499;
        Mon, 12 Dec 2022 16:24:28 -0800 (PST)
Received: from localhost.localdomain (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id m23-20020ac24257000000b004978e51b691sm137352lfl.266.2022.12.12.16.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 16:24:28 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: nvmem: Add compatible for SM8150
Date:   Tue, 13 Dec 2022 01:24:17 +0100
Message-Id: <20221213002423.259039-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221213002423.259039-1-konrad.dybcio@linaro.org>
References: <20221213002423.259039-1-konrad.dybcio@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Docuemnt the QFPROM on SM8150.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index ca744f5890ff..a1305fd68f67 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -30,6 +30,7 @@ properties:
           - qcom,sdm845-qfprom
           - qcom,sm6115-qfprom
           - qcom,sm6350-qfprom
+          - qcom,sm8150-qfprom
       - const: qcom,qfprom
 
   reg:
-- 
2.39.0

