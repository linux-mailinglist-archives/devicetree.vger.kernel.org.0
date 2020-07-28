Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 318C62315F3
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 01:05:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730049AbgG1XFl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 19:05:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730000AbgG1XFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 19:05:38 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB0AEC0619D9
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 16:05:37 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id z17so2625336ill.6
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 16:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yB4ZXCGQ1JEGOfvNZP5XQymR9PIbmXgMQ7k1yBNC7+0=;
        b=TZWUiLVgdzBSVQ8ehHoWvxsFsvZOlwYh2RA995Xk0SeIB5lojUqfXW+jZP1U3n+GL2
         Xk6KYQPdJ5DcwymB7zahDqTGP5gYuCp6GHTG/w7IwscCnQAKhrTt71EneVwZaS7j6s3b
         13/gDZDeQhoqcejz1MLPILwrnjL9tieoKXsPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yB4ZXCGQ1JEGOfvNZP5XQymR9PIbmXgMQ7k1yBNC7+0=;
        b=B9C+13m1rp4LmzaHbXXQGYhSYVuAVvQPzhmJ+7A2Ui7ao+st2m/xNUn5C4cGTXTRrM
         2RgGfXb4WDP6AvrwiPwwGG0B8Bnd7f2HICH0HlzfoLUnN61MM9Ahmbl8MyQFJfe3xp12
         +5UiRxyJuewm8fWsIzaLDK210ztSTx/RWxcwEdbxN8KUC5K6MPmt0ryD7yg+Nzz4q1n8
         BFW9ZJo1h5qKu0aEXnbOyBhCfn3P5TgLjXYJRuPa0dN5zxUHlbJLpK/OV809X7Rk26Ky
         aNkMLOJ2q+SFBMq09YnxrmkJN5YGpPk7UM3MzhEC/NIWehvl0/w8tHY9DEhK4cwb+6mi
         VEhg==
X-Gm-Message-State: AOAM530yn0gdpYRP5zhOY9o493E5uKijchkNShMKLDUwOu/AaHeBTWxo
        LSeKpzviaH6D/M/g+PDBdSDDvWwPN+2prA==
X-Google-Smtp-Source: ABdhPJxyqh6fZnwI/oBquEbPHEqKgLClPDF5XQaEKahEFm6sAgt/aLF0XyQguVSO3mWUe05YVJnOMg==
X-Received: by 2002:a92:5f43:: with SMTP id t64mr4036524ilb.14.1595977536895;
        Tue, 28 Jul 2020 16:05:36 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id w10sm148945ilo.10.2020.07.28.16.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 16:05:36 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Stephen Boyd <swboyd@chromium.org>, linux-iio@vger.kernel.org
Subject: [PATCH v2 03/14] iio: sx9310: Fix irq handling
Date:   Tue, 28 Jul 2020 17:05:09 -0600
Message-Id: <20200728170317.v2.3.Idbfcd2e92d2fd89b6ed2e83211bd3e6c06852c33@changeid>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
In-Reply-To: <20200728230520.2011240-1-campello@chromium.org>
References: <20200728151258.1222876-1-campello@chromium.org>
 <20200728230520.2011240-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes enable/disable irq handling at various points. The driver needs to
only enable/disable irqs if there is an actual irq handler installed.

Signed-off-by: Daniel Campello <campello@chromium.org>
---

Changes in v2:
 - Reordered error handling on sx9310_resume()

 drivers/iio/proximity/sx9310.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index 07895d4b935d12..108d82ba81146e 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -376,13 +376,15 @@ static int sx9310_read_proximity(struct sx9310_data *data,
 	if (ret < 0)
 		goto out;
 
-	ret = sx9310_enable_irq(data, SX9310_CONVDONE_IRQ);
-	if (ret < 0)
-		goto out_put_channel;
+	if (data->client->irq) {
+		ret = sx9310_enable_irq(data, SX9310_CONVDONE_IRQ);
+		if (ret)
+			goto out_put_channel;
+	}
 
 	mutex_unlock(&data->mutex);
 
-	if (data->client->irq > 0) {
+	if (data->client->irq) {
 		ret = wait_for_completion_interruptible(&data->completion);
 		reinit_completion(&data->completion);
 	} else {
@@ -401,9 +403,11 @@ static int sx9310_read_proximity(struct sx9310_data *data,
 	*val = sign_extend32(be16_to_cpu(rawval),
 			     (chan->address == SX9310_REG_DIFF_MSB ? 11 : 15));
 
-	ret = sx9310_disable_irq(data, SX9310_CONVDONE_IRQ);
-	if (ret < 0)
-		goto out_put_channel;
+	if (data->client->irq) {
+		ret = sx9310_disable_irq(data, SX9310_CONVDONE_IRQ);
+		if (ret)
+			goto out_put_channel;
+	}
 
 	ret = sx9310_put_read_channel(data, chan->channel);
 	if (ret < 0)
@@ -414,7 +418,8 @@ static int sx9310_read_proximity(struct sx9310_data *data,
 	return IIO_VAL_INT;
 
 out_disable_irq:
-	sx9310_disable_irq(data, SX9310_CONVDONE_IRQ);
+	if (data->client->irq)
+		sx9310_disable_irq(data, SX9310_CONVDONE_IRQ);
 out_put_channel:
 	sx9310_put_read_channel(data, chan->channel);
 out:
@@ -1011,10 +1016,11 @@ static int __maybe_unused sx9310_resume(struct device *dev)
 
 out:
 	mutex_unlock(&data->mutex);
+	if (ret)
+		return ret;
 
 	enable_irq(data->client->irq);
-
-	return ret;
+	return 0;
 }
 
 static const struct dev_pm_ops sx9310_pm_ops = {
-- 
2.28.0.163.g6104cc2f0b6-goog

