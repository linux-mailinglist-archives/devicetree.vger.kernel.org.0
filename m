Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74880679554
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 11:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233789AbjAXKe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 05:34:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233724AbjAXKen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 05:34:43 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC5EA41B4C
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:35 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id t18so589537wro.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/NL6LDV95iKUZ88QALB+Ce5cz9NNofOXuE/jp4Jy9qw=;
        b=xWCpo//8yl7WQy6B4hKsdIkck3nEgqtIZjdp8sjH8WD4jjGVX98v0nBtUNbi5QhZ0m
         +hX1wkilEisWngPsc/sDDIpWwqLnL2KzzvCo2y+JlR4mKfQE/koHINDa+H9MFlF2I8Xf
         DY0tRSLHx/SSm13nKDB21XitbYhuF8kdQS0anj0VYqHyjnJiiCvC0k4ZCt1zQVoRldwC
         1r+mNQjD9JpejtwqTubrPk3IDMstJ/PQGGQNaNLxn51KYeB1jk17UxS22gDDdqncTE3D
         uk0Yb+MIuUNYTgEwRH/679IW3eQyVIPtyUwcQp3K7wNbIJkWAq30/F+egXZ4BpKsN7+M
         WSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/NL6LDV95iKUZ88QALB+Ce5cz9NNofOXuE/jp4Jy9qw=;
        b=JY+N8lvTDgDjofMPKNRK7OekfjXC1DPkQasJncGXp2aacsgPljAVPAPlyHXpN9EE15
         Q1V5l/F6fQBRBpGOhOx5/o984F97ukBVk/PQdA9qi1rqnQZ0pUERwm6CWgi/+RC3kvHa
         oP8CWqO7C2cbveWmbD3bra8esCM75vZKQ1DrsDRjxnkRLpRLleI/OmWloUMoJ9u7/UGw
         1gwo/j+nood1sye9WT8XRNghgCAqSkmpELL14y1dmU3TNp1CmAn15OgcpkyMLVCcradt
         d+cX5zuPYhl6h5AWYTKRDuQkV1APeM1tc5mcxBHGII0S0thprTdu1HL5QPM4hbm4tzsQ
         gfMQ==
X-Gm-Message-State: AFqh2kphOOPi9xBYJt2hFdbFfabq6fRUQSMn24bqJ6YmNuHAlp5o6/xy
        EPLRDFhcdCAhhTjna0EgthrBMg==
X-Google-Smtp-Source: AMrXdXvlr09valTA39LZgwlGfqTP2jevf0EhtZ35RPqMyoekiYwexPBukO4Bade+FoUIUDDAHDi6IQ==
X-Received: by 2002:a5d:660b:0:b0:25d:4dfb:790c with SMTP id n11-20020a5d660b000000b0025d4dfb790cmr23823487wru.13.1674556474226;
        Tue, 24 Jan 2023 02:34:34 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q6-20020adfcd86000000b002bded7da2b8sm1551889wrj.102.2023.01.24.02.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 02:34:33 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 24 Jan 2023 11:34:32 +0100
Subject: [PATCH 11/14] arm64: dts: amlogic: meson-sm1-bananapi-m5: fix adc
 keys node names
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230124-b4-amlogic-bindings-fixups-v1-11-44351528957e@linaro.org>
References: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
In-Reply-To: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes:
adc_keys: 'key' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'

Also fix the invalid "adc_keys" node name.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
index 028220ed45ad..bfc500df9dcb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
@@ -17,13 +17,13 @@ / {
 	compatible = "bananapi,bpi-m5", "amlogic,sm1";
 	model = "Banana Pi BPI-M5";
 
-	adc_keys {
+	adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 2>;
 		io-channel-names = "buttons";
 		keyup-threshold-microvolt = <1800000>;
 
-		key {
+		button-sw3 {
 			label = "SW3";
 			linux,code = <BTN_3>;
 			press-threshold-microvolt = <1700000>;

-- 
2.34.1

