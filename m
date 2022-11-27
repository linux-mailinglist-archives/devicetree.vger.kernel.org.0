Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8088C639CA8
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 20:56:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiK0T4n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 14:56:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiK0T4k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 14:56:40 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8E89DF5F
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:56:38 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id e7-20020a17090a77c700b00216928a3917so12034938pjs.4
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6fFn/YKE8jPSBUZvBBUeVp9MQ2tiONJsxtj+ufAwhww=;
        b=ochlP3mYMyIUiJmaI0D7X7oaduxw2wgrT7rxHtg0Ojn6dw1dpfgSx1kDYyp3lby7PQ
         JsWNT/OASkrthRpWr/u3wiv7P4W4LZ6FR+svfw9Uvz1FlvWlZBYmrLPTj4GI5EDJrb3Q
         KPoHBU9SvoXj4V/YLsWYvwC+BZ0//JM6/HELh3+tGmGedAAb++2Nrqg9mnfcwvXNMCuZ
         qmkI7QVITLFzaPdFhKvJoxOIDm0XNLJRIsGf8ZV0ka/qdwEGIj6uZuYZOAhXuzkdka5O
         Rwoi2Ujis+OeUYvew8K0Dv3Cmpc/Dgqkq+T820eI+z8L77Cy5qSqWCtio4LMjaI7FpZ4
         FLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6fFn/YKE8jPSBUZvBBUeVp9MQ2tiONJsxtj+ufAwhww=;
        b=oFxFaWTNnguirc54J5OefzEKBpyVpbRE6G8tIcFDOxkXjvQLgjRy3qNhDk09WSNAm0
         80qUtQCNPMMFoovywIbF4jxWE/DDLezx36VNWR5YsRKLbYJfBi5YRwr/HD7moZjcHfCt
         tIewmpDGi8qG/Vwn1mIFjuDhXHVShm1lDad97d4pHcrbGKVAoGmXz7EC32ydiwSQoel7
         cIcA1FEIxOlbf9lajri8/3ZZRfZ0MY3q7WEBydyids41yQHgfoN+MoFbeLj9yDpYzeDb
         E9bLfVqSCty6paV29p2WD6YB1puDSazM5fjQk6+qFfpeKVpEKz35gKGkE5f9HZSIQ8Bs
         snAQ==
X-Gm-Message-State: ANoB5pm/sNzwf8yK0QiXfQijrxV6cfCufAzknjh3F0g7N7L02nfB4AZ9
        BSfKcs+66mzxffnSNsDGz31u3Q==
X-Google-Smtp-Source: AA0mqf4otZZgHImjhiYMefW0riYu3ZM2VvHXjOJFvthJzin/lETGrkWlF4Kxn6KbVm4QutRluWdgxA==
X-Received: by 2002:a17:902:cf03:b0:186:5d7e:7ca8 with SMTP id i3-20020a170902cf0300b001865d7e7ca8mr28080223plg.74.1669578998284;
        Sun, 27 Nov 2022 11:56:38 -0800 (PST)
Received: from localhost.localdomain ([223.179.131.184])
        by smtp.gmail.com with ESMTPSA id n1-20020a170902968100b00186616b8fbasm564636plp.10.2022.11.27.11.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 11:56:37 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     jassisinghbrar@gmail.com, devicetree@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, agross@kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH 1/2] dt-bindings: mailbox: qcom: Add SM4250 APCS compatible
Date:   Mon, 28 Nov 2022 01:24:17 +0530
Message-Id: <20221127195418.1506876-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221127195418.1506876-1-bhupesh.sharma@linaro.org>
References: <20221127195418.1506876-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Qualcomm SM4250 APCS block.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index f24fd84b4b05..05fbef6486fe 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,sc8180x-apss-shared
               - qcom,sdm660-apcs-hmss-global
               - qcom,sdm845-apss-shared
+              - qcom,sm4250-apcs-hmss-global
               - qcom,sm6125-apcs-hmss-global
               - qcom,sm6115-apcs-hmss-global
               - qcom,sm8150-apss-shared
-- 
2.38.1

