Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1AE851C2FD
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 16:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380803AbiEEOyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 10:54:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380817AbiEEOyp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 10:54:45 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D42955710C
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 07:51:05 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id s27so5926711ljd.2
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 07:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nMVAzUe1tj72It5tOCt2dXrFgJYysFzJlHGgcHJIuJY=;
        b=eDHtET1a/ArVwtWjWEr6uIel6iAT5IwHA/q10eQAzFzoZcf0bnbvgYhsTF7TUlUAdy
         r//cy68LQe6KGhcBbEeiqCd1Ksv4BvkhE/SuM/S1HGsBJ+qt9U58HPgczx3Qh6wccTRy
         3H3vPRz/EsenJNb/SU9Sb+2vuXTV3PhZxw5pKI9kS/xm69lvp4E3X5cGEGEUWV2OvPz7
         HQkUonZHW+krRN5C5dZhAe4Jpe090+wrKybXs0z5/yiIk+6QLzFpYJ4pRfazM1aHqr0l
         zPRmZPKb8sZTzbJJ+Vt0dmm37PjP1BKQ6d8EpAg2pmHj88H8m2R4KgfP/nCM59ZGM4Xi
         1yGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nMVAzUe1tj72It5tOCt2dXrFgJYysFzJlHGgcHJIuJY=;
        b=TzTws2hNZjt/nU/WxaUcGcFQm5zmFQQP2r3vc9iEaSL51exlkmXnIB1jJKmMYOjjaU
         TLww14dJHOEgFaIs3thphgKomVCAksZ4weK3Wo3dTfei3n1Xb9zZsHlv3zPRjbw8FDSl
         mPvDHISB/P7+aAKbNdnOC0ytsBpVlFLbmrMEPjWJyw5ex6TY3NOtN7Sr3vFSz0Q7vCep
         qQ+CEbiXtV2wDthzpYkHvY65fmDvDymDHyi1eroHo5qeoPk/4NMuQdNLWzOdVYFSEvg+
         jq2KXVfI3Wz49vcCJ44E3wQKr48ueTK2dLDzBCExM8CYghlBJpARN3Zl5FDytlH0kkE7
         PRYA==
X-Gm-Message-State: AOAM530msAcboSQi/CUXmGmqBtTrO+kT3nhaSgyMrJyyndi5iW/uEBde
        JwxKW6kuvjLGE0v4Df371EuBkg==
X-Google-Smtp-Source: ABdhPJxawskRXi3N3qDBeAa6ND9qkUEjtwEbkLeCXdn9bdIN0+LMpp01A0ddM8TcTenat7fXbfZczw==
X-Received: by 2002:a2e:93d0:0:b0:24f:255d:4bb1 with SMTP id p16-20020a2e93d0000000b0024f255d4bb1mr16488255ljh.525.1651762264194;
        Thu, 05 May 2022 07:51:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h5-20020a05651c114500b0024f3d1dae8bsm227238ljo.19.2022.05.05.07.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 07:51:03 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: pm8150b: add Light Pulse Generator device node
Date:   Thu,  5 May 2022 17:51:00 +0300
Message-Id: <20220505145102.1432670-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220505145102.1432670-1-dmitry.baryshkov@linaro.org>
References: <20220505145102.1432670-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device node defining LPG/PWM block on PM8150B PMIC chip.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8150b.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
index 058cc5107c75..d8714b230fff 100644
--- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
@@ -126,5 +126,15 @@ pmic@3 {
 		reg = <0x3 SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+
+		pm8150b_lpg: lpg {
+			compatible = "qcom,pm8150b-lpg";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#pwm-cells = <2>;
+
+			status = "disabled";
+		};
 	};
 };
-- 
2.35.1

