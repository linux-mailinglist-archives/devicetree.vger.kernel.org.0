Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50F1A3B7FA5
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 11:08:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233696AbhF3JKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 05:10:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233442AbhF3JKP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 05:10:15 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41401C061756
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 02:07:46 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id g24so1310747pji.4
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 02:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aQys5GN12uaIYBNi21P0NZEt05b9TZCM+O/CfFHqU3k=;
        b=eIfMHCtucigfsZNd1tGYT/ysBGjdw//6B6CRg1FDLNNtBUUa53kJWEqZxbPSTK7gOP
         xwj2f6Yu7JckIPxYJ9KuMZMVStoLP05ilQjgtaI2MjF33nETga0IGydbxUXz0/X/etmb
         zLgkoTsQ0t5bxWEj1L4kJrHMDbxWToESPKXSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aQys5GN12uaIYBNi21P0NZEt05b9TZCM+O/CfFHqU3k=;
        b=khf0itoXqj9E3nUbdpjze6GEEqihuaF/kyf6KPHibpaOfw++s0W/hlZE4xzCEfCUdc
         Bb92t4TAzAboG9poTaVbbPNFwwScniA/WyaGSOxv8p143HZ+l7hsoRW4Q/3r6ptkB6AX
         R0WDVn/YBhwFwrdmefvIIttk4yDhD1dJ+I2BCJEezxptWUbdSc/KwOJqq0VD32Mutpmi
         KWckJwkhSi0j/2cjIhdb18YxKM0we9OZ+TSRPDMLdBiKucPeuhaEEtzCFYGt/2F6R9gg
         xlCv1ZL+g7013Z7JZkhyYiIbtVVyQ5JrDMtJ8YKTZFQgQ3PPsJtz1Z6knGKCeZmwEBYk
         MKEQ==
X-Gm-Message-State: AOAM530aNa1gY0NM/mluSrRWUyFUoOjSs/94ZUZTqWvlDTAlRYcziSzb
        A+nyWLYALdFe2tyU6Zz5Lj/6pg==
X-Google-Smtp-Source: ABdhPJzFKQULQHVOig6m/gDmzm3vQNmqxw1Bj+LY4s0VrRayx7cM/qMWfaUB5uUO+oA/Do5fcqT+5g==
X-Received: by 2002:a17:90a:2d8c:: with SMTP id p12mr17129717pjd.41.1625044065559;
        Wed, 30 Jun 2021 02:07:45 -0700 (PDT)
Received: from kansho.tok.corp.google.com ([2401:fa00:8f:203:fc06:b3f6:f016:8299])
        by smtp.gmail.com with ESMTPSA id 73sm20822239pfy.83.2021.06.30.02.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 02:07:45 -0700 (PDT)
From:   Kansho Nishida <kansho@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-mediatek@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Shunli Wang <shunli.wang@mediatek.com>,
        linux-arm-kernel@lists.infradead.org,
        Eddie Huang <eddie.huang@mediatek.com>,
        Kansho Nishida <kansho@chromium.org>
Subject: [PATCH 1/2] arm64: dts: mt8183: add audio node
Date:   Wed, 30 Jun 2021 18:07:09 +0900
Message-Id: <20210630180652.1.I88a52644e47e88b15f5db9841cb084dc53c5875c@changeid>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
In-Reply-To: <20210630090710.1873559-1-kansho@chromium.org>
References: <20210630090710.1873559-1-kansho@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add afe (audio front end) device node to the MT8183 dtsi.

Signed-off-by: Kansho Nishida <kansho@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 94 +++++++++++++++++++++++-
 1 file changed, 93 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index f90df6439c08..b06acb8d6527 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1115,10 +1115,102 @@ usb_host: usb@11200000 {
 			};
 		};
 
