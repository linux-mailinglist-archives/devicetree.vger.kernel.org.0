Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05FCE60F76D
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 14:35:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235144AbiJ0MfF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 08:35:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235693AbiJ0MfD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 08:35:03 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F09BF2A26C
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 05:35:00 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id b2so4124058eja.6
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 05:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GguWBmMxuPAY2KQo1afCUSS9/tVl4wLkJY905lNiYD4=;
        b=jthoUlFpIsjC/8l5QHbXH0+WvEfyz7zIilqN3bcy5VprOvwCIMtelJbVIcWfJACETr
         Cmpxw6+aF8Nr5oYX/yHAe9qJpP08bGzg+wckphjBXsF22N57FCxZL5u0bCIQwQ/81ZN+
         8g+i9jkxTegDZu52cSeh2EcTVOXe56ABGu/oqNT725W3qppQgo4yhecet8A6aWVDm7bz
         DR7RauXB11T+d7K78Y3GqUlt+03M7CQPxh9hc+vveKpXx8yqXIe97Yi1QIqcWoPqX/mM
         aJO7M+cRcqXykWKQp4EL2i8Y8ruFsLO+3zHkWAPUreNW8yf/k0MBsTM/sA3F2aOZsM2u
         +Hyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GguWBmMxuPAY2KQo1afCUSS9/tVl4wLkJY905lNiYD4=;
        b=Xso4u5l1yYvbddVsXRevmMKMMXPXntzAgbHeyZM8Z1g6FaKRWJCMwkNwDO14axk7v+
         sCL864s3FokIAMUjTyfK4E2ojZtI3GUt+kPce48QjdmxCj/LczQVqX3EXojSUN/HtxQW
         s/9i5w1dkQOlMjK9sRQ10h5VuXiLwkCjHBbMzVoRvzkmz9sT+dvdtphp/SKbuZdkiWEq
         BpbUASomISoR/7ujEyXnJrv4eR5ZjqxOZN/7xFY5vc6Pw0XjVl6pYBeQydeYLLKVo8Us
         iU1XHGRCQvNAKB4OTYNup0mUOjmlU/DEOWISY0uIkQPLej3hj5oVjeiqH7M8pZtURFYJ
         qwkQ==
X-Gm-Message-State: ACrzQf3Dz7G+mQ3ohdh7D6lOmv6bMBUw7PAygoO50UaFAgCQJXGsQj7H
        sIgH+0+yZ+QkWNe10zk9+n5LDg==
X-Google-Smtp-Source: AMsMyM5dpxxeUjefAGYUGbMX8MzgawlzvmJSVrStgHHjubyrh9IoO/p/m3JQJrULd9gZAQV/iQjfXQ==
X-Received: by 2002:a17:906:5dce:b0:78d:e71a:6e0 with SMTP id p14-20020a1709065dce00b0078de71a06e0mr41282781ejv.360.1666874099339;
        Thu, 27 Oct 2022 05:34:59 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id p22-20020aa7d316000000b00461c1804cdasm942868edq.3.2022.10.27.05.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Oct 2022 05:34:57 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, mturquette@baylibre.com,
        sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        dmitry.baryshkov@linaro.org, Jonathan Marek <jonathan@marek.ca>
Cc:     Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v1 3/5] dt-bindings: clock: dispcc-sm8250: Add EDP_LINK_DIV_CLK_SRC index
Date:   Thu, 27 Oct 2022 14:34:30 +0200
Message-Id: <20221027123432.1818530-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221027123432.1818530-1-robert.foss@linaro.org>
References: <20221027123432.1818530-1-robert.foss@linaro.org>
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

Add this previously missing index, since it is supported by the SoCs
targeted by the dispcc-sm8250 driver.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 include/dt-bindings/clock/qcom,dispcc-sm8250.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/qcom,dispcc-sm8250.h b/include/dt-bindings/clock/qcom,dispcc-sm8250.h
index ce001cbbc27f..767fdb27e514 100644
--- a/include/dt-bindings/clock/qcom,dispcc-sm8250.h
+++ b/include/dt-bindings/clock/qcom,dispcc-sm8250.h
@@ -64,6 +64,7 @@
 #define DISP_CC_MDSS_EDP_LINK_INTF_CLK		54
 #define DISP_CC_MDSS_EDP_PIXEL_CLK		55
 #define DISP_CC_MDSS_EDP_PIXEL_CLK_SRC		56
+#define DISP_CC_MDSS_EDP_LINK_DIV_CLK_SRC	57
 
 /* DISP_CC Reset */
 #define DISP_CC_MDSS_CORE_BCR			0
-- 
2.34.1

