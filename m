Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A01C74B244
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 15:55:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbjGGNzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 09:55:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230140AbjGGNzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 09:55:39 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0F291FE6
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 06:55:35 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9939fbb7191so360482466b.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 06:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688738134; x=1691330134;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Qz1EYY9GLz8yPsScKYSnDomZ8FcaPnVIizQBbLAEb3w=;
        b=EdcP6h3NF/ZJSoHxln5rUV1DhbKxELmtwJZalSOK+LvFTqZx4LVO5k/QVoHmFHqjqJ
         xsQo42PGD+IjjKt0fqnov0JhlQ8NB04lL2ulkWhNtM4EC9O1yEeg8LIDeIHSyrVuPc1Y
         o8ct3BSVUqfiMA1Owhalp6OeQ59YmUevwKUiUxU0/utxW1Ro8QbRvMOpjPtHa7xJ08dF
         ruUsZoppF3ySTTiuT/UJLVBlxd6G5SZG6hofel1r91DTyAz+JlLF3csAEd5NdPLjcVfb
         SflHOP8rBbtoi30bZ0xJc028XbyIFkqbCnIdw+t9d/jLeoZ7lv/+Igzn4b/yIrgCByHr
         4pwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688738134; x=1691330134;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qz1EYY9GLz8yPsScKYSnDomZ8FcaPnVIizQBbLAEb3w=;
        b=bu1b88bHfQBnCk0Lty2CIcVhUzi7QUO7cbHAzsZ8svSa1G1aPWqlopEiIHIPd9MgNe
         fJx4kl96/75cf3xu+6FBDYObl3aKTKLITVGB0cGo9zspqCOzV58e7Bpf2FuKn7aJb4Ip
         /yOvT5FsmWTMfUiHSfznpPZOhSevOr76ORHMmqWDJEqO3DcUksGOrOQ8oR5nUfJpefgA
         cH0cTGVVblp1i9NyVVPTl5e64Tz2FApX1NE+UkzB9De3d/ta2xGeN/oip9K428sLxFoh
         RO09s5uHobtw5UtamPodN3w1LxqFrJlYvRWE3ZWoIQ61UptWP6lO7phdfemzV59B+7Nw
         Shcg==
X-Gm-Message-State: ABy/qLage3Ctte0t4cEMqds/IiwKv/pDsCt2YEvXagvv5INFSjRGJUoU
        hxkcIMGRF5GwC784Qm0wNkE=
X-Google-Smtp-Source: APBJJlG4FG9G2WjScCHgzlk8MH+X1Z1IcZfDn8sMo9FGKrK9N9FzSCowagxTyxPe5hCt2knHpO2qLw==
X-Received: by 2002:a17:907:3d9e:b0:985:259f:6f50 with SMTP id he30-20020a1709073d9e00b00985259f6f50mr8594808ejc.34.1688738133850;
        Fri, 07 Jul 2023 06:55:33 -0700 (PDT)
Received: from ?IPv6:2003:f6:ef05:8700:f946:69a3:7954:9ee0? (p200300f6ef058700f94669a379549ee0.dip0.t-ipconnect.de. [2003:f6:ef05:8700:f946:69a3:7954:9ee0])
        by smtp.gmail.com with ESMTPSA id o26-20020a17090608da00b00992f1a3b9bfsm2236389eje.170.2023.07.07.06.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 06:55:33 -0700 (PDT)
Message-ID: <b1321b2cb908ff311d00c8db44f2cb77df0a129f.camel@gmail.com>
Subject: Re: [RFC PATCH 0/1] of: dynamic: allow freeing of_nodes after the
 overlay changeset
From:   Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To:     Frank Rowand <frowand.list@gmail.com>,
        Nuno Sa <nuno.sa@analog.com>, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>
Date:   Fri, 07 Jul 2023 15:58:01 +0200
In-Reply-To: <32553632-d8c8-f110-ebc0-78f7bbb66f91@gmail.com>
References: <20230511151047.1779841-1-nuno.sa@analog.com>
         <32553632-d8c8-f110-ebc0-78f7bbb66f91@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Frank,

Sorry to bother again :)... See below

