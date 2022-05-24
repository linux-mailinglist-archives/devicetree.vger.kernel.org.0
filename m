Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82AD0532BEA
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 16:02:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238108AbiEXOCX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 10:02:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238072AbiEXOCR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 10:02:17 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C63941F81
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 07:02:16 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id u27so25038643wru.8
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 07:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iOhlZe5zCVmYqBGljaijQc2OGjPeMPWPgYrBs59bbm4=;
        b=yqKOOJqY/NOa/iYzr91FpndxRRx9L28WZXl4VwIAluIkeBoEN5QtTqOdRRA5K1i3Y3
         41AV9MizZ1iqBTg0zSMFMXvKWA9TvsTx0y/wrqn3vvDa7k/zrIkLui3jUD/jNtYUXdyg
         x4d5D+6n5/ysmBqf7uSPG4Umkrw9mUiiAUkMIfCML6GqjHtLKETUWaXXYlMZCkv0Bq0d
         06y2fPC8+jF3RqSzRUKJ4xBSOL9w/XDl54ln3H7uUGyD/2o1/rrkmohLOXD8fDRp3i+l
         Lt+hfkPWApIQndgCL0FsDntugNOeJE9pxNaa6Ipg6mY/bMzQNqv08MOLVvueXWTiu9Ne
         uspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iOhlZe5zCVmYqBGljaijQc2OGjPeMPWPgYrBs59bbm4=;
        b=FT+jmQO4+ZIJ+beruwfGZO6R6axT9+zVsZ8FB1QJtnycYtl00PP3P1DjLTxZPMe33M
         NtFClsDWsK6xWvyxg/g1fSSd/MoekgEBL/MLM5CzTMj6M2GAjTvOOubp6NwV6jRPmtbY
         gDLgM2jiPcUOZP2J687xYO3i+WEpDM8VbXFLc5Z7L9hAAWSwBa/Ilv7h0LtePpcGUuHR
         7zRV7GYRfFioy2bUmgFuuUAtYRhYF32yCphprz70RcaO3a1uQGCmC4vyz8hRUMnlTjIq
         W/0pDnrYRuIb+Nwa9YywEAd6K9k4u4mkXowEZs86NLwPPJ0V3Lc8oeeGhQEWv/UmsU2y
         zR2g==
X-Gm-Message-State: AOAM531GEnq7e4yTFc3gZnFMH+AJ4w9fbkv84w30BwaUY8os89dKIOxo
        OmkzdEPXJKCEFrOU+J0/iI9MQw==
X-Google-Smtp-Source: ABdhPJxsBiRddg1DEe4aG4uBTDCiR18r3Fl1JyKj2bcWFO70KrwQvBxG9nNeeflZ8giiCgi9HQw0Gw==
X-Received: by 2002:adf:ffd2:0:b0:20e:60ec:c37b with SMTP id x18-20020adfffd2000000b0020e60ecc37bmr23149636wrs.348.1653400934754;
        Tue, 24 May 2022 07:02:14 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f9-20020adfc989000000b0020c5253d8e0sm12829030wrh.44.2022.05.24.07.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 May 2022 07:02:14 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org
Cc:     vladimir.zapolskiy@linaro.org, mchehab@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, mmitkov@quicinc.com, jgrahsl@snap.com,
        hfink@snap.com, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm8250: camss: Define ports address/size cells
Date:   Tue, 24 May 2022 15:02:06 +0100
Message-Id: <20220524140207.2758605-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220524140207.2758605-1-bryan.odonoghue@linaro.org>
References: <20220524140207.2758605-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ports {} address and size cells definition is the same for every
derived 8250 board so, we should define it in the core sm8250.dtsi.

Suggested-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 2bc11cad3a44..aa9a13364865 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3395,6 +3395,11 @@ camss: camss@ac6a000 {
 					     "cam_hf_0_mnoc",
 					     "cam_sf_0_mnoc",
 					     "cam_sf_icp_mnoc";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		camcc: clock-controller@ad00000 {
-- 
2.36.1

