Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BFE763F7D6
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 20:04:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230310AbiLATE1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 14:04:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230284AbiLATEZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 14:04:25 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B66C5E04
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 11:04:21 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id o7-20020a05600c510700b003cffc0b3374so2451190wms.0
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 11:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qE6FZaBNq2c3NfrJBONCVhF9AJEc6RhOGgZ53GWa0kQ=;
        b=EwynONOVI8DWNTiylBys76ZhwXbVnV/jx/Tf27Dpa9AdDOwqA+e9Nl0PtBzyghyZCe
         bBjsA03zq/sCuWi/VwfVNmY5gzHQAAaXNvpbLIW82RTnz86Vjkcd1zhXYCJniQvZwrCI
         J1TZ9ST/Io8ZkevskrrPUWvNbyqVQWodnI6kW3Ji51EE10efdHkvz6Vzvx6iNUsaY0Rt
         uH95oEaGw0uWSXCb0od6sV/EFiTxPSBwyoSBYMiEyErxmWREzt7IzRzvL8beUyiRS1cI
         SxjfAT5+hRsDUXEmF+YR98aVfVG5h+BeDphtv5xy0L7o82M4j86FNuNIkQC6MtUc/9gm
         WoDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qE6FZaBNq2c3NfrJBONCVhF9AJEc6RhOGgZ53GWa0kQ=;
        b=Z4Kgeir23MfC/Q4nYlXxKb2Ntn9aeEDMZr22RYy1Ju+Lpg8+bpEGEpcfgEjO9lfHvJ
         9Q5tfa8thsAL4wxhY+YZJUkYjmxlS7vWIX5f4/wtZdvWoObKXPHue5uXE6fzfnJtBfP0
         8r7nvEckiC5gyJeW1OLzexyGaBtA+xajgyd7eMRFmToc2ufktEiyj22dYnmiR2xHAN7C
         Ow/0XeRwqA3zvcyTfZRnDyvzfJgzZO5WHoT84C0hXYVHZrA9cyuYHBqJJHgijYbnCSYm
         IwMHoPGoFmoWxJGeRqLsOFlb/NPLZKj9Sf9q6tdgr9DgtOgqbEccniyaB9P1T5Gfc3rF
         ujjw==
X-Gm-Message-State: ANoB5pnu4uZl7d0VlAYkgrj6ZGSqoJE3+BiysESyts/pLxelYIXCBiRU
        BklBAaIYcSalkMI22VIlFDxFUqMfmgtAVLGv
X-Google-Smtp-Source: AA0mqf7K1QfjjNCBXJhkdQL2S1F/rR+TKAo0lsRHIEOUQ2msE399ETIyh+LC8baLYRp+Hk2ys9QWEg==
X-Received: by 2002:a1c:6a01:0:b0:3cf:a895:a9cb with SMTP id f1-20020a1c6a01000000b003cfa895a9cbmr52719829wmc.96.1669921460003;
        Thu, 01 Dec 2022 11:04:20 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id h20-20020a05600c351400b003c6cd82596esm11848474wmq.43.2022.12.01.11.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 11:04:19 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v4 2/5] hwmon: (pmbus/core): Add interrupt support
Date:   Thu,  1 Dec 2022 20:03:51 +0100
Message-Id: <20221201190354.1512790-2-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221201190354.1512790-1-Naresh.Solanki@9elements.com>
References: <20221201190354.1512790-1-Naresh.Solanki@9elements.com>
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

From: Patrick Rudolph <patrick.rudolph@9elements.com>

Implement PMBUS irq handler.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
 drivers/hwmon/pmbus/pmbus.h      |  2 +-
 drivers/hwmon/pmbus/pmbus_core.c | 89 ++++++++++++++++++++++++++++++++
 2 files changed, 90 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/pmbus/pmbus.h b/drivers/hwmon/pmbus/pmbus.h
index 10fb17879f8e..6b2e6cf93b19 100644
--- a/drivers/hwmon/pmbus/pmbus.h
+++ b/drivers/hwmon/pmbus/pmbus.h
@@ -26,7 +26,7 @@ enum pmbus_regs {
 
 	PMBUS_CAPABILITY		= 0x19,
 	PMBUS_QUERY			= 0x1A,
-
+	PMBUS_SMBALERT_MASK		= 0x1B,
 	PMBUS_VOUT_MODE			= 0x20,
 	PMBUS_VOUT_COMMAND		= 0x21,
 	PMBUS_VOUT_TRIM			= 0x22,
diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/pmbus_core.c
index 7a23794c0b93..bdcbc216b0cc 100644
--- a/drivers/hwmon/pmbus/pmbus_core.c
+++ b/drivers/hwmon/pmbus/pmbus_core.c
@@ -3078,11 +3078,94 @@ static int pmbus_regulator_register(struct pmbus_data *data)
 
 	return 0;
 }
