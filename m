Return-Path: <devicetree+bounces-770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AC57A302D
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 14:39:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C9B71C20C1D
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 12:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233E413ADA;
	Sat, 16 Sep 2023 12:39:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68E2134B4
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 12:39:10 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68FCCCEF;
	Sat, 16 Sep 2023 05:39:09 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-502fd1e1dd8so1166168e87.1;
        Sat, 16 Sep 2023 05:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694867947; x=1695472747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYNQU7FPTvydILSwaK5s6AQY8aSIkTxjQ7ZIxHmCX18=;
        b=U80BwZbCz5EV1V9Vf6yjraZPBoQCrty40RaH1ZfCj0PxEginJT2U74Ss4+yb21eSgT
         Z5BR27haIXf4BeQiJUHSk6T+bAMT4LW/WC0XKqwzgvAOTMAH41NrFbIFvbMpX3KTsYfk
         imFTCUVNEQL3mXVbQ84owb7Kkhb+p4e5x6dPdfy8btIk44wkVjIm4gnqjPvEPLy2awVn
         87jom8j/UwXxQWmSGbJc0mo1zR3jBPMGZfqxsZCrustfU/zqKHWe5mtOP9a8eKY9NZ5c
         Kff3l5Azz77Q0qzcicUPDhRfzXY/PqtlXa8eTG+cRxRuZsx08SgFe5lTT2Sns9AgKdsD
         QJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694867947; x=1695472747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fYNQU7FPTvydILSwaK5s6AQY8aSIkTxjQ7ZIxHmCX18=;
        b=BbsT7kAKBVQp4klRbBR7JCGenDcK6WNuOLJP0aczMUwHzKsnr0lbZuvwcTzKhsBpAa
         Wz/odZ1ykhIMvBp/O7e5wowhvpjcmPlz1+Oj4BDJiTzwYClxb3l2CYl2KNOqmKMh4QJt
         5MaBUrhr845sLT+lzZJzytSevaNYSo4senPoDD852f2NoFfBybJLEvBgb5RZenzuzTtC
         R7SSVmkGMh3mAtbkcrQKz6YjwlFnnj9E4NUqBqiWrcv+mXHhRIt8yzpRI7gL4wkMwMQy
         LtDQTrHPOJM8pL4yt2qfCmhNjijEepJdjfx6f5V7nv0ar9YeF/eqj8WE9YOmYUoZW8Xv
         AOjg==
X-Gm-Message-State: AOJu0YzkhZk5sS7yBrObu2vckia/upXMpdilDp0J6eSJ+U4+EG9Fmedd
	N3n23LJF031SjCT4jiANG3o=
X-Google-Smtp-Source: AGHT+IGJ6r1XVtdmzsBBFUnIUyW7I4dm3Ai02tPH6LrH/oRvJKGpCOaHvoH8GnNDrSR1/tw4IXZwmg==
X-Received: by 2002:a05:6512:3b27:b0:502:ff3b:766f with SMTP id f39-20020a0565123b2700b00502ff3b766fmr2027243lfv.6.1694867947453;
        Sat, 16 Sep 2023 05:39:07 -0700 (PDT)
Received: from localhost.localdomain ([77.134.181.150])
        by smtp.gmail.com with ESMTPSA id bo6-20020a0564020b2600b0052284228e3bsm3474064edb.8.2023.09.16.05.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 05:39:07 -0700 (PDT)
From: Mehdi Djait <mehdi.djait.k@gmail.com>
To: jic23@kernel.org,
	mazziesaccount@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	andriy.shevchenko@linux.intel.com,
	robh+dt@kernel.org,
	lars@metafoo.de,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Mehdi Djait <mehdi.djait.k@gmail.com>
Subject: [PATCH v9 4/7] iio: accel: kionix-kx022a: Add an i2c_device_id table
Date: Sat, 16 Sep 2023 14:38:50 +0200
Message-Id: <61b43bbf35d602eac34b6d81b4d1b2d7ba39786f.1694867379.git.mehdi.djait.k@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1694867379.git.mehdi.djait.k@gmail.com>
References: <cover.1694867379.git.mehdi.djait.k@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the missing i2c device id.

Acked-by: Matti Vaittinen <mazziesaccount@gmail.com>
Signed-off-by: Mehdi Djait <mehdi.djait.k@gmail.com>
---
 drivers/iio/accel/kionix-kx022a-i2c.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iio/accel/kionix-kx022a-i2c.c b/drivers/iio/accel/kionix-kx022a-i2c.c
index b0ac78e85dad..c0d0b69680f9 100644
--- a/drivers/iio/accel/kionix-kx022a-i2c.c
+++ b/drivers/iio/accel/kionix-kx022a-i2c.c
@@ -30,6 +30,12 @@ static int kx022a_i2c_probe(struct i2c_client *i2c)
 	return kx022a_probe_internal(dev);
 }
 
+static const struct i2c_device_id kx022a_i2c_id[] = {
+	{ .name = "kx022a" },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, kx022a_i2c_id);
+
 static const struct of_device_id kx022a_of_match[] = {
 	{ .compatible = "kionix,kx022a", },
 	{ }
@@ -43,6 +49,7 @@ static struct i2c_driver kx022a_i2c_driver = {
 		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
 	  },
 	.probe        = kx022a_i2c_probe,
+	.id_table     = kx022a_i2c_id,
 };
 module_i2c_driver(kx022a_i2c_driver);
 
-- 
2.30.2


