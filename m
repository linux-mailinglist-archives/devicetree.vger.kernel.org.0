Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8946334CCDC
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 11:18:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231622AbhC2JRd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 05:17:33 -0400
Received: from gw.atmark-techno.com ([13.115.124.170]:59050 "EHLO
        gw.atmark-techno.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235849AbhC2JRG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 05:17:06 -0400
X-Greylist: delayed 471 seconds by postgrey-1.27 at vger.kernel.org; Mon, 29 Mar 2021 05:17:06 EDT
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
        by gw.atmark-techno.com (Postfix) with ESMTPS id 59F878049D
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 18:09:09 +0900 (JST)
Received: by mail-pg1-f198.google.com with SMTP id m5so10037117pgm.11
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 02:09:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to;
        bh=mrQcOe7VCl6lGT/NzH+3LqpdLgDZjkZH2waERMSojuE=;
        b=olzbrzI9pkg5skKrPOhM6ukofkVp9TNHNDvKa2lUFffXGTHM1+TX03EpJU05Hbqus4
         kZO07bYC9RpnxmCjWLundkaCzZqsM6+F4LfSzb5IJQMW6sNv5bPk7mn38/geXXNDOgi9
         xogwQqGaMhPu0kD+aPESXC65EKHqfQzr5ocq2tXWzJVK7oE7PQZ6u+bmrbCU9JXkpa6f
         0CudA3GRk8R8FjHb9fWOD5qf8aisvA4T4z4LZrAH5XwGEcdGBif34cOSreJB37wH0OCm
         U1M43Cph00U3MNIRTRvoNTFG0NUsKFTW3fauoNn/WF0k1ow5yRpQax1j0/w+7qF+EbPC
         inKA==
X-Gm-Message-State: AOAM530d/jCJtxdb84h87vNplEvJgHs8NNNFf0+7ztUNTRvhJMxwRY1q
        TcqJU+2RHyIryb5FwiDwa2pZdNxvkh7JVjloakVh9kAeZ2NI2DDgdUKorbEmfw4b6ffhw8l8VZV
        vN83zmxieFpbPlNrkhSjh0t+VoA==
X-Received: by 2002:a63:d44a:: with SMTP id i10mr23192779pgj.57.1617008947355;
        Mon, 29 Mar 2021 02:09:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3TwoPdDYEzy7lcLTkJ8rZ9Z+irNKd+t7xZbk/LqnjxXUP75X9mTRCAGOn5TgohuixGVlI4g==
X-Received: by 2002:a63:d44a:: with SMTP id i10mr23192761pgj.57.1617008947073;
        Mon, 29 Mar 2021 02:09:07 -0700 (PDT)
Received: from pc-0115 (178.101.200.35.bc.googleusercontent.com. [35.200.101.178])
        by smtp.gmail.com with ESMTPSA id h15sm16587784pfo.20.2021.03.29.02.09.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Mar 2021 02:09:06 -0700 (PDT)
Received: from martinet by pc-0115 with local (Exim 4.94)
        (envelope-from <martinet@pc-0115>)
        id 1lQntR-008hga-03; Mon, 29 Mar 2021 18:09:05 +0900
Date:   Mon, 29 Mar 2021 18:08:54 +0900
From:   Dominique MARTINET <dominique.martinet@atmark-techno.com>
To:     Alice Guo <alice.guo@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org, peng.fan@nxp.com,
        linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: regression due to soc_device_match not handling defer (Was: [PATCH
 v4 4/4] soc: imx8m: change to use platform driver)
Message-ID: <YGGZJjAxA1IO+/VU@atmark-techno.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201120101112.31819-4-alice.guo@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

First thanks for the patch, it fixes the kexec hang I was looking at...

Unfortunately it means the soc is now init much later and other piece of
drivers that depend on querying the soc will fail, I am getting a BUG in
the caam crypto driver from 7d981405d0fd ("soc: imx8m: change to use
platform driver") + ce58459d8c7f ("arm64: dts: imx8m: add SoC ID
compatible") on the imx8mp evk as follow:

[    2.575505] caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
[    2.588986] caam 30900000.crypto: registering rng-caam
[    2.594168] caam_jr 30901000.jr: job ring error: irqstate: 00000103
[    2.600492] ------------[ cut here ]------------
[    2.605109] kernel BUG at drivers/crypto/caam/jr.c:187!
[    2.610338] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
[    2.615829] Modules linked in:
[    2.618895] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.12.0-rc5 #8
[    2.625168] Hardware name: NXP i.MX8MPlus EVK board (DT)
[    2.630482] pstate: 60000085 (nZCv daIf -PAN -UAO -TCO BTYPE=--)
[    2.636493] pc : caam_jr_interrupt+0x150/0x154
[    2.640944] lr : caam_jr_interrupt+0x150/0x154
[    2.645396] sp : ffff800010003e90
[    2.648709] x29: ffff800010003e90 x28: ffff800011f82e80
[    2.654035] x27: ffff800011cd2000 x26: ffff0000c1988400
[    2.659353] x25: ffff800011cd2000 x24: ffff800011f789e0
[    2.664674] x23: 000000000000002e x22: ffff800012261000
[    2.669994] x21: ffff0000c1979410 x20: ffff0000c1988a80
[    2.675315] x19: 0000000000000103 x18: 0000000000000000
[    2.680637] x17: 0000000000000007 x16: 000000000000000e
[    2.685958] x15: 0000000000000030 x14: ffffffffffffffff
[    2.691279] x13: ffff800090003aa7 x12: ffff800010003aaf
[    2.696601] x11: 0000000000000003 x10: 0101010101010101
[    2.701921] x9 : ffff8000100039d0 x8 : ffff800011fa3830
[    2.707242] x7 : ffff800011ffb830 x6 : ffff800011ffb830
[    2.712560] x5 : 0000000000000000 x4 : 0000000000000000
[    2.717881] x3 : 0000000000000000 x2 : 0000000000000000
[    2.723203] x1 : 0000000000000000 x0 : ffff800011f82e80
[    2.728528] Call trace:
[    2.730976]  caam_jr_interrupt+0x150/0x154
[    2.735080]  __handle_irq_event_percpu+0x6c/0x280
[    2.739791]  handle_irq_event+0x70/0x160
[    2.743716]  handle_fasteoi_irq+0xb0/0x200
[    2.747822]  __handle_domain_irq+0x8c/0xf0
[    2.751924]  gic_handle_irq+0xd8/0x160
[    2.755683]  el1_irq+0xb4/0x180
[    2.758829]  arch_cpu_idle+0x18/0x30
[    2.762412]  default_idle_call+0x4c/0x1d0
[    2.766431]  do_idle+0x238/0x2b0
[    2.769664]  cpu_startup_entry+0x30/0x7c
[    2.773595]  rest_init+0xe4/0xf4
[    2.776832]  arch_call_rest_init+0x1c/0x28
[    2.780937]  start_kernel+0x570/0x5a8
[    2.784602]  0x0
[    2.786452] Code: aa1503e0 90005c41 91108021 940da95d (d4210000)
[    2.792560] ---[ end trace 968b8515172abc2e ]---
[    2.797181] Kernel panic - not syncing: Oops - BUG: Fatal exception in interrupt
[    2.804580] SMP: stopping secondary CPUs
[    2.808508] Kernel Offset: disabled
[    2.811998] CPU features: 0x00240002,2000200c
[    2.816360] Memory Limit: none
[    2.819419] ---[ end Kernel panic - not syncing: Oops - BUG: Fatal exception in interrupt ]---


This particular crash can be fixed by making the caam driver delay as
well if the device isn't inited yet, e.g. this works:
--------
diff --git a/drivers/base/soc.c b/drivers/base/soc.c
index 0af5363a582c..f179f9e55b49 100644
--- a/drivers/base/soc.c
+++ b/drivers/base/soc.c
@@ -36,6 +36,7 @@ static DEVICE_ATTR(family,		0444, soc_info_show,  NULL);
 static DEVICE_ATTR(serial_number,	0444, soc_info_show,  NULL);
 static DEVICE_ATTR(soc_id,		0444, soc_info_show,  NULL);
 static DEVICE_ATTR(revision,		0444, soc_info_show,  NULL);
+static int init_done;
 
 struct device *soc_device_to_device(struct soc_device *soc_dev)
 {
@@ -157,6 +158,7 @@ struct soc_device *soc_device_register(struct soc_device_attribute *soc_dev_attr
 		return ERR_PTR(ret);
 	}
 
+	init_done = true;
 	return soc_dev;
 
 out3:
@@ -243,6 +245,9 @@ const struct soc_device_attribute *soc_device_match(
 {
 	int ret = 0;
 
+	if (!init_done)
+		return ERR_PTR(-EPROBE_DEFER);
+
 	if (!matches)
 		return NULL;
 
diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index ca0361b2dbb0..d08f8cc4131f 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -635,6 +635,9 @@ static int caam_probe(struct platform_device *pdev)
 	nprop = pdev->dev.of_node;
 
 	imx_soc_match = soc_device_match(caam_imx_soc_table);
+	if (IS_ERR(imx_soc_match))
+		return PTR_ERR(imx_soc_match);
+
 	caam_imx = (bool)imx_soc_match;
 
 	if (imx_soc_match) {
-------

But it obviously doesn't cover the ~50 (!) other soc_device_match users
in the code base which would all need to start handling potential error
return code.

(I also had problems with other drivers when trying to backport the
patch to the 5.4.70_2.3.0 imx kernel but I just gave up on that one)


I think having all drivers handle potential EPROBE_DEFER errors is the
best way forward, how do you propose to move on?
I can do some but have no way of testing most of these so am a bit
reluctant to...

Thanks,
-- 
Dominique
