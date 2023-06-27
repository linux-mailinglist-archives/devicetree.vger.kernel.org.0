Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00DCF73F05C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 03:24:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230113AbjF0BY2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 21:24:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbjF0BY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 21:24:28 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18671173B
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:26 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4fb863edcb6so46971e87.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687829064; x=1690421064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bs81HTVaHaI0QtFvNqp8md3YolEi3LIHCJ0/e4Fo2aU=;
        b=MdQQdYSTCJ3FbRg9mxeSqajqVDJpU7cVJgeWuRKoqk6xslcz9abmgFcaYlgfc7xUWZ
         mV5jS1qxv2Heu4eB4tOIRHvL7y0fmdTpX5vqesxAJfrfgW2ityRNxO6S/39CLMK/+3wy
         EJmtHdJF65KXqcCEZyrlLai84JVmqh+O/53K6XByTNgsbgkL0pXcVtMzAJuB6kQ3kf19
         /PAVIC30g0ViisLLeU+sgQH0I8PAE4gxanwlWCZQb+rh6L9+oe73DIa9Xjl//01PnRlg
         lWGrPFVklqxnv1cAduUIaS5+rZo6kfWDsOMr9rKEPG4RmeJSZJfKbfAX84hC6iaEfB5/
         g5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687829064; x=1690421064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bs81HTVaHaI0QtFvNqp8md3YolEi3LIHCJ0/e4Fo2aU=;
        b=VKSNUp2Lf7sn8xwy3NL8aaLf2SCPzlZnAMmWX185ImeUfw9D/29zTC2hRF/FaXVOn5
         7srMT9z31Xtv6p05tQy7R9v2XPJkePq2GGvalGIhJzcHM6Kf45IJIvZBQ6neiskCXbbh
         2pBbMyH35nkCwLEa32XMjn8N3TEJcsae3N7u123Gpsh1yysi3/7pqqvczW8ASTcklf4g
         hHiovRAOvPliNmzqDnE3Z42Rbenq6ghkEQCEigChbhzLJa2QMvRWeHeDwbvi/7BD2Ub/
         xB8OZOrF7uohV8wqJx5lj6QVLGIp9he1XQfCErmaZ/3CyZftERKQLjigDoKjwGnGSkJL
         dxbw==
X-Gm-Message-State: AC+VfDz71ePhCd99O/qj6sMwgO+dHHaf2wSq1/R3XNlb2xCIKhgOpsd8
        HYGK/u+j4NO6ntrfYa9JWVMWjQ==
X-Google-Smtp-Source: ACHHUZ6lu+thKCxBos4l9j1vR97XFVIRBnZcOXCWsbP6vE7NEATrk07cjIWVrUlY5qi76ibWyMx0gA==
X-Received: by 2002:a05:6512:280b:b0:4f9:5592:7450 with SMTP id cf11-20020a056512280b00b004f955927450mr3451547lfb.23.1687829064221;
        Mon, 26 Jun 2023 18:24:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z7-20020ac24187000000b004cc9042c9cfsm1331301lfh.158.2023.06.26.18.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 18:24:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 01/15] ARM: dts: qcom: apq8064: correct XOADC register address
Date:   Tue, 27 Jun 2023 04:24:08 +0300
Message-Id: <20230627012422.206077-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
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

The XOADC is present at the address 0x197 rather than just 197. It
doesn't change a lot (since the driver hardcodes all register
addresses), but the DT should present correct address anyway.

Fixes: c4b70883ee33 ("ARM: dts: add XOADC and IIO HWMON to APQ8064")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index d2289205ff81..4f4393e11580 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -766,7 +766,7 @@ pwrkey@1c {
 
 				xoadc: xoadc@197 {
 					compatible = "qcom,pm8921-adc";
-					reg = <197>;
+					reg = <0x197>;
 					interrupts-extended = <&pmicintc 78 IRQ_TYPE_EDGE_RISING>;
 					#address-cells = <2>;
 					#size-cells = <0>;
-- 
2.39.2

