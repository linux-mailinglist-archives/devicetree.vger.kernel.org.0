Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8184452FDC2
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347279AbiEUPVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355398AbiEUPVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:21:08 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03693BC93
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:21:07 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id u30so18789487lfm.9
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wMN63lCZacnROjhfQZw+Egiz/efYaTo/kam1dhAdrNg=;
        b=ZOApLFIQO7+wtMWocm5qLEkFDwlKghTWb6bhel3qLuXKx5Lle3xCwoKUXT4sQw11ar
         2Cwiz8iXMb0TfYrKkwmAZ9YgaDe74tE5gtcs9DGdglWqVdkGMlNfjEg/JliYeYXzxpVC
         nEwwJuv6EUY83hdA44hXerl8ep/IjbXraHse5lTJ+OVfKdJLNchddL05jSxPhjupqdzS
         jX+5l7dW0BLUPXYA9nWmtfL+/HL78OeS+UD+URwxBfKxJfwJB0CqM8mbburFtcVAKeKd
         zmQaoFXIrSY2Nqzb4dXG/0V+Z58grlFSh48JMu8fdxywh8tup3T4eRIjRdj7Eq+qPZfv
         uh3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wMN63lCZacnROjhfQZw+Egiz/efYaTo/kam1dhAdrNg=;
        b=LKaoYArLRm4C8qmhlgbPW/MJPlgN2U8xElZFS4zPUB/wJfmBjuw6BayVGTyoRKWRj7
         C8OwkbyDB6tOaLmVdD5pfh7hlZVx71OTHmVN5LndeGA+i9G735QK6VQ9eVXEaDFY8YwK
         0vNagLY8RalLjGK8UF67fkQ0vfllZjpfs6tyK09/CL8wrLs4e4S2F072XC4jk9eDSr3/
         gEAPY1t7AvU9EFGY6c09ux/WKeOgPe5Y6f7GMMeOisXlesZZ3RgJ7HCgi2jnTVxLDxDw
         /ijcCvXyGmegeJbVEpaqiap3oSU/T2wLkp0HPK0g2nqiJ3TMo6e8As/PgO0Er2uayeRs
         GEBA==
X-Gm-Message-State: AOAM530m0DtBcVaDsaUAU6SiJZflZ4a4CkEFobzMnsOjQSfi+w+ouYzo
        bB3ak2GRdOF8OSXY29IYXXxibQ==
X-Google-Smtp-Source: ABdhPJzv1zSLl8fRm5s9ae/qAigRlmLvW1svY/iPMTqvppD24ELjYOmD4G7vIhs6VNx/6oTs6TqbGQ==
X-Received: by 2002:a05:6512:4009:b0:46d:31b:e05a with SMTP id br9-20020a056512400900b0046d031be05amr10676695lfb.528.1653146466578;
        Sat, 21 May 2022 08:21:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([94.25.229.156])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e92c8000000b0024f3d1daeccsm739933ljh.84.2022.05.21.08.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 08:21:06 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 11/11] dt-bindings: arm: qcom: document sda660 SoC and ifc6560 board
Date:   Sat, 21 May 2022 18:20:49 +0300
Message-Id: <20220521152049.1490220-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
References: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the Inforce IFC6560 board which uses
Snapdragon SDA660.

Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 129cdd246223..ac4ee0f874ea 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -41,6 +41,7 @@ description: |
         sa8155p
         sc7180
         sc7280
+        sda660
         sdm630
         sdm632
         sdm660
@@ -225,6 +226,11 @@ properties:
               - google,senor
           - const: qcom,sc7280
 
+      - items:
+          - enum:
+              - inforce,ifc6560
+          - const: qcom,sda660
+
       - items:
           - enum:
               - fairphone,fp3
-- 
2.35.1

