Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B18A7230D5B
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 17:15:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730517AbgG1POC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 11:14:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730749AbgG1PNV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 11:13:21 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57C92C0619D4
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 08:13:21 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id g6so1538926ilc.7
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 08:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iO8S6+VQF9v4JirDDLBlt0iKshG9f1w+n4ePBu/++FQ=;
        b=eLzRLoUFGK18UYfdm52AoqO40ycbCnhYQdhe0EofC0D/oRtbA/cldr7JC/SaVxm4ty
         pi69iCv2p75oSPVmEDR9S9Bep1V4ApEfVQ1s+qsKd7KNJGLlvKLCTAbJmfS3kyNW7isG
         1yc40mtfm2+XVQxtIoGqwOHfnABARdmug36Ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iO8S6+VQF9v4JirDDLBlt0iKshG9f1w+n4ePBu/++FQ=;
        b=qWzgOUIXjYhVP3mLsAdZz1rPFKplqI75ZWDaEmlPgYSTOK3qlW6hzjuyGyI61mCETs
         GVdIV9O6TYK3IlIj5G1IXiLE7MZT8/e7Et+wZLTO2O2RqjWS1AZG8X3RSCErX3yX+lo6
         86RaxrFH5EunD/D9799HrFmvpqCd4E+ST+ABhp5v4OZL45ULwo2CiKay4VhjviHbjpji
         T/UoJA3fmIbqUU0a+F9BWYXnN3W6SxoOiNOvKrgrCDyzL9uAdzgQRCtru6D+b9hFow/l
         /xOcU3pze1Zuvtgpcd+ycvzUwT2n5pE+SMIc/lm6GJYypn/6ISTRbrXQmCc8ShJ9xfZy
         T4sw==
X-Gm-Message-State: AOAM533RrpNnYSbMQSm3FVZBWS9zw4ks6iFCubQkU9lL4LQaNRa33Nrl
        B75i7KSmaq1Nju9ixBzh5muq/zsVwF0nJg==
X-Google-Smtp-Source: ABdhPJxVhHK+GaWEAAtctrpps1GfIJkqfuGUZRlqOyOg5X1KbB+82HDKyZut8Xuv9logZSiQjYK/HQ==
X-Received: by 2002:a92:c0c9:: with SMTP id t9mr23988549ilf.82.1595949200455;
        Tue, 28 Jul 2020 08:13:20 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id q70sm6399781ili.49.2020.07.28.08.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 08:13:20 -0700 (PDT)
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
Subject: [PATCH 08/15] iio: sx9310: Use regmap_read_poll_timeout() for compensation
Date:   Tue, 28 Jul 2020 09:12:51 -0600
Message-Id: <20200728091057.8.I34c7a1bfca7fe3d607f8876ef9f10c22153556d2@changeid>
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

Simplify compensation stage by using regmap_read_poll_timeout().

Signed-off-by: Daniel Campello <campello@chromium.org>
---

 drivers/iio/proximity/sx9310.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index 2465064971d0a7..3956fd679c6db9 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -796,7 +796,7 @@ static const struct sx9310_reg_default sx9310_default_regs[] = {
 static int sx9310_init_compensation(struct iio_dev *indio_dev)
 {
 	struct sx9310_data *data = iio_priv(indio_dev);
-	int i, ret;
+	int ret;
 	unsigned int val;
 	unsigned int ctrl0;
 
@@ -810,22 +810,17 @@ static int sx9310_init_compensation(struct iio_dev *indio_dev)
 	if (ret < 0)
 		return ret;
 
-	for (i = 100; i >= 0; i--) {
-		msleep(20);
-		ret = regmap_read(data->regmap, SX9310_REG_STAT1, &val);
-		if (ret < 0)
-			goto out;
-		if (!(val & SX9310_COMPSTAT_MASK))
-			break;
-	}
-
-	if (i < 0) {
-		dev_err(&data->client->dev,
-			"initial compensation timed out: 0x%02x", val);
-		ret = -ETIMEDOUT;
+	ret = regmap_read_poll_timeout(data->regmap, SX9310_REG_STAT1, val,
+				       !(val & SX9310_REG_STAT1_COMPSTAT_MASK),
+				       20000, 2000000);
+	if (ret) {
+		if (ret == -ETIMEDOUT)
+			dev_err(&data->client->dev,
+				"0x02 << 3l compensation timed out: 0x%02x",
+				val);
+		return ret;
 	}
 
-out:
 	regmap_write(data->regmap, SX9310_REG_PROX_CTRL0, ctrl0);
 	return ret;
 }
-- 
2.28.0.rc0.142.g3c755180ce-goog

