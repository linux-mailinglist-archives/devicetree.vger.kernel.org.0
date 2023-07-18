Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D83457573B4
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 08:11:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231246AbjGRGLO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 02:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231221AbjGRGLN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 02:11:13 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60248EA
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:11:11 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-668730696a4so3515529b3a.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689660671; x=1692252671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbm/PmLqZ2+dwjBfZP2gF/+K4CifkL2BaQdnSKOCCK0=;
        b=BSeGvXzyvC6Njh/qw9ahZNPuM34cQGvUmin8yKRTbj91I7yh3LlIMI6go5S5ZIpnnc
         Ja3acDk5cseN80eW/5ZNMC3mV/cbxkAg2Zhs5GLLYOXCgHluijWVyWQVr80uvMKkVY62
         jm+Sf8ew899PkVv3ChO7gTVCDdEP/y/PMpB9BDMEjtd1VSsyZs4ih8eJRDuiPN7uS/do
         QS1B75/7w5NVkQmEK+erx0Q86bNAK15ud4BeZanqN77vK01ktmAtgtmwQHdbUweAKNXn
         /RrxHKev7Ggxdbt5GfCvQHAq2510HlGVAfFwEqhKY96JXHSC1BUzRmqN17srj0vBmzYn
         p+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689660671; x=1692252671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbm/PmLqZ2+dwjBfZP2gF/+K4CifkL2BaQdnSKOCCK0=;
        b=Hpcix/SWRyFcDnI4j9Qod23Xfm/hpzmDcCl98l+lb9O+iNtw8pXneaz7/Zzc+9IBkX
         oeyzgek73usaC+M94b13EaEWd+ccMwqguxU/1KMtAblwUrBlv5TISshYHGBacF4w3o0J
         gud9UutgjEVx1QxpXgkFQwNkNpFfuPsIhFHH/K+pD7tQVjA8N/5HlBJleN7MpDUEM0ae
         cGKLt+2Dskq6d1555beMuj4xHFO88U4Dv4ZbsZFcsCwdVEelIg1i7U3w4hO//CoConQ8
         8eoHw3mufrer/GP5oQfR8MZBh7qzaLRuWX3W+rGQclGUtRtfnkyhwx41RChP442Fm9Ui
         CCCA==
X-Gm-Message-State: ABy/qLb9f08HWEvb7dlnCs4li7Fmrur0WF9NE6DNhjy95pumM8BpyIV3
        CBxpcdUhpfjqplC04kBqceZj3g==
X-Google-Smtp-Source: APBJJlEbQa4WJAeV/iDFQ1B93yQ8Ht2+89O3qS43qIRPmQ5VCEHOyV5NYgUMGjTquA9f+29WMDn//Q==
X-Received: by 2002:a05:6a00:22c6:b0:668:69fa:f78f with SMTP id f6-20020a056a0022c600b0066869faf78fmr16312666pfj.1.1689660670763;
        Mon, 17 Jul 2023 23:11:10 -0700 (PDT)
Received: from localhost.localdomain ([223.233.68.54])
        by smtp.gmail.com with ESMTPSA id h21-20020a62b415000000b0067db7c32419sm778106pfn.15.2023.07.17.23.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 23:11:10 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
        quic_schowdhu@quicinc.com, gregkh@linuxfoundation.org,
        stephan@gerhold.net
Subject: [PATCH v9 1/7] dt-bindings: mfd: qcom,tcsr: Add the compatible for SM6115
Date:   Tue, 18 Jul 2023 11:40:46 +0530
Message-Id: <20230718061052.1332993-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230718061052.1332993-1-bhupesh.sharma@linaro.org>
References: <20230718061052.1332993-1-bhupesh.sharma@linaro.org>
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

Document the qcom,sm6115-tcsr compatible.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index 5ad9d5deaaf8a..b580398041d87 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,sdm845-tcsr
           - qcom,sdx55-tcsr
           - qcom,sdx65-tcsr
+          - qcom,sm6115-tcsr
           - qcom,sm8150-tcsr
           - qcom,sm8450-tcsr
           - qcom,tcsr-apq8064
-- 
2.38.1

