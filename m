Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 034F56281C4
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 15:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235795AbiKNOAY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 09:00:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbiKNOAX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 09:00:23 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21EB72228B
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:00:22 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id g7so19429300lfv.5
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VxPQ8pboaPVF2sJHi52Vka5fwCNauq6OSSF8aRmq/H0=;
        b=S4znJaczEK246Yzk+YOpXjq34r7eQ7lk7NgLbFfJDA410Mvfpv6ffI++LTktx1dHF+
         8jfleCZ+jpUDe/bTfK8uw1mHSSkibeoMxh62i/llK/sqs4AL67zMxQIkfgw5Dwi64DO1
         l2x3OF62WEGgdBEspccGmA7jlxAgBNgannoeKbVSC/fIN3yG8toZQqB0sOQ5pPklVTw5
         31URTGvzgReJaSyOBmZj8roWHKqR57hxGK1MkaoFydXe7Fh5Rr+ao/MSLkNffuJv/E5N
         KbPitKZjk4N4DndOq9HyXiBUwLIjt3X/DyI3KNXMoz2roQOEggp0y5WnMl+UpBetQ78n
         pNVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VxPQ8pboaPVF2sJHi52Vka5fwCNauq6OSSF8aRmq/H0=;
        b=PUWnQ18qk/8W1gpC6KOQYUyuVjVT2l+qH4xfSDX0psTiWDE++j2MDfeq/ieYbsK652
         xB7+JsPtiDHLbQ0iW1EeQi+Su3tSbsTKEmx+ELR4z0n7g68kVOp+oz9WI7cFMUx3MSI2
         Px1GChzcR87aeopuLC09NxQMdzFTRGAiq2Izioiyo2PkXqk3YVb+yPk/IsbAgj7bikoQ
         WuYht0Ecyz1Q8hhdGuef9zLs6XMessrXGjpOmpTaFe90XKfEDZm7DyzseCq3cFpSPmyJ
         VOEgJsrzgiWS3rGR82jLQf/Ul2nYSHdz6AJH45rvJRT5hVvWdCmjZgqN5BLobA8tzmaY
         gs6g==
X-Gm-Message-State: ANoB5plgYhYoKd6HcuGZmd8qj5l9Rs1ByIzS6ePXsOKI2Mjy+qLnfqqj
        D/+ZSU5YWSbcfczBkLIDXjL2nA==
X-Google-Smtp-Source: AA0mqf4/a/jJiXWvPvOe2T+QxBTrvQcAuvmN52Dp5+4lky3TG8hR1K4ZgfQ+zays2OXB58zZRVfGxA==
X-Received: by 2002:ac2:46fc:0:b0:4a2:22cf:f44d with SMTP id q28-20020ac246fc000000b004a222cff44dmr4369084lfo.118.1668434420376;
        Mon, 14 Nov 2022 06:00:20 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id z8-20020a2eb528000000b0027628240ff7sm2017813ljm.135.2022.11.14.06.00.19
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 14 Nov 2022 06:00:19 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sdm845-polaris: Don't duplicate DMA assignment
Date:   Mon, 14 Nov 2022 15:00:11 +0100
Message-Id: <20221114140011.43442-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
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

The DMA properties in this DT are identical to the ones already
defined in sdm845.dtsi. Remove them.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
index fc189f7caaa4..38ba809a95cd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
@@ -456,9 +456,6 @@ &ipa {
 
 &i2c14 {
 	clock-frequency = <400000>;
-	dmas = <&gpi_dma1 0 6 QCOM_GPI_I2C>,
-		   <&gpi_dma1 1 6 QCOM_GPI_I2C>;
-	dma-names = "tx", "rx";
 	status = "okay";
 
 	touchscreen@20 {
-- 
2.38.1

