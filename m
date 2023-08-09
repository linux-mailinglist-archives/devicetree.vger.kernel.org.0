Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 393AB7769D8
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 22:24:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234288AbjHIUXz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 16:23:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234266AbjHIUXy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 16:23:54 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B175E1FF7
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 13:23:53 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fe32016bc8so1353735e9.1
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 13:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691612632; x=1692217432;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pSXhSoc1ZLC8x6CFKDd3P+Z0n3Gu++grubMuvWnLLxU=;
        b=pfQbrTBrR3ipQ0fGwVH5lV/YMQ1H0Yp0bHSGtOY1QEjzXgwf1PPS9Fc/H3nJGPvt2b
         EJiGuYc04lUsCL3uHlgJHJ+ybvrIRG2o75BdX0kaa7H2uehbnmoKQiMaTD/UmUH9eENO
         omSJenUMJVzH9xP/fA7vX2jTqL4dBlXfbhecDAyl+yo8lmep4bDPItzw1fzLdNTH8f35
         aFAy7II12ENW7K32DSNZiTCb1E+yjaRi9mO28iQ5UjaaROVO0Pti4lyNtXz9wZmWJ8jJ
         JGmaMkmHgm5PKDHEn7F2xMaohIFE2x95D8R2RO1zqGI+F1yRIt5xVYCAYLimYhDQ39Fc
         o0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691612632; x=1692217432;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pSXhSoc1ZLC8x6CFKDd3P+Z0n3Gu++grubMuvWnLLxU=;
        b=BDUvC1CBFr7b9a5J6zfJmGtDggWrlknHaBtxOFCEx0Mo6biyYytveMzF4tEH74hsVG
         iC15hsf0dnNhHVemTWhK1X+X0DNTq/L2aEwtIyA6x4njHDH9cgJjRyaSCQaR5ylTcgF9
         /Ef0ETEOTu4GBiSx9rCGd0XXDbjDFVGbrotHOiGoS9ncimDpGYbsN5jaZ85Sw0MGnoci
         fgBmJ2wZPtaxVpLIegH7JZyRwVAqhDrVR3oDDw9gzl7J7FHFJRK3ZlznhTb5Jc0rAuw+
         Kb0HFJDJQCcsn1P47vnVxN3Ie4gkofK9rV8U1XiiuFx4/KzJKtI9K0engTg/accWaXHE
         DcnA==
X-Gm-Message-State: AOJu0YxGSQzvtfPwGXhLHITZc8otkuoIu/yfnzyC1cGdaQ0q3sa0+qrH
        ORLMxFTc3rvNr6bDClT69Br0CQ==
X-Google-Smtp-Source: AGHT+IGxbRVt3sKIPcZKf2Q8y+Lh2wSLg1qeiplEhdF/nViab8e9chFp2eQMP2PGqDbWU5I7xwyghg==
X-Received: by 2002:a1c:cc0d:0:b0:3fe:2813:612c with SMTP id h13-20020a1ccc0d000000b003fe2813612cmr154358wmb.28.1691612632256;
        Wed, 09 Aug 2023 13:23:52 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 14-20020a05600c22ce00b003fba2734f1esm2927509wmg.1.2023.08.09.13.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 13:23:51 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, loic.poulain@linaro.org, rfoss@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v2 1/6] arm64: dts: qcom: apq8016-sbc: Fix ov5640 regulator supply names
Date:   Wed,  9 Aug 2023 21:23:38 +0100
Message-Id: <20230809202343.1098425-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230809202343.1098425-1-bryan.odonoghue@linaro.org>
References: <20230809202343.1098425-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ov5640 driver expects DOVDD, AVDD and DVDD as regulator supply names.

The ov5640 has depended on these names since the driver was committed
upstream in 2017. Similarly apq8016-sbc.dtsi has had completely different
regulator names since its own initial commit in 2020.

Perhaps the regulators were left on in previous 410c bootloaders. In any
case today on 6.5 we won't switch on the ov5640 without correctly naming
the regulators.

Fixes: 39e0ce6cd1bf ("arm64: dts: qcom: apq8016-sbc: Add CCI/Sensor nodes")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index f6eeb25988465..75b4e5ff7c95c 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -282,9 +282,9 @@ camera_rear@3b {
 		clock-names = "xclk";
 		clock-frequency = <23880000>;
 
-		vdddo-supply = <&camera_vdddo_1v8>;
-		vdda-supply = <&camera_vdda_2v8>;
-		vddd-supply = <&camera_vddd_1v5>;
+		DOVDD-supply = <&camera_vdddo_1v8>;
+		AVDD-supply = <&camera_vdda_2v8>;
+		DVDD-supply = <&camera_vddd_1v5>;
 
 		/* No camera mezzanine by default */
 		status = "disabled";
-- 
2.39.2

