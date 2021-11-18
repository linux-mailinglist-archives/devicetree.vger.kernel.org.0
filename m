Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2947B455DAE
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 15:13:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232817AbhKROP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 09:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232805AbhKROP7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 09:15:59 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEAA7C061570
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 06:12:58 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id l22so26503784lfg.7
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 06:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WRNQumaXzRFV+KA+JrGKDmpxltYF5cw1xEc+Dklm/zA=;
        b=OTVPb5B+a0inUBE3P8fEHIkwgevsw7k456WjkzrTEhktEXMgn/ovj7H0BNOo4TcwUl
         tyo77L/myCc8M1anjl38Od40aawaLFupZi8BJOAfKzBPLdVyEvOqNna1lX3+X+wt8u7Z
         uQu37FkGnI8iJ1khzk5viMzjIm32IOF2EeOYjiNAhQsLBnclmZwRiAkWzTZ7OKIFczvX
         LaMG+nPr7td048vuucqfvUj8MLdcj+pHfWSXLSOe7/gNpq3W2yGBKjKP7kuUPYvZLqZf
         o0sLNgysNDyRpFD17JH6zoY8FPNZSrlJA65bwEtArVDGhvDm6UPgtV8CMCLKXgvVo7tT
         WEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WRNQumaXzRFV+KA+JrGKDmpxltYF5cw1xEc+Dklm/zA=;
        b=zhg+m6QjEC8Ha+EjjqffZVPMx7mgUevsyYVNdvxwSqsAdoMasSdMTV7UKB7SyY0CwR
         Qai5DczhW5Ai9ynTSPf6ZHhWL1rbKi2NmdjwPqfqjJvS+XWFAaZ9t+NIG0VylhkNbC/n
         2mk7DT8oHpLz8GF9hDENJA3GylcOxKu1OnQtXZuWuxTs332H3xI8ep01zrLhTAcqXjfT
         a/c/J7agZve6qvmfFNEl/ez7IIHMHiqLxmnnE6n68JtbDUkmBqRBvhYaIIJ8LQBVse2y
         I3r08VSPPk2MGGK6ld9eFtyrP6TXYTcnmyPceEEAMPjlGkb+f0meMx/gIxXqq5+qeqQ5
         pXBQ==
X-Gm-Message-State: AOAM533goIzdFlPU49btrFqoPGW1OCVV9pMytVXTMYjKHK33PHkFK0Is
        wDPUg/ZR4HdRILt+VHtiNpt3yQ==
X-Google-Smtp-Source: ABdhPJxdq4lafQyf4/Ku/Xy+BIjgRR2P9I0rT5djKWptkGLvvCjUECjWz2TafDe3+3Gh7dmy7vHFUg==
X-Received: by 2002:a05:6512:685:: with SMTP id t5mr25204059lfe.84.1637244777234;
        Thu, 18 Nov 2021 06:12:57 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id s15sm193634lfp.252.2021.11.18.06.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 06:12:56 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     linux-iio@vger.kernel.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Quentin Schulz <foss@0leil.net>, linux-sunxi@lists.linux.dev
Subject: [PATCH 1/2] iio:adc:axp20x: add support for NTC thermistor
Date:   Thu, 18 Nov 2021 17:12:32 +0300
Message-Id: <20211118141233.247907-2-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211118141233.247907-1-boger@wirenboard.com>
References: <20211118141233.247907-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most AXPxxx-based reference designs place a 10k NTC thermistor on a
TS pin. When appropriately configured, AXP PMICs will inject fixed
current (80uA by default) into TS pin and measure the voltage across a
thermistor. The PMIC itself will by default compare this voltage with
predefined thresholds  and disable battery charging whenever
the battery is too hot or too cold.

Alternatively, the TS pin can be configured as general-purpose
ADC input. This mode is not supported by the driver.

This patch allows reading the voltage on the TS pin. It can be then
either processed by userspace or used by kernel consumer like hwmon
ntc thermistor driver.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 drivers/iio/adc/axp20x_adc.c | 45 +++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/axp20x_adc.c b/drivers/iio/adc/axp20x_adc.c
index 3e0c0233b431..12d469a52cea 100644
--- a/drivers/iio/adc/axp20x_adc.c
+++ b/drivers/iio/adc/axp20x_adc.c
@@ -186,6 +186,8 @@ static const struct iio_chan_spec axp20x_adc_channels[] = {
 			   AXP20X_BATT_CHRG_I_H),
 	AXP20X_ADC_CHANNEL(AXP20X_BATT_DISCHRG_I, "batt_dischrg_i", IIO_CURRENT,
 			   AXP20X_BATT_DISCHRG_I_H),
