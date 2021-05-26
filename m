Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 414EF391CF9
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 18:23:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232197AbhEZQZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 12:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233632AbhEZQZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 12:25:27 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EB30C061756
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:23:53 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d78so1304663pfd.10
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=heitbaum.com; s=google;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3gA9VrOSMoB8ARTOwNzx/FAC2RRzo+UnWgujJ7sE+Vg=;
        b=hw1o6LyKi/Tf03o7XXHTA0hWOc4hDYNPWAW/Qc9380ERy8w49LTljmKfxoB0gWHwzx
         PLa/V3YzSdTLK9MBsm5cNpaqGoraOfte5yuqBcO1qVewABciVG1V86NIsoyOg8d+HRNy
         /iAVcoyyjmEkcsYyYkIpXYiAmeLpWWvW7c1Os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3gA9VrOSMoB8ARTOwNzx/FAC2RRzo+UnWgujJ7sE+Vg=;
        b=gRZ2oRyGUsJV5djGv/m35pHrXR673Rfbp3k2l7H75ComKCHzSTpMVTnXQN2nqw5SWr
         Lk2p6V7zcZhbP89tuutFdxoRKWoha4F587s97Dxld33n0vBAeR+O/J4KTTiINx51f6gI
         ibhL/q4UgDm+cxp0bU5cfmEZra9uz66LaJ4xb8DJY9wmciCFTEmIg9/41DX9xb+Z/48K
         9sJ7wVsQdOBtMyDPDspBy+V1/819FrBiND8iJiFP3M/9RfinIroj1jC2egRVVlgbf7Ce
         2/W4fvZBz3QfskViXSB94DgnudzgxX27zfn77Fa3KsjI4Bs/M6mrJDg7+JPR0p1t9mYI
         FwxA==
X-Gm-Message-State: AOAM531bdIuL93O6nSTvK2JE5GrTQscupFCePeP7Xv56MpQpJ271yln1
        2v345S9dUPSI1FO56RQaWEbOZSAfa25Jh1ps
X-Google-Smtp-Source: ABdhPJzFZsOE0KGR4DZBTYb44yP9Xh1LSUaSN1gP1C1igJXhUr+iYyvOxYhrBdP+DIoKni43oJxwJw==
X-Received: by 2002:a63:185c:: with SMTP id 28mr25928416pgy.158.1622046232752;
        Wed, 26 May 2021 09:23:52 -0700 (PDT)
Received: from 8bbba9ba63a4 (110-175-118-133.tpgi.com.au. [110.175.118.133])
        by smtp.gmail.com with ESMTPSA id h6sm1046433pjs.15.2021.05.26.09.23.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 26 May 2021 09:23:52 -0700 (PDT)
Date:   Wed, 26 May 2021 16:23:46 +0000
From:   Rudi Heitbaum <rudi@heitbaum.com>
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
        pgwipeout@gmail.com
Subject: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <20210526162342.GA20@8bbba9ba63a4>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Fixes: f9028dcdf589 ("regulator: fan53555: only bind tcs4525 to correct chip id")
Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
---
 drivers/regulator/fan53555.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 2695be617373..ddab9359ea20 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -90,6 +90,7 @@ enum {
 };
 
 enum {
+	TCS4525_CHIP_ID_00 = 0,
 	TCS4525_CHIP_ID_12 = 12,
 };
 
@@ -373,6 +374,7 @@ static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
 static int fan53526_voltages_setup_tcs(struct fan53555_device_info *di)
 {
 	switch (di->chip_id) {
+	case TCS4525_CHIP_ID_00:
 	case TCS4525_CHIP_ID_12:
 		di->slew_reg = TCS4525_TIME;
 		di->slew_mask = TCS_SLEW_MASK;
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

