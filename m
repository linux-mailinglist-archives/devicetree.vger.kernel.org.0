Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2085230D59
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 17:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730845AbgG1POC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 11:14:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730747AbgG1PNV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 11:13:21 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51989C0619DE
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 08:13:20 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id s21so16459914ilk.5
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 08:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FBxxg43y21daaJb2slakYjo79C/jv3+HeW/qSD1nJIA=;
        b=ldt1QqlamitrLWI3C0KvuawslYN21v+uhA2FJ/Ee/zjJWKQ4HDJTD6eZmey75yN5fU
         eAbNY9fgaAKGZLz3a5aU2QLJABQ4lbUEbxTk/7srnTul4aytLgIYLtPs1M593fo28h/T
         r31SMK+n0vMqx/JcPyqVf14U5o5MTmm97A1IY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FBxxg43y21daaJb2slakYjo79C/jv3+HeW/qSD1nJIA=;
        b=NmUedInkD3yiNMQ9oGkY6JOKbw2BQPPJYHZ+hhjiaRhyr313c87TfXMp2ziLNpEaOC
         v4/ptruaQQYg4uEGP4m2UmpHMy4DoTPv1M9u3WLco053ZdAyjKK0GuRr5xv2aooJ8wPS
         CFI3kbgsB/m2JKjMZEJrgXmGzCQsGmledrgs/kfWC5WWcfBh3t35uIQPNFjVyCqtF7mT
         ugbS2x2O9WezT8X4bu1GpunK0TzVS+qJXLD4nEGzs8OTZgzwQNxJMl38RRdD4mDasQ3A
         JfOBQNSfyxLoqENZaasKH/vTfpHejA1wEGFIAyiPrbki0PmWZ0LyCPtWxW8gpK+vItsj
         jqww==
X-Gm-Message-State: AOAM532vf7hrVfsAz7OUfmR7FXfiq1Fm1mvcqcS8IzAQ7FO8Y0QzbVSm
        2xWfYAf17g81nxr8rJ7ESqBm7ISjpPGxbA==
X-Google-Smtp-Source: ABdhPJzHpqfHpVdzOgmWOQKFPQtZC44Y/MezvpPV2geBeMXx3gyAKAuxjipi7EN2sVPUZB1xsrQMCg==
X-Received: by 2002:a05:6e02:c21:: with SMTP id q1mr22581160ilg.28.1595949199470;
        Tue, 28 Jul 2020 08:13:19 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id q70sm6399781ili.49.2020.07.28.08.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 08:13:19 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Enrico Granata <egranata@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Stephen Boyd <swboyd@chromium.org>, linux-iio@vger.kernel.org
Subject: [PATCH 07/15] iio: sx9310: Use long instead of int for channel bitmaps
Date:   Tue, 28 Jul 2020 09:12:50 -0600
Message-Id: <20200728091057.7.I3a5582a3e1589e351f6335b39f52e5ccc5f46b61@changeid>
X-Mailer: git-send-email 2.28.0.rc0.142.g3c755180ce-goog
In-Reply-To: <20200728151258.1222876-1-campello@chromium.org>
References: <20200724183954.1.I2e29ae25368ba8a72a9e44121cfbc36ead8ecc6b@changeid>
 <20200728151258.1222876-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Uses for_each_set_bit() macro to loop over channel bitmaps.

Signed-off-by: Daniel Campello <campello@chromium.org>
---

 drivers/iio/proximity/sx9310.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index fb5c16f2aa6b1a..2465064971d0a7 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -136,7 +136,8 @@ struct sx9310_data {
 	/* Remember enabled channels and sample rate during suspend. */
 	unsigned int suspend_ctrl0;
 	struct completion completion;
-	unsigned int chan_read, chan_event;
+	unsigned long chan_read;
+	unsigned long chan_event;
 	int channel_users[SX9310_NUM_CHANNELS];
 	unsigned int whoami;
 };
@@ -279,15 +280,16 @@ static const struct regmap_config sx9310_regmap_config = {
 };
 
 static int sx9310_update_chan_en(struct sx9310_data *data,
-				 unsigned int chan_read,
-				 unsigned int chan_event)
+				 unsigned long chan_read,
+				 unsigned long chan_event)
 {
 	int ret;
+	unsigned long channels = chan_read | chan_event;
 
-	if ((data->chan_read | data->chan_event) != (chan_read | chan_event)) {
+	if ((data->chan_read | data->chan_event) != channels) {
 		ret = regmap_update_bits(data->regmap, SX9310_REG_PROX_CTRL0,
 					 SX9310_REG_PROX_CTRL0_SENSOREN_MASK,
-					 chan_read | chan_event);
+					 channels);
 		if (ret)
 			return ret;
 	}
@@ -538,13 +540,13 @@ static void sx9310_push_events(struct iio_dev *indio_dev)
 		return;
 	}
 
-	for (chan = 0; chan < SX9310_NUM_CHANNELS; chan++) {
+	for_each_set_bit(chan, &data->chan_event, SX9310_NUM_CHANNELS) {
 		int dir;
 		u64 ev;
-		bool new_prox = val & BIT(chan);
+		bool new_prox;
+
+		new_prox = val & BIT(chan);
 
-		if (!(data->chan_event & BIT(chan)))
-			continue;
 		if (new_prox == data->prox_stat[chan])
 			/* No change on this channel. */
 			continue;
@@ -712,13 +714,13 @@ static irqreturn_t sx9310_trigger_handler(int irq, void *private)
 static int sx9310_buffer_preenable(struct iio_dev *indio_dev)
 {
 	struct sx9310_data *data = iio_priv(indio_dev);
-	unsigned int channels = 0;
+	unsigned long channels = 0;
 	int bit, ret;
 
 	mutex_lock(&data->mutex);
 	for_each_set_bit(bit, indio_dev->active_scan_mask,
 			 indio_dev->masklength)
-		channels |= BIT(indio_dev->channels[bit].channel);
+		__set_bit(indio_dev->channels[bit].channel, &channels);
 
 	ret = sx9310_update_chan_en(data, channels, data->chan_event);
 	mutex_unlock(&data->mutex);
-- 
2.28.0.rc0.142.g3c755180ce-goog

