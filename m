Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C254B6B9675
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 14:39:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231857AbjCNNjV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 09:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231420AbjCNNix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 09:38:53 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63ED8227B7
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 06:35:29 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id f18so20077123lfa.3
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 06:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678800925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sh4zFEIZsVsgIYquzQn0IwKdDfYraW3QI8cBFm3rGrU=;
        b=bqDSG4cv9hvzT+oSra9Wwdr4cP32Ap9jbcosK/WicHQFDozUvwOQdl0zAJG1QeGrMK
         4LCsEqfTOs3GoKNRVJ/khYFzNeTQoURxT+mU54VhEF1OT1pDFsefsJhMMQFk6p1FYETB
         TseOsR+O3e9C1OyJY/dFuxnYWb3zamXO/E8jpVcEhyfHopg1w5/LdBMztyNDb8EGoNAY
         3MEZ4aE+6M0uJBF1iN2IFUixus22GoIocvKMrUjCCE2IAQwd0WYKO+U8ARjN8e9gxksi
         K13yFoYv/G67yQxS9E1W/bYxsU+vjUiCPde88UAJNQsrOzATX0smW7++ZXVi2EP+pyMf
         UMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678800925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sh4zFEIZsVsgIYquzQn0IwKdDfYraW3QI8cBFm3rGrU=;
        b=ERXpHLv3Bke1cP2HQjsX/feuOGtJa73Q7UmMJ9v7rMjrwWyUyVsji6OlN9iZh+VhDB
         NFbq6F0MComoLkcm8TOll0lNd0PKxw6IXMYkmewEW887VlFK6dN02TfiTCHpfiZariTf
         lcYHNFgTMOOPdJplXeQQl7Ywr9JiaZ2DmlJMlKf/kKrq7xpq1fyCE2oJp/xu+iqjvuLX
         QiY0FCiTsfUU7SiitBW40edggEDGuEAj4v/uSYX1mEj+fGqr+UVeKU0sSf2PDcL3ce27
         cVwJmReEFUoPULbOQwLtW4SilQ+O3m84ziO177naIpl+sArj9Geu2QhkRHO0JmRmFugs
         CRXA==
X-Gm-Message-State: AO0yUKWoQ4BgyEez0ng/fmwjV1gqrUu50XGb+pDds8OTRotNSC7gHeix
        OKLdLwZmIEBUAfPdOAJA6G6MNw==
X-Google-Smtp-Source: AK7set+VcE1VqvImbXVvNm65CU5zdwsJXjWz/ym965TAl8OsnoteSLGI7sQv11/PjEc9O2qYSr0lsA==
X-Received: by 2002:ac2:46c7:0:b0:4e8:5392:492c with SMTP id p7-20020ac246c7000000b004e85392492cmr389999lfo.43.1678800925099;
        Tue, 14 Mar 2023 06:35:25 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id c20-20020a197614000000b004e841e52b48sm403556lff.117.2023.03.14.06.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 06:35:24 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 14 Mar 2023 14:35:18 +0100
Subject: [PATCH 2/2] dt-bindings: nvmem: Add compatible for SM6375
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230314-topic-nvmem_compats-v1-2-508100c17603@linaro.org>
References: <20230314-topic-nvmem_compats-v1-0-508100c17603@linaro.org>
In-Reply-To: <20230314-topic-nvmem_compats-v1-0-508100c17603@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678800921; l=768;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9zW2kVoaP83+hQ0cA4NNsOZWF61wPs8Y/f4QO0vaTHI=;
 b=INzyd640WDnyQVrNOhWXzBzlx4fE3vQKukjgehZfRJ13x6VTiGETc6PxzUBDo+ZKc6W4Inpl5RM/
 Oi2CVfo1D+fW5cZcqdkX5RCCUvKho5ivTwP224MFuMFlvXKJAGqL
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Docuemnt the QFPROM on SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index cbc5a1ed7c6b..cd2a5040318a 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -33,6 +33,7 @@ properties:
           - qcom,sdm845-qfprom
           - qcom,sm6115-qfprom
           - qcom,sm6350-qfprom
+          - qcom,sm6375-qfprom
           - qcom,sm8150-qfprom
           - qcom,sm8250-qfprom
       - const: qcom,qfprom

-- 
2.39.2

