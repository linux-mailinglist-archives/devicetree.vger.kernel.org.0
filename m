Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B991D687AC4
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 11:47:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232960AbjBBKri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 05:47:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232892AbjBBKrI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 05:47:08 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5069E8A7C4
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 02:46:45 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso1013258wmq.5
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 02:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBYpfci6bJvLrvFQ49ecH82tkXxXbCKUmgzFLjg4el0=;
        b=IV0HiuAi4omysj4fCI6HyNCrRiZxJ3M9PQb/B8ZnttxwxWOakTsPsSn2aBc/LzPbG9
         Nav/05cpTKC3hSMjSE+OJDO9rkQKQm3rFHutvN5AVMyENqL6te9N1L/WAwIrkJlRFR6O
         53sLs3t8YUZAWuM3OKSJDmeJ+6X/XcniZjjY58aXApPCpYvz7nAkpK00o18s715p7O28
         TA+mAHj2e4D/88KspeSf0FvgK9yvv9F3Kwcj1zAteffDvcAftj51UKPYLzpMxv+dVp6x
         gsn8BpOrcWyPH1StV2zfXB6RwE5RMbrqcsND4xxyR7rZg+DlXajBAga07xjZ0sTJeVjT
         MWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBYpfci6bJvLrvFQ49ecH82tkXxXbCKUmgzFLjg4el0=;
        b=U0OSyRwWnf/e1ub/yNsrVplhjSUNhTAp/9t2f/fOVUnD+IANyTRr3Ex6lb0lvTahU9
         we+IWrLMV/qgJAPtoWqdV7pmLK3LQo4J5Mk9oI+zCfHmBBwrxVYEMKh9DAMnvB46flry
         UL7WZg0mNhG50F3EPm3lMvCZflZi4JmCaC3jBm/YEBnNCpZILUpSsBwdFl+IA5aluoe3
         yYkCDJ6DSMloon5VhBHGw8G4c0ZFbodXFX13d7WVZDwAI7Hjn2v9dQ72C0XjbZNQoPJE
         RMvD/+TcceWGo2hOqED7hMd7sdJonznlVr0vcxDkH1h0/YaqEWFelrKkwewWGQmNp3I1
         4b/w==
X-Gm-Message-State: AO0yUKW+q4Z0/1e0cV3TLMhj4ESuwM0n8LuJD92+KV5JFonsFnqsEznH
        NbrqUUgqmy59I87FrriZ0pIyvw==
X-Google-Smtp-Source: AK7set9BgMrsUahDdhU/v7KzLJ+UK5dzjmaTSf0ACN2feFq6TzdVeruE+Z+F+abk8uMkySVyR8JNxw==
X-Received: by 2002:a05:600c:5491:b0:3dc:16d3:8c95 with SMTP id iv17-20020a05600c549100b003dc16d38c95mr5611518wmb.30.1675334768418;
        Thu, 02 Feb 2023 02:46:08 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n24-20020a05600c181800b003dc3f195abesm4307329wmp.39.2023.02.02.02.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 02:46:08 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Vinod Koul <vkoul@kernel.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Luca Weiss <luca@z3ntu.xyz>, Iskren Chernev <me@iskren.info>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 10/10] arm64: dts: qcom: sm6115: correct TLMM gpio-ranges
Date:   Thu,  2 Feb 2023 11:44:52 +0100
Message-Id: <20230202104452.299048-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org>
References: <20230202104452.299048-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct the number of GPIOs in TLMM pin controller.

Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 50cb8a82ecd5..b9fff0b0ea1c 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -363,7 +363,7 @@ tlmm: pinctrl@500000 {
 			reg-names = "west", "south", "east";
 			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
 			gpio-controller;
-			gpio-ranges = <&tlmm 0 0 121>;
+			gpio-ranges = <&tlmm 0 0 114>; /* GPIOs + ufs_reset */
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-- 
2.34.1

