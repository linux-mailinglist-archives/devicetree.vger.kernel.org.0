Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9802C75E28B
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 16:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbjGWOTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 10:19:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjGWOTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 10:19:15 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BAE6E51
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 07:19:14 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9923833737eso512265066b.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 07:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690121953; x=1690726753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WelP8hNAG5WCfExW1LvMkUB7mM+4xxIHYhV1sVjWa7U=;
        b=s+H5tOZybZTIXS+JcMANPjKiGuA7QAnMu+QpNYRsMxWdNrr/z3QYK6BeSzFEPZzMiY
         hXHTGnmpyvl6WkhvzrBTuWCK/V9lUavfQsssC83581bc+eWvqXC+/qxSVqPg5xOjf09d
         FqmaajfsN/I9sfg/xJi7cJabJm3UDKc8t1iDeDDkzCp1epprVwiyQS9eRd7reN4Xhpha
         sOx5WTeTh2pZJpWT7GvZ1zhOMiFFMdy9vO0i9/WSmaph7691gakBI6osLLpmMe0OFaE5
         19K/YfDfs6VY0TMEiN3OSbvdIYbbRsNRmieMAT+SkaBQ0CO06DrRR+iP1O3ASqqSVE1U
         wTBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690121953; x=1690726753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WelP8hNAG5WCfExW1LvMkUB7mM+4xxIHYhV1sVjWa7U=;
        b=NHm7/HwXIh4C0BSjwj+yL1jesR19YTYP9AhmPnQ6qiwHongOfx+ywYg0lY3ZqaZG3z
         qIzTapDZZgW2gvafi1aLjD0ppNyunQsXEGhld48CLy/v/zuKyXCxzNBaTHZHEzPKUnhW
         xfB5bP1LhKNPlLS4lVSVPiV8Df6gn/ttzB6BRtR9peo9BYGPPtTh1265s1oJnPFXUCzT
         uCSmc8gyV2NdYj2Z+GUoKEUJPz7a+3aCIWDGD3yAzqpyo35salFj6qchZslvU4HEVXuB
         RTT2CKCMdbEYKtuLrKy0HZCObkgmCNV2ybsHi4/8d/8uMEEBKdCswXRgb68ehzSEYaYC
         AvuA==
X-Gm-Message-State: ABy/qLaeP6ZnJQCwmF3XmssUWjvIqaDetaHGb8jXKeaubhFKVrZpOcCo
        FkHi+Pk84zqcxGeJEX599glLNLA4f9WsanKP5FY=
X-Google-Smtp-Source: APBJJlE/a/aosck8ecXsuIldK2ilXI6rqKQU8qhATRG6jPTTnMpPD/KFJcHY33va/n4sML7CZv3NiQ==
X-Received: by 2002:a17:907:78d7:b0:994:4f4a:218c with SMTP id kv23-20020a17090778d700b009944f4a218cmr7829353ejc.8.1690121952999;
        Sun, 23 Jul 2023 07:19:12 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id cb14-20020a170906a44e00b00992eabc0ad8sm5172438ejb.42.2023.07.23.07.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jul 2023 07:19:11 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: sdm630: align USB DWC3 clocks with bindings
Date:   Sun, 23 Jul 2023 16:18:49 +0200
Message-Id: <20230723141849.93078-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230723141849.93078-1-krzysztof.kozlowski@linaro.org>
References: <20230723141849.93078-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings require different order of clocks for USB DWC3 nodes (sleep
before mock_utmi).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 83afce56a7b0..25124acf705f 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1416,10 +1416,10 @@ usb2: usb@c2f8800 {
 
 			clocks = <&gcc GCC_CFG_NOC_USB2_AXI_CLK>,
 				 <&gcc GCC_USB20_MASTER_CLK>,
-				 <&gcc GCC_USB20_MOCK_UTMI_CLK>,
-				 <&gcc GCC_USB20_SLEEP_CLK>;
+				 <&gcc GCC_USB20_SLEEP_CLK>,
+				 <&gcc GCC_USB20_MOCK_UTMI_CLK>;
 			clock-names = "cfg_noc", "core",
-				      "mock_utmi", "sleep";
+				      "sleep", "mock_utmi";
 
 			assigned-clocks = <&gcc GCC_USB20_MOCK_UTMI_CLK>,
 					  <&gcc GCC_USB20_MASTER_CLK>;
-- 
2.34.1

