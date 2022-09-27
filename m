Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E84595ECAFD
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 19:37:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbiI0Rha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 13:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231628AbiI0RhX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 13:37:23 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32FEB1D3589
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:37:22 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id i26so16755614lfp.11
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=C8o5PFjxV2DbD9sEGHbpRvhtOpSPJbDO58y01xwZ0Oc=;
        b=DjG3389Xr93XVQ5+XBJDTlNwrCXwSMnPetH69F3nIUp60C01yT0PJ6LY8wxQsvJp4k
         Aj1fpAwaRVbXrLYzzF8HOckCW1qzbQlju66xhPLGTlql/cJOPW743crJde9HX64JGRv6
         MF7JycKmWK8ZVT2wCunCRedu+zZHq+uUebMkS23gXDlfjSvkD+LDaypaeFbQ3UZ9sb5a
         FxNdqWJtTVnRiagMAaQn9G/QO7C/UC9E/mfAO5l4OTfTdUHZRx8mSu1pZJj522ygEent
         l0YrPUc3U/IStWgyE0PXCw2nb3SthreSt9hNFwTkvnLfd51gzFgVdyeWB1MPwTtX20a7
         8HBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=C8o5PFjxV2DbD9sEGHbpRvhtOpSPJbDO58y01xwZ0Oc=;
        b=OdT93yICpvcFSDw/SWsMAHJFJ+QWGxuV547bz7BPYrAfbvtdWf3e5Ua3XlXSto/NnA
         qZme5539LWFYJS9b0R74dlmPbUk+wXlJA1pzOzHKCmbhKXmOYcwPCtRv6ozJB7wPePoW
         wIfOLJ5oxr0ZHbMq9ApKAYkIxfRn44eEyvnKDbZSNYCZz8cyA9OSqvyJOql4etrEoQW5
         wlWxr4Ha30rGUkBl/8xNMzVy2pLdGgok3M5unsoVEduuRXKaRPLUmk3GVeE6gy2Z/e4L
         sEeXtoweQvaVoTiNB+NylusT3/zGRgOqUBdpJz4g+dgaC1k634ad6CB/0sChQryt+55E
         nFyw==
X-Gm-Message-State: ACrzQf3pb4Klitw5Q4bML9YBrcJ9lNU1o3PBO45ecY20aAA2XEVK90Z7
        E7fSr67bIUsaZAOeitcnwjPBnA==
X-Google-Smtp-Source: AMsMyM7eTF583bXkUf0LOwqQCcLRAePLgBN4b/NKH5P5Af6w3eZcUE4vKy/b+nJe9t0skUmG3NG0SQ==
X-Received: by 2002:a05:6512:3a8e:b0:49a:e5ed:d6aa with SMTP id q14-20020a0565123a8e00b0049ae5edd6aamr12116690lfu.271.1664300240429;
        Tue, 27 Sep 2022 10:37:20 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q12-20020ac246ec000000b00498f570aef2sm218879lfo.209.2022.09.27.10.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 10:37:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 03/34] ARM: dts: qcom: sdx55: add gpio-ranges to TLMM pinctrl
Date:   Tue, 27 Sep 2022 19:36:31 +0200
Message-Id: <20220927173702.5200-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
References: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
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

Add required gpio-ranges property to TLMM pinctrl node:

  qcom-sdx55-mtp.dtb: pinctrl@f100000: 'gpio-ranges' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index c72540223fa9..f1c0dab40992 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -559,6 +559,7 @@ tlmm: pinctrl@f100000 {
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
+			gpio-ranges = <&tlmm 0 0 109>;
 		};
 
 		sram@1468f000 {
-- 
2.34.1

