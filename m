Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B052C789DAE
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 13:52:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbjH0LvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Aug 2023 07:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbjH0LvC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Aug 2023 07:51:02 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77BB91A3
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 04:50:54 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5008faf4456so3586347e87.3
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 04:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693137053; x=1693741853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WTwDERDtHj3CTZ7wFbbvBEJPnjqFeRCht0k5iEHuFc=;
        b=dmgHm7t8uyEXZ57hn44I83Gair3QmORlR0O1aWePu0Stq+4rPWG3H9HMPg8kei19kd
         Msf4qYkwFLSyojbc7gRXcSfSffjSLsSRDRYp2GpYp8IlydPoqFBVs+KYQ4KTPuS7A0oi
         a5zi2M5DPkobnqeTroi6OxB21zmae8dVpuNx4SHu1tNXC4pfZYTHcAsIpjUZRG8cgga9
         C2Ukftu5UIp0X5iGpkyoZ/jvDiBjF+B0rbCGFad1wbnGBv0QVfbmzYPCQjsBLZ2SLdhp
         feH1Ve6cm/k0dlaxpgREAUDIPYd6Ry6RHMOsJmzdLA4MOgAdbaSWEMt2qdLYTeuiW3lg
         S+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693137053; x=1693741853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WTwDERDtHj3CTZ7wFbbvBEJPnjqFeRCht0k5iEHuFc=;
        b=SDU/uZfbn+0hoBXQvjV0s6mlPdIYMoQdrAyRhKfXT2sODI3dJolGp4Wo2aTh5esNQt
         PHOpWyvryezAv7wh0NQ0nY/+yL6fcdGL0QtWSATfgCwo8USuxQ272OqU5cHpo4xOzebF
         /eBmNJPIs+fRdpKMI64QrMm2MCLklBEhNasKJNejz+2AST6lrWfrvqADq3u4bveUJtom
         6O615ejJ+gY7zWqexQ7xX2F/TOlXFmLraOuxVZkjO4xKxQXEEYTuCI7ur73/Cl6UlWVd
         ME1ooUk3ya3/eWRYGn85zQuCl3jiZ+zhgmYKjBFrmFPVIMNaMDwQ1UXZcvqEiMYSxkFE
         dD2w==
X-Gm-Message-State: AOJu0Yzd9sN+8AF5/pADWiABc6LM9vKeao77rU27+FaFrpNj1f1UIACx
        okVCq8vpslMnXJWaPmq0aOOS/A==
X-Google-Smtp-Source: AGHT+IH5qtw8JTqvFzTu20TNm7+v/svqIabMj4Jzgr64ksxaY0M+LkPYQIJVW8zSI7CmUYmfTuCYSQ==
X-Received: by 2002:a05:6512:3f1a:b0:500:aaea:149d with SMTP id y26-20020a0565123f1a00b00500aaea149dmr4514090lfa.46.1693137052753;
        Sun, 27 Aug 2023 04:50:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a8-20020a19f808000000b004ff9f88b86esm1114770lff.308.2023.08.27.04.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Aug 2023 04:50:52 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v4 22/23] ARM: dts: qcom: ipq4019: drop 'regulator' property from SAW2 devices
Date:   Sun, 27 Aug 2023 14:50:32 +0300
Message-Id: <20230827115033.935089-23-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SAW2 device should describe the regulator constraints rather than
just declaring that it has the regulator.

Drop the 'regulator' property. If/when CPU voltage scaling is
implemented for this platform, proper regulator nodes show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
index 9844e0b7cff9..d7bd97997ff9 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
@@ -353,31 +353,26 @@ acc3: power-manager@b0b8000 {
 		saw0: regulator@b089000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b089000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw1: regulator@b099000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b099000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw2: regulator@b0a9000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b0a9000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw3: regulator@b0b9000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b0b9000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw_l2: regulator@b012000 {
 			compatible = "qcom,saw2";
 			reg = <0xb012000 0x1000>;
-			regulator;
 		};
 
 		blsp1_uart1: serial@78af000 {
-- 
2.39.2

