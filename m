Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1045F4F9F2F
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:31:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239864AbiDHVdY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:33:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239861AbiDHVdX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:33:23 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E38E2BE6
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:31:19 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-de3ca1efbaso11066503fac.9
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wAjxJ00rzVd7933xOrVtD/yYO0OUizXN18WkzZFM9PI=;
        b=bqBQGqZWhIP3WbdI8SHEDWomaWcxao9qHr8rCwd7K80SXl4n0POtJLGVK7w1E4pxqm
         6R7l/tcs/67ZhhDnH4mg6O6bi++sTJIqMYwmQtoYvwjBJ7rhOO7glW9w4IYJkcbrYbcr
         ukwoAr38jsqOcTCWQLe4bioFyR+e3araP0RIfH+wCVdMRnvzKTcnHm7xX0NvnOIQ00cK
         5F3hZ4GqDrFiwsEbMzA/Yp045zQPmi9jTF5cJ2mPIJv6IJwx4XzKjj5UWYCM0IM85/+J
         sBTJ3+Yp57FR+wc0lAVvgTy/pc7nf42b5fb7DniVvuxtDQA1FwlPgusbih8NGJUfNhw9
         HDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wAjxJ00rzVd7933xOrVtD/yYO0OUizXN18WkzZFM9PI=;
        b=ea6+0bT3kBMKUAKJnzKw1hJRV2v+UQZVp+o2J/K4t5agETZaFzM56yui0ORcvUJoeI
         Eur6mODxX1EfArkHjnUqIUj+eXQUfWVuaOF/W5DdpC3PzfCbbUKCL1kRf9sLkFZMusFv
         vff+duhe88HZCHiQ6UzVJcNBdOzU4NRggr2m/8fUJ/3aNu+XG0lXR+sjJ+vu+QzPEO0j
         IQOl60dzQGLUZ5KOe16GbrtIMnPgrND88oVv0QuJ79/cbdOhsvuBa6wbAnaQgbpYrPnP
         nP5j3RgL9fdUzPe1ujOjk7gGxjB7rBQuUuJZrpHG9IzP5AUTHbXSAcEzfU6mg06fxRUS
         4Ndg==
X-Gm-Message-State: AOAM532DcmFjoASX3BiK4XlDfHya+uaLPrtoCW/2oUeeUq53cEEaOnPn
        H7p3fcUYPkSBvmXYRw1Gv+deCQ==
X-Google-Smtp-Source: ABdhPJx03+oZ7ijUH3UF+Brex0fuUtkrjtUO/nfpOmQ23cV2t8IJnSNHez/UYG0TZeVdPP0rUNG+gg==
X-Received: by 2002:a05:6870:910a:b0:e1:ee2c:8528 with SMTP id o10-20020a056870910a00b000e1ee2c8528mr9131080oae.134.1649453478588;
        Fri, 08 Apr 2022 14:31:18 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id m126-20020aca3f84000000b002ef895f4bf8sm8983536oia.24.2022.04.08.14.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:31:18 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 3/3] soc: qcom: llcc: Add MODULE_DEVICE_TABLE()
Date:   Fri,  8 Apr 2022 14:33:36 -0700
Message-Id: <20220408213336.581661-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220408213336.581661-1-bjorn.andersson@linaro.org>
References: <20220408213336.581661-1-bjorn.andersson@linaro.org>
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

The llcc-qcom driver can be compiled as a module, but lacks
MODULE_DEVICE_TABLE() and will therefore not be loaded automatically.
Fix this.

Fixes: a3134fb09e0b ("drivers: soc: Add LLCC driver")
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/soc/qcom/llcc-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index a76d58195637..918bfd0df0e2 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -809,6 +809,7 @@ static const struct of_device_id qcom_llcc_of_match[] = {
 	{ .compatible = "qcom,sm8450-llcc", .data = &sm8450_cfg },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, qcom_llcc_of_match);
 
 static struct platform_driver qcom_llcc_driver = {
 	.driver = {
-- 
2.35.1

