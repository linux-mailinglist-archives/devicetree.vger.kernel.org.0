Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B1B66C4977
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 12:46:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229997AbjCVLp7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 07:45:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230018AbjCVLpv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 07:45:51 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24C836042C
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:45:48 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id a16so13891390pjs.4
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679485547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZX8cxV4gmi38o9Pi6mmNL+xnFc7tlNvHJgTN5N6z5i8=;
        b=AX9DZXXME3un8pj7UdSfIKe1GjqelLDlEqm7BPP5UV7FblYgG1cQbIIyf3O9J41AM/
         JoWdOMBL087P8bDBLKQ5pzNcXKZqRCrD8hnPw19kCG+jygl/BnNWuLzeTQdm8bcFVb7m
         Oy5ZxYG/14IANAFkHscVuUp3ZcdYVo8Fq5CZdDhkylXWzYVEbipT2hgiWuL++4dZbOk0
         xu4hrlG+ibw6nCUcewjG/QOBO20rV83f56Unidsxc4U/8SUOR5I+ABSMjRSUUYKHATXY
         iCCT98hPzlZ/oGkGutxq4eRNk+Xwu3ijrPbwy7uCEE9qTcb9XwZxJQRWncdpRCO/yYf6
         Muig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679485547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZX8cxV4gmi38o9Pi6mmNL+xnFc7tlNvHJgTN5N6z5i8=;
        b=eKaJ9/bm2fQy1vxL/Ce4i4bOaixoo14s/prJ6zby4Ua9T4lGPTfzR9HazsmNrvaZCS
         QAxSr4NKXKkbpyX56IGD/SHgNJZJ0hKhOOCIJeD/UTugFIFVn23FCVJtQdsjYm/FVXNW
         7fZ4F3+TWOCaRw0ZBIRjsTV0PymO24m/x5r/v/zFVVs969rHkNQGRP5H9P+S8RVnbTYl
         +EJO0Nxeq6uI2wpWKpRzRmkaybjyfgmPtQ/KTN7z7nma8Rx7qXa5X82d/kVLE5RPxmlN
         dqYg93ciBCAY+lBwxBsF3pIOW5xt3GnV5ylh38ZtqUYqiWTSMEZj5vCPbwJqidxslcxn
         MnLQ==
X-Gm-Message-State: AO0yUKXRlEdHTMIKzunTJuohqsCDiFF/ZyALicDSRdHfkV4tAzzKTD6t
        TEflX5y4qp0tKZPcEK1g1caSPA==
X-Google-Smtp-Source: AK7set+eRrg5SBWT9mrl9Tl4A+lrVSioOw8rILTAatf+MN0B6uFdDlAl4lwhS8AFubm3E2HKQbUUHQ==
X-Received: by 2002:a17:90b:1e46:b0:23f:8752:98be with SMTP id pi6-20020a17090b1e4600b0023f875298bemr3535836pjb.4.1679485547584;
        Wed, 22 Mar 2023 04:45:47 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:d4c3:8671:83c0:33ae:5a96])
        by smtp.gmail.com with ESMTPSA id jd1-20020a170903260100b0019b0afc24e8sm10386649plb.250.2023.03.22.04.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 04:45:47 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v2 03/10] dt-bindings: qcom-qce: Fix compatibles combinations for SM8150 and IPQ4019 SoCs
Date:   Wed, 22 Mar 2023 17:15:12 +0530
Message-Id: <20230322114519.3412469-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230322114519.3412469-1-bhupesh.sharma@linaro.org>
References: <20230322114519.3412469-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the compatible list available in 'qce' dt-bindings does not
support SM8150 and IPQ4019 SoCs directly, leading to following
'dtbs_check' error:

 arch/arm64/boot/dts/qcom/sm8150-sony-xperia-kumano-griffin.dtb:
  crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
	['qcom,sm8150-qce', 'qcom,qce'] is too long
	['qcom,sm8150-qce', 'qcom,qce'] is too short

Fix the same.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index e375bd981300..90ddf98a6df9 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -24,6 +24,12 @@ properties:
         deprecated: true
         description: Kept only for ABI backward compatibility
 
+      - items:
+          - enum:
+              - qcom,ipq4019-qce
+              - qcom,sm8150-qce
+          - const: qcom,qce
+
       - items:
           - enum:
               - qcom,ipq6018-qce
-- 
2.38.1

