Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 850E418E23
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 18:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727454AbfEIQ3r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 12:29:47 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:42630 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727432AbfEIQ33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 12:29:29 -0400
Received: by mail-wr1-f67.google.com with SMTP id l2so3900807wrb.9
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 09:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vmeMuMSDMRsdloGxuoikGok3kV3ygZ9BvAD0hdZ7+1Q=;
        b=M7g8EkqmvRrEK7koH/I8Kj1kubFPWigS6HT0fcBopuqWq6SnSLdzjd+eubupKFJI4i
         YGDwcdR/5lRYsBsRlACF3H4pHAfoY7mphC1mMDkk881qa6DNjfbOy7jeIjvkLnZcWgxu
         K4L3MBFd4sXJTvkKtg3ODCpogtLmWYr7agApw9asekiBLNjRelZwGw6T6qxEvPnISFJ3
         OO/S+2US00AnP1F7w+N9wTTmLXYfza8zcGcHC0VJt3ikurVHGHm/EnRxNrXO7ELpoRvT
         WeV/R0GQ4ndrXz08DqgjUFzn6R/z1R9K7D0VdX8H23y+bhodq8+c6viI/xYUUktpfBf/
         1p5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vmeMuMSDMRsdloGxuoikGok3kV3ygZ9BvAD0hdZ7+1Q=;
        b=mD+jTL60Z+CwAErwOgzCbVGbkD4fWjoGVfJMCS+Pxu2m0ylERt9bHaNiWURoPdi4V3
         DEVZrF3VFrUlHdAyEaUPoDwGwZ0I+2CWejquEP6G1wDtzJgItHK19YxWJ2D4CdBZr6qh
         Kp2jthcGNNEhChBHjXRya3CSkVbPZe16QXGe5eeqUnqCSc0xJLi8v32kzXTzIK3Drh9U
         eDzKPdrFYIMwGl+dWxi5Otr1Qbppf2lkFCBMpvd9OSsm8n+TiS3TjTiij/ytxjfvnZK0
         AWkU+AWXi53NP7/DKKZgEhxoJaw6BXeeMZBk/UqUBVlCALqMZLCpRH1syVbZACkpJhHM
         tRMw==
X-Gm-Message-State: APjAAAXH1SXCBdb+DOZ36eS/P1KPjg9BXjNAXUJAwoS/F3c0h4/4dpP7
        dkVcLMzlDN/rgzu1Hdcl6Zsh8A==
X-Google-Smtp-Source: APXvYqxCuk1s27H8O/HjRxYrETBY3Dle2aP7hp3wHINxTaUhtWUEE3HBtL+EIIDnypQegrvcf8zy+g==
X-Received: by 2002:adf:da4a:: with SMTP id r10mr3858823wrl.216.1557419366867;
        Thu, 09 May 2019 09:29:26 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home ([2a01:cb1d:379:8b00:1910:6694:7019:d3a])
        by smtp.gmail.com with ESMTPSA id k2sm4116297wrg.22.2019.05.09.09.29.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 09:29:26 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     linus.walleij@linaro.org, khilman@baylibre.com
Cc:     jbrunet@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/6] pinctrl: meson: Rework enable/disable bias part
Date:   Thu,  9 May 2019 18:29:18 +0200
Message-Id: <20190509162920.7054-5-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509162920.7054-1-glaroque@baylibre.com>
References: <20190509162920.7054-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

rework bias enable/disable part to prepare drive-strength integration
no functional changes

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 drivers/pinctrl/meson/pinctrl-meson.c | 85 +++++++++++++++------------
 1 file changed, 49 insertions(+), 36 deletions(-)

diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index 96a4a72708e4..8ea5c1527064 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -174,62 +174,75 @@ int meson_pmx_get_groups(struct pinctrl_dev *pcdev, unsigned selector,
 	return 0;
 }
 
