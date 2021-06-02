Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD8E3398867
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 13:29:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230257AbhFBLbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 07:31:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229886AbhFBLbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 07:31:37 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC2BC06174A
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 04:29:54 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id k7so1480526pjf.5
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 04:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=heitbaum.com; s=google;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
        b=HbqMhFoDB9o5ql6A94HCPeFWNEzFAaio81BcgTmSk5yu3kWBWsCpNElWsglMyc+8WH
         FVKqPfyDWUEth9hSxW+8vYySSvftQPHXBOMMPkgFk9BNb3J7TeiWEwJtH1qOTaq5BNWy
         uSvls9K0LJURCCRfbuutuNKDwIH8AFzhzZASg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
        b=SfL0rbkEHpBZxVUNBLO7cTC9pdCUDoHJkDozJmvJpm5LpVJ4Tfq727iI7RH2LQ14qL
         OOE2i/0bX7a7o7CYTMpArheBLoVRLBPebF819KvxryGJJ6BwDqg1O8RPIfL7M0PIx86o
         ls7ATNWDXhL6ygZ23MYucswEtWpBzEGlXInAtkpGv5+5Eemum667qhzgxckx9KdV474k
         ays85lvxx6RVzX6fZnYiKgKf4FDQWNs7SPFvc3K7cIZ2mWF44p4fVJg3dlWEJaRMZwLm
         U2hUnrRypoOtO/tSAFn/VdEhEEMlHMlCDCW9YjmaHhBWPzyC8b8vAK9nOJ4TuAMP+WbC
         wtwQ==
X-Gm-Message-State: AOAM531J06M2lcbPsjOcBUfopyTgZSIaEedtQsBl6HnDxZaupgDpWZYQ
        GqfTCdHjSEoo2cAIBulHO3gpNlpKYLRc+iHtop8=
X-Google-Smtp-Source: ABdhPJy5LratcIzMM1/wtvTH7ZK1dsqsXfEOTHho4XhCDhLPd4uo+to8MvlYmGO1Bn7vjmlNM5S5pg==
X-Received: by 2002:a17:902:8c91:b029:ef:aa9a:af35 with SMTP id t17-20020a1709028c91b02900efaa9aaf35mr30543421plo.24.1622633392911;
        Wed, 02 Jun 2021 04:29:52 -0700 (PDT)
Received: from 5f9be87369f8 ([124.170.34.40])
        by smtp.gmail.com with ESMTPSA id w26sm17660269pgl.50.2021.06.02.04.29.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Jun 2021 04:29:52 -0700 (PDT)
Date:   Wed, 2 Jun 2021 11:29:47 +0000
From:   Rudi Heitbaum <rudi@heitbaum.com>
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
        pgwipeout@gmail.com
Subject: [PATCH 2/2 v2] regulator: fan53555: add tcs4526
Message-ID: <20210602112943.GA119@5f9be87369f8>
Reply-To: 20210602112452.GA98@5f9be87369f8
References: <20210602112452.GA98@5f9be87369f8>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210602112452.GA98@5f9be87369f8>
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


