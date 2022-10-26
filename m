Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C32B960E9BF
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 22:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234869AbiJZUEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 16:04:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234775AbiJZUEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 16:04:13 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F47E10DE79
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 13:04:09 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id t25so11541437qkm.2
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 13:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M6v/CsZRDA1d2R0cAzGnQgTWkDS1APIaz3UwNgmbIWw=;
        b=gnhQwLYxwtx7Xdco+gT2KU/NHypeROjgqFu7jLuzg3eNmN6gkbJH07jY4v4xM3+8PC
         Tf4kXZM5pdqNRqw16IqsZopmK+w+ZEtsEN7fJNK1GcHEJcLk4Pq5bop+y8e94cEqX+EC
         lmzTeisbs1/ftmTxTtRTnSYIq0inrO5MmZuK8quifr20GWeLExyp3Fv3rVjdtonzciDB
         gwEoQh/jH8q9YXhv0rRUG6OySYN/DVpSk0RlqbKH6ixeQlKISI/8FlHgPvdbygWJEx1a
         DsyzuMbUp5k6DXBSNSI943IAqxAt0uL6VmCZlncMmHg/NUt6j1E8wGJ5UrvEWBldLg9P
         8Pfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M6v/CsZRDA1d2R0cAzGnQgTWkDS1APIaz3UwNgmbIWw=;
        b=mDFeHNVhqtjmOp5E/5eMkBpDSJh9cYp6C2+vGEaB5KJjZztJl16euQ6RlfA/A9NLc7
         m9XKdc6MTv+iRm5a+XeBVcArVvYMuFONv45KAPI89ocf50D67mqCP+dA112fiOdoNIAI
         1QpsxQhjawsi2TP4brVmGqhK8fYgbu2CaHroAE0ElgvUUDdSqfH2yktzRoJRP4iLqe6p
         ScGJfxlbIEa+8y99foEGwIH9VaKwsXU3/JR5BrR7JCQNNUQpK/VlmC1BrTcb4Iisp3sc
         i3w9iTIozjcJowArnn2vlpu9noLIhc9tf65FhEaewls8XjaD+QlLYYewJRw085eiNEBG
         2BRw==
X-Gm-Message-State: ACrzQf2ze30viJDSBbVjVUB1gs+tA1/XU0bbPTQG3g9Lglvz+wccSAT3
        fgERupOE9dlO/VM/hXMDOiPmSA==
X-Google-Smtp-Source: AMsMyM71/Afca9qU2l+fzQKLHNh42odj4FueRgDJvBxurcK1AlXpFmoCHECPt5aAEeGjVJySKFGCEw==
X-Received: by 2002:a05:620a:240f:b0:6ec:ffd0:22a4 with SMTP id d15-20020a05620a240f00b006ecffd022a4mr32322478qkn.523.1666814648390;
        Wed, 26 Oct 2022 13:04:08 -0700 (PDT)
Received: from krzk-bin.. ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id de30-20020a05620a371e00b006e99290e83fsm2942089qkb.107.2022.10.26.13.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 13:04:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 4/4] arm64: dts: qcom: sm8450-qrd: add SDHCI for microSD
Date:   Wed, 26 Oct 2022 16:03:57 -0400
Message-Id: <20221026200357.391635-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221026200357.391635-1-krzysztof.kozlowski@linaro.org>
References: <20221026200357.391635-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Based on downstream DTS, it seems that SM8450 QRD has microSD card slot.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested.
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 017bc48430ba..c9a08608ccf4 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -427,6 +427,18 @@ &remoteproc_slpi {
 	firmware-name = "qcom/sm8450/slpi.mbn";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 92 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sdc2_default_state &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep_state &sdc2_card_det_n>;
+	vmmc-supply = <&vreg_l9c_2p96>;
+	vqmmc-supply = <&vreg_l6c_1p8>;
+	no-sdio;
+	no-mmc;
+	status = "okay";
+};
+
 &spi4 {
 	status = "okay";
 };
@@ -474,6 +486,13 @@ pinconf {
 			bias-pull-down;
 		};
 	};
+
+	sdc2_card_det_n: sd-card-det-n-state {
+		pins = "gpio92";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
 };
 
 &uart7 {
-- 
2.34.1

