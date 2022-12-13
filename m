Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C4F964B612
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235564AbiLMNZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:25:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235574AbiLMNZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:25:25 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B06520367
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:25:23 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 1so4892913lfz.4
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FN8xeSOYenD0W3En3HueNdUVcXmiSJI9dmO6Pv4GArM=;
        b=dTUs9PMabrB2FUaw7UavxAkbtMp9OkhbxTt5XYTKbhvQkRPjh0ahQWoPEkhFgsRkmG
         IKIik0HE1JM7h9pBPGO17w8wR0iVLeZNhyZTlXNhftBHv34o769f/N7kpXyvOxl73zVK
         n5kE+ejelu0lhRtt8chU7DsIlLncsCn7/Pg2bCN9bLIaZolsnBWo2eY3p9pZid+Tg0oy
         PO8Dsz4gmVVb0HkWhlvYhB9cMlaIahCfY89JyqZQ5xtymiuSsI64rqcEN33vOWIS1fqh
         lt9xzifEGsSSJZVZegL2KgO2DzU+dx+JMxU7VsQj12zqmocgzofKZ0VadjLeqwqGkHBy
         UWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FN8xeSOYenD0W3En3HueNdUVcXmiSJI9dmO6Pv4GArM=;
        b=UALBLsJt0r2KZo5GeO5FOMmwlmDygBnqG9p2dr3i9nX/lMp1Dr+wAGwe4uq17jpKKG
         PQneQZVW6UkMb/OccZpTfyGdP0L3b8tzUuWt8DnV8xmgIrK9eqi7+obL+rQzDDf7kws+
         nto7jWpMD8aydZ2bmKS5TmbyKYpHNstUcoafiOR1oPQT8M89y4L/rUlhoKsUDsCuMntp
         qHQwkAOMAANjMmrqxr9eiXttoFAqFfIm8ytdtVVlephDmjWFRmrYSG/M8iftBxqD6Jt1
         JldCwx9v2ELcjcbyYrmztZ1oDdKnvWlMvoa5Vs7/JfdwMV2QGxdiMEojNEeA4Jevh3fw
         qnEQ==
X-Gm-Message-State: ANoB5pnUrVlBR2LQ1jzk+WNUtcf3oG4rZ8kqtxpTrCDQgk2zBAHkelzC
        4FF9TEF+RC3pgbzsR19GLqFujg==
X-Google-Smtp-Source: AA0mqf5TTa9Ln5hGbm/fCzc9kJuMht3cImENJ+R/IMnbc9y43eCk5WuguyaVHrvT9PgbAKrFSo5keA==
X-Received: by 2002:a05:6512:3d2:b0:4b3:9fdc:1697 with SMTP id w18-20020a05651203d200b004b39fdc1697mr5077168lfp.47.1670937921813;
        Tue, 13 Dec 2022 05:25:21 -0800 (PST)
Received: from localhost.localdomain (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id k8-20020ac257c8000000b004b0a1e77cb2sm366564lfo.137.2022.12.13.05.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 05:25:21 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sm8350-sagami: Disable empty i2c bus
Date:   Tue, 13 Dec 2022 14:25:16 +0100
Message-Id: <20221213132517.203609-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221213132517.203609-1-konrad.dybcio@linaro.org>
References: <20221213132517.203609-1-konrad.dybcio@linaro.org>
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

As much as it hurts me, there is no FM radio chips on these devices.
It seems to be present on Japanese models, but these are not available
globally and differ in a few more ways anyway (such as a super high-tech
NFC chip). Since it's the only subdevice of its I2C host bus, disable
said bus to save some power.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index 2f727e4f2e57..c63f813d6d5b 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -472,13 +472,6 @@ &i2c1 {
 	/* Some subset of SONY IMX663 camera sensor @ 38 */
 };
 
-&i2c2 {
-	status = "okay";
-	clock-frequency = <400000>;
-
-	/* Richwave RTC6226 FM Radio Receiver @ 64 */
-};
-
 &i2c4 {
 	status = "okay";
 	clock-frequency = <400000>;
-- 
2.39.0