+
+static int pmbus_write_smbalert_mask(struct i2c_client *client, u8 page, u8 reg, u8 val)
+{
+	return pmbus_write_word_data(client, page, PMBUS_SMBALERT_MASK, reg | (val << 8));
+}
+
+static irqreturn_t pmbus_fault_handler(int irq, void *pdata)
+{
+	struct pmbus_data *data = pdata;
+	struct i2c_client *client = to_i2c_client(data->dev);
+	int i, status;
+	u8 page;
+
+	for (i = 0; i < data->info->num_regulators; i++) {
+
+		if (!data->rdevs[i])
+			continue;
+
+		page = rdev_get_id(data->rdevs[i]);
+		mutex_lock(&data->update_lock);
+		status = pmbus_read_status_word(client, page);
+		if (status < 0) {
+			mutex_unlock(&data->update_lock);
+			return status;
+		}
+
+		if (status & ~(PB_STATUS_OFF | PB_STATUS_BUSY | PB_STATUS_POWER_GOOD_N))
+			pmbus_clear_fault_page(client, page);
+
+		mutex_unlock(&data->update_lock);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int pmbus_irq_setup(struct i2c_client *client, struct pmbus_data *data)
+{
+	struct device *dev = &client->dev;
+	const struct pmbus_regulator_status_category *cat;
+	const struct pmbus_regulator_status_assoc *bit;
+	int i, j, err, ret, func;
+	u8 mask;
+
+	for (i = 0; i < data->info->pages; i++) {
+		func = data->info->func[i];
+
+		for (j = 0; j < ARRAY_SIZE(pmbus_regulator_flag_map); j++) {
+			cat = &pmbus_regulator_flag_map[j];
+			if (!(func & cat->func))
+				continue;
+			mask = 0;
+			for (bit = cat->bits; bit->pflag; bit++)
+				mask |= bit->pflag;
+
+			err = pmbus_write_smbalert_mask(client, i, cat->reg, ~mask);
+			if (err)
+				dev_err(dev, "Failed to set smbalert for reg 0x%02x\n",	cat->reg);
+		}
+
+		pmbus_write_smbalert_mask(client, i, PMBUS_STATUS_CML, 0xff);
+		pmbus_write_smbalert_mask(client, i, PMBUS_STATUS_OTHER, 0xff);
+		pmbus_write_smbalert_mask(client, i, PMBUS_STATUS_MFR_SPECIFIC, 0xff);
+		if (data->info->func[i] & PMBUS_HAVE_FAN12)
+			pmbus_write_smbalert_mask(client, i, PMBUS_STATUS_FAN_12, 0xff);
+		if (data->info->func[i] & PMBUS_HAVE_FAN34)
+			pmbus_write_smbalert_mask(client, i, PMBUS_STATUS_FAN_34, 0xff);
+	}
+
+	/* Register notifiers - can fail if IRQ is not given */
+	ret = devm_request_threaded_irq(dev, client->irq, NULL, pmbus_fault_handler,
+			      0, "pmbus-irq", data);
+	if (ret) {
+		dev_warn(dev, "IRQ disabled %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
 #else
 static int pmbus_regulator_register(struct pmbus_data *data)
 {
 	return 0;
 }
+static int pmbus_irq_setup(struct i2c_client *client, struct pmbus_data *data)
+{
+	return 0;
+}
 #endif
 
 static struct dentry *pmbus_debugfs_dir;	/* pmbus debugfs directory */
@@ -3447,6 +3530,12 @@ int pmbus_do_probe(struct i2c_client *client, struct pmbus_driver_info *info)
 	if (ret)
 		return ret;
 
+	if (client->irq > 0) {
+		ret = pmbus_irq_setup(client, data);
+		if (ret)
+			return ret;
+	}
+
 	ret = pmbus_init_debugfs(client, data);
 	if (ret)
 		dev_warn(dev, "Failed to register debugfs\n");
-- 
2.37.3