+	AXP20X_ADC_CHANNEL(AXP20X_TS_IN, "ts_v", IIO_VOLTAGE,
+			   AXP20X_TS_IN_H),
 };
 
 static const struct iio_chan_spec axp22x_adc_channels[] = {
@@ -203,6 +205,8 @@ static const struct iio_chan_spec axp22x_adc_channels[] = {
 			   AXP20X_BATT_CHRG_I_H),
 	AXP20X_ADC_CHANNEL(AXP22X_BATT_DISCHRG_I, "batt_dischrg_i", IIO_CURRENT,
 			   AXP20X_BATT_DISCHRG_I_H),
+	AXP20X_ADC_CHANNEL(AXP22X_TS_IN, "ts_v", IIO_VOLTAGE,
+			   AXP22X_TS_ADC_H),
 };
 
 static const struct iio_chan_spec axp813_adc_channels[] = {
@@ -222,6 +226,8 @@ static const struct iio_chan_spec axp813_adc_channels[] = {
 			   AXP20X_BATT_CHRG_I_H),
 	AXP20X_ADC_CHANNEL(AXP22X_BATT_DISCHRG_I, "batt_dischrg_i", IIO_CURRENT,
 			   AXP20X_BATT_DISCHRG_I_H),
+	AXP20X_ADC_CHANNEL(AXP813_TS_IN, "ts_v", IIO_VOLTAGE,
+			   AXP288_TS_ADC_H),
 };
 
 static int axp20x_adc_raw(struct iio_dev *indio_dev,
@@ -307,11 +313,36 @@ static int axp20x_adc_scale_voltage(int channel, int *val, int *val2)
 		*val2 = 400000;
 		return IIO_VAL_INT_PLUS_MICRO;
 
+	case AXP20X_TS_IN:
+		/* 0.8 mV per LSB */
+		*val = 0;
+		*val2 = 800000;
+		return IIO_VAL_INT_PLUS_MICRO;
+
 	default:
 		return -EINVAL;
 	}
 }
 
+static int axp22x_adc_scale_voltage(int channel, int *val, int *val2)
+{
+	switch (channel) {
+	case AXP22X_BATT_V:
+		/* 1.1 mV per LSB */
+		*val = 1;
+		*val2 = 100000;
+		return IIO_VAL_INT_PLUS_MICRO;
+
+	case AXP22X_TS_IN:
+		/* 0.8 mV per LSB */
+		*val = 0;
+		*val2 = 800000;
+		return IIO_VAL_INT_PLUS_MICRO;
+
+	default:
+		return -EINVAL;
+	}
+}
 static int axp813_adc_scale_voltage(int channel, int *val, int *val2)
 {
 	switch (channel) {
@@ -325,6 +356,12 @@ static int axp813_adc_scale_voltage(int channel, int *val, int *val2)
 		*val2 = 100000;
 		return IIO_VAL_INT_PLUS_MICRO;
 
+	case AXP813_TS_IN:
+		/* 0.8 mV per LSB */
+		*val = 0;
+		*val2 = 800000;
+		return IIO_VAL_INT_PLUS_MICRO;
+
 	default:
 		return -EINVAL;
 	}
@@ -378,12 +415,7 @@ static int axp22x_adc_scale(struct iio_chan_spec const *chan, int *val,
 {
 	switch (chan->type) {
 	case IIO_VOLTAGE:
-		if (chan->channel != AXP22X_BATT_V)
-			return -EINVAL;
-
-		*val = 1;
-		*val2 = 100000;
-		return IIO_VAL_INT_PLUS_MICRO;
+		return axp22x_adc_scale_voltage(chan->channel, val, val2);
 
 	case IIO_CURRENT:
 		*val = 0;
@@ -488,6 +520,7 @@ static int axp22x_read_raw(struct iio_dev *indio_dev,
 {
 	switch (mask) {
 	case IIO_CHAN_INFO_OFFSET:
+		/* For PMIC temp only */
 		*val = -2677;
 		return IIO_VAL_INT;
 
-- 
2.25.1

