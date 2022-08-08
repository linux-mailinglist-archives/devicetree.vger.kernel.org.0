Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2B258CFCF
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 23:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234108AbiHHVk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 17:40:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244443AbiHHVkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 17:40:23 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E456660F7
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 14:40:22 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id q19so9174870pfg.8
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 14:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=pz/VxMLIfCZoWDEtBKt9uxZpTJP3zr/tO6TgG4jyyTI=;
        b=2KPeY9SfJg2HJYlfZ8xHunKE5N57/lGqIa54U53F9+OAgDNxhF9AP8W9q/RRJmWK5r
         yX2gizQjoV+8k4oUfsXI2BdmG0t3z8KRYGcIWYzghLxvgIkCYnhoG9bFggJ5GAZ49gSG
         D9oUOgyTJP6LQ8t5dU7LdAy4kx0OSVveqaiWYttd8dIRKoMgSJ5imATTCV6xY7cTNHtx
         Q7pDEf/0urK7gAXzI/6pRvrGnAX7pWOWnw+PPR60i58rEpI0NXfLgIzc/Dl0D5Ggpz+D
         JQT6qX+KGFvy2Ov92HqxHE2wz7T8BSQh3YfITDdGGiDOjfLkXyjwtekIaiomtUloyrG5
         UspA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=pz/VxMLIfCZoWDEtBKt9uxZpTJP3zr/tO6TgG4jyyTI=;
        b=MxcOpvNx4z0qvJP46iVLFC8L4bQXobXP1NVt+MI3l3u0hItIdfYGvjYp/S4cB4HmDn
         Top+DlivzY0P8MhgoPS+tlD7RXswh7oqbuSTeXLHwkHoZuBCzVlNH/jp6QFWCqEvlKc2
         tw3zeRoxmtlmBZ5Kb7xJKJk9g1PPubH9n35q93aYS5qZq8owrmfjzTlffQQwpHNkWmZL
         uOc6ya8/46eH4WFVnCHATM7k1DIJxoHi2F/C5eu/gFUIFbcq45DQq1s+wuuVDlzfb/Zr
         hzgPOTKvI1Qz5ksoCzqN16QAuWORary8Pa4/Ku2l+ULXwqoK0gx8ZG4Jj/+Y3vS2NLvU
         6s5w==
X-Gm-Message-State: ACgBeo1VKMCpm+f9673VwuZp2ogfC8iMl9/p9Q3ws7Qv5AGQ82gXN2AR
        Fv5nworakJvbkoKspE9GHjZxBxcF67CeDrk+15jHjA==
X-Google-Smtp-Source: AA6agR7kJb8ObA5zl6FQkyL7AQLySk7JPwFUaGVY+hS4F2YHmb8SK/erz+RzIybwKY5G/YQKibQyvIZ0GUhI83mAp5w=
X-Received: by 2002:a05:6a00:1145:b0:52b:78c:fa26 with SMTP id
 b5-20020a056a00114500b0052b078cfa26mr20092003pfm.27.1659994822360; Mon, 08
 Aug 2022 14:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+vNU05_xH4b8DFVJLpiDTkJ_z9MrBFvf1gSz9P1KXy9POU7w@mail.gmail.com>
 <5914cae0-e87b-fb94-85dd-33311fc84c52@seco.com> <4edd83d8-e6d9-ad11-c1b1-078f556ea4f3@gmail.com>
 <CAJ+vNU32nZGvdZLnWfyW2OF4LtS=18v_kqjzN7pJuxjGWgkOmA@mail.gmail.com> <60e9e7dd-9642-696b-3c83-43e042392cc9@gmail.com>
In-Reply-To: <60e9e7dd-9642-696b-3c83-43e042392cc9@gmail.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 8 Aug 2022 14:40:10 -0700
Message-ID: <CAJ+vNU2yG0Sfu9L8+y-3TiLU7eG0pD3Ytx2a-T+ZdMOXnxhh1A@mail.gmail.com>
Subject: Re: ethernet<n> dt aliases implications in U-Boot and Linux
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Sean Anderson <sean.anderson@seco.com>,
        netdev <netdev@vger.kernel.org>, u-boot <u-boot@lists.denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 8, 2022 at 2:34 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 8/8/22 14:28, Tim Harvey wrote:
