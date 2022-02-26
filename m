Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E44E44C581B
	for <lists+devicetree@lfdr.de>; Sat, 26 Feb 2022 21:57:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229663AbiBZUvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Feb 2022 15:51:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbiBZUvS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Feb 2022 15:51:18 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F20412668C7
        for <devicetree@vger.kernel.org>; Sat, 26 Feb 2022 12:50:42 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id v22so12074233ljh.7
        for <devicetree@vger.kernel.org>; Sat, 26 Feb 2022 12:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0GRBJZo/Dd5vHt5WPNK28fRIBBukyH/tjCF0hRWEwNM=;
        b=jgtxod9eCCwJP0O+bqg4N1D8BRUX9grn2dVsz1aWWFxsDQIF9H6SKMbmXVThpgA1D3
         ++lcxqm3I6zWQHXYQPfcJ8WkPOVvWIh22rFuR84iaDFzZwkFdMxUTGFqQ/HnBzRiK40Z
         vYQ7ikwhpcrVJxOMdlJuXGTKFkRuku3b+lbfs38+xlj7QI/3z9UNPa+Io7NuwXtOoG6Q
         h4Vm39sLRFz1jP9tecTp3SsQWndPJEG9KxM8aR9tuhxSG2zYMwCXW3YHhJ0QTzKAZvFJ
         JNX5M4DjTkpPHgpcjJELFHd3e1UCek3udlu7nAdkw9M8rrqx98rt9zihxKoPMi7vmfxh
         5WcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0GRBJZo/Dd5vHt5WPNK28fRIBBukyH/tjCF0hRWEwNM=;
        b=1S+qCDesktZPcvq06SPoTofcRY4Echcw9pmO/DAE5j5Z4+NzfbF5UnSc8Ed+GnEfB2
         VCgYEUsW15w67qx7v72x1wIX4/0qdEXAVIz1qpxTBG/tJotbblvE4+2c8uQjZx5g5Nig
         11ULzsU8ExBt6TycxrAwlyhkK50vPImiig65eGP31Kq7qjJVrBfbJtL9Zl0CbMHr0h0w
         YeN/luBLMxnBeGNN2xCGEeqZ2M+G5hxJwaHRRRaEtMYRkvGq7X8JxWPynN6QH/CEVtq1
         3DZXC8S6MZwfPXtDFbi42HYKPeEA7VMrfrobShoyZYErocOMz1RPpOjxSQAFFlZBAa2D
         ogug==
X-Gm-Message-State: AOAM532ddLQqxuaGzUHBY1F9Z/cqb4tTvD53fw5oV6h7+Vek1T7cu0RH
        JgIAWOEt0A4qlr//LvL8d2VhEg==
X-Google-Smtp-Source: ABdhPJxDYFBNQ57N9SbX9ECa/es814EjmlD/G9jwbwlD5jZqMmPyOcKDQq4u5Qq7Hv+Yc+a3Pltciw==
X-Received: by 2002:a2e:740e:0:b0:244:c716:159b with SMTP id p14-20020a2e740e000000b00244c716159bmr9095103ljc.95.1645908641272;
        Sat, 26 Feb 2022 12:50:41 -0800 (PST)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m27-20020ac24adb000000b004433bbaa3fdsm527162lfp.174.2022.02.26.12.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Feb 2022 12:50:40 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 6/7] dt-bindings: mfd: qcom-spmi-pmic: add pm8450 entry
Date:   Sat, 26 Feb 2022 23:50:34 +0300
Message-Id: <20220226205035.1826360-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220226205035.1826360-1-dmitry.baryshkov@linaro.org>
References: <20220226205035.1826360-1-dmitry.baryshkov@linaro.org>
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

Add bindings for the PM8450 PMIC (qcom,pm8450).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt
index a461ec2f758f..c77711614925 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt
@@ -29,6 +29,7 @@ Required properties:
                    "qcom,pm8150l",
                    "qcom,pm8226",
                    "qcom,pm8350c",
+                   "qcom,pm8450",
                    "qcom,pm8841",
                    "qcom,pm8901",
                    "qcom,pm8909",
-- 
2.30.2

