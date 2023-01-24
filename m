Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC74679379
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 09:50:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233279AbjAXIuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 03:50:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233259AbjAXIuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 03:50:00 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6A443EFE0
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 00:49:59 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id k16so10841723wms.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 00:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQlLH4F//e+0nGhuiqUoN7kmS+jtFMZHtOpvMPzVDqA=;
        b=T9gSe8QWoUu2K8raTJP98YBDUSrKM5n38pF//yl1mCiL/e84RR403Dv6hGGoLSPgmH
         vtBEaXSWVr30gj3VVZVNEDfKoZon2Q9LCvyPcQZVluc6RzZiHyD68n+Jmy8N9sKYr0Dk
         uJfhVvvitkbzZ1fx8JFwi0n6SchH132lbKq3qf7oi+IDGeWfylGNx5HXkOO2pMqZEnk4
         MaG+GyuFBg6FdtXsqWMsz7IBka4GSJ9SWxiU3A+1kq2peRu6YbuMosSIyfHaEFTnTrvE
         WVfoeqE/Zi/LZpaAz6LlW6jfjzYmFaUOHMLtb2+paiz8OBo2Gdp0lfXBs+VReJfKpW3u
         LcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NQlLH4F//e+0nGhuiqUoN7kmS+jtFMZHtOpvMPzVDqA=;
        b=0pCjlCBVkmMdkRcMFFqjQ7lEi+C5BsxqeCchG3aMydF6Hc+ODieg7mWIsnT96zQqYj
         If7J+sJaEx/6vkbcNiSRPFy8Ty1ah2y35vrJDzPeiYQ4B4mSK368hNmOmLOz27QeOeJY
         3tt6biqvvAUHp+E7NoAILnI0Q3wIQYahDMhuxqdm2BIo4HHZczaFNYFXFP9PSS96MuQo
         TmEZBL08V6P5HZOAAiTjx9WxUTprtL+UiFGsbpowhRCuhRqcs/Wd7hmrsS4QjQcBU8Sw
         AjkQtPqS0M45tdJKeB0FLdOObEP2Z7t0Fua0OadwyaR0b1NzRk4FD4MlyWYLIwLL/gd9
         YM7Q==
X-Gm-Message-State: AFqh2kq1rdxy7159M58nRSyQAehUiw2utOHiIjjrNnOgnlQehib6yN04
        dQAEgryCaMv4ldU17S4xTjUMxQ==
X-Google-Smtp-Source: AMrXdXsTxrvjnCKmdKx3Km164P4kObSZG/qOX8Az9C7Qsi/aa2jKQA+ghn/KxkgfSfH7C0rwCYrcag==
X-Received: by 2002:a05:600c:3c92:b0:3d3:4007:9c88 with SMTP id bg18-20020a05600c3c9200b003d340079c88mr27272624wmb.18.1674550198260;
        Tue, 24 Jan 2023 00:49:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p18-20020a05600c431200b003dab40f9eafsm1340036wme.35.2023.01.24.00.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 00:49:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/4] arm64: dts: qcom: sm8350: drop incorrect cells from serial
Date:   Tue, 24 Jan 2023 09:49:49 +0100
Message-Id: <20230124084951.38195-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124084951.38195-1-krzysztof.kozlowski@linaro.org>
References: <20230124084951.38195-1-krzysztof.kozlowski@linaro.org>
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

The serial/UART device node does not have children with unit addresses,
so address/size cells are not correct.

Fixes: cf03cd7e12bd ("arm64: dts: qcom: sm8350: Set up WRAP0 QUPs")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v2:
1. Add tag
2. Correct typo in commit msg

Changes since v1:
1. None
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index fafd92edc855..f9a05bdcc364 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1048,8 +1048,6 @@ uart2: serial@98c000 {
 				interrupts = <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>;
 				power-domains = <&rpmhpd SM8350_CX>;
 				operating-points-v2 = <&qup_opp_table_100mhz>;
-				#address-cells = <1>;
-				#size-cells = <0>;
 				status = "disabled";
 			};
 
-- 
2.34.1

