Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0AB70A203
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 23:49:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbjESVtf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 17:49:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230342AbjESVtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 17:49:15 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D1961716
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 14:49:02 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-64d15660784so1846139b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 14:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684532941; x=1687124941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpPwFY/HaOY0pRrudkg3nKNQcds7yLTTcGxLx+E7yvc=;
        b=jjmhfnpPE7iSJV/da62eYusKheKlOaGc+S/Cij0YHoq3ZjvflgjFoPddH7tIdzns4w
         9dT5XGqv7+5ScssjXQQrC1UV7KvX9fwr9G027fWtCtGmu7vwWj5wfxtrSvkGNP+3Qsbq
         yHJzQXvjJx7CUwXrM9EIZZnv2WzSzaljNfgn9sntRPE5k/ucQBiI7fahD/NRmYMzLEpN
         YYYugmcanF5UpbVajMztA9+uQEyWPmOlOEeslBHlFX1FTxMzDpjiUIzJo4MBUXCLqwU1
         bHyP8ZBI92FZtSHfVhcpO8L5rpV0TU8XzGnNARgNVgd2fw8H3clAI7pcHiwzWjXiwCT2
         q07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684532941; x=1687124941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZpPwFY/HaOY0pRrudkg3nKNQcds7yLTTcGxLx+E7yvc=;
        b=esdgX32B1E+lIhhelMBD0FGZW3F3dvY1fVdkT6q8fosonjifnf6p+EVQVdPQlUlckj
         GIdoHgH6gkxDFq0Pp+RejS7A17IDg6igKGcN3eHEi0Z+3EVkgIIWbBIUDiI0vGcz6Lp4
         4mHsGuVZtiZUjoytJDRCEJ52uT16UdQ1HKcR0JGQ2ACFHo0tKMuTkw1VJQhzsYzDsu+c
         26uo8ELLXv5eEu3PBNo4A26uVtqakcnIIqE0nDjoLsmfk1To5LimwmJ1RvosXBOlVfny
         HcBGFLnFKzuLoydXmRbfGP+o/uobBUpTxY9fmS87vD9TcwoQMMVMTCvJAv/s9ZgoDS5v
         v/9g==
X-Gm-Message-State: AC+VfDxRSO/z6Nb+0iBKUYs9jl5HHaA6rpMMcIanDbdcctRhU/UpVs/6
        6wGwQr4xsV9E0wQ9IDV/mie8JA==
X-Google-Smtp-Source: ACHHUZ7kBjKrgco+DDFIs3NYdZthA+gtIh0n+5MFGgGLnoRqsf1gErGWqWVjQY8bbIhtqwGOzPj7pQ==
X-Received: by 2002:a05:6a20:4ba5:b0:101:cf58:e666 with SMTP id fu37-20020a056a204ba500b00101cf58e666mr2682367pzb.56.1684532941031;
        Fri, 19 May 2023 14:49:01 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:d309:883d:817e:8e91:be39])
        by smtp.gmail.com with ESMTPSA id n14-20020aa7904e000000b006470a6ef529sm144891pfo.88.2023.05.19.14.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 14:49:00 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org,
        stephan@gerhold.net, Rob Herring <robh@kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>,
        Linux Kernel Functional Testing <lkft@linaro.org>
Subject: [PATCH v7 05/11] dt-bindings: qcom-qce: Fix compatible combinations for SM8150 and IPQ4019 SoCs
Date:   Sat, 20 May 2023 03:18:07 +0530
Message-Id: <20230519214813.2593271-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230519214813.2593271-1-bhupesh.sharma@linaro.org>
References: <20230519214813.2593271-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the compatible list available in 'qce' dt-bindings does not
support SM8150 and IPQ4019 SoCs directly which may lead to potential
'dtbs_check' error(s).

Fix the same.

Fixes: 00f3bc2db351 ("dt-bindings: qcom-qce: Add new SoC compatible strings for Qualcomm QCE IP")
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Tested-by: Anders Roxell <anders.roxell@linaro.org>
Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
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