On Sun, 2023-05-14 at 16:20 -0500, Frank Rowand wrote:
> On 5/11/23 10:10, Nuno Sa wrote:
> > There are valid cases where we might get in here with an unexpected
> > refcount. One example are devlinks between suppliers <-> consumers.
> > When a link is created, it will grab a reference to both the supplier a=
nd
> > the consumer devices (which can, potentially, hold a reference to it's
> > of_node) and this reference is not synchronously dropped when unbinding=
 the
> > device from the driver. Instead, a work item is queued (see
> > devlink_dev_release()). This async nature will make that
> > __of_changeset_entry_destroy() is reached with a refcount > 1. But,
> > eventually, all the refcounts are released and of_node_release() is
> > reached.
> >=20
> > All the above will lead to leaks and the following dumps:
> >=20
> > [ 1297.035424] OF: ERROR: memory leak, expected refcount 1 instead of 2=
,
> > of_node_get()/of_node_put() unbalanced - destroy cset entry: attach ove=
rlay
> > node /fpga-axi/dummy_dev
> > [ 1297.050763] OF: ERROR: memory leak, expected refcount 1 instead of 3=
,
> > of_node_get()/of_node_put() unbalanced - destroy cset entry: attach ove=
rlay
> > node /regulator-vio
> > [ 1297.065654] OF: ERROR: memory leak, expected refcount 1 instead of 3=
,
> > of_node_get()/of_node_put() unbalanced - destroy cset entry: attach ove=
rlay
> > node /regulator-vdd-1-8
> > [ 1297.080885] OF: ERROR: memory leak, expected refcount 1 instead of 3=
,
> > of_node_get()/of_node_put() unbalanced - destroy cset entry: attach ove=
rlay
> > node /regulator-vref
> >=20
> > =C2=A01297.168367] ------------[ cut here ]------------
> > [ 1297.173000] WARNING: CPU: 0 PID: 15340 at lib/refcount.c:25
> > kobject_get+0x9c/0xa0
> > [ 1297.180514] refcount_t: addition on 0; use-after-free.
> > [ 1297.185661] Modules linked in:
> > [ 1297.188727] CPU: 0 PID: 15340 Comm: kworker/0:2 Not tainted 6.3.1-di=
rty
> > #5
> > [ 1297.195617] Hardware name: Xilinx Zynq Platform
> > [ 1297.200158] Workqueue: events_long device_link_release_fn
> > [ 1297.205600]=C2=A0 unwind_backtrace from show_stack+0x10/0x14
> > [ 1297.210880]=C2=A0 show_stack from dump_stack_lvl+0x40/0x4c
> > [ 1297.215983]=C2=A0 dump_stack_lvl from __warn+0x78/0x124
> > [ 1297.220816]=C2=A0 __warn from warn_slowpath_fmt+0x134/0x18c
> > [ 1297.220857]=C2=A0 warn_slowpath_fmt from kobject_get+0x9c/0xa0
> > [ 1297.220892]=C2=A0 kobject_get from of_node_get+0x14/0x1c
> > [ 1297.236279]=C2=A0 of_node_get from of_fwnode_get+0x34/0x40
> > [ 1297.236324]=C2=A0 of_fwnode_get from fwnode_full_name_string+0x34/0x=
a0
> > [ 1297.247455]=C2=A0 fwnode_full_name_string from device_node_string+0x=
5a8/0x750
> > [ 1297.247488]=C2=A0 device_node_string from pointer+0x3d0/0x67c
> > [ 1297.259497]=C2=A0 pointer from vsnprintf+0x20c/0x410
> > [ 1297.264063]=C2=A0 vsnprintf from vprintk_store+0x12c/0x430
> > [ 1297.269176]=C2=A0 vprintk_store from vprintk_emit+0xe0/0x23c
> > [ 1297.274454]=C2=A0 vprintk_emit from vprintk_default+0x20/0x28
> > [ 1297.274503]=C2=A0 vprintk_default from _printk+0x2c/0x58
> > [ 1297.274534]=C2=A0 _printk from kobject_put+0x8c/0x130
> > [ 1297.289299]=C2=A0 kobject_put from platform_device_release+0x10/0x3c
> > [ 1297.295245]=C2=A0 platform_device_release from device_release+0x30/0=
xa0
> > [ 1297.301458]=C2=A0 device_release from kobject_put+0x8c/0x130
> > [ 1297.306718]=C2=A0 kobject_put from device_link_release_fn+0x54/0xa8
> > [ 1297.312588]=C2=A0 device_link_release_fn from process_one_work+0x1fc=
/0x4c8
> > [ 1297.319079]=C2=A0 process_one_work from worker_thread+0x50/0x54c
> > [ 1297.324684]=C2=A0 worker_thread from kthread+0xd0/0xec
> > [ 1297.329421]=C2=A0 kthread from ret_from_fork+0x14/0x2c
> > [ 1297.334153] Exception stack(0xe0b95fb0 to 0xe0b95ff8)
> > [ 1297.339200] 5fa0:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 00000000 00000000
> > 00000000 00000000
> > [ 1297.347386] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000=
000
> > 00000000 00000000
> > [ 1297.355577] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000=
000
> > [ 1297.362192] ---[ end trace 0000000000000000 ]---
> > [ 1297.366805] ------------[ cut here ]------------
> > [ 1297.371416] WARNING: CPU: 0 PID: 15340 at lib/refcount.c:28
> > fwnode_full_name_string+0x8c/0xa0
> > [ 1297.379957] refcount_t: underflow; use-after-free.
> > [ 1297.384739] Modules linked in:
> > [ 1297.387789] CPU: 0 PID: 15340 Comm: kworker/0:2 Tainted: G=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > W=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6.3.1-dirty #5
> > [ 1297.396136] Hardware name: Xilinx Zynq Platform
> > [ 1297.400660] Workqueue: events_long device_link_release_fn
> > [ 1297.406079]=C2=A0 unwind_backtrace from show_stack+0x10/0x14
> > [ 1297.411319]=C2=A0 show_stack from dump_stack_lvl+0x40/0x4c
> > [ 1297.416389]=C2=A0 dump_stack_lvl from __warn+0x78/0x124
> > [ 1297.421206]=C2=A0 __warn from warn_slowpath_fmt+0x134/0x18c
> > [ 1297.426361]=C2=A0 warn_slowpath_fmt from fwnode_full_name_string+0x8=
c/0xa0
> > [ 1297.432820]=C2=A0 fwnode_full_name_string from device_node_string+0x=
5a8/0x750
> > [ 1297.439537]=C2=A0 device_node_string from pointer+0x3d0/0x67c
> > [ 1297.444867]=C2=A0 pointer from vsnprintf+0x20c/0x410
> > [ 1297.449406]=C2=A0 vsnprintf from vprintk_store+0x12c/0x430
> > [ 1297.454484]=C2=A0 vprintk_store from vprintk_emit+0xe0/0x23c
> > [ 1297.459727]=C2=A0 vprintk_emit from vprintk_default+0x20/0x28
> > [ 1297.465056]=C2=A0 vprintk_default from _printk+0x2c/0x58
> > [ 1297.469944]=C2=A0 _printk from kobject_put+0x8c/0x130
> > [ 1297.474570]=C2=A0 kobject_put from platform_device_release+0x10/0x3c
> > [ 1297.480507]=C2=A0 platform_device_release from device_release+0x30/0=
xa0
> > [ 1297.486705]=C2=A0 device_release from kobject_put+0x8c/0x130
> > [ 1297.491947]=C2=A0 kobject_put from device_link_release_fn+0x54/0xa8
> > [ 1297.497798]=C2=A0 device_link_release_fn from process_one_work+0x1fc=
/0x4c8
> > [ 1297.504256]=C2=A0 process_one_work from worker_thread+0x50/0x54c
> > [ 1297.509828]=C2=A0 worker_thread from kthread+0xd0/0xec
> > [ 1297.514550]=C2=A0 kthread from ret_from_fork+0x14/0x2c
> > [ 1297.519263] Exception stack(0xe0b95fb0 to 0xe0b95ff8)
> > [ 1297.524308] 5fa0:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 00000000 00000000
> > 00000000 00000000
> > [ 1297.532478] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000=
000
> > 00000000 00000000
> > [ 1297.540653] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000=
000
> > [ 1297.547256] ---[ end trace 0000000000000000 ]---
> > [ 1297.168353] OF: ERROR: memory leak before free overlay changeset,=C2=
=A0
> > /regulator-vref
> > [ 1297.551874] ------------[ cut here ]------------
> > [ 1297.551880] WARNING: CPU: 0 PID: 15340 at lib/refcount.c:22
> > kobject_get+0x88/0xa0
> > [ 1297.551903] refcount_t: saturated; leaking memory.
> > [ 1297.551908] Modules linked in:
> > [ 1297.551918] CPU: 0 PID: 15340 Comm: kworker/0:2 Tainted: G=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > W=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6.3.1-dirty #5
> > [ 1297.551931] Hardware name: Xilinx Zynq Platform
> > [ 1297.551938] Workqueue: events_long device_link_release_fn
> > [ 1297.551965]=C2=A0 unwind_backtrace from show_stack+0x10/0x14
> > [ 1297.551994]=C2=A0 show_stack from dump_stack_lvl+0x40/0x4c
> > [ 1297.552023]=C2=A0 dump_stack_lvl from __warn+0x78/0x124
> > [ 1297.552059]=C2=A0 __warn from warn_slowpath_fmt+0x134/0x18c
> > [ 1297.552092]=C2=A0 warn_slowpath_fmt from kobject_get+0x88/0xa0
> > [ 1297.552123]=C2=A0 kobject_get from of_node_get+0x14/0x1c
> > [ 1297.552146]=C2=A0 of_node_get from of_fwnode_get+0x34/0x40
> > [ 1297.552173]=C2=A0 of_fwnode_get from fwnode_full_name_string+0x34/0x=
a0
> > [ 1297.552204]=C2=A0 fwnode_full_name_string from device_node_string+0x=
5a8/0x750
> > [ 1297.552234]=C2=A0 device_node_string from pointer+0x3d0/0x67c
> > [ 1297.552262]=C2=A0 pointer from vsnprintf+0x20c/0x410
> > [ 1297.552289]=C2=A0 vsnprintf from vscnprintf+0x10/0x24
> > [ 1297.552317]=C2=A0 vscnprintf from printk_sprint+0x18/0xf4
> > [ 1297.552353]=C2=A0 printk_sprint from vprintk_store+0x2d0/0x430
> > [ 1297.552388]=C2=A0 vprintk_store from vprintk_emit+0xe0/0x23c
> > [ 1297.552422]=C2=A0 vprintk_emit from vprintk_default+0x20/0x28
> > [ 1297.552457]=C2=A0 vprintk_default from _printk+0x2c/0x58
> > [ 1297.552483]=C2=A0 _printk from kobject_put+0x8c/0x130
> > [ 1297.552507]=C2=A0 kobject_put from platform_device_release+0x10/0x3c
> > [ 1297.552539]=C2=A0 platform_device_release from device_release+0x30/0=
xa0
> > [ 1297.552571]=C2=A0 device_release from kobject_put+0x8c/0x130
> > [ 1297.552599]=C2=A0 kobject_put from device_link_release_fn+0x54/0xa8
> > [ 1297.552630]=C2=A0 device_link_release_fn from process_one_work+0x1fc=
/0x4c8
> > [ 1297.552657]=C2=A0 process_one_work from worker_thread+0x50/0x54c
> > [ 1297.552674]=C2=A0 worker_thread from kthread+0xd0/0xec
> > [ 1297.552701]=C2=A0 kthread from ret_from_fork+0x14/0x2c
> > [ 1297.552724] Exception stack(0xe0b95fb0 to 0xe0b95ff8)
> > [ 1297.552736] 5fa0:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 00000000 00000000
> > 00000000 00000000
> > [ 1297.552749] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000=
000
> > 00000000 00000000
> > [ 1297.552760] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000=
000
> > [ 1297.552768] ---[ end trace 0000000000000000 ]---
> > [ 1297.769464] OF: ERROR: memory leak before free overlay changeset,=C2=
=A0
> > /regulator-vdd-1-8
> > [ 1297.777337] OF: ERROR: memory leak before free overlay changeset,=C2=
=A0 /fpga-
> > axi/dummy_dev
> > [ 1297.777360] OF: ERROR: memory leak before free overlay changeset,=C2=
=A0
> > /regulator-vio
> >=20
> > the above is easily reproducible with a dummy platform device that just
> > gets some regulators (devlinks are created at that point).
> >=20
> > The culprit of the above is actually this line:
> >=20
> > https://elixir.bootlin.com/linux/v6.4-rc1/source/drivers/of/dynamic.c#L=
366
> >=20
> > This also makes me wonder if we should not have an extra patch just pri=
nting
> > 'node->full_name' instead of '%pOF'. As seen, we should not make any
> > assumptions
> > (like parent's being around :)) at this stage.
> >=20
> > To fix the issue, I'm adding a new OVERLAY flag to inform that the chan=
geset
> > is already gone so if we ever reach of_node_release() we can proceed
> > normally. Obviously, I'm not really sure about this and that's the whol=
e
> > reason
> > why I'm bringing this as an RFC. This looks like a nasty corner case an=
d I
> > know
> > that adding/removing devices dynamically is far from being easy to hand=
le...
> >=20
> > Also not sure if the driver core folks should be aware of this...
> >=20
> > Lastly, one of workarounding this issue is by manually unbiding the dev=
ice
> > from the driver before removing the overlay which would (potentially) g=
ive
> > time for the workers to run.
> >=20
> > Nuno Sa (1):
> > =C2=A0 of: dynamic: allow freeing of_nodes after the overlay changeset
> >=20
> > =C2=A0drivers/of/dynamic.c | 31 +++++++++++++++++++++++++++----
> > =C2=A0include/linux/of.h=C2=A0=C2=A0 |=C2=A0 1 +
> > =C2=A02 files changed, 28 insertions(+), 4 deletions(-)
> >=20
>=20
> Very nice problem description, thanks.
>=20
> You have found a real problem of how the devlink implementation did not
> consider
> the impact on overlays.=C2=A0 The overlay removal process does not expect=
 any node
> created by an overlay apply to exist at the moment that the overlay remov=
al
> completes (to be a little more pedantic, the removal process of deletes n=
odes
> and
> properties occurs in the exact opposite order that they were created.=C2=
=A0 Thus
> even
> partly through the overlay removal, a node is deleted before its parent i=
s
> deleted.=C2=A0 Also, all of the properties for any node deleted during th=
e removal
> are deleted (even if the node refcount does not reach zero).
>=20
> The RFC patch does not attempt to fix the actual problem, it merely suppr=
esses
> reporting the symptom.
>=20

So I agree this patch was not fixing the real problem and was clumsy and I'=
m
aware the following is also kind of a workaround but hopefully one more
acceptable:


diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index cd3821a6444f..550370555bf7 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -461,11 +461,23 @@ struct device_node *__of_node_dup(const struct device=
_node
*np,
        return NULL;
 }

+static unsigned int __of_check_kref(struct kref *kref)
+{
+       unsigned int cnt =3D kref_read(kref);
+
+       if (cnt <=3D 1)
+               return 0;
+
+       msleep(50);
+
+       return kref_read(kref);
+}
+
 static void __of_changeset_entry_destroy(struct of_changeset_entry *ce)
 {
        if (ce->action =3D=3D OF_RECONFIG_ATTACH_NODE &&
            of_node_check_flag(ce->np, OF_OVERLAY)) {
-               if (kref_read(&ce->np->kobj.kref) > 1) {
+               if (__of_check_kref(&ce->np->kobj.kref) > 1) {
                        pr_err("ERROR: memory leak, expected refcount 1 ins=
tead
of %d, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach
overlay node %pOF\n",
                               kref_read(&ce->np->kobj.kref), ce->np);
                } else {

----

This would still need a proper comment before the sleep and maybe better fi=
ne
tune the sleep time (and actually test it :)).=20

The thing is, I'm guessing the dev_link stuff is async for some reason and =
I'm
fairly sure that changing it to a synchronous fashion is likely a NAK. So t=
he
only other thing that comes to my mind would be some kind of synchronizatio=
n at
the kobject level which would probably feel a bit hacky. Anyways, bottom li=
ne,
in the overlay code path (and assuming the async nature won't change) we wo=
uld
still need to do some kind of waiting and probably with some timeout (so we
don't wait indefinitely). Hence, the above patch does not feel that bad as =
we
are anyways doing some waiting to see if all the references where released =
in
the meantime. And yes, if after X time, we still have kref > 1, then possib=
le
there's a real bug of someone taking a lot of time to release the reference=
 (or
not releasing at all).

Would the above patch be something more acceptable?

- Nuno S=C3=A1

