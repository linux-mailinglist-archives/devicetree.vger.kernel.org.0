Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5580D50FF66
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 15:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351106AbiDZNpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 09:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351071AbiDZNpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 09:45:03 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8C0E3CA58
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:41:55 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id k2so5106251wrd.5
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lRfVC5aaQ4N6y57lWHZ8XzBxGf9B+nlX2tNH+pQF5EY=;
        b=Ohi3dOa+z+/2uqEnU+QGx15AYZjcV5LG3H81paqeYyTAEYMJCy/MmTBgSVtbIL4nRw
         yU3+HzaVaQEeG/ya92peeYASG7VtFTWsCVTT21PM+J/8bDS3/wD6G2O5SLVoEIWm61Py
         Oi5jIDHqqp4P86mP/fIG9bN6grsDjmLLiP5KCcvivwCkzYfhsGFxETfcEOLoa59Y5jhA
         RNe1MkZ17JrECnn/rQuVNH+7Esp7WumapPaNcDoqVtKYc2TuFkUXY6lQT3t8jddP+dCf
         7uhZ+z2ZpQ2mOtueekHx1CFNRrZGvs/4Nui1vf9up65ItkK8rh10R/L266I74UkknfeT
         jV0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lRfVC5aaQ4N6y57lWHZ8XzBxGf9B+nlX2tNH+pQF5EY=;
        b=13mqgzGyKizXHbiDBFfKCXONH1bGF0ZHZ3GiebOUrIOSVSq9PZ9u1hlC3Sq+3X/TZ7
         4/VgNcDgRmB1ytGqAQv3RolpFojFXS897KMHWTLwDnrm8DRoJmZkr2jM0OdyJL6K05Z6
         KpueFFZvyNTTLa/LCDMa3ribjzRHxkQTpJNUNUJEzBQE/dCF0mVWAlbNzZzD1329ZOh1
         03h1rocerHSBRh+hFS+euilMRVB0KUoABSS+kxnmrCUJLcvzTqVGhnIinNGukVZnEkLE
         6PzC8WmuBtaSYG581QaYvcnhAX6pMa7QAYNS2C9xMTEPnUDTrxr4WBxB2m7NAMhFBjaB
         a2Iw==
X-Gm-Message-State: AOAM5339mt1aptuCqeHlE0znf/uXSTRjCKRsljLCjoIldv647oZtYVC5
        Mg9zCFYHc2crmOzUW1QLh9q/TA==
X-Google-Smtp-Source: ABdhPJzBLZfCcm8hoYkEZchekZF0zzr274AwXjGp/5LtIjvGZKDbBEb1QoUBNKaQ+Aixc1sCq9/WyQ==
X-Received: by 2002:adf:ed8f:0:b0:20a:e2a7:7201 with SMTP id c15-20020adfed8f000000b0020ae2a77201mr3991412wro.26.1650980514411;
        Tue, 26 Apr 2022 06:41:54 -0700 (PDT)
Received: from radium.lan ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id b6-20020adfd1c6000000b0020aac8a9946sm13628475wrd.47.2022.04.26.06.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 06:41:54 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] arm64: dts: mediatek: mt8195-demo: Remove input-name property
Date:   Tue, 26 Apr 2022 15:41:04 +0200
Message-Id: <20220426134106.242353-7-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220426134106.242353-1-fparent@baylibre.com>
References: <20220426134106.242353-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property doesn't seem to exist in the documentation nor
in source code, let's remove it from the device-tree.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
This patch is related to [0].

[0] https://lore.kernel.org/all/20211123065158.1383182-1-danct12@riseup.net/

 arch/arm64/boot/dts/mediatek/mt8195-demo.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
index 0b7985486e2a..d1f650d99d7e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
@@ -35,7 +35,6 @@ optee {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		input-name = "gpio-keys";
 		pinctrl-names = "default";
 		pinctrl-0 = <&gpio_keys_pins>;
 
-- 
2.36.0

