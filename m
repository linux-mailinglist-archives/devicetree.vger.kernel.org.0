Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41237734268
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 19:16:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232720AbjFQRP6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 13:15:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233086AbjFQRPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 13:15:50 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B586219B0
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:47 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5169f614977so2651590a12.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687022146; x=1689614146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ryyRdsO+uy3BCRmVto44nGCPzUM9FoodOXbSOYnlHhU=;
        b=ZeWUJ5XvwX5W9YM/6RWJlIgs/l2msuVOhAqNeiccnbnkThyEyzPmjf/0JdYV7bE1Cg
         7Dj5SDfTsu+HT7GOB00l8tpUojVLfsikuUFWckIEy9dY4rh8SoiUJtcfnrMN8cjaOn+d
         IPaOphhdDNVy4qnro+kbBYzF69/lekjIjX1mBdA2lwPD1fHaeDNVFioWQXF0JWNKhR7n
         oM054/yasiWBeaQyiSw5LtT8l9a5aaVrKMFvdLE8aV0wtW/diX94aRpJmGpKF4Wkp/f4
         hsjB2Vxs4yMPtb/VY/vbK/bnYwY6duHKDqcN/IQN0f3O3VriRmDrHiuUSVD0/U3CDM1c
         Dc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687022146; x=1689614146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ryyRdsO+uy3BCRmVto44nGCPzUM9FoodOXbSOYnlHhU=;
        b=IwOIdI/JigrB1b+bhZtpYd2emLKLW6wfBkHFrppumRGuCCYtOcCTms4SxIjZ+aOhFd
         qO3uowGOusK9NtmFbDGrMACcvUEnCMHIL5FVl6SOFI1bUf6FuG4KrQri0Qr1gNHvFqy9
         F2emq4HUGTs8FZAHm8gNj0gye/cJE5dO0vFkeJfMeuEmXhSw+r1FdkWtRkK2sZTRy7ml
         PnwK56/6B+6zT3QSq+WqigcdZXiJbtgfV/FAm/WJW1G/JNC88ZlTc6TajCsVfulKvbh3
         LayQX34M1oyqaGKeno7KjpYZwDcTBSsoulSv9pZ1ki9mXUkQ2YqsPq0YC+4bkvJyL2Gp
         QCwg==
X-Gm-Message-State: AC+VfDwjnXRJpLfMU1oltw42kzK6uOfVCvJWy9AE4hNwqSvsC2nLSgNG
        Yt4YroAZ7x9F5d2VgU6ASzq+9Q==
X-Google-Smtp-Source: ACHHUZ4jiSGn32jtjmPO4mnwBbFULo/e3clnewfaQHDuBH15d3PmnDECa1nwIYj1ABCuqymKRMNm+A==
X-Received: by 2002:a17:907:6295:b0:979:65f0:cd12 with SMTP id nd21-20020a170907629500b0097965f0cd12mr5372553ejc.15.1687022146006;
        Sat, 17 Jun 2023 10:15:46 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id os5-20020a170906af6500b009829dc0f2a0sm3841897ejb.111.2023.06.17.10.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 10:15:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Nikita Travkin <nikita@trvn.ru>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 02/15] arm64: dts: qcom: msm8916-l8150: correct light sensor VDDIO supply
Date:   Sat, 17 Jun 2023 19:15:28 +0200
Message-Id: <20230617171541.286957-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
References: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

liteon,ltr559 light sensor takes VDDIO, not VIO, supply:

  msm8916-longcheer-l8150.dtb: light-sensor@23: 'vio-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Fixes: 3016af34ef8d ("arm64: dts: qcom: msm8916-longcheer-l8150: Add light and proximity sensor")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
index 97262b8519b3..3892ad4f639a 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
@@ -165,7 +165,7 @@ light-sensor@23 {
 		pinctrl-0 = <&light_int_default>;
 
 		vdd-supply = <&pm8916_l17>;
-		vio-supply = <&pm8916_l6>;
+		vddio-supply = <&pm8916_l6>;
 	};
 
 	gyroscope@68 {
-- 
2.34.1

