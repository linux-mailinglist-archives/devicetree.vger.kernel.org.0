Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 343756E4C13
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230445AbjDQO4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230014AbjDQO4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:56:14 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C46EBBA7
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:55:43 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-2f4c431f69cso976835f8f.0
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1681743341; x=1684335341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0qIwLon1heagiNYOZjuB3m/sg7jeh4bkPb41uRok6hc=;
        b=K3OERaSDPuJcJLNla2jWDYO9HbyuOoUsv83uahQ1khU7CleiOS6M3bAX/1Dk/AazYk
         ZmbiRubFAL1Slb/yOw1pXJzkKWTnHm0BUZwa6k2d0xM3kx3OXJk+yf8pjlkZgVCQDJ8z
         yG+iK+1uD8vqYWNKALIQDCsKk3+Z6RxHE3t7y8T2Cn4uwFN++S/Ezx9ipyPiMYLnzYvO
         xDuRwrnJdjapQnvXDGZifovdzmDtt+hj8jXyEFY3rhd39vbM/wfygzXqW6hlJ3K0in8b
         5MY9NkJ0eB9+q8nBMAFlvxqvyARD6QfPKAVGAZcjJQwiqxRYh6aHyIXjX3gwPsFJDQtG
         ZHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681743341; x=1684335341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0qIwLon1heagiNYOZjuB3m/sg7jeh4bkPb41uRok6hc=;
        b=ahO7tq3bTzYGfit5BxM2pn0i8pym957vTYOYQXGHM+m28CrQNaUb7rgrwwXqcMt7SL
         39iKUDi9y48T0E+2Zhk7rvclcspM8FgtdSGdTfxIncl2T2DZte0MRshp4Gd6uebsRp5E
         z3EH7W0YYVi4rg8S3GZHbwPmRdMWC5jBP+8QQQ9SPisB+8Qs95wjed6ch6vuJSWgGCIn
         jL/AmoKUJubIFyT4fzUM3px/6GR0jBKLEARJvtZiSG7TjXEZMsyuqfVa/sywatQvu4d9
         cvGdGCFCgaH87cLbhTcfDZHvgEoECvDbS+wb8i7yT5NCnSwqmPmJyPMfoXSZJLzHV+X0
         ea5w==
X-Gm-Message-State: AAQBX9d7alahPxsCtR4rM3aoHSisW6F50rXd36Mx9X3HGinYlUyA8srF
        CUIVkcubvpzOielCG12zgnhIvA==
X-Google-Smtp-Source: AKy350ZGoM1GJQomgjkOS+i5gcfbbvWYjg9qw4qC2Tt4jyxixUsxaJk/dDZkfjfyBGdrbrQQvC6+4g==
X-Received: by 2002:a5d:58f2:0:b0:2ce:a6f6:edca with SMTP id f18-20020a5d58f2000000b002cea6f6edcamr6184435wrd.55.1681743341146;
        Mon, 17 Apr 2023 07:55:41 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:374a:ffae:fd26:4893])
        by smtp.gmail.com with ESMTPSA id j15-20020a5d564f000000b002f7780eee10sm7998301wrw.59.2023.04.17.07.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 07:55:40 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Parikshit Pareek <quic_ppareek@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 1/3] arm64: dts: qcom: sa8775p: pmic: remove the PON modes
Date:   Mon, 17 Apr 2023 16:55:34 +0200
Message-Id: <20230417145536.414490-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230417145536.414490-1-brgl@bgdev.pl>
References: <20230417145536.414490-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Parikshit Pareek <quic_ppareek@quicinc.com>

On this PMIC, the PON peripheral does not provide passing reboot modes
over HLOS. They must be passed over SDAM. Remove the reboot-mode
properties as we'll provide a proper SDAM node in a later commit.

Fixes: d2d9a592746c ("arm64: dts: qcom: sa8775p: add the Power On device node")
Signed-off-by: Parikshit Pareek <quic_ppareek@quicinc.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
index 7602cca47bae..5abdc239d3a6 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
@@ -108,8 +108,6 @@ pmm8654au_0_pon: pon@1200 {
 			compatible = "qcom,pmk8350-pon";
 			reg = <0x1200>, <0x800>;
 			reg-names = "hlos", "pbs";
-			mode-recovery = <0x1>;
-			mode-bootloader = <0x2>;
 
 			pmm8654au_0_pon_pwrkey: pwrkey {
 				compatible = "qcom,pmk8350-pwrkey";
-- 
2.37.2

