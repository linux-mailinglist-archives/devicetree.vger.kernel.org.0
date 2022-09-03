Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28C4B5ABDE1
	for <lists+devicetree@lfdr.de>; Sat,  3 Sep 2022 10:45:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231278AbiICIo7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Sep 2022 04:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232303AbiICIo5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Sep 2022 04:44:57 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF5101FCD0
        for <devicetree@vger.kernel.org>; Sat,  3 Sep 2022 01:44:55 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id m10-20020a17090a730a00b001fa986fd8eeso7664109pjk.0
        for <devicetree@vger.kernel.org>; Sat, 03 Sep 2022 01:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=SqBWJMi80DJWLQXPnlKcmrIcjb7xa2nf0K9N0p5fp6o=;
        b=DvrsLWEMlhjHH/5WVBfj8Y5DO9stEG/FvSbPWBRhc9QTWUx35WY9XbpVZxfp/1Y+yE
         4ZcaHwpKk8wfWhO5f7nmYblFk91e1lEn/Jwxe+UFOQZL8HjaScdFtlqBo8t5hjwuJh3C
         htSouEhj02sYU3NoYMYMyctkGsh2iUFZEmEUQtOW2vmF+hYhGxGvTHw6iVo1l60Acv7c
         KKm30r0FN0egi85rCg/r4/GTQuBXa0YwDucTVNrLIdBzjP1nTsyPticABpfW/Nq00b4n
         K7ZFS+FPFkb31FuQR2nAKBn39Fsrcos5ztJJf9ObODW51kJFZQRoWa5IDUOJFbyOhmnv
         t6+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=SqBWJMi80DJWLQXPnlKcmrIcjb7xa2nf0K9N0p5fp6o=;
        b=Zp3y5knewG00TZrb21IHXkGbMIgf3P2o5VyPmEVGuOirRacW/vt1Xps/x5AbbhLikI
         x5DDMaVF6nqW6ipsGHmgEruGYXGxEKUJp5j8PZbhE3aqqNeqEG5PzNDqTANWxG+T0GVF
         4oQ2VvEyH5gR1g/gNSpCQBRcvIgb+Pr1bsmeEkz9cn+63iMU8zjv8IqLZDDzw63Nmdu3
         ZjPllv3cIjONaGj+YVA10cXEIUo8o5G+bt7xU3zo8z/VZKFajmkIOywna1IgT/p6CfUz
         tT8/IoIwN9lHRtESi1LBLgb5lV7TkGQ8kzCM+dQzZ69vrlSL/S6YNRVTQaefj8C2pz+7
         hlgg==
X-Gm-Message-State: ACgBeo3YqLOjW0+9UBI9qsIOD0tdEmSWyn1uiJQP7THUP0jFJGCxsk92
        x9v5oKWBeeBRUTYaNaZ1ElpWOQ==
X-Google-Smtp-Source: AA6agR553+63YCOpEHkjQVUXYkeZkjdY8vc36nto1zMSug5I3wsmEei7vRDlKN1S7NZA0jZgp7pzrg==
X-Received: by 2002:a17:90b:1c8e:b0:1f7:5250:7b44 with SMTP id oo14-20020a17090b1c8e00b001f752507b44mr9107957pjb.212.1662194695348;
        Sat, 03 Sep 2022 01:44:55 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:5362:9d7f:2354:1d0a:78e3])
        by smtp.gmail.com with ESMTPSA id 5-20020a17090a190500b001fe444b2245sm2827696pjg.25.2022.09.03.01.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Sep 2022 01:44:55 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: [PATCH] arm64: dts: qcom: sc8280xp-pmics: Remove reg entry for pmc8280c_lpg node
Date:   Sat,  3 Sep 2022 14:14:40 +0530
Message-Id: <20220903084440.1509562-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
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

Commit eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
dropped PWM reg declaration for pm8350c pwm(s), but there is a leftover
'reg' entry inside the lpg/pwm node in sc8280xp dts file. Remove the same.

While at it, also remove the unused unit address in the node
label.

Fixes: eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
index ae90b97aecb8..2e5cf55afdd5 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
@@ -60,9 +60,8 @@ pmc8280c_gpios: gpio@8800 {
 			#interrupt-cells = <2>;
 		};
 
-		pmc8280c_lpg: lpg@e800 {
+		pmc8280c_lpg: lpg {
 			compatible = "qcom,pm8350c-pwm";
-			reg = <0xe800>;
 
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.37.1

