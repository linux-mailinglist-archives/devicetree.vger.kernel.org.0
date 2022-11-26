Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10CF06395C8
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 12:46:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbiKZLqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 06:46:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbiKZLqg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 06:46:36 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C59A2035C
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 03:46:35 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id cl5so10139184wrb.9
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 03:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nSQin7QU7m3wea+By9/0m4C67OFHqy7bfbLiJ+YSrfk=;
        b=GRqDKzIxtbk9vYVbhHOmsUiVNZiDuN0XWJuSrZXdd1v0vUYgj2tQsEs6HDeUYlvFep
         G+Thv53uLTL2PEMcLrTLH1YbIHpgiJa08MEOr75/RYaqdkETJ2hV9MLajVHpuyoyeXQF
         RCcJDD2Y9Sxh0GPdJ2RwHa4Xyz164ObvmbvlmN3UR5rznjA8D0z0mbFsY1mUaW4OrzCW
         ZZDl3ES0LKYJR0QNQs1pF0Vg7q4/JKa8YQx67Z/EGd9ikMa4dFSSkHdBbMzr9L/y+q3W
         0fnKq3RBbcTABigurcv7mYafUde6xsknKeoVLH9iGIqsTIezJCtzNdDfOV8NHl14rz+h
         8Aqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nSQin7QU7m3wea+By9/0m4C67OFHqy7bfbLiJ+YSrfk=;
        b=kG2fL0NWZyKrx3uu9k5GlbCsSeHnBFvO6YVNcQ26G2IJz1kZYpV590nH2B3LR0TY4V
         +h7G5o5Jx7y+xU7QqKmnjy5SdPcyYKlpj3OTDX5H4EHO6aDfVJp2CkPK2Pjaq75ccEfx
         EPCDZaKxJ0XU6M5Qvfp1J8BqFTRovSADRr+vct9i8FzfaKhKVmj9vQQcntRP1n5Q2qlR
         BOrOz5fY9HWgs6Y8AWXpHBI814ctqJiYNyDhKQwnCALZuBtKsW4SyCJd3iopsBvJtLzT
         Ddr3n9gYdPMZYdjsW4PMOk3VRHxkxlboxV7Gv6uaGfliDg1Wnia5zk/e6vjtlMO9RZlm
         HYLw==
X-Gm-Message-State: ANoB5pnqqzCTcK+BlGuW0+I5AUWVAKKClyUAoGbe7ajoFWJygjwloxlp
        UNbxDazpNJil0dWEtKZ6KtkwkQ==
X-Google-Smtp-Source: AA0mqf5Bp3tlncJLdXry0HSOWc2ZdqBNmYbdAVWJ10SSmuUy+AeC8Kibv2h9OG8C1Yv4uqD4AsdLpg==
X-Received: by 2002:a5d:4090:0:b0:241:f675:c8cf with SMTP id o16-20020a5d4090000000b00241f675c8cfmr9889209wrp.480.1669463193484;
        Sat, 26 Nov 2022 03:46:33 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id h5-20020adfa4c5000000b0023659925b2asm5942621wrb.51.2022.11.26.03.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Nov 2022 03:46:31 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 01/10] dt-bindings: arm: qcom: Document SM8550 SoC and boards
Date:   Sat, 26 Nov 2022 13:46:08 +0200
Message-Id: <20221126114617.497677-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221126114617.497677-1-abel.vesa@linaro.org>
References: <20221126114617.497677-1-abel.vesa@linaro.org>
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

Document the SM8550 SoC binding and the MTP board.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 7637cf27d799..a586a38c3461 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -68,6 +68,7 @@ description: |
         sm8250
         sm8350
         sm8450
+        sm8550
 
   The 'board' element must be one of the following strings:
 
@@ -818,6 +819,11 @@ properties:
               - sony,pdx223
           - const: qcom,sm8450
 
+      - items:
+          - enum:
+              - qcom,sm8550-mtp
+          - const: qcom,sm8550
+
   # Board compatibles go above
 
   qcom,msm-id:
-- 
2.34.1

