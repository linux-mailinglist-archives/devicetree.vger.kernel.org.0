Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FD43677B2E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 13:39:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231756AbjAWMjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 07:39:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231740AbjAWMjr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 07:39:47 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C43A01116D
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 04:39:43 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so10522641wmb.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 04:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CxZUG7WXwxmHRD/CiGq8cgS4TR++f6dGdX+PNWdo2hw=;
        b=g+VU7EiZyD/baFtvQAvpPHQeZRWHMotbhHOjnwT6LdJPnH8/A5T1BwnpK1GpYvthC6
         EUqsPzCvVpVLEwsceI7WtsAtOwaOREjWXTso2h7XD+Bl/QGp/xlFQEOyDiU2zRCo7hJW
         u9ECqliBxG/5wJq+xOHyKz6WZ5RkXIXOdfeSggwzIs2XlavB2RIlrRijjmHg779YHKY7
         iF+zB2RsRYMkb8/t8ep1RJdZhJNS2Y2ZLbHLaglNyIXO6Na5uxvQDfPyyMGPhXmEf7gJ
         DlmDQg0pvMbdDMjjirfg99hQVqFIaeyI0xl1LLLcbkvcmNcvjgCPPvoiNyhTlAXJfMLp
         xfUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CxZUG7WXwxmHRD/CiGq8cgS4TR++f6dGdX+PNWdo2hw=;
        b=0fpRBaXpFtq3xYzdzcn+qFy5CejybL830HO3oEFs0qzs+k5MvK4G5bdMJP0DTA9YVv
         P3x619HSgB+rHVrHPySjPJKVBoA2Ov0cFd1HEcjrNqBgDcl17umConRiUhL7VgM9aDd8
         QeihlAHoDkCYZBu6117uSsW7rPfrIoEoIcYmVSMfO0TA0pzsqZey9oSGki8KoDpKVEa4
         luCIWd8PtllLpzn55RVRB9+LN15buxikODsuJOf+Xe+hrwIbetx+ZhteDu6kmPGi+2/c
         Way2rCUB4Is9jUmyQSAHnu/CZtWHdkLnezA6/g3Uof2ikfgu3STMNB/a6lFyVP0FbKda
         q7Aw==
X-Gm-Message-State: AFqh2kqIxw8gsecrueeIlu42u97SzAPoOWP7uX3pRnvpd/wvTHUMXA7H
        5wS/yJ1XWJO3wTptT6ijwzOf/A==
X-Google-Smtp-Source: AMrXdXtMFGbO2SvMImopFAFjQbvVi1db5w62HEcZc8VFTwGDyaJCPbwrBKu/GTrvgc/9Y7dNm6CzfQ==
X-Received: by 2002:a1c:750e:0:b0:3da:fcf6:7146 with SMTP id o14-20020a1c750e000000b003dafcf67146mr23999897wmc.14.1674477582317;
        Mon, 23 Jan 2023 04:39:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b003daf681d05dsm11347568wms.26.2023.01.23.04.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 04:39:41 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] arm64: dts: qcom: use generic node name for Bluetooth
Date:   Mon, 23 Jan 2023 13:39:37 +0100
Message-Id: <20230123123939.139327-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Node names should be generic (as Devicetree spec mandates), so use
"bluetooth" for BT node.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180-idp.dts    | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 774f9d45f051..6ea8dd7d3e01 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -430,7 +430,7 @@ &uart3 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-1 = <&qup_uart3_sleep>;
 
-	bluetooth: wcn3990-bt {
+	bluetooth: bluetooth {
 		compatible = "qcom,wcn3990-bt";
 		vddio-supply = <&vreg_l10a_1p8>;
 		vddxo-supply = <&vreg_l1c_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
index a78075155310..e19178c1ec44 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
@@ -862,7 +862,7 @@ &uart6 {
 
 	pinctrl-0 = <&qup_uart6_4pin>;
 
-	bluetooth: wcn3990-bt {
+	bluetooth: bluetooth {
 		compatible = "qcom,wcn3990-bt";
 		vddio-supply = <&src_pp1800_s4a>;
 		vddxo-supply = <&pp1800_l7a_wcn3990>;
-- 
2.34.1

