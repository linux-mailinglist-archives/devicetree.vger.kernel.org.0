Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9B0C6023AF
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 07:18:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbiJRFSj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 01:18:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbiJRFSh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 01:18:37 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1974995AC4
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 22:18:36 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id fy4so29540198ejc.5
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 22:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j73kGLh0CnJEA8KnzgX0A0r/cABVpro+6vQk9HncJpg=;
        b=HPM+bXAoy7ZCGnX1ENmyyLnoOj1MsxDh81UXLrwDS6oDXnjQIF0tR9ya+iaMncS7Py
         Yofod3cbYMmVsroPLZTZafFGdSJa8LYW4YszWMIsoCg1RsItyNAKxSK6+E2al7e9WSr5
         cUo+0BkCq/IETi8paiV2XEzNTTx7nH7M3QoPI3KE4J/AF4C5ogYMgzRPGuRYwRDrWMC1
         yd9/mou9OQXgcPwrmF9/CKtiBxJo6USDFx4pBzsBfHsgxbk08nKUuAdM0k14q5ZLl7Vg
         ejhBTU42HrIQVOfSVQ/Weul9Mg0lax4uRy1dnt6TFdfp5LmdtczQ2w90FQYt/RxI5nsn
         wFXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j73kGLh0CnJEA8KnzgX0A0r/cABVpro+6vQk9HncJpg=;
        b=QqufkjVB03Q1LvDmFkbh6p+c1ghgbort94EsfRwmfAPTPNK7qUZ0MP9ZNDhJGPbv+J
         QYtjecX/l1hYigJ4cb2RAzHKfNibmVuxiObNgchqPGnnwgGerR3pAf/50BtTsw/FkCPU
         3LjpaWvlM66jZaHr1dvxPhstVGpoDuNIXq9HkiY/ggYo3i9Fa2u9/NJHI0mWBuzH1YuS
         LUbtuhvVGm10GQtgmKucacHpqDc7LpmGRcZOrW8IrpvCSf5aP2l7tbWa1a+swJzFL5gG
         cKkG8tb1WvsrCCiQ6E5SNCY+D8xZMDZnJ0iIEy7OEftwbJjFVOD0mbOuqt9ZiJHOdGtA
         f0aw==
X-Gm-Message-State: ACrzQf1RYAcCMTp8b4EX+2ohOpOEosWgfnygbtq+qMJ8fC7HdzbcwKZu
        foL8RM2BvHgSR8PjD3bG6a8=
X-Google-Smtp-Source: AMsMyM7DQM4qAkztotBGoCndm0OpFV4XYyapcgIRc7FaoNgsz+rqrtoXt5hCvVJsWqhdQaouCxCgJw==
X-Received: by 2002:a17:907:94d1:b0:790:65a:3a18 with SMTP id dn17-20020a17090794d100b00790065a3a18mr914228ejc.428.1666070314483;
        Mon, 17 Oct 2022 22:18:34 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id u8-20020a17090657c800b0078c1e174e11sm6908594ejr.136.2022.10.17.22.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 22:18:33 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Christian Marangi <ansuelsmth@gmail.com>, Han Xu <han.xu@nxp.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 6.1 FIX] mtd: core: add missing of_node_get() in dynamic partitions code
