Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75E6523B112
	for <lists+devicetree@lfdr.de>; Tue,  4 Aug 2020 01:42:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729028AbgHCXm2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Aug 2020 19:42:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728997AbgHCXmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Aug 2020 19:42:14 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AFD1C06174A
        for <devicetree@vger.kernel.org>; Mon,  3 Aug 2020 16:42:14 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id q75so32211288iod.1
        for <devicetree@vger.kernel.org>; Mon, 03 Aug 2020 16:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Lln6JBYYKdkFr9fLVLldmukzP3b+qcX1x2upAv1i08M=;
        b=H5mu5GLEbAav9nWv/vcrIv0kD3UYIsL3qvoKbPqU02gHbkTG0Yw4Mai4/Xsr0ZAWbA
         zJXT4mQuuojDD1UV5GyyTD1XkLIEVCsKuSiKEPFHSeHgRmLD83RxMoV75LGx28K7RBy6
         0Y2gAgqxnCLM0YmO/9/tMORLfLrEoEZYC8aXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lln6JBYYKdkFr9fLVLldmukzP3b+qcX1x2upAv1i08M=;
        b=bQGQPD9M5BoA+G6FHod8C4Q6dUT18FGRGb+6/5mhNXZoiPTsOxV550AVAW3KUkRH+J
         qtM1z+c/6HicXUpm37O14h0V5FK2NglVMP+874YqZ4JKsTYeADmkQeMGSPie2hZLZ7VD
         4hK8OEMM2ZLJj5eDFwDUNaZqXrXDpvGT6qcEe8dUHJYl/R+b2TJ4q/cNFeClQ4yEyDEr
         rVmuW9W9zjac70UJuDSw40kk7OSWezTGSy/GAl/onaSIdg0PHKHCeghmR8dxM0MKe++4
         2OlT1ta2kCwv4cHIMpTKX2J858e4PVr3IPukM18TdAX/uQzG1S5bKQf3I9+XzLX/w2S1
         UsuQ==
X-Gm-Message-State: AOAM531lUDLoMh3iwOQLi/zm6Tz7o/b5QwsRYoi10EuD+mtkiRdAh4/E
        KZ8v0pu5VwC6XALQlBgXBk7GAjqFbSgT3w==
X-Google-Smtp-Source: ABdhPJwbfKLAgwd0K36OIo7YxxvBfOar8ndgtPuTAxf05fkRkAywntsLzGTdLBgjVcA8fbm/DbBPKQ==
X-Received: by 2002:a6b:b7ce:: with SMTP id h197mr2414554iof.60.1596498133234;
        Mon, 03 Aug 2020 16:42:13 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id g2sm5468435ioe.4.2020.08.03.16.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 16:42:12 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Daniel Campello <campello@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        linux-iio@vger.kernel.org
Subject: [PATCH v4 14/15] iio: sx9310: Enable vdd and svdd regulators at probe
Date:   Mon,  3 Aug 2020 17:41:53 -0600
Message-Id: <20200803131544.v4.14.Ib7bdc8340021d8515b430498fb6686eedf22c9f2@changeid>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
In-Reply-To: <20200803234154.320400-1-campello@chromium.org>
References: <20200803234154.320400-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stephen Boyd <swboyd@chromium.org>

Enable the main power supply (vdd) and digital IO power supply (svdd)
during probe so that the i2c communication and device works properly on
boards that aggressively power gate these supplies.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Daniel Campello <campello@chromium.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---

Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/iio/proximity/sx9310.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index 2e0ea84dba2118..a6e345bb9ffe5c 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -19,6 +19,7 @@
 #include <linux/module.h>
 #include <linux/pm.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 
 #include <linux/iio/buffer.h>
@@ -119,6 +120,7 @@ struct sx9310_data {
 	struct i2c_client *client;
 	struct iio_trigger *trig;
 	struct regmap *regmap;
+	struct regulator_bulk_data supplies[2];
 	/*
 	 * Last reading of the proximity status for each channel.
 	 * We only send an event to user space when this changes.
@@ -875,6 +877,13 @@ static int sx9310_set_indio_dev_name(struct device *dev,
 	return 0;
 }
 
+static void sx9310_regulator_disable(void *_data)
+{
+	struct sx9310_data *data = _data;
+
+	regulator_bulk_disable(ARRAY_SIZE(data->supplies), data->supplies);
+}
+
 static int sx9310_probe(struct i2c_client *client)
 {
 	int ret;
@@ -888,6 +897,8 @@ static int sx9310_probe(struct i2c_client *client)
 
 	data = iio_priv(indio_dev);
 	data->client = client;
+	data->supplies[0].supply = "vdd";
+	data->supplies[1].supply = "svdd";
 	mutex_init(&data->mutex);
 	init_completion(&data->completion);
 
@@ -895,6 +906,21 @@ static int sx9310_probe(struct i2c_client *client)
 	if (IS_ERR(data->regmap))
 		return PTR_ERR(data->regmap);
 
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(data->supplies),
+				      data->supplies);
+	if (ret)
+		return ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(data->supplies), data->supplies);
+	if (ret)
+		return ret;
+	/* Must wait for Tpor time after initial power up */
+	usleep_range(1000, 1100);
+
+	ret = devm_add_action_or_reset(dev, sx9310_regulator_disable, data);
+	if (ret)
+		return ret;
+
 	ret = regmap_read(data->regmap, SX9310_REG_WHOAMI, &data->whoami);
 	if (ret) {
 		dev_err(dev, "error in reading WHOAMI register: %d\n", ret);
-- 
2.28.0.163.g6104cc2f0b6-goog

