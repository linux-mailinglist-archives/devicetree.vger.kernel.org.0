Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D77C3734271
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 19:16:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237245AbjFQRQC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 13:16:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235353AbjFQRPy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 13:15:54 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAAA119B0
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:51 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9883123260fso45295966b.0
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687022150; x=1689614150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MT2V6V7pjeRtWQ2ArGgc6CKhR6L6FYJOXQ1d2V4JyVg=;
        b=qM8Y7/l9FTnxPLGnP1WBffQ5RMenMnfqIrxtxybudeC7J+pKPDtm3SnzysPSAypDKI
         IaGfzFxYJIlJUNg7uZGdpyxB9JcqQ08tztsvUV9BHGDtfKyGX4o9AEI6wsW67meulNaE
         oAYYk+dLYcmuWrEEwiNkPZDZEBOIYxbRddyIl2Voy+KWT6q8M736wTDkkoun6pQ29VIB
         u3AQSnEJL/uS0+pCZsaOslgsvI1yzdtXSllOb89qzqKn3AdUX/UOh140jVtCD9iAhjm+
         LKMEbCXh7P4eRZVtO8kso+xybCATn5oHuCI5VkmPqtrKjb8z/ANdCMBoqb3tUuubncbI
         5fQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687022150; x=1689614150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MT2V6V7pjeRtWQ2ArGgc6CKhR6L6FYJOXQ1d2V4JyVg=;
        b=OgLorJ/0+oaF7QREfBCKRS7vs3A9YrSxrFSeCrPfcilMTzlyXrjIhQ+9dCS2XW3Ioo
         9cRAYjI8iW75LU29Wlz+wk5YuITCN76ZXhgUfjAqAB9yTzDhJDug/4SePVSStNibUsyc
         8MONJ3hkNFqU4qqYu4r6w7/SfOc+UuJV7fzQ+BFzNR5154Ku1G//fvifZn+j4kSswZ6S
         MWK7gWmzcQGR9HkAKfKKPpJkfIf6nZd06LXXRgr8bz8MUUIBRPANnZhk2YVxZWOeiXAS
         kZZ8oHF0G/BXZXjWIJnlCyPx2yjWbZIfnuWp0TYXkbHuVZLKMzRLNxorrbF13gWZDqCK
         XPKA==
X-Gm-Message-State: AC+VfDwyKYB70nuAefTR/9SlhAqLfZ4s6XgShP/4zS1SW3XfI1RDfYqX
        uiuFPSwAuH+y+eh920D4YRSsFA==
X-Google-Smtp-Source: ACHHUZ4t/PzWdQt0PFtynGVm/glocMc4HXNygJXwCS5NOMi25o4Vj2WFmtfXJ2ZucHxrkYMCMSTDfw==
X-Received: by 2002:a17:906:e211:b0:977:d048:ff9c with SMTP id gf17-20020a170906e21100b00977d048ff9cmr4223023ejb.31.1687022150465;
        Sat, 17 Jun 2023 10:15:50 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id os5-20020a170906af6500b009829dc0f2a0sm3841897ejb.111.2023.06.17.10.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 10:15:50 -0700 (PDT)
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
Subject: [PATCH 05/15] arm64: dts: qcom: msm8939: drop incorrect smp2p Hexagon properties
Date:   Sat, 17 Jun 2023 19:15:31 +0200
Message-Id: <20230617171541.286957-5-krzysztof.kozlowski@linaro.org>
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

The children of qcom,smp2p do not need address/size-cells:

  msm8939-sony-xperia-kanuti-tulip.dtb: smp2p-hexagon: slave-kernel: '#address-cells', '#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 895cafc11480..05d8abbbc840 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -386,8 +386,6 @@ hexagon_smp2p_in: slave-kernel {
 
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			#address-cells = <0>;
-			#size-cells = <0>;
 		};
 	};
 
-- 
2.34.1

