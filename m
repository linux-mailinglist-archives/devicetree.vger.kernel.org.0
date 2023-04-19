Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C6356E836E
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 23:20:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231980AbjDSVUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 17:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232179AbjDSVTr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 17:19:47 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09B129ED5
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:24 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id b16so1733564ejz.3
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681939163; x=1684531163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxZotJCBuSXrPf8oI9KwqBQsknW/+qUDEYf4hkhaOIg=;
        b=OQLe/TaThV5tSOB9ahCx8C6AMYc/9Bt6N2hb4mlfsqH7lQocCWruh7FLYi3a+XVYZS
         Wu3TG/pXAxtzCv7PzGIpk3E+mjt3V+a8oWhPMuFBtkHqHlXPJSQjZxn8hKQJJk5+XQgw
         D1hoMBnN7ymSJh5tN9kowxvq7eqGtDOuqZ7zoqnITkEjMCPSOyKOhwkcp6jSzGByPYRn
         HYj68zrLUI+PopsWigfk5uGVHgywm+AqRMnfPeB3gUiaIOnb0sbFUP5rug6LxOvz5SiQ
         vL0LKK0QKQ5sTORxChMq6bafFIC4KE67oQEGVLnoXEoHYJb5hcZmHapiBjt5nmlS6P4K
         ul/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681939163; x=1684531163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxZotJCBuSXrPf8oI9KwqBQsknW/+qUDEYf4hkhaOIg=;
        b=ajKyDed/4xDFtc4qcf/LdBD1BJ/IdTyo6TBkYFHX1CnbEnlvzr2fOgJWkXMPRMSBHe
         IXV0XfDrNfZNC/hQd4FFwa+RvRSARSbfoe9dXPyiSCmjOwNeNWpFNwt/V9fArVTLyiyN
         0hFsHhnoeTDjaCEhyOm8ig5yJED1BjURdzGYKXEE7av8jeoMy/CWuYoKohT0cQaCwEmV
         XpBQtVcwThBNHON6xcF6Rb9gRiuS6fupoP1d+r5t0A4LdxdOebzP8Kcsz7E1EvZHP2Tf
         bykNoCloCqUYBmNVN+GSSsccZXsZocAtaxmGwZAE2c1aVRDTtkS2mO7uIj8CK4zvAnER
         A88Q==
X-Gm-Message-State: AAQBX9duVJFx6lCCGWDPSCXtOi2kPG5EYKboZ4GfxVWv/gfAHBslSaro
        lQJtdqpcJQuVbuUWvKlqCwBsVA==
X-Google-Smtp-Source: AKy350ZiO6TX8HGzkEtPJr4W05JOFpXLTrLjEp7FEJjzHVO6c4y0S1TAOuY2mqPoDkzIkUlaOV+dAA==
X-Received: by 2002:a17:907:9197:b0:94e:e092:6eda with SMTP id bp23-20020a170907919700b0094ee0926edamr14092761ejb.53.1681939163158;
        Wed, 19 Apr 2023 14:19:23 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:976c:1d6c:6ed0:8935])
        by smtp.gmail.com with ESMTPSA id a12-20020a17090682cc00b0094f109a5b3asm7092739ejy.135.2023.04.19.14.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 14:19:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Todor Tomov <todor.too@gmail.com>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Adam Skladowski <a39.skl@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Robert Foss <rfoss@kernel.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 15/18] arm64: dts: qcom: sm8350: correct USB phy unit address
Date:   Wed, 19 Apr 2023 23:18:53 +0200
Message-Id: <20230419211856.79332-15-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
References: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
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

Match unit-address to reg entry to fix dtbs W=1 warnings:

  Warning (simple_bus_reg): /soc@0/phy@88e9000: simple-bus unit address format error, expected "88e8000"

Fixes: 2458a305e80e ("arm64: dts: qcom: sm8350: switch to combo usb3/dp phy")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5ca21cd1cbec..425af2c38a37 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2140,7 +2140,7 @@ usb_2_hsphy: phy@88e4000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
-		usb_1_qmpphy: phy@88e9000 {
+		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sm8350-qmp-usb3-dp-phy";
 			reg = <0 0x088e8000 0 0x3000>;
 
-- 
2.34.1

