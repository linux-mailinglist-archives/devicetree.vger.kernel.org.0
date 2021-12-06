Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9148469244
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 10:23:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240570AbhLFJ0X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 04:26:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240549AbhLFJ0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 04:26:23 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CBF4C061746
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 01:22:54 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id i5so21059269wrb.2
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 01:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Dg2nJC1O6IbRPxLXBfbFW+MFYJhvpSqNI82PsUMD0aQ=;
        b=mAKmXL1xmCoPGLKMpyekdZGiAHv/yfVXgSdB94YC7KNzhaSWftE3mHWkR8sqW7EPQH
         XAVjDMoEwfg5opCkcnWm/aadzEx96TzDqaQ8OLKGPrbUq5w45wobaM6w8oF3nfv0ISyV
         mWUPhVe6SPfcIxe5ZrPwRqQMT9tCBdQfyfjnOqD9kWVdt7PWprK1/KQEn6fYCIOevLRz
         shfV4G9BLg+fob6ZeMKgkwNIPu4D/lGvOeqGtG3Rr2frovkLVsYGBaUQrS68NNJdx7H2
         PYByp8LSbXtq6t1hVTCsXcrkvdlm3GnW175i+5lhxyBNe8dZhZuG3prmsNUQrSXgH6Gv
         xQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dg2nJC1O6IbRPxLXBfbFW+MFYJhvpSqNI82PsUMD0aQ=;
        b=O8BGBxFDiCxD2DzR3vFOEDNcuiCpi93pnE9vl+hmGO20LdWIRawsQXexnujlIuELrd
         pEQrN4yxMzUae2J1Zx4+C/Y7iczUX0exuNxvbKCkddZakLQz3IfMHJR+p0JxmihKWGoR
         92kkdTtDQ2iEbtpWAxrypDvLKu0RnYXCfPvNyx958WvBobxhjytG00n7KlrWM1WTeSqE
         uNEFPP4v4sJupEQj/O9OUSamg0mWFjchc9ViZqy7QF/3ES4LRUGdk4XtRRAGzoPmCkBM
         ejzFSujv7TPFa9N+yaQLF277/wUtGl5dAq3fDXVzY2A9S0MjfRLWG47I8ITonPUZUEww
         G4fg==
X-Gm-Message-State: AOAM5312mjeMIGpUDZSw9xloDeJ0Y2GTVV4GLsZAsVOIy7KkXzWYcgJ9
        f50PmtwYSd4LL0tIVH2xwmUkUg==
X-Google-Smtp-Source: ABdhPJyJkJZH2TbANga3DvBZi85tRRAx17Rc/0rc8RwFSScLux4g81lCHH94ImU9ntjDnDW34qQVcg==
X-Received: by 2002:a05:6000:2ae:: with SMTP id l14mr42112607wry.142.1638782573092;
        Mon, 06 Dec 2021 01:22:53 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
        by smtp.gmail.com with ESMTPSA id b10sm10746365wrt.36.2021.12.06.01.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 01:22:52 -0800 (PST)
From:   Phil Elwell <phil@raspberrypi.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Linus Walleij <linus.walleij@linaro.org>,
        Phil Elwell <phil@raspberrypi.com>,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Subject: [PATCH v2 1/2] pinctrl: bcm2835: Change init order for gpio hogs
Date:   Mon,  6 Dec 2021 09:22:36 +0000
Message-Id: <20211206092237.4105895-2-phil@raspberrypi.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206092237.4105895-1-phil@raspberrypi.com>
References: <20211206092237.4105895-1-phil@raspberrypi.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

...and gpio-ranges

pinctrl-bcm2835 is a combined pinctrl/gpio driver. Currently the gpio
side is registered first, but this breaks gpio hogs (which are
configured during gpiochip_add_data). Part of the hog initialisation
is a call to pinctrl_gpio_request, and since the pinctrl driver hasn't
yet been registered this results in an -EPROBE_DEFER from which it can
never recover.

Change the initialisation sequence to register the pinctrl driver
first.

This also solves a similar problem with the gpio-ranges property, which
is required in order for released pins to be returned to inputs.

Fixes: 73345a18d464b ("pinctrl: bcm2835: Pass irqchip when adding gpiochip")
Signed-off-by: Phil Elwell <phil@raspberrypi.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 29 +++++++++++++++------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 2abcc6ce4eba3..b607d10e4cbd8 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -1244,6 +1244,18 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 		raw_spin_lock_init(&pc->irq_lock[i]);
 	}
 
+	pc->pctl_desc = *pdata->pctl_desc;
+	pc->pctl_dev = devm_pinctrl_register(dev, &pc->pctl_desc, pc);
+	if (IS_ERR(pc->pctl_dev)) {
+		gpiochip_remove(&pc->gpio_chip);
+		return PTR_ERR(pc->pctl_dev);
+	}
+
+	pc->gpio_range = *pdata->gpio_range;
+	pc->gpio_range.base = pc->gpio_chip.base;
+	pc->gpio_range.gc = &pc->gpio_chip;
+	pinctrl_add_gpio_range(pc->pctl_dev, &pc->gpio_range);
+
 	girq = &pc->gpio_chip.irq;
 	girq->chip = &bcm2835_gpio_irq_chip;
 	girq->parent_handler = bcm2835_gpio_irq_handler;
@@ -1251,8 +1263,10 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	girq->parents = devm_kcalloc(dev, BCM2835_NUM_IRQS,
 				     sizeof(*girq->parents),
 				     GFP_KERNEL);
-	if (!girq->parents)
+	if (!girq->parents) {
+		pinctrl_remove_gpio_range(pc->pctl_dev, &pc->gpio_range);
 		return -ENOMEM;
+	}
 
 	if (is_7211) {
 		pc->wake_irq = devm_kcalloc(dev, BCM2835_NUM_IRQS,
@@ -1307,21 +1321,10 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	err = gpiochip_add_data(&pc->gpio_chip, pc);
 	if (err) {
 		dev_err(dev, "could not add GPIO chip\n");
+		pinctrl_remove_gpio_range(pc->pctl_dev, &pc->gpio_range);
 		return err;
 	}
 
-	pc->pctl_desc = *pdata->pctl_desc;
-	pc->pctl_dev = devm_pinctrl_register(dev, &pc->pctl_desc, pc);
-	if (IS_ERR(pc->pctl_dev)) {
-		gpiochip_remove(&pc->gpio_chip);
-		return PTR_ERR(pc->pctl_dev);
-	}
-
-	pc->gpio_range = *pdata->gpio_range;
-	pc->gpio_range.base = pc->gpio_chip.base;
-	pc->gpio_range.gc = &pc->gpio_chip;
-	pinctrl_add_gpio_range(pc->pctl_dev, &pc->gpio_range);
-
 	return 0;
 }
 
-- 
2.25.1

