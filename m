Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35DB56C497C
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 12:46:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230291AbjCVLqN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 07:46:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjCVLqA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 07:46:00 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC57F60ABA
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:45:53 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id x15so7893021pjk.2
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679485552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9gxxdsDfgbWi0NQQ186kXUJvaTNrijmTWV7yOKYXxI=;
        b=qK3kPSiMKprxM4J5K/OfeRxaztw/KVwnscrBgzAkljdru/sg+reZSY6dX8H4KP1Rlo
         Fb+wwSMVTC+u4kX460OPNGEZMepcgiWkwxnW9NFNcy4SFY9jKHG0oIjz/5Jrm46uM86I
         P+Ymy3vGcaXEFQtX6LtYy49hDMAs/sHIdQc66P2UOxJxsbYxq4mZzUWo8LeiuoKAhcKY
         RWDmhoiyz1iOl5vIKdOlQeMYLER1AF94ehNM53s07AU/VsFjxSCyp4TZeOwnfbmwXDDR
         8dd4vhv//DeihB0p2ZN4GsEMpbwvNF7/ukYwVzv37g+s2UwGcDfMuXuk+0uu1AhHJyXN
         d4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679485552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T9gxxdsDfgbWi0NQQ186kXUJvaTNrijmTWV7yOKYXxI=;
        b=8B1Rad1n1d9tbAvZGEtVufQhjCYp11g6585EyhYEHgDGbe6zyWs+s/MMSbFp+mu2pJ
         Tykp5rCh2SCY7BOr3OBdAFtHm0SIzX+XEQFVp57SaBYDQrPlLFfnRlsHz2OxINwxebBv
         4uHFbDxXxRgYhcAtiOHTG17WsZZBEZAxr/fG3CmTz2ZdfmXF97DbH42YLdil8zpTMHgx
         mkHnhV1uqpCKJSugQDl9PJL3WdEbuUl8GPsrhYHKY7DP8PUF2VPzHHlbvdJWjsLzgJaJ
         g9upvjK/4BlBYAidbFI+p/uPMXmZLd8bYlnY7oC9wCS9txT9kuNa/itOJDc6KqnQqqN+
         tWrw==
X-Gm-Message-State: AO0yUKXS1TjOToBZBzPb0TlsG6vXzqjLEwqQWRJ4at/YMLPoMWfDbfir
        C8TIw2BREPGqY4xiHwtVgI2ECw==
X-Google-Smtp-Source: AK7set+BbVZhTaT+ozZ3gU5OsbNyuPE8snBUBxqh60ElSVeesh9U8dkkDVn52TWKrL+Rt+Rbj0OVgQ==
X-Received: by 2002:a17:902:c40b:b0:1a1:d949:a54a with SMTP id k11-20020a170902c40b00b001a1d949a54amr3402037plk.58.1679485552558;
        Wed, 22 Mar 2023 04:45:52 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:d4c3:8671:83c0:33ae:5a96])
        by smtp.gmail.com with ESMTPSA id jd1-20020a170903260100b0019b0afc24e8sm10386649plb.250.2023.03.22.04.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 04:45:52 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v2 04/10] dt-bindings: qcom-qce: Add compatibles for SM6115 and QCM2290
Date:   Wed, 22 Mar 2023 17:15:13 +0530
Message-Id: <20230322114519.3412469-5-bhupesh.sharma@linaro.org>
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

Crypto Engine block on Qualcomm SoCs SM6115 and QCM2290
do not require clocks strictly, so add compatibles for these
SoCs, indicating that they are similar to the flavour
found on SM8150.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 90ddf98a6df9..82ea97568008 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -41,6 +41,8 @@ properties:
 
       - items:
           - enum:
+              - qcom,qcm2290-qce
+              - qcom,sm6115-qce
               - qcom,sm8250-qce
               - qcom,sm8350-qce
               - qcom,sm8450-qce
-- 
2.38.1

