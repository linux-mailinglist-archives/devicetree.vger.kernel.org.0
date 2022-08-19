Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9DE6599772
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 10:36:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347620AbiHSIcs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 04:32:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347641AbiHSIcn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 04:32:43 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53584E9A90
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 01:32:29 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a7so181852ljr.1
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 01:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=ccVNEGUyoLcQaI8UdynUDOxJeKEsV/fbBjw/mDhwVlQ=;
        b=YeBXMKhczh3OUm5tRZmsWzu8W6h3U6BxytA9zHgyzijvmxaYWMNcbpDU6cFzzneNzV
         cWYinBJR47zs1M8BfncTWEBA8YqxeephXrgGUSgog3pDfarqxPfK3UwdxQsVZaoWrRuU
         xXPWCbVDulY4BNgr2h5phO5izQMv9BSdNWz3ca9lcR+1LC9ydglzveCp5iujqYwF4EKo
         K9lpLtCQE5OcPLRRAitBEUwNu0RpiZEh/I42yFer4LUxmetZcADGEDlCI8YGM3Vke266
         1pKHbXgESX7ywcxnee/v9WX7En3WC7PoxvAREIA1vXBELwfeTBGQHC9rtzyo282atoAf
         z95w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=ccVNEGUyoLcQaI8UdynUDOxJeKEsV/fbBjw/mDhwVlQ=;
        b=h4KbmXTqaDeU6ryb3SDadW+5PwJqhMx7+ah8upyXwrODgmdgikt4GtvQOfcXfJ79kh
         z8X3+xsXyb5liospOw23ii1UxE4LtmpqUbWcEf8v30nBGxuhXPXbBoGcukZyLnu5iuDy
         SxgiNDFOgb70IDnj092rkEn+4iBVzaJgCqeEi+33dhrfLD64bpOs3MMfvTGX9iwCEu34
         OAC1McFxPAU/du51pcIYTwnQeFSCKkaxzqbNkqKIp3i+4hZdxeS47oIpchIw5Eo/DrAB
         Sk2iDzzkgiUEl7RYbxg3qsN3OUVdaJamhu/+U35UmFXdRt43BoeaY5o6gfD8Q9NgOAae
         RJMA==
X-Gm-Message-State: ACgBeo0yJ6WGHXcMzZyp6Wf3bvoAiijt3XKFtICrNeolY9ujknFETEiO
        1GzsMS2M9AxHi7DNT3zIk9cHbg==
X-Google-Smtp-Source: AA6agR7qqaBvWZNiZs3HGRYQ2Gh7LZMn4wZs4cz/1KhQKcIsqoikGcj0ftgaNfEvhDVKdsoEH9jiFA==
X-Received: by 2002:a2e:9254:0:b0:25e:4f20:8d3a with SMTP id v20-20020a2e9254000000b0025e4f208d3amr2018059ljg.233.1660897948918;
        Fri, 19 Aug 2022 01:32:28 -0700 (PDT)
Received: from krzk-bin.. (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id j8-20020a19f508000000b00492a54f0be1sm545355lfb.284.2022.08.19.01.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 01:32:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v3 11/16] arm64: dts: qcom: sdm845: switch TCSR mutex to MMIO
Date:   Fri, 19 Aug 2022 11:32:04 +0300
Message-Id: <20220819083209.50844-12-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220819083209.50844-1-krzysztof.kozlowski@linaro.org>
References: <20220819083209.50844-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TCSR mutex bindings allow device to be described only with address
space (so it uses MMIO, not syscon regmap).  This seems reasonable as
TCSR mutex is actually a dedicated IO address space and it also fixes DT
schema checks:

  qcom/sdm845-shift-axolotl.dtb: hwlock: 'reg' is a required property
  qcom/sdm845-shift-axolotl.dtb: hwlock: 'syscon' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 21ed14200986..bd0ec0664283 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -919,12 +919,6 @@ compute-cb@8 {
 		};
 	};
 
-	tcsr_mutex: hwlock {
-		compatible = "qcom,tcsr-mutex";
-		syscon = <&tcsr_mutex_regs 0 0x1000>;
-		#hwlock-cells = <1>;
-	};
-
 	smp2p-cdsp {
 		compatible = "qcom,smp2p";
 		qcom,smem = <94>, <432>;
@@ -2588,9 +2582,10 @@ ipa: ipa@1e40000 {
 			status = "disabled";
 		};
 
-		tcsr_mutex_regs: syscon@1f40000 {
-			compatible = "syscon";
+		tcsr_mutex: hwlock@1f40000 {
+			compatible = "qcom,tcsr-mutex";
 			reg = <0 0x01f40000 0 0x20000>;
+			#hwlock-cells = <1>;
 		};
 
 		tcsr_regs_1: sycon@1f60000 {
-- 
2.34.1

