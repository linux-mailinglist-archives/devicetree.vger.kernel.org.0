Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C40C65ED5E
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 14:41:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233131AbjAENlm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 08:41:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232917AbjAENlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 08:41:39 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6960932EA3
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 05:41:37 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id u12so34997719ljj.11
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 05:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PW4JYNWiYq9bE+2bC5NYpOaosg0SySsEGmX3Ei9VgRo=;
        b=mhhkznfkqFPo3WlAesW9G6Fdsx0WMyMHOqwqnhGiOlqay8UEeLnbFbHNeIrbAufsxs
         Pfa9uJAQepio9/ltoHVd0YR5Sv+zKO5om8FFnB9rq5e8eZqHeme62AhomX316JwfFaVr
         AX74qddpQWX7T4u9NpnPkqmIRxNTYOBKNHqWUHVjfSQ/LOT1CTAfQAlf7AQlahD1q1U2
         M6MSgRGkXx1mXo12E3/f3OupVLWs3ZHYY8xuoDgD5RiZ/xtRQ4OzA1ZwoSaiu0Nl3ETI
         t48/4RqUeSXq3ez5w3Li9/3zDTIm2uPyhWxHG/yZkNYBK4Hvyq96CeHIoBOaIOeYJiX1
         /KTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PW4JYNWiYq9bE+2bC5NYpOaosg0SySsEGmX3Ei9VgRo=;
        b=WxJGOkxK1Fwnj1SkAWmU1vplnSWBEdRhw0pS8fpQKO6/3E3AJew5NUGk7gBungiW7G
         QJAW+fWZS5o5KM1kYgKT52ZXajDOxeXLqNl1oGavKze2HpKZlkGORirG2q5ET70do6iD
         avVkCKpzgbKFT4TRWH8I4m2OOZR2l7UxgV4BOn0T2aVn100hC+rJNSFwOKrzKDUz/xtx
         9ta6XgCLnACooljOxaghhsuI4DcMV8supI86/i6GCMhu8V5rY7Gmtciu0SUWT7b6eQDq
         Tiwg9WXq89N0VqZmvCDPN/87GxLWp4+0gIQLBsvsFLTwUIqfbUzOI24l9mHKNnHJPCfC
         AYkg==
X-Gm-Message-State: AFqh2kqo14yusAQbLIMdlFo7rxAoIzLTQrrXSWL4RyxRchjLtNKuPMaW
        Q7wpyIZLQIH8+dI7ILSaVor2Dw==
X-Google-Smtp-Source: AMrXdXvndU5txCiuc67JFXmNI2NaWkM1Cl2DlyyWOn5lGBsjeCKCdwov68s4U7o9C9MIPEVp1AHJxw==
X-Received: by 2002:a2e:95d9:0:b0:27f:bf70:e55c with SMTP id y25-20020a2e95d9000000b0027fbf70e55cmr10196468ljh.28.1672926095759;
        Thu, 05 Jan 2023 05:41:35 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id bq25-20020a056512151900b004b592043413sm5461315lfb.12.2023.01.05.05.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 05:41:35 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 02/12] dt-bindings: clock: qcom,gcc-apq8084: add GCC_MMSS_GPLL0_CLK_SRC
Date:   Thu,  5 Jan 2023 15:41:23 +0200
Message-Id: <20230105134133.1550618-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105134133.1550618-1-dmitry.baryshkov@linaro.org>
References: <20230105134133.1550618-1-dmitry.baryshkov@linaro.org>
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

Add GCC_MMSS_GPLL0_CLK_SRC, the branch clock gating gpll0 clock for the
multimedia subsystem.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/dt-bindings/clock/qcom,gcc-apq8084.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-apq8084.h b/include/dt-bindings/clock/qcom,gcc-apq8084.h
index 7f657cf8cc8a..a985248d6332 100644
--- a/include/dt-bindings/clock/qcom,gcc-apq8084.h
+++ b/include/dt-bindings/clock/qcom,gcc-apq8084.h
@@ -339,6 +339,7 @@
 #define GCC_PCIE_1_MSTR_AXI_CLK				330
 #define GCC_PCIE_1_PIPE_CLK				331
 #define GCC_PCIE_1_SLV_AXI_CLK				332
+#define GCC_MMSS_GPLL0_CLK_SRC				333
 
 /* gdscs */
 #define USB_HS_HSIC_GDSC				0
-- 
2.39.0