-static int meson_pinconf_set(struct pinctrl_dev *pcdev, unsigned int pin,
-			     unsigned long *configs, unsigned num_configs)
+static int meson_pinconf_disable_bias(struct meson_pinctrl *pc,
+				      unsigned int pin)
 {
-	struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);
 	struct meson_bank *bank;
-	enum pin_config_param param;
-	unsigned int reg, bit;
-	int i, ret;
+	unsigned int reg, bit = 0;
+	int ret;
 
 	ret = meson_get_bank(pc, pin, &bank);
 	if (ret)
 		return ret;
 
+	meson_calc_reg_and_bit(bank, pin, REG_PULLEN, &reg, &bit);
+	ret = regmap_update_bits(pc->reg_pullen, reg, BIT(bit), 0);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int meson_pinconf_enable_bias(struct meson_pinctrl *pc, unsigned int pin,
+				     bool pull_up)
+{
+	struct meson_bank *bank;
+	unsigned int reg, bit, val = 0;
+	int ret;
+
+	ret = meson_get_bank(pc, pin, &bank);
+	if (ret)
+		return ret;
+
+	meson_calc_reg_and_bit(bank, pin, REG_PULL, &reg, &bit);
+	if (pull_up)
+		val = BIT(bit);
+
+	ret = regmap_update_bits(pc->reg_pull, reg, BIT(bit), val);
+	if (ret)
+		return ret;
+
+	meson_calc_reg_and_bit(bank, pin, REG_PULLEN, &reg, &bit);
+	ret = regmap_update_bits(pc->reg_pullen, reg, BIT(bit),	BIT(bit));
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int meson_pinconf_set(struct pinctrl_dev *pcdev, unsigned int pin,
+			     unsigned long *configs, unsigned num_configs)
+{
+	struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);
+	enum pin_config_param param;
+	int i, ret;
+
 	for (i = 0; i < num_configs; i++) {
 		param = pinconf_to_config_param(configs[i]);
 
 		switch (param) {
 		case PIN_CONFIG_BIAS_DISABLE:
-			dev_dbg(pc->dev, "pin %u: disable bias\n", pin);
-
-			meson_calc_reg_and_bit(bank, pin, REG_PULLEN, &reg,
-					       &bit);
-			ret = regmap_update_bits(pc->reg_pullen, reg,
-						 BIT(bit), 0);
+			ret = meson_pinconf_disable_bias(pc, pin);
 			if (ret)
 				return ret;
 			break;
 		case PIN_CONFIG_BIAS_PULL_UP:
-			dev_dbg(pc->dev, "pin %u: enable pull-up\n", pin);
-
-			meson_calc_reg_and_bit(bank, pin, REG_PULLEN,
-					       &reg, &bit);
-			ret = regmap_update_bits(pc->reg_pullen, reg,
-						 BIT(bit), BIT(bit));
-			if (ret)
-				return ret;
-
-			meson_calc_reg_and_bit(bank, pin, REG_PULL, &reg, &bit);
-			ret = regmap_update_bits(pc->reg_pull, reg,
-						 BIT(bit), BIT(bit));
+			ret = meson_pinconf_enable_bias(pc, pin, true);
 			if (ret)
 				return ret;
 			break;
 		case PIN_CONFIG_BIAS_PULL_DOWN:
-			dev_dbg(pc->dev, "pin %u: enable pull-down\n", pin);
-
-			meson_calc_reg_and_bit(bank, pin, REG_PULLEN,
-					       &reg, &bit);
-			ret = regmap_update_bits(pc->reg_pullen, reg,
-						 BIT(bit), BIT(bit));
-			if (ret)
-				return ret;
-
-			meson_calc_reg_and_bit(bank, pin, REG_PULL, &reg, &bit);
-			ret = regmap_update_bits(pc->reg_pull, reg,
-						 BIT(bit), 0);
+			ret = meson_pinconf_enable_bias(pc, pin, false);
 			if (ret)
 				return ret;
 			break;
-- 
2.17.1

