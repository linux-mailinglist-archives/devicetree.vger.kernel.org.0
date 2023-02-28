Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3EC6A5D77
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 17:49:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbjB1Qsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 11:48:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbjB1Qst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 11:48:49 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 584E912BEB
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 08:48:15 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id b20so6177399pfo.6
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 08:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KY8I4J2skzbqy9GlWqlu3bWpe7Ekxx3P3y3p5S5A3tw=;
        b=PdN4G1yVCyJ30SG5QB9Tch9TYxGiI04Xb2vA5BLPbUVzbSb29SnAaGmR+WW1brpqOe
         tTOZ2hCCz3ZbAg1sWhhvTuYjka2NjUEqjFi9XokAXMxGmRX5Na1w9ZF5hm74pnx0kCKf
         ppqHcF/PM1Lu2jatV3Y/Hn3hyFSSI1AKM35fQTaFnU2CNJnmQP4DUoJD9tJfH3HdvH3y
         mOViwuQu8i92FIBNmGDFAUwzo85aK/Hli97VEyJ0F/jpgUxtKgejWmDU+4VbtZkS+X8I
         yFU2tiMvQpe6GUhf+Gd7A9wNQr6OlsuiFd6Zue7kaInz+WeoDnBmbWJJWBggJhfaVn8A
         c4tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KY8I4J2skzbqy9GlWqlu3bWpe7Ekxx3P3y3p5S5A3tw=;
        b=Rm5fO+bSOjr9d0DFkwrjYqOooyKqpZpR3VSQ0ycufJaDDknD/gBgAsj2XA1I3PPevT
         kUu+UARPAH5yxM+TES/9l85A8q0sX3iDdxqqC2aee/C87R4FpEbiV10uB2KU/pLj3KWX
         rQ17T/F/G+cucUfoElFAehVzF8esedZWux9dUSty8Xd+BxB63AdubW8Gt6KtoN2cRrg5
         ydBYqGsOmcfh8BGqmSWs/pw3256XlmRDEDY+qk9jnLJexuuavJdKTYZoFqNIRbPxQ7KM
         PKCfI2tNuPiqXNWmQqLNfgl9Pe5IelmjZUoQ/p7XIUS+HjEzoKPjqOjNorzEPfKS3d04
         8ynQ==
X-Gm-Message-State: AO0yUKW2iMou9NBeOwfn0KSUKBvSc3lWryAITCW4uEgOd57OzDueswmn
        3wj+a2JwX2Kyz6Ijw8vfgQr0
X-Google-Smtp-Source: AK7set+4N3nyCGuHJTmrF9YIz/eNYVHSuk7QeCjmZDyGU5H2tDN0zIccq9+nkayRCwjj71ZU69v6lA==
X-Received: by 2002:aa7:9d83:0:b0:5cd:d766:8a2b with SMTP id f3-20020aa79d83000000b005cdd7668a2bmr3048405pfq.6.1677602894784;
        Tue, 28 Feb 2023 08:48:14 -0800 (PST)
Received: from localhost.localdomain ([103.197.115.185])
        by smtp.gmail.com with ESMTPSA id z11-20020a6552cb000000b00476dc914262sm5908792pgp.1.2023.02.28.08.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 08:48:14 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        arnd@arndb.de,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 02/16] arm64: dts: qcom: msm8998: Fix the PCI I/O port range
Date:   Tue, 28 Feb 2023 22:17:38 +0530
Message-Id: <20230228164752.55682-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230228164752.55682-1-manivannan.sadhasivam@linaro.org>
References: <20230228164752.55682-1-manivannan.sadhasivam@linaro.org>
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

For 1MiB of the I/O region, the I/O ports of the legacy PCI devices are
located in the range of 0x0 to 0x100000. Hence, fix the bogus PCI address
(0x1b200000) specified in the ranges property for I/O region.

Fixes: b84dfd175c09 ("arm64: dts: qcom: msm8998: Add PCIe PHY and RC nodes")
Reported-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/linux-arm-msm/7c5dfa87-41df-4ba7-b0e4-72c8386402a8@app.fastmail.com/
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 8bc1c59127e5..5863332962e4 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -922,7 +922,7 @@ pcie0: pci@1c00000 {
 			phy-names = "pciephy";
 			status = "disabled";
 
-			ranges = <0x01000000 0x0 0x1b200000 0x1b200000 0x0 0x100000>,
+			ranges = <0x01000000 0x0 0x00000000 0x1b200000 0x0 0x100000>,
 				 <0x02000000 0x0 0x1b300000 0x1b300000 0x0 0xd00000>;
 
 			#interrupt-cells = <1>;
-- 
2.25.1

