Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 508C37890B0
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 23:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbjHYVqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 17:46:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231607AbjHYVqK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 17:46:10 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7384D271D
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 14:45:53 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so20858871fa.2
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 14:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692999952; x=1693604752;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ISNqJDGLSCJlW3CvfYC1U8fWuYLy9UHAHAFwI7qS5r8=;
        b=gxyJ5kM7H4i64fz1grTG4wS+BdqJFwfNU78iJaJbvWtmiEmNoAMFZYsZId940aqRdD
         RFR/+QRkjxnCrMLi4NC8GSMhPEI3Ze+hNgoj2dtQynGQbX2nYWxfCjaLGXCdXBdtHj//
         WEonuoP5X/pBRfK4UG8bfElPV0AYW7FdX/OZj9c/uhFQ49gQNcelQ7oei8TyPQzRoYhT
         o7QRZZtYuLOHYXU3b2m5qsOwSUuG+YXw7FRA4ks0yVZmdWxugafnwpsTKH9X+UxJ4NJc
         AaI5EGGI8nVOXQgUTe8vpPnPUOhQJ7lB8el+O+jzCzW9slVOs1rCVxTM9G8H7t/8edHf
         LcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692999952; x=1693604752;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ISNqJDGLSCJlW3CvfYC1U8fWuYLy9UHAHAFwI7qS5r8=;
        b=dEYQ+FwhwusBKRZy4MwHqfqpwXx4ik1xlEkoGz8fzQQESeroUUt6abfFIfC+kIcCQx
         CRROf7i+yqSgqZxBcFQ/HG3GrJUAjWvtrZz10mRH7JLRbEcVIzjRmISULSqyv7/aPdNK
         3Qkdins/xEVUTKncbTnvZvH4xUqfdx1liLVGppqmaJGUOnHp0LuB89NKSgCX0+Gzpgck
         TgqjBv9yanx0N2iY90kMLxlUahZtf4bggflvVHKLat2n0T2t3ysb0CNIPILJYkdu6ndn
         y1nZ0WI9CRGrMpuU6pK1omc24EOaIQWDzaO1w6N/0j/Ex6+y33alMVTTWLmy+qMNDX4D
         pfxA==
X-Gm-Message-State: AOJu0YxUrW/+gmanm4EHBB+a4JtdsIGnGWT4G/KezaoXGXVz/GdMiBDe
        fJ+5pylTz+9AQ59EjJKeor0YBA==
X-Google-Smtp-Source: AGHT+IG9lc51mLgs9isFdU+rkgz812psxz8AeW0t4TCmAUUOuHfac0OSFPhdif+TgxdZ3p7vFivBDQ==
X-Received: by 2002:a2e:9b97:0:b0:2bc:b815:d64d with SMTP id z23-20020a2e9b97000000b002bcb815d64dmr14090470lji.30.1692999951679;
        Fri, 25 Aug 2023 14:45:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f26-20020a2e6a1a000000b002b94327308asm486819ljc.133.2023.08.25.14.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 14:45:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: qcom: sm8350: fix pinctrl for UART18
Date:   Sat, 26 Aug 2023 00:45:48 +0300
Message-Id: <20230825214550.1650938-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sm8350 QUP18 uses GPIO 68/69, not 58/59. Fix correponding UART18
pinconf configuraion.

Fixes: 98374e6925b8 ("arm64: dts: qcom: sm8350: Set up WRAP2 QUPs")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index b9469d488b26..0fb4e5a66420 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2949,7 +2949,7 @@ qup_uart6_default: qup-uart6-default-state {
 			};
 
 			qup_uart18_default: qup-uart18-default-state {
-				pins = "gpio58", "gpio59";
+				pins = "gpio68", "gpio69";
 				function = "qup18";
 				drive-strength = <2>;
 				bias-disable;
-- 
2.39.2

