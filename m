Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87D753940CE
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 12:20:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236381AbhE1KVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 06:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236377AbhE1KVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 06:21:34 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D785C06174A
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 03:19:58 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso7002370pjx.1
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 03:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=heitbaum.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
        b=bVwvDp8MI5Bsa87/BZlORuZ57LNsXo6lrcNekT17GRjXXkBFxPEb95FqL71pnVHYch
         A0W8KEgMHB6L6YEeygYgr0yfm0QR+95TEe97ReaqfyJko8b/PflKbz0M7CTTQD7MYmTF
         Xjo34UaUnY7J9ROKjbAqftZ+OTn5dhvH1Ekc8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
        b=XFJnTKnLltyr5veAOWC1iOvPaPNFfj7LIpGzprVuTmWehsZYVOwZVvHsHW1+haJx2Z
         66HGqaDz2Z9UCLAY02xpJO/hzPnSRQiDToIXILQIZfwgS54TRKD4TWXq6X7ODG8ijf1H
         q2r4mIU9kDnlQv+TjvDBVrM4AjrzNxsktwwuvij59Jto0cLmGNEs6ts4oJAgIyp/3ek7
         z/BOm8ByTamcGSZhc6PW0O5Nj7em1Y0CxJ0/D7fJftA1ga7EnYSBGDPvDqkjJ2OwRCjc
         hc25Zq1vUR5WAcdSF64Weep/P+OLscbFS6S6bOhyMBBQ/ms4Ry7P3KnAZmY1qjfcu+jR
         0l8A==
X-Gm-Message-State: AOAM531QL44q9GX38aULzVsLtz0Y5V7nKoMRIGko225syW4ZsvwR26vs
        5JoUaIZU5CXDcXSg6XkJGuCEzoqNcix2nQrPJxo=
X-Google-Smtp-Source: ABdhPJx0XBIqXipi4VP2x1mHrVD3VHC/t8RpJhO4DusSyfuXOvGtF/jS0MNxbfwBKODs3HsHT7T2Cw==
X-Received: by 2002:a17:90a:a08c:: with SMTP id r12mr3644781pjp.204.1622197197057;
        Fri, 28 May 2021 03:19:57 -0700 (PDT)
Received: from 96e513df87d1 ([124.170.34.40])
        by smtp.gmail.com with ESMTPSA id w26sm4255796pgl.50.2021.05.28.03.19.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 28 May 2021 03:19:56 -0700 (PDT)
Date:   Fri, 28 May 2021 10:19:50 +0000
From:   Rudi Heitbaum <rudi@heitbaum.com>
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
        pgwipeout@gmail.com
Subject: [PATCH v2] regulator: fan53555: add tcs4526
Message-ID: <20210528101946.GA418765@96e513df87d1>
References: <20210526162342.GA20@8bbba9ba63a4>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210526162342.GA20@8bbba9ba63a4>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For rk3399pro boards the tcs4526 regulator supports the vdd_gpu
regulator. The tcs4526 regulator has a chip id of <0>.
Add the compatibile tcs,tcs4526  

without this patch, the dmesg output is:
  fan53555-regulator 0-0010: Chip ID 0 not supported!
  fan53555-regulator 0-0010: Failed to setup device!
  fan53555-regulator: probe of 0-0010 failed with error -22
with this patch, the dmesg output is:
  vdd_gpu: supplied by vcc5v0_sys

The regulators are described as:
- Dedicated power management IC TCS4525
- Lithium battery protection chip TCS4526

This has been tested with a Radxa Rock Pi N10.

Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
---
 drivers/regulator/fan53555.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 2695be617373..ddab9359ea20 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -93,6 +93,10 @@ enum {
 	TCS4525_CHIP_ID_12 = 12,
 };
 
+enum {
+	TCS4526_CHIP_ID_00 = 0,
+};
+
 /* IC mask revision */
 enum {
 	FAN53555_CHIP_REV_00 = 0x3,
@@ -374,6 +375,7 @@ static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
 {
 	switch (di->chip_id) {
 	case TCS4525_CHIP_ID_12:
+	case TCS4526_CHIP_ID_00:
 		di->slew_reg = TCS4525_TIME;
 		di->slew_mask = TCS_SLEW_MASK;
 		di->slew_shift = TCS_SLEW_MASK;
@@ -564,6 +566,9 @@ static const struct of_device_id __maybe_unused fan53555_dt_ids[] = {
 	}, {
 		.compatible = "tcs,tcs4525",
 		.data = (void *)FAN53526_VENDOR_TCS
+	}, {
+		.compatible = "tcs,tcs4526",
+		.data = (void *)FAN53526_VENDOR_TCS
 	},
 	{ }
 };
@@ -672,6 +677,9 @@ static const struct i2c_device_id fan53555_id[] = {
 	}, {
 		.name = "tcs4525",
 		.driver_data = FAN53526_VENDOR_TCS
+	}, {
+		.name = "tcs4526",
+		.driver_data = FAN53526_VENDOR_TCS
 	},
 	{ },
 };
-- 
2.29.2