Date:   Tue, 18 Oct 2022 07:18:22 +0200
Message-Id: <20221018051822.28685-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes unbalanced of_node_put():
[    1.078910] 6 cmdlinepart partitions found on MTD device gpmi-nand
[    1.085116] Creating 6 MTD partitions on "gpmi-nand":
[    1.090181] 0x000000000000-0x000008000000 : "nandboot"
[    1.096952] 0x000008000000-0x000009000000 : "nandfit"
[    1.103547] 0x000009000000-0x00000b000000 : "nandkernel"
[    1.110317] 0x00000b000000-0x00000c000000 : "nanddtb"
[    1.115525] ------------[ cut here ]------------
[    1.120141] refcount_t: addition on 0; use-after-free.
[    1.125328] WARNING: CPU: 0 PID: 1 at lib/refcount.c:25 refcount_warn_saturate+0xdc/0x148
[    1.133528] Modules linked in:
[    1.136589] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 6.0.0-rc7-next-20220930-04543-g8cf3f7
[    1.146342] Hardware name: Freescale i.MX8DXL DDR3L EVK (DT)
[    1.151999] pstate: 600000c5 (nZCv daIF -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[    1.158965] pc : refcount_warn_saturate+0xdc/0x148
[    1.163760] lr : refcount_warn_saturate+0xdc/0x148
[    1.168556] sp : ffff800009ddb080
[    1.171866] x29: ffff800009ddb080 x28: ffff800009ddb35a x27: 0000000000000002
[    1.179015] x26: ffff8000098b06ad x25: ffffffffffffffff x24: ffff0a00ffffff05
[    1.186165] x23: ffff00001fdf6470 x22: ffff800009ddb367 x21: 0000000000000000
[    1.193314] x20: ffff00001fdfebe8 x19: ffff00001fdfec50 x18: ffffffffffffffff
[    1.200464] x17: 0000000000000000 x16: 0000000000000118 x15: 0000000000000004
[    1.207614] x14: 0000000000000fff x13: ffff800009bca248 x12: 0000000000000003
[    1.214764] x11: 00000000ffffefff x10: c0000000ffffefff x9 : 4762cb2ccb52de00
[    1.221914] x8 : 4762cb2ccb52de00 x7 : 205d313431303231 x6 : 312e31202020205b
[    1.229063] x5 : ffff800009d55c1f x4 : 0000000000000001 x3 : 0000000000000000
[    1.236213] x2 : 0000000000000000 x1 : ffff800009954be6 x0 : 000000000000002a
[    1.243365] Call trace:
[    1.245806]  refcount_warn_saturate+0xdc/0x148
[    1.250253]  kobject_get+0x98/0x9c
[    1.253658]  of_node_get+0x20/0x34
[    1.257072]  of_fwnode_get+0x3c/0x54
[    1.260652]  fwnode_get_nth_parent+0xd8/0xf4
[    1.264926]  fwnode_full_name_string+0x3c/0xb4
[    1.269373]  device_node_string+0x498/0x5b4
[    1.273561]  pointer+0x41c/0x5d0
[    1.276793]  vsnprintf+0x4d8/0x694
[    1.280198]  vprintk_store+0x164/0x528
[    1.283951]  vprintk_emit+0x98/0x164
[    1.287530]  vprintk_default+0x44/0x6c
[    1.291284]  vprintk+0xf0/0x134
[    1.294428]  _printk+0x54/0x7c
[    1.297486]  of_node_release+0xe8/0x128
[    1.301326]  kobject_put+0x98/0xfc
[    1.304732]  of_node_put+0x1c/0x28
[    1.308137]  add_mtd_device+0x484/0x6d4
[    1.311977]  add_mtd_partitions+0xf0/0x1d0
[    1.316078]  parse_mtd_partitions+0x45c/0x518
[    1.320439]  mtd_device_parse_register+0xb0/0x274
[    1.325147]  gpmi_nand_probe+0x51c/0x650
[    1.329074]  platform_probe+0xa8/0xd0
[    1.332740]  really_probe+0x130/0x334
[    1.336406]  __driver_probe_device+0xb4/0xe0
[    1.340681]  driver_probe_device+0x3c/0x1f8
[    1.344869]  __driver_attach+0xdc/0x1a4
[    1.348708]  bus_for_each_dev+0x80/0xcc
[    1.352548]  driver_attach+0x24/0x30
[    1.356127]  bus_add_driver+0x108/0x1f4
[    1.359967]  driver_register+0x78/0x114
[    1.363807]  __platform_driver_register+0x24/0x30
[    1.368515]  gpmi_nand_driver_init+0x1c/0x28
[    1.372798]  do_one_initcall+0xbc/0x238
[    1.376638]  do_initcall_level+0x94/0xb4
[    1.380565]  do_initcalls+0x54/0x94
[    1.384058]  do_basic_setup+0x1c/0x28
[    1.387724]  kernel_init_freeable+0x110/0x188
[    1.392084]  kernel_init+0x20/0x1a0
[    1.395578]  ret_from_fork+0x10/0x20
[    1.399157] ---[ end trace 0000000000000000 ]---
[    1.403782] ------------[ cut here ]------------

Reported-by: Han Xu <han.xu@nxp.com>
Fixes: ad9b10d1eaada169 ("mtd: core: introduce of support for dynamic partitions")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Tested-by: Han Xu <han.xu@nxp.com>
---
 drivers/mtd/mtdcore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 18aa54460d36..0b4ca0aa4132 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -562,7 +562,7 @@ static void mtd_check_of_node(struct mtd_info *mtd)
 	if (!mtd_is_partition(mtd))
 		return;
 	parent = mtd->parent;
-	parent_dn = dev_of_node(&parent->dev);
+	parent_dn = of_node_get(dev_of_node(&parent->dev));
 	if (!parent_dn)
 		return;
 
-- 
2.34.1

