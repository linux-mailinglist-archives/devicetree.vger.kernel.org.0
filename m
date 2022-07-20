Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7108957B8DB
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 16:49:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236325AbiGTOsx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 10:48:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236763AbiGTOst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 10:48:49 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C04A2528AA
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 07:48:43 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id h9so1389815wrm.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 07:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:date:subject:mime-version:content-transfer-encoding:message-id
         :references:in-reply-to:to:cc;
        bh=gQDJGZNgsqUtHpgMiFLZZA7/paFhPF+yVUYXcvVHSs4=;
        b=jWvb+ECCiickXJZCiLpfv+eAtXoL6RKmAzIinxV0NAV2ZFpFUzjSQMTGWH/ioJk54c
         WM+yJ0qYotLbZ7Ab3S4p4q5VPrOKdDw0IPyh6RKGkePFugxfcSfoLCKKVrhhZdLIbHYA
         YuKYzPBjY3Mo/28Q0U8+5FNBFkMy9YFyHVaDl+wjUAR267zKJlGW7I0dpgzcvYvvaQz6
         hKNBJz+CjbSJIp08nXtstVcxHE9BbQoA0WHlxZ9RWMEnCJlNY1tEMvAlfQIIJs31Khos
         witQDQ4775d0nxnh1BEviyI9PFhUz0t+fYPBaaO8a3avTfMXnpfMB0fvNGG5w2/id6yg
         JkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:date:subject:mime-version
         :content-transfer-encoding:message-id:references:in-reply-to:to:cc;
        bh=gQDJGZNgsqUtHpgMiFLZZA7/paFhPF+yVUYXcvVHSs4=;
        b=P6F1d8nfj/RnFctqBJZabGWcsJGKWxuMGJE4cP5PLGIo8K7WXz0pTjAM2MNP0n7zx4
         jXWx0cagSbb27zV1C8kiUXcfFv376sIuI9X9Ix/v7oOiKQI/LPWU6jN3Jb2r1itXTU3s
         ZV7MZRejGpGdv7HhtunwRn+MllazpgLTfrpVBK78Ieg6C9ao/Aiwbr8ZNIsxp3FKeIRT
         nNv9+tmSNrPAQy27PrySYiGOsZ9lveXnZ/5Sq0frAvFNCA7hgp7jGoNU7iLjDXz4HLP0
         y/fuWcOUIHNdYjol9hAaWturC4ququMEb+t9WJTPU0bhCso0+YSVFmlVAJI5kEKV2Ols
         TeBw==
X-Gm-Message-State: AJIora/EHGSzq6seHNN1np3maOqVFHKD4vBhuRlykGJzjHk8qMxvJgDS
        sIAp7mviaETQQUqZcjWr7L5ICg==
X-Google-Smtp-Source: AGRyM1vhz6wly+GUBEO58Zqu+ASDQ0cB1MEncpppa77b4G7K6pbiuEC/CLbU03zVZ2Y8w2dFJns6HA==
X-Received: by 2002:a5d:64e2:0:b0:21d:38e8:2497 with SMTP id g2-20020a5d64e2000000b0021d38e82497mr29420012wri.142.1658328522069;
        Wed, 20 Jul 2022 07:48:42 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb19:85e6:1900:c639:22f8:bed9:44dd])
        by smtp.gmail.com with ESMTPSA id f8-20020a05600c4e8800b003a31673515bsm3321121wmq.7.2022.07.20.07.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 07:48:41 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
Date:   Wed, 20 Jul 2022 16:48:40 +0200
Subject: [PATCH v1 4/6] Input: mt6779-keypad - support double keys matrix
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220720-mt8183-keypad-v1-4-ef9fc29dbff4@baylibre.com>
References: <20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com>
In-Reply-To: <20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.10.0-dev-54fef
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MediaTek keypad has 2 modes of detecting key events:
- single key: each (row, column) can detect one key
- double key: each (row, column) is a group of 2 keys

Double key support exists to minimize cost, since it reduces the number
of pins required for physical keys.

Double key is configured by setting BIT(0) of the KP_SEL register.

Enable double key matrix support based on the mediatek,double-keys
device tree property.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

diff --git a/drivers/input/keyboard/mt6779-keypad.c b/drivers/input/keyboard/mt6779-keypad.c
index bf447bf598fb..9a5dbd415dac 100644
--- a/drivers/input/keyboard/mt6779-keypad.c
+++ b/drivers/input/keyboard/mt6779-keypad.c
@@ -18,6 +18,7 @@
 #define MTK_KPD_DEBOUNCE_MASK	GENMASK(13, 0)
 #define MTK_KPD_DEBOUNCE_MAX_MS	256
 #define MTK_KPD_SEL		0x0020
+#define MTK_KPD_SEL_DOUBLE_KP_MODE	BIT(0)
 #define MTK_KPD_SEL_COL	GENMASK(15, 10)
 #define MTK_KPD_SEL_ROW	GENMASK(9, 4)
 #define MTK_KPD_SEL_COLMASK(c)	GENMASK((c) + 9, 10)
@@ -31,6 +32,7 @@ struct mt6779_keypad {
 	struct clk *clk;
 	u32 n_rows;
 	u32 n_cols;
+	bool double_keys;
 	DECLARE_BITMAP(keymap_state, MTK_KPD_NUM_BITS);
 };
 
@@ -67,8 +69,13 @@ static irqreturn_t mt6779_keypad_irq_handler(int irq, void *dev_id)
 			continue;
 
 		key = bit_nr / 32 * 16 + bit_nr % 32;
-		row = key / 9;
-		col = key % 9;
+		if (keypad->double_keys) {
+			row = key / 13;
+			col = (key % 13) / 2;
+		} else {
+			row = key / 9;
+			col = key % 9;
+		}
 
 		scancode = MATRIX_SCAN_CODE(row, col, row_shift);
 		/* 1: not pressed, 0: pressed */
@@ -150,6 +157,8 @@ static int mt6779_keypad_pdrv_probe(struct platform_device *pdev)
 
 	wakeup = device_property_read_bool(&pdev->dev, "wakeup-source");
 
+	keypad->double_keys = device_property_read_bool(&pdev->dev, "mediatek,double-keys");
+
 	dev_dbg(&pdev->dev, "n_row=%d n_col=%d debounce=%d\n",
 		keypad->n_rows, keypad->n_cols, debounce);
 
@@ -166,6 +175,10 @@ static int mt6779_keypad_pdrv_probe(struct platform_device *pdev)
 	regmap_write(keypad->regmap, MTK_KPD_DEBOUNCE,
 		     (debounce * (1 << 5)) & MTK_KPD_DEBOUNCE_MASK);
 
+	if (keypad->double_keys)
+		regmap_update_bits(keypad->regmap, MTK_KPD_SEL,
+				   MTK_KPD_SEL_DOUBLE_KP_MODE, MTK_KPD_SEL_DOUBLE_KP_MODE);
+
 	regmap_update_bits(keypad->regmap, MTK_KPD_SEL, MTK_KPD_SEL_ROW,
 			   MTK_KPD_SEL_ROWMASK(keypad->n_rows));
 	regmap_update_bits(keypad->regmap, MTK_KPD_SEL, MTK_KPD_SEL_COL,

-- 
b4 0.10.0-dev-54fef
