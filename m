Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD9B2648E8E
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 12:57:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbiLJL5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 06:57:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbiLJL5N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 06:57:13 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18C9A19021
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:57:12 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id s25so331496lji.2
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/8J7c5ip60j6K/JbDvYbnc+qe1oxX+R6vxNfFBKP6mI=;
        b=ILOeS5dw91ME9cPOMXoepd4GIifn49WO18NnhwymKNNVGi4DrN6ELixXe0frM5T7wl
         YkVEHac/CAhvGQrcqRmybyb7sgT54ynatCT3I+n/pk4AJ1sCodr7XbXHlTMIqrowZwae
         hb3UaqYZbrmG96Kq4cqfA5h8Mkq7Hmzh44b9plu3Jho+O/vpL/PJdnnq+FS0hxr+1A61
         zB2GHee7IW4QWY9QGIOV3vo7/hhye2q69WRTFgWEUnk1hFEeiWFVHcDj6Rr/9wQJMQ3O
         nB+PI+zl3e1Exjug1jKIVp755W0weAcuYt5YweoTYH7zCxNH64inQfPshuAVE+Qs61Mh
         enYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/8J7c5ip60j6K/JbDvYbnc+qe1oxX+R6vxNfFBKP6mI=;
        b=7ri3tioMkzjVt/TCvS1mbWJkVnPOGR2OD+tUZ7P5sTCT4mwOWFCFDEYDphU/eEJ5hb
         HgR/QZep5FGEjIBxoi40gzzooWmoja8GdM3kLCNRIn/wOaRQA7T7jMUYwaC1FNrduWHk
         R1csO0xWWMef8PLEiMl5UwyPFvJY0soo24FQbtd3LsprCzzKeArkOtQRwEd4/Gw5b2Go
         FQyseNCVZoXvw8o4foNkF5KFiOC7cpFNobm6Gq4jG/7+KZaeK+E+sVGHQ+q1bbXmUlNQ
         haE/bRsdMjcJfzHa1bvmtfKbCfjFRESEue8pssTBsHCKKVPtJe4BL4QHM4bLxKg3fECH
         Hf+A==
X-Gm-Message-State: ANoB5plYiMByOjvZ1Rs99EXQ01vpThr/UGpgrb7pDRZzAEm3BoUtil2m
        fmZ7in4SvOTrkwSQjGntnxTZ5IkL3IJwIsTVJqY=
X-Google-Smtp-Source: AA0mqf6vpmIJdVDBE7/FGb0e4Pqz0d/BQUjfmTqyEnlhaRNCwVkfRn3GjxQOdbSgr2mCs80P1R8l8A==
X-Received: by 2002:a2e:8508:0:b0:279:f169:7a4f with SMTP id j8-20020a2e8508000000b00279f1697a4fmr2335629lji.47.1670673430379;
        Sat, 10 Dec 2022 03:57:10 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u20-20020a2eb814000000b002778d482800sm578343ljo.59.2022.12.10.03.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Dec 2022 03:57:10 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: qcom: sdm845: move sound node out of soc
Date:   Sat, 10 Dec 2022 12:57:03 +0100
Message-Id: <20221210115704.97614-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221210115704.97614-1-krzysztof.kozlowski@linaro.org>
References: <20221210115704.97614-1-krzysztof.kozlowski@linaro.org>
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

The sound node is not a property of a soc, but rather board as it
describes the sound configuration.  It also does not have unit address:

  sdm845-shift-axolotl.dtb: soc@0: sound: {} should not be valid under {'type': 'object'}

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 573b2394e63f..14a409f22bfd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3972,9 +3972,6 @@ lmh_cluster0: lmh@17d78800 {
 			#interrupt-cells = <1>;
 		};
 
-		sound: sound {
-		};
-
 		usb_1_hsphy: phy@88e2000 {
 			compatible = "qcom,sdm845-qusb2-phy", "qcom,qusb2-v2-phy";
 			reg = <0 0x088e2000 0 0x400>;
@@ -5349,6 +5346,9 @@ wifi: wifi@18800000 {
 		};
 	};
 
+	sound: sound {
+	};
+
 	thermal-zones {
 		cpu0-thermal {
 			polling-delay-passive = <250>;
-- 
2.34.1