> > On Mon, Aug 8, 2022 at 2:19 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >>
> >> On 8/8/22 12:57, Sean Anderson wrote:
> >>> Hi Tim,
> >>>
> >>> On 8/8/22 3:18 PM, Tim Harvey wrote:
> >>>> Greetings,
> >>>>
> >>>> I'm trying to understand if there is any implication of 'ethernet<n>'
> >>>> aliases in Linux such as:
> >>>>           aliases {
> >>>>                   ethernet0 = &eqos;
> >>>>                   ethernet1 = &fec;
> >>>>                   ethernet2 = &lan1;
> >>>>                   ethernet3 = &lan2;
> >>>>                   ethernet4 = &lan3;
> >>>>                   ethernet5 = &lan4;
> >>>>                   ethernet6 = &lan5;
> >>>>           };
> >>>>
> >>>> I know U-Boot boards that use device-tree will use these aliases to
> >>>> name the devices in U-Boot such that the device with alias 'ethernet0'
> >>>> becomes eth0 and alias 'ethernet1' becomes eth1 but for Linux it
> >>>> appears that the naming of network devices that are embedded (ie SoC)
> >>>> vs enumerated (ie pci/usb) are always based on device registration
> >>>> order which for static drivers depends on Makefile linking order and
> >>>> has nothing to do with device-tree.
> >>>>
> >>>> Is there currently any way to control network device naming in Linux
> >>>> other than udev?
> >>>
> >>> You can also use systemd-networkd et al. (but that is the same kind of mechanism)
> >>>
> >>>> Does Linux use the ethernet<n> aliases for anything at all?
> >>>
> >>> No :l
> >>
> >> It is actually used, but by individual drivers, not by the networking
> >> stack AFAICT:
> >>
> >> git grep -E "of_alias_get_id\((.*), \"(eth|ethernet)\"\)" *
> >> drivers/net/ethernet/broadcom/genet/bcmmii.c:           id =
> >> of_alias_get_id(dn, "eth");
> >> drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c:    plat->bus_id =
> >> of_alias_get_id(np, "ethernet");
> >> drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c:   plat->bus_id =
> >> of_alias_get_id(np, "ethernet");
> >> drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:  plat->bus_id =
> >> of_alias_get_id(np, "ethernet");
> >>
> >> There were discussions about using that alias to name ethernet network
> >> devices in the past (cannot quite point to the thread), the current
> >> consensus appears to be that if you use the "label" property (which was
> >> primed by DSA) then your network device will follow that name, still not
> >> something the networking stack does for you within the guts of
> >> register_netdev().
> >
> > Right, I recall several discussions and debates about this.
> >
> > I did find a few references:
> > - failed attempt at using dt for naming:
> > https://patchwork.kernel.org/project/linux-arm-kernel/patch/1399390594-1409-1-git-send-email-boris.brezillon@free-electrons.com/
> > - systemd predicatable interface names:
> > https://systemd.io/PREDICTABLE_INTERFACE_NAMES/
> >
> > I do find it odd that for DSA devices the port names are defined in dt
> > yet the cpu uplink port can not be.
>
> There is no network interface created for the CPU port on the switch
> side, and the other network device (named the DSA conduit) is just a
> conduit, so its name does not matter so much except for making sure that
> it is brought up before the DSA ports that are dependent upon it and
> that can be resolved via "ip link show (the interface after the '@'). It
> matter even less nowadays that it gets brought up automatically by any
> of the user facing ports of the DSA switch:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9d5ef190e5615a7b63af89f88c4106a5bc127974
>

Florian,

Thanks for pointing this out - I had not noticed that addition which
looks like it made it in at v5.12.

Tim

> >
> > The issue I was trying to work through is an IMX8MP board which has
> > IMX8MP FEC as the cpu uplink port to a GbE switch and IMX8MP EQOS as
> > an additional GbE. In this case the FEC enumerates first becoming eth0
> > and the EQOS second becoming eth1. I wanted to make the EQOS eth0 as
> > it is the first RJ45 on the board physically followed by
> > lan1/lan2/lan3/lan4/lan5. While I can do this in U-Boot by controlling
> > the aliases for fec/eqos the same doesn't work for Linux so it's not
> > worth doing as that would add user confusion.
>
> None of that should matter in Linux anymore however, the names of the
> Ethernet controller(s) connected to your switch have no significance,
> see above.
>
> >
> > I have never liked the idea of using systemd to deal with network
> > interface re-naming as that's just another dependency where embedded
> > Linux users typically want to strip things down to the bare minimum.
>
> Fair enough.
> --
> Florian
