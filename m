Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC4C76C1AA3
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 16:58:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232082AbjCTP6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 11:58:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232137AbjCTP5z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 11:57:55 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD012E0D3
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 08:49:09 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id l27so2501656wrb.2
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 08:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1679327339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3I8JHWxkV4zS/edhgEAN6ofRvNqacLGpGveGxbNakgc=;
        b=nrJEnSSJgR1KEh+kXFyLl08hzoCamFbR7CuE+/w8o+9miw0AymkbXwyWEYMDKvPkuS
         tohkvPpQaf/PMvTpeYFXbZtqCqn/lqbUe6jcx7Rtu2Ky6+JXh8JPIL91+7Vy36jRiRMj
         3wDrD9e2Fa6hV0ieoxeLae53e8WqwzvPtLSWEIbEUW6mEoQf2huI5EEGUcdwduF4P5Xg
         bVRgO307yGNH7msfsJcy+leARDEJAHBnvYTahHNNrMHep8JBJa208m02nJ5+civAtVgI
         OZLb5y6Nv3Q86nNUjXIwirIQsuS9TkWiNoEwH7iomM1Pyw3wRe5NULCZT+7iNxFZfgtf
         3WJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679327339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3I8JHWxkV4zS/edhgEAN6ofRvNqacLGpGveGxbNakgc=;
        b=lkv+eGQu66rKqjIH/U7fzpo1N7Uw/IbjXgMkojiCqTZ+2g6fZzfrgqL0DsEyt5+S8l
         my3ulh0LCftvoHmDKkSVwBObry3GqW+rDfupleQRzMo49R9+YeoCiAAKinMrUugnuQL/
         mgBSKND0PXJ/HIXF3nRO9zmKDoNkzXzUuSxy70AZWjHXbMKBOYZQRfx5Se9kYfE9hu0A
         af5+lizgSJVQinmTRhEMeElimeUqa41BtJF3/ylKs232OQZMhNPunqkOuKpspbblUuac
         Zfd8Z/h5m7tQmr0qi/03YSRjNvbC3LCuItNdcqgLuQc033nurClVC3XZzm21WvUtKA9J
         +fJQ==
X-Gm-Message-State: AO0yUKVDAN+wRK1cgyKCXE9aXakIuo+vSNGs4PQtfw5SCmQAM2+vtFy0
        UcrynPF0GyVjVZZbeqKWM1iRwA==
X-Google-Smtp-Source: AK7set+J5vQN14kh9/yAib+9JKm05aHPz4N9yTfjDRKYXEDmiYFi9tn/YGTCIyrmQhtqSnPeHXWz+A==
X-Received: by 2002:adf:f209:0:b0:2d0:27dd:9c40 with SMTP id p9-20020adff209000000b002d027dd9c40mr14563231wro.26.1679327339520;
        Mon, 20 Mar 2023 08:48:59 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d7d9:4f38:38b4:82b4])
        by smtp.gmail.com with ESMTPSA id o6-20020adfeac6000000b002c71a32394dsm9202578wrn.64.2023.03.20.08.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 08:48:59 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 09/15] arm64: dts: qcom: sa8775p: add the Power On device node
Date:   Mon, 20 Mar 2023 16:48:35 +0100
Message-Id: <20230320154841.327908-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230320154841.327908-1-brgl@bgdev.pl>
References: <20230320154841.327908-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the PON node to PMIC #0 for sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
index afe220b374c2..dbc596e32253 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
@@ -12,6 +12,14 @@ pmm8654au_0: pmic@0 {
 		reg = <0x0 SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+
+		pmm8654au_0_pon: pon@1200 {
+			compatible = "qcom,pmk8350-pon";
+			reg = <0x1200>, <0x800>;
+			reg-names = "hlos", "pbs";
+			mode-recovery = <0x1>;
+			mode-bootloader = <0x2>;
+		};
 	};
 
 	pmm8654au_1: pmic@2 {
-- 
2.37.2

