Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCA7850FFA6
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 15:54:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237850AbiDZN4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 09:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351219AbiDZN4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 09:56:48 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72BCC15CEC7
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:53:40 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b19so25559137wrh.11
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hO8uVhyORBvP7WeUtfTUf8CcXBR+w7H1dVOkhTVX69o=;
        b=5D3rmP5iwuE4GBHqGlhm38hSdktR2BWc+S8PxwVXPsTLn7jTcYbbwNacLE9HBYiXqO
         K7UqaSli/+RrDZMbUxSb+ef7+U0pkLlIZdLu42FAlMACYLy9CnPxoPymmOZoiMVF+5zR
         tMdSw3e+vvwXLKN61gt5RPMCrL3X1DoaMpq3MIwpPcexrcfPFqbZPx5q2CANFs2Mizcn
         KrciwOwA+N5X0ulwHbcXHvZTdYZHu8shJ2ocNsfUj6nNFjj3axvIuT0iaDKhDaFL0nqy
         6/6YDGalUCpGPaS2ahHjiT9qcwAtLqVCxTzOGV9/a9HTKB7Iwjccj5r/PlD29FHAnFcS
         NosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hO8uVhyORBvP7WeUtfTUf8CcXBR+w7H1dVOkhTVX69o=;
        b=fu88jDQUo4GB4txEGQD4BCYteUw0TD9hL/wAGpwGu/fnEDp/xpjDnBF51BAYaTz7ZH
         Vma9C5owDUZ1L0SOiaEfBfEuS1vHo9YoUFuHSlKwitba1b+W0Vm9DR1HvpLKt3MEBM8I
         vR5SAiRBfULbiRQl3kt58T2VLGnQVL0b1kQI5U/+dmXn4s9PAZpPU77Okifg8a96I2JE
         gOiXpOSO0MNTkOT9q7HgKqIFrfU7cuUyJlAiE2a6z4SabQFUMGKMLGkW/ie4YTvYBKL4
         UxXD29kD+fCTeOAGfu/Gav7RX6WtjsER4qbE4VVHuueYa6a3IGzFAvMC9ofQpNtggjDH
         vCSg==
X-Gm-Message-State: AOAM531hj+Ne0qkyv53EMdziCXtXgIrjs8jz2Gs2JWGAc/RV1fBH2p1C
        P8eWNpnty14ct2LqaOFfccGNPA==
X-Google-Smtp-Source: ABdhPJxNSjH6bRtukJ+ygK8xFIc9+tMEJYgqCui66uTCUWv9AFUaOwJ7lqJtvUQL5d0DJj+7ZiZa3Q==
X-Received: by 2002:a5d:64a3:0:b0:20a:7931:5b91 with SMTP id m3-20020a5d64a3000000b0020a79315b91mr18423211wrp.388.1650981219106;
        Tue, 26 Apr 2022 06:53:39 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id m35-20020a05600c3b2300b00393ebe201a6sm5504775wms.44.2022.04.26.06.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 06:53:38 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: dts: mediatek: mt8195-demo: define PMIC keys available
Date:   Tue, 26 Apr 2022 15:53:13 +0200
Message-Id: <20220426135313.245466-9-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220426135313.245466-1-fparent@baylibre.com>
References: <20220426135313.245466-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MT8195 Demo board has two push buttons connected to the PMIC: Home
button and Power button. This commit adds support for both.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
v2: new patch

 arch/arm64/boot/dts/mediatek/mt8195-demo.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
index aa41df865c9c..810e69c5f7e0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
@@ -246,6 +246,17 @@ &mmc1 {
 	status = "okay";
 };
 
+&mt6359keys {
+	key-0 {
+		linux,keycodes = <KEY_POWER>;
+		wakeup-source;
+	};
+
+	key-1 {
+		linux,keycodes = <KEY_HOME>;
+	};
+};
+
 &mt6359_vbbck_ldo_reg {
 	regulator-always-on;
 };
-- 
2.36.0

