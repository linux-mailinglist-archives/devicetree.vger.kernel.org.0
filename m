Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E6E53B42A0
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 13:37:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230031AbhFYLj3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 07:39:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbhFYLj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 07:39:29 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCA1EC061574
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 04:37:07 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id d16so15725643lfn.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 04:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IL2ShTazcf5mL4VUs+5IwZEMug7nEaknzbx4PS2gI3c=;
        b=mwZxj4Oh2cTM+KEk7ag3FRQ0dTmwplZ+SYsDu9Obztf/HyQWQoaxMugCnlxAOk+npo
         rWg2uT2+VhJ/mZZtHSdQ6NGWZrlMujCARK2ktaef88vfZ8n3upwkSNBzr4GkN2bJ1E6Y
         0qCVwSGgDonNFzW+bGqWYSBheFuYvz45NaSG02C0Vi/IUrR+GkqtVxxBjOuQ2S8RhOtb
         3PfgqMh49iwvRx4+qcdoTi4Plr7rKxyZwFV7FB+686qBIeY557/+7TI8Sgs2pCOtBPb7
         eDK4PYnfTwbJ0uaAW3jn9sQkUFuvgkBvWH8J2Z/3oTpK3S8MqyDAdy4Ra7rj75xve/8l
         sKxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IL2ShTazcf5mL4VUs+5IwZEMug7nEaknzbx4PS2gI3c=;
        b=j40jYLu0gHP3L3a3595eD8EuPOKKb5Lz87RGmk/0urG5VMkEURkQRcIT059WgEDZ6G
         ABBhYzVacXq8yxb9rRRGVx1e1W0skSSrSRfOfEUGORp7cUWb4dRFpoDtK7qPdmIqQ5US
         7dtPoLTckFwC+gZa/Z+AKulJwDciCxO5Wg/nP06F8J3VZHw9mH0N7wfi4RANdh/VsKJP
         Ce00F5Exegoeel1YXmwI4RcBYiqKwG8FRfNsU55QlpF1Ywd+zEdvjyGkktyEb+dnGsbx
         AAJAZgzwg6m40U9jEyNgwTnrWgETW8YkLhxxQFzczHqjd8GdHTEIGapS7xjvkMN4keRF
         spyQ==
X-Gm-Message-State: AOAM532aSYFqJPtlXqUdDEGSXAYrXd4M5V9oiIfsaKcVE2ySfoPfE0nv
        liD2M7rsnlMF4C/3nbVblsp7kg==
X-Google-Smtp-Source: ABdhPJybdsBoGjiyznIk7bKHZHJdtIXnVs8HxueVSOHPey6gEwYkhgGfIQRvjJzgCKjeQy9pyKkG8Q==
X-Received: by 2002:ac2:4650:: with SMTP id s16mr7809807lfo.436.1624621026257;
        Fri, 25 Jun 2021 04:37:06 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id g24sm489682lfv.228.2021.06.25.04.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 04:37:06 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Michael Srba <Michael.Srba@seznam.cz>,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] Input: zinitix - Handle proper supply names
Date:   Fri, 25 Jun 2021 13:34:35 +0200
Message-Id: <20210625113435.2539282-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210625113435.2539282-1-linus.walleij@linaro.org>
References: <20210625113435.2539282-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The supply names of the Zinitix touchscreen were a bit confused, the new
bindings rectifies this.

To deal with old and new devicetrees, first check if we have "vddo" and in
case that exists assume the old supply names. Else go and look for the new
ones.

We cannot just get the regulators since we would get an OK and a dummy
regulator: we need to check explicitly for the old supply name.

Use struct device *dev as a local variable instead of the I2C client since
the device is what we are actually obtaining the resources from.

Cc: Mark Brown <broonie@kernel.org>
Cc: Michael Srba <Michael.Srba@seznam.cz>
Cc: phone-devel@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Mark: please check that I'm doing this check the right way, I assume
that since we get regulator dummies this is the way I need to check
for the old regulator name but maybe there are better ways.
---
 drivers/input/touchscreen/zinitix.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/input/touchscreen/zinitix.c b/drivers/input/touchscreen/zinitix.c
index b8d901099378..7001307382f0 100644
--- a/drivers/input/touchscreen/zinitix.c
+++ b/drivers/input/touchscreen/zinitix.c
@@ -252,16 +252,28 @@ static int zinitix_init_touch(struct bt541_ts_data *bt541)
 
 static int zinitix_init_regulators(struct bt541_ts_data *bt541)
 {
-	struct i2c_client *client = bt541->client;
+	struct device *dev = &bt541->client->dev;
 	int error;
 
-	bt541->supplies[0].supply = "vdd";
-	bt541->supplies[1].supply = "vddo";
-	error = devm_regulator_bulk_get(&client->dev,
+	/*
+	 * Some older device trees have erroneous names for the regulators,
+	 * so check if "vddo" is present and in that case use these names
+	 * and warn. Else use the proper supply names on the component.
+	 */
+	if (IS_ENABLED(CONFIG_OF) &&
+	    of_property_read_bool(dev->of_node, "vddo-supply")) {
+		bt541->supplies[0].supply = "vdd";
+		bt541->supplies[1].supply = "vddo";
+	} else {
+		/* Else use the proper supply names */
+		bt541->supplies[0].supply = "vcca";
+		bt541->supplies[1].supply = "vdd";
+	}
+	error = devm_regulator_bulk_get(dev,
 					ARRAY_SIZE(bt541->supplies),
 					bt541->supplies);
 	if (error < 0) {
-		dev_err(&client->dev, "Failed to get regulators: %d\n", error);
+		dev_err(dev, "Failed to get regulators: %d\n", error);
 		return error;
 	}
 
-- 
2.31.1

