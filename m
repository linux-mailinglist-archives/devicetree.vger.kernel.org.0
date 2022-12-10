Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D04E648F28
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 15:15:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbiLJOP2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 09:15:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbiLJOP0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 09:15:26 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D33CD13F49
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 06:15:25 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id o5so7878710wrm.1
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 06:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bpyotPft42ZV60u0TngY41SM20HFUNP0Glod1vYIdB8=;
        b=K3qcscChK3t3/dx/b601XowcWiGEKiasE0saMoFPkEWBhwby25BPEMO6+Et5j3PJQK
         +XnBTW323hxe+cOA1+AC552/9Atbuxavy4GzZvszgBvpjfBvXNNEt9kccZK6pnMkOvSs
         2ZxF2SMn4qZGZY7B9KhHQLB/xL+J9BzuUHzvD/oARisLfcC0UX0v0Khll+MCo8tIcxYz
         puwPXq41YO0ZgJtysNLLQLwBG0EQ8bk1k1zkz2nMKYwha9qnkxIZr4JLL+gGGJU5s5NG
         bxZkH1cbmfjYE/30qZ11YTZKZ/42VpqMR6/CBb9UBaDgrBYH0Uo49vXG0mQ2jEtssSKP
         xpfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bpyotPft42ZV60u0TngY41SM20HFUNP0Glod1vYIdB8=;
        b=Xa6PrPBQZfStdjIpOnFvpHhSoO+3GTFQV5r9y8dvkQd+MBS18U1NnTx8VVaHu3UBuf
         AbxAdQrFjI6aYT4v5a70bqAAMlWW3ApKNnATOK9VGQpLZacRJAD9/e/C708jD941km8i
         7DI2Pok6lACftOO7HEX2a5mfNiTmGLqu6F5ESfNk4UrSz5ZUBLT2Ys2je5iuaY8J7Zdy
         pEgGQGif00eWfMDKC1Ix9AEM2zgpUG6jL+Gf+s1kcVyrM27+nBuqGJXQYs6xzLIMV/eU
         56r5EmH84ircuZcn7ECMkofTB80BQkk1M0yYvTEmMrfAyPbwpZrHcAdgeIqlS8NpkmCg
         9m6w==
X-Gm-Message-State: ANoB5plZUrFfBGvfvwYo+8Rjqc9AR9juW/sz7PyC7sD45Uz/RZbxLfTh
        SiEc8Ony+uPvV6pDH4BOfZq62w62YFvMpmDV
X-Google-Smtp-Source: AA0mqf5LgOj4pB1jzSksCkqXwVPTChw10DqfAzOym5ouXClHMmQB9+TBsaGcVkwicGHxof5kwFMsvg==
X-Received: by 2002:a2e:8e31:0:b0:277:2:bb81 with SMTP id r17-20020a2e8e31000000b002770002bb81mr2277570ljk.11.1670680692732;
        Sat, 10 Dec 2022 05:58:12 -0800 (PST)
Received: from localhost.localdomain (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id p20-20020a2eba14000000b002770566d642sm614567lja.17.2022.12.10.05.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Dec 2022 05:58:12 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: remoteproc: qcom,adsp: Add SM6375 MPSS
Date:   Sat, 10 Dec 2022 14:58:06 +0100
Message-Id: <20221210135807.10688-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entries for SM6375 MPSS. Unlike most other modems, this one only
expects a single (cx) power domain.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
index a9219c7c8349..434d34578fc5 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
@@ -42,6 +42,7 @@ properties:
       - qcom,sm6350-mpss-pas
       - qcom,sm6375-adsp-pas
       - qcom,sm6375-cdsp-pas
+      - qcom,sm6375-mpss-pas
       - qcom,sm8150-adsp-pas
       - qcom,sm8150-cdsp-pas
       - qcom,sm8150-mpss-pas
@@ -201,6 +202,7 @@ allOf:
               - qcom,sm6350-mpss-pas
               - qcom,sm6375-adsp-pas
               - qcom,sm6375-cdsp-pas
+              - qcom,sm6375-mpss-pas
               - qcom,sm8150-adsp-pas
               - qcom,sm8150-cdsp-pas
               - qcom,sm8150-mpss-pas
@@ -350,6 +352,7 @@ allOf:
               - qcom,sc8180x-mpss-pas
               - qcom,sdx55-mpss-pas
               - qcom,sm6350-mpss-pas
+              - qcom,sm6375-mpss-pas
               - qcom,sm8150-mpss-pas
               - qcom,sm8350-mpss-pas
               - qcom,sm8450-mpss-pas
@@ -379,6 +382,7 @@ allOf:
               - qcom,msm8996-adsp-pil
               - qcom,msm8998-adsp-pas
               - qcom,sm6375-cdsp-pas
+              - qcom,sm6375-mpss-pas
               - qcom,sm8150-adsp-pas
               - qcom,sm8150-cdsp-pas
     then:
-- 
2.38.1