-		audiosys: syscon@11220000 {
+		audiosys: clock-controller@11220000 {
 			compatible = "mediatek,mt8183-audiosys", "syscon";
 			reg = <0 0x11220000 0 0x1000>;
 			#clock-cells = <1>;
+			afe: mt8183-afe-pcm {
+				compatible = "mediatek,mt8183-audio";
+				interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_LOW>;
+				resets = <&watchdog MT8183_TOPRGU_AUDIO_SW_RST>;
+				reset-names = "audiosys";
+				power-domains =
+					<&spm MT8183_POWER_DOMAIN_AUDIO>;
+				clocks = <&audiosys CLK_AUDIO_AFE>,
+					 <&audiosys CLK_AUDIO_DAC>,
+					 <&audiosys CLK_AUDIO_DAC_PREDIS>,
+					 <&audiosys CLK_AUDIO_ADC>,
+					 <&audiosys CLK_AUDIO_PDN_ADDA6_ADC>,
+					 <&audiosys CLK_AUDIO_22M>,
+					 <&audiosys CLK_AUDIO_24M>,
+					 <&audiosys CLK_AUDIO_APLL_TUNER>,
+					 <&audiosys CLK_AUDIO_APLL2_TUNER>,
+					 <&audiosys CLK_AUDIO_I2S1>,
+					 <&audiosys CLK_AUDIO_I2S2>,
+					 <&audiosys CLK_AUDIO_I2S3>,
+					 <&audiosys CLK_AUDIO_I2S4>,
+					 <&audiosys CLK_AUDIO_TDM>,
+					 <&audiosys CLK_AUDIO_TML>,
+					 <&infracfg CLK_INFRA_AUDIO>,
+					 <&infracfg CLK_INFRA_AUDIO_26M_BCLK>,
+					 <&topckgen CLK_TOP_MUX_AUDIO>,
+					 <&topckgen CLK_TOP_MUX_AUD_INTBUS>,
+					 <&topckgen CLK_TOP_SYSPLL_D2_D4>,
+					 <&topckgen CLK_TOP_MUX_AUD_1>,
+					 <&topckgen CLK_TOP_APLL1_CK>,
+					 <&topckgen CLK_TOP_MUX_AUD_2>,
+					 <&topckgen CLK_TOP_APLL2_CK>,
+					 <&topckgen CLK_TOP_MUX_AUD_ENG1>,
+					 <&topckgen CLK_TOP_APLL1_D8>,
+					 <&topckgen CLK_TOP_MUX_AUD_ENG2>,
+					 <&topckgen CLK_TOP_APLL2_D8>,
+					 <&topckgen CLK_TOP_MUX_APLL_I2S0>,
+					 <&topckgen CLK_TOP_MUX_APLL_I2S1>,
+					 <&topckgen CLK_TOP_MUX_APLL_I2S2>,
+					 <&topckgen CLK_TOP_MUX_APLL_I2S3>,
+					 <&topckgen CLK_TOP_MUX_APLL_I2S4>,
+					 <&topckgen CLK_TOP_MUX_APLL_I2S5>,
+					 <&topckgen CLK_TOP_APLL12_DIV0>,
+					 <&topckgen CLK_TOP_APLL12_DIV1>,
+					 <&topckgen CLK_TOP_APLL12_DIV2>,
+					 <&topckgen CLK_TOP_APLL12_DIV3>,
+					 <&topckgen CLK_TOP_APLL12_DIV4>,
+					 <&topckgen CLK_TOP_APLL12_DIVB>,
+					 /*<&topckgen CLK_TOP_APLL12_DIV5>,*/
+					 <&clk26m>;
+				clock-names = "aud_afe_clk",
+						  "aud_dac_clk",
+						  "aud_dac_predis_clk",
+						  "aud_adc_clk",
+						  "aud_adc_adda6_clk",
+						  "aud_apll22m_clk",
+						  "aud_apll24m_clk",
+						  "aud_apll1_tuner_clk",
+						  "aud_apll2_tuner_clk",
+						  "aud_i2s1_bclk_sw",
+						  "aud_i2s2_bclk_sw",
+						  "aud_i2s3_bclk_sw",
+						  "aud_i2s4_bclk_sw",
+						  "aud_tdm_clk",
+						  "aud_tml_clk",
+						  "aud_infra_clk",
+						  "mtkaif_26m_clk",
+						  "top_mux_audio",
+						  "top_mux_aud_intbus",
+						  "top_syspll_d2_d4",
+						  "top_mux_aud_1",
+						  "top_apll1_ck",
+						  "top_mux_aud_2",
+						  "top_apll2_ck",
+						  "top_mux_aud_eng1",
+						  "top_apll1_d8",
+						  "top_mux_aud_eng2",
+						  "top_apll2_d8",
+						  "top_i2s0_m_sel",
+						  "top_i2s1_m_sel",
+						  "top_i2s2_m_sel",
+						  "top_i2s3_m_sel",
+						  "top_i2s4_m_sel",
+						  "top_i2s5_m_sel",
+						  "top_apll12_div0",
+						  "top_apll12_div1",
+						  "top_apll12_div2",
+						  "top_apll12_div3",
+						  "top_apll12_div4",
+						  "top_apll12_divb",
+						  /*"top_apll12_div5",*/
+						  "top_clk26m_clk";
+			};
 		};
 
 		mmc0: mmc@11230000 {
-- 
2.32.0.93.g670b81a890-goog

