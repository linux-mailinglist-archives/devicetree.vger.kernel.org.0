Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC2A65A456
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 14:01:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232010AbiLaNAF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 08:00:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235777AbiLaM7r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 07:59:47 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0863E0C5
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:59:42 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id bq39so27383385lfb.0
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nzDXCQAc8UP+myPxXkC31u2cSF60R0Et8jZDeI9JWO0=;
        b=gWuRxq+PHZSrQ/whiQclYfqUW+CsSPJKSS8rjrDDAT31WFJM8LMx0VtG5zE0vCE1JS
         1q/j+9ZogB/N7Z4H5acOVc26sxO2HH+NofLtFU0WF+H+SogS+ktxxh3D0sKeW//Rs9XL
         Dgi9RO7I0q9keJbQsmAt38x8D3PUcz/ZVqhFPXq8dRfntqm0XyzV70LKjjgDIsY/+tkz
         nwJXNO9XDLcGvlEOixxR/tPwHoZNNKhL/r+rkhuaDZpHvpM4yxFtnDKycFphIiP7UGZH
         SjGVOkn/g7xPb/6MJJVTu5AKsRwv2A6/D3gcK9WENyLN2dNwlzMbSA2vXIlFSWnxWNvH
         cdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nzDXCQAc8UP+myPxXkC31u2cSF60R0Et8jZDeI9JWO0=;
        b=52Zhz7Mqmfv56yS8tTKH/8MEYqnRtXSJPmrsfqRfmuKQ9ccU6EkBMwU/S99Kz55OkM
         Mbzi+R/cMtxB4HigVUaq7o0pK12llE8WfcYWFO24MNMsqSL1QofGJVi/r5x749USS3Fb
         LblgPM/gTiK6rFR9aDJz59fBaJI9PjIHiA0t7Cr/DLxCn7B8l7fJFOEItCrlo8QrtpYS
         QlMyqAxT0aUqZXnKFceIPf8k5MCBrLWNTwNPMLsDooaZGRc9dP5HCI6Bcd5/nSy+JaQa
         8dDerpyOyEctHwsahDoY/d3QuLGmWUINd0JASMKO+e5eD6JO5iTnOU3ffdk/o1HPcr9C
         uVKg==
X-Gm-Message-State: AFqh2kpXyAV2FaYvGVbEZUV0HyNOfwLFsPh5jAB9KnT1LTiIAs6Zb1rR
        1mfLnRnCYPYEu/2U0DRljRSf7g==
X-Google-Smtp-Source: AMrXdXvy+c1a00d3x8Mu4+KvSNj3ohFjGexty4hrVOY4BIOkfcxHBpztmJEDsEWftYg7OWGWV3N+7Q==
X-Received: by 2002:a05:6512:224e:b0:4cb:ea9:b0d7 with SMTP id i14-20020a056512224e00b004cb0ea9b0d7mr4790852lfu.9.1672491582040;
        Sat, 31 Dec 2022 04:59:42 -0800 (PST)
Received: from localhost.localdomain (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id d10-20020a0565123d0a00b004cb344a8c77sm22266lfv.54.2022.12.31.04.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Dec 2022 04:59:41 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 17/18] arm64: dts: qcom: msm8994-kitakami: Pad addresses to 8 hex digits
Date:   Sat, 31 Dec 2022 13:59:10 +0100
Message-Id: <20221231125911.437599-18-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221231125911.437599-1-konrad.dybcio@linaro.org>
References: <20221231125911.437599-1-konrad.dybcio@linaro.org>
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

Some addresses were 7-hex-digits long, or less. Fix that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
index f3d153c34918..3ceb86b06209 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
@@ -163,7 +163,7 @@ &blsp2_uart2 {
  * mainline Linux.
  */
 &cont_splash_mem {
-	reg = <0 0x3401000 0 0x2200000>;
+	reg = <0 0x03401000 0 0x2200000>;
 };
 
 &pmi8994_spmi_regulators {
-- 
2.39.0

