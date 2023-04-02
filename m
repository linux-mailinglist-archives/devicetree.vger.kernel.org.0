Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE68E6D36EF
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 12:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbjDBKIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 06:08:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230430AbjDBKIB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 06:08:01 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CA3F2B0CB
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 03:07:42 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id ja10so25390448plb.5
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 03:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680430062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ns2jPDGRWz/czfPYAkU0ANfXA6YC0owDF4gxQpajwV0=;
        b=xfXgK3qPqZv33ZCRsFAI/dxIgHUBk9UciMyK4AAaL6NGWvIdyrYKpTCVICXpcDv9o3
         baL8j22lLNyKQiPAy+yANoGY8BSSTtOY8827aoXHZyDiIzA08bSoa3+xWVPMzbnuGNkr
         M14F19AzW3sgpDsoaORTkJIFRAHZmI/QXKC91ohoH4UHGY0sqW6Pdk3FjHsBBloLTuls
         eKya/6fDGno2nm+k6HyZJuZ7A8YMiIXRbQcah0U6oZPrRPVbqRq+ZKXhvkP9T4veU1Ji
         Rthu7TQnhnmXEsfeNEVcKaNQBoRcm5F/S5iTOJ6MgjxmjUb8D6PWVJqLrHUo/BM9NEdz
         RbIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680430062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ns2jPDGRWz/czfPYAkU0ANfXA6YC0owDF4gxQpajwV0=;
        b=bcsHNVUUrHMw2FF44qSmmDh/CixX6Cig5jIWyZYortw6TUE4UKGcU5IuhljXeEVIJF
         1JV+5IApQmpNkqRmDHfIOpPx37g2Fiy9BrtIIQ0qD07KaAxX06NtnWarwZhspoLmj7qf
         jzfc0r/zJBkrh/d5241vwSdpMfS79r0sprd+h1zhEkGjJihziyEC8/M3fcLRKeIF4M9t
         7iATtGMe+fnal4VzgMAs/6vTSPdlcXc5mpj3oeXHbOpAltdJdxe4BIoyNeKkbKGlKjab
         cZ71ZpSFNoJ6K6TsFj6zPfeq5hyRQxvfbyue8Gt1WUoHKwV7FVsJhCxUBgaSdQY8u4Up
         bMAg==
X-Gm-Message-State: AO0yUKUrtFGMOQ07nX/6OfMqAHu6Rn3xMQNcmOeIKG8GRv88hQAPwX2H
        vc1RqN4+zlpjEjJgRU4ytdpljg==
X-Google-Smtp-Source: AK7set8/k+S1+Gow66T1mn6KMnnFC34t1zsT+r597uKySIZ9JC0a1EiCunte3PoH8IdvJ/jWFfAs9A==
X-Received: by 2002:a05:6a20:4ca8:b0:db:7382:cdd4 with SMTP id fq40-20020a056a204ca800b000db7382cdd4mr27445442pzb.6.1680430062097;
        Sun, 02 Apr 2023 03:07:42 -0700 (PDT)
Received: from localhost.localdomain ([223.233.66.184])
        by smtp.gmail.com with ESMTPSA id a26-20020a62bd1a000000b0062dba4e4706sm4788739pff.191.2023.04.02.03.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Apr 2023 03:07:41 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v5 05/11] dt-bindings: qcom-qce: Fix compatible combinations for SM8150 and IPQ4019 SoCs
Date:   Sun,  2 Apr 2023 15:35:03 +0530
Message-Id: <20230402100509.1154220-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
References: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the compatible list available in 'qce' dt-bindings does not
support SM8150 and IPQ4019 SoCs directly which may lead to potential
'dtbs_check' error(s).

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

