Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E520596F3A
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 15:07:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239564AbiHQNEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 09:04:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239443AbiHQNEW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 09:04:22 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C051030F60
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:04:06 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id v4so226401ljg.0
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=G5Gw9O1HRC2HZ2RUee8k0rPKQP+uhhOAxZLOGmh5CkQ=;
        b=fJd0a7YMv0ZcjMFd3JlFycpH5vDcvehDTH1dHlGQdq8x9ko4JNTkvGo9ShJOog7mea
         pZt9h/chVYurKMP2w6zu3EjZw8d+9oRjNnvF3mrYkk+2K1uN7tSN+ppst6Hna71YDNTr
         g3Yymbw8LIPuqTI1ToLs1kLWnoYnR7tCR6kFOiQAq/VtmQo30GjX2wMQS+Fs0DcNIxaG
         0W+M2shtPxiUbeSqBBNgEqrsRVFyPIE7DqVbPYOtrZxEg2OCYXh5eZgVqTX5+mpQoe0U
         U9rkywJHQWN6xxGYl1en/4KuO0lbtNV1nlZdomRFq/43tmyEbvXjRhHRIYJhHa2fj/UQ
         Q+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=G5Gw9O1HRC2HZ2RUee8k0rPKQP+uhhOAxZLOGmh5CkQ=;
        b=0EnbPeP+ugwF2cuw8EWYIi81wmNL2CzIhf3QIk3FimgAKtyy8EZ6Wdqirq7RCp4tNC
         +3PZMNY+P/DTmpuzEWnWt/2vpbSg1FqTMkLWa5bDYOo8wWpG6/gYxgBRCSU9Ifpt35WO
         HhYdLjrcdmJAyvp0J6PmLA9GVQnZEQGDE2HXyrsL/d4Vgj7OMPAz6qWhKxvKZ/ipW+VB
         ehkwAb20kD5ia2covHmAKVaOIu509nZiW1jXzuAncHJa8F8qeS8DjcTMMtc9UiqzJNY8
         pEzXBkdMKaQZT0qgGZfcdmODq/EId0doyuFUGbT85H3BIWAXNrWEarnd3zN57XpYB298
         kD/Q==
X-Gm-Message-State: ACgBeo2UwgthPT2feTOCEcqxWvnI8foxOZVOosMFpesdaPSajK8pGTcr
        ADyStumIpDjumQLfZt7WDk7+Uw==
X-Google-Smtp-Source: AA6agR5WXQrRTwjt8id+ceIUkD6C8jy56bGansLAj+V88Eet7oi7wGDthsIKYm2iqClkwXLkUy5f/w==
X-Received: by 2002:a2e:9819:0:b0:25f:dbcd:3ad5 with SMTP id a25-20020a2e9819000000b0025fdbcd3ad5mr8039858ljj.527.1660741444164;
        Wed, 17 Aug 2022 06:04:04 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id v1-20020ac25601000000b0048b3768d2ecsm1683243lfd.174.2022.08.17.06.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 06:04:03 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v2 10/14] arm64: dts: qcom: sdm845: split TCSR halt regs out of mutex
Date:   Wed, 17 Aug 2022 16:03:38 +0300
Message-Id: <20220817130342.568396-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817130342.568396-1-krzysztof.kozlowski@linaro.org>
References: <20220817130342.568396-1-krzysztof.kozlowski@linaro.org>
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

The TCSR halt regs are next to TCSR mutex, so before converting the TCSR
mutex into device with address space, we need to split the halt regs to
its own syscon device.  This also describes more accurately the devices
and their IO address space.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index f0e286715d1b..21ed14200986 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2590,7 +2590,12 @@ ipa: ipa@1e40000 {
 
 		tcsr_mutex_regs: syscon@1f40000 {
 			compatible = "syscon";
-			reg = <0 0x01f40000 0 0x40000>;
+			reg = <0 0x01f40000 0 0x20000>;
+		};
+
+		tcsr_regs_1: sycon@1f60000 {
+			compatible = "qcom,sdm845-tcsr", "syscon";
+			reg = <0 0x01f60000 0 0x20000>;
 		};
 
 		tlmm: pinctrl@3400000 {
@@ -3207,7 +3212,7 @@ mss_pil: remoteproc@4080000 {
 				 <&pdc_reset PDC_MODEM_SYNC_RESET>;
 			reset-names = "mss_restart", "pdc_reset";
 
-			qcom,halt-regs = <&tcsr_mutex_regs 0x23000 0x25000 0x24000>;
+			qcom,halt-regs = <&tcsr_regs_1 0x3000 0x5000 0x4000>;
 
 			power-domains = <&rpmhpd SDM845_CX>,
 					<&rpmhpd SDM845_MX>,
-- 
2.34.1

