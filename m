Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10ACD649D53
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 12:17:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231607AbiLLLRf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 06:17:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231963AbiLLLQW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 06:16:22 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89973D7F
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 03:10:52 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id g7so17961218lfv.5
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 03:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OcNpSzwEZ+vyUsbdicQmjhcZQScPcRaQ/Oe3R7SSvWQ=;
        b=M+Jos3Pu7Vp43oL5ix8BU8krCyjleOEg6YfD6qVst+VxuOUMP889+QzZqvaWPwK/4X
         5pEeZIxoc7lctIDXOrJszla0M//ryKk/vJpPyie4Mj3JZTmGdGXhQ7dExPItRR0nLhTD
         oVba7QuZlY32Pm7gDYas3q56YYVzSrMdg1BnY4YPLRSDvo43bUdFxx8lSZQ3TTTZ70I8
         K/ANXdk4nldWYnVdP2Hw/pn6mYl4Z7X9fDwn9mGA1zFvyhRwFcFjUpwy/foJcByFCWpD
         wovaJW2Clw3LSso+JtRxfAw+FZMCGPppvEqXfFYX9XeyHsk3AXofRCbislqLUTjRHmOY
         MnmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OcNpSzwEZ+vyUsbdicQmjhcZQScPcRaQ/Oe3R7SSvWQ=;
        b=SpsH+aulZvY+lOVL93jloL8mDmDY2l079vorvhPFUyGN53ofiYCiicXo7FnIGaWy51
         XUJLrvAMwIFXc7NZ2hvpWUwK6Ou6WXig4lh0ejU1eXjOFk8+JrNWToUX83TlSDtSYOad
         fEGV+VRp78dD4H3ThSmdFPBCFNgNN2zDhHy7JAjy+N7gbxmErzSamEBB4warChCGHqEu
         nx1xbkadLJzvNsOHZZfCwMdkzwbSLhpOnzq6r8/zyOed48iJRl/x1QSk0/6W+6aLesPM
         J9NRSCpoMF7Faic5x8ylEB+WCEbPQS+a91nZz4kIHpyt6Mhlr9nFo9pFyw4Ljel5zhqJ
         BquQ==
X-Gm-Message-State: ANoB5pkLeTFDSFSili6qlXF9zMtN92EVGmJ3HJPl9ABf+Z0n10KRipCp
        YKmI9Cx8GfyGosCA5tFp+oIZRg==
X-Google-Smtp-Source: AA0mqf7BZd+CYjIqnm23P/twEOin/yL9WZ/iOLopwh3vY7ZW0JhA9KGbuwxsNtpBEoTQff7G+hWPhQ==
X-Received: by 2002:a05:6512:3704:b0:4b5:81ab:4c75 with SMTP id z4-20020a056512370400b004b581ab4c75mr3450768lfr.40.1670843452141;
        Mon, 12 Dec 2022 03:10:52 -0800 (PST)
Received: from localhost.localdomain (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id b4-20020a056512060400b004b57a810e09sm1599110lfe.288.2022.12.12.03.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 03:10:51 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] arm64: dts: qcom: sdm660: Use lowercase hex
Date:   Mon, 12 Dec 2022 12:10:33 +0100
Message-Id: <20221212111037.98160-6-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221212111037.98160-1-konrad.dybcio@linaro.org>
References: <20221212111037.98160-1-konrad.dybcio@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use lowercase hex, as that's the preferred and overwhermingly present
style.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index d52123cb5cd3..5332b97b98a7 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -37,35 +37,35 @@ opp-700000000 {
 			opp-hz = /bits/ 64 <700000000>;
 			opp-level = <RPM_SMD_LEVEL_TURBO>;
 			opp-peak-kBps = <5184000>;
-			opp-supported-hw = <0xFF>;
+			opp-supported-hw = <0xff>;
 		};
 
 		opp-647000000 {
 			opp-hz = /bits/ 64 <647000000>;
 			opp-level = <RPM_SMD_LEVEL_NOM_PLUS>;
 			opp-peak-kBps = <4068000>;
-			opp-supported-hw = <0xFF>;
+			opp-supported-hw = <0xff>;
 		};
 
 		opp-588000000 {
 			opp-hz = /bits/ 64 <588000000>;
 			opp-level = <RPM_SMD_LEVEL_NOM>;
 			opp-peak-kBps = <3072000>;
-			opp-supported-hw = <0xFF>;
+			opp-supported-hw = <0xff>;
 		};
 
 		opp-465000000 {
 			opp-hz = /bits/ 64 <465000000>;
 			opp-level = <RPM_SMD_LEVEL_SVS_PLUS>;
 			opp-peak-kBps = <2724000>;
-			opp-supported-hw = <0xFF>;
+			opp-supported-hw = <0xff>;
 		};
 
 		opp-370000000 {
 			opp-hz = /bits/ 64 <370000000>;
 			opp-level = <RPM_SMD_LEVEL_SVS>;
 			opp-peak-kBps = <2188000>;
-			opp-supported-hw = <0xFF>;
+			opp-supported-hw = <0xff>;
 		};
 		*/
 
@@ -73,14 +73,14 @@ opp-266000000 {
 			opp-hz = /bits/ 64 <266000000>;
 			opp-level = <RPM_SMD_LEVEL_LOW_SVS>;
 			opp-peak-kBps = <1648000>;
-			opp-supported-hw = <0xFF>;
+			opp-supported-hw = <0xff>;
 		};
 
 		opp-160000000 {
 			opp-hz = /bits/ 64 <160000000>;
 			opp-level = <RPM_SMD_LEVEL_MIN_SVS>;
 			opp-peak-kBps = <1200000>;
-			opp-supported-hw = <0xFF>;
+			opp-supported-hw = <0xff>;
 		};
 	};
 };
-- 
2.38.1

