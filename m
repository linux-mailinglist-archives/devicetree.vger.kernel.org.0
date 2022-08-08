Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4ABBD58CF9F
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 23:28:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238069AbiHHV2d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 17:28:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230391AbiHHV2b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 17:28:31 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24CA4193D4
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 14:28:30 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id g12so9166586pfb.3
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 14:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=gnvLu89zw9JeJq8nsP6jAbH1cxdUsrXXMKEI7Ci74CE=;
        b=W0lPMe98nKaIt7n07cTvkwMq1sd703ArGgqeccW4slKDtqHL/rfjPXpttx+1oKJzsg
         JfWQUixl/x99olVYJuclUYv8SZ12ywcMdqhoML55maCDD+uODzvy5TL09XfD8nBbBfTT
         ilUt2Yf26v4Zgp9ctLVvrXTjVLrb5A9guGEnoUCdFWqYkssTJNk71+1lKg01fRzSAvtF
         9tZGc77A8XtY3DAPVR5fpnXgPLBQVZK9AmWzy3L4rMb5xNboEIBKIeWzw6TE/zyr21Fz
         eIBBS2kpjnzBN8mFF0uuLgb4BjSvFISrUR3WhvC06QNIPeEv3uSYExtgfveiFgYFriyB
         OZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=gnvLu89zw9JeJq8nsP6jAbH1cxdUsrXXMKEI7Ci74CE=;
        b=BxNS5j3ZqdfF5qkZnbjgyd2Um0l18epsyEblAWb4Uvvykyg7fgJrpjzle3aolVdVS8
         /qtInulq0ZLob5iZlO5B5DsSEjmA57m3MkyO7c68SUCPBMN2mg0mnomAcUaujcAMXOxx
         8v3wCbuIuFAyi9T0UV3ZjMU144kTHXYSKmt1s778lSdbmxdB+NgXv+0Pp+mUunCXDswy
         OXIMTHtmUptp86sLUKXxNumj+Q+4Mcp2nlpjokqM4DUYUN8kTtTMgQdxGX4t5t2O98RO
         npGyhbt2lygcnFn1qPlxWo8CnfEpUqQPUxZduv0pCzeAi5PegHyJPoV48PdXog1Gt2+U
         qx+A==
X-Gm-Message-State: ACgBeo1j4Ftux7BkYAYGF5DSCKQrrPe3YgrGOMOFWBLNYzRnoAfRyot/
        dFq1UUTrTQClFcRVsh288dBmcfo+gZhh/ay8P0FL8A==
X-Google-Smtp-Source: AA6agR4TQHLYjRutGqAUEm7Slw0w6muMBnBQHGBAVRKORntqYdKea6Vylhls86O9SdWa7rSA3E4UixtcW4h/LvoMNZg=
X-Received: by 2002:a63:1b5e:0:b0:41d:a203:af05 with SMTP id
 b30-20020a631b5e000000b0041da203af05mr3010259pgm.115.1659994109415; Mon, 08
 Aug 2022 14:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+vNU05_xH4b8DFVJLpiDTkJ_z9MrBFvf1gSz9P1KXy9POU7w@mail.gmail.com>
 <5914cae0-e87b-fb94-85dd-33311fc84c52@seco.com> <4edd83d8-e6d9-ad11-c1b1-078f556ea4f3@gmail.com>
In-Reply-To: <4edd83d8-e6d9-ad11-c1b1-078f556ea4f3@gmail.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 8 Aug 2022 14:28:17 -0700
Message-ID: <CAJ+vNU32nZGvdZLnWfyW2OF4LtS=18v_kqjzN7pJuxjGWgkOmA@mail.gmail.com>
Subject: Re: ethernet<n> dt aliases implications in U-Boot and Linux
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Sean Anderson <sean.anderson@seco.com>,
        netdev <netdev@vger.kernel.org>, u-boot <u-boot@lists.denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 8, 2022 at 2:19 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 8/8/22 12:57, Sean Anderson wrote:
> > Hi Tim,
> >
> > On 8/8/22 3:18 PM, Tim Harvey wrote:
> >> Greetings,
> >>
> >> I'm trying to understand if there is any implication of 'ethernet<n>'
> >> aliases in Linux such as:
> >>          aliases {
> >>                  ethernet0 = &eqos;
> >>                  ethernet1 = &fec;
> >>                  ethernet2 = &lan1;
> >>                  ethernet3 = &lan2;
> >>                  ethernet4 = &lan3;
> >>                  ethernet5 = &lan4;
> >>                  ethernet6 = &lan5;
> >>          };
> >>
> >> I know U-Boot boards that use device-tree will use these aliases to
> >> name the devices in U-Boot such that the device with alias 'ethernet0'
> >> becomes eth0 and alias 'ethernet1' becomes eth1 but for Linux it
> >> appears that the naming of network devices that are embedded (ie SoC)
> >> vs enumerated (ie pci/usb) are always based on device registration
> >> order which for static drivers depends on Makefile linking order and
> >> has nothing to do with device-tree.
> >>
> >> Is there currently any way to control network device naming in Linux
> >> other than udev?
> >
> > You can also use systemd-networkd et al. (but that is the same kind of mechanism)
> >
> >> Does Linux use the ethernet<n> aliases for anything at all?
> >
> > No :l
>
> It is actually used, but by individual drivers, not by the networking
> stack AFAICT:
>
> git grep -E "of_alias_get_id\((.*), \"(eth|ethernet)\"\)" *
> drivers/net/ethernet/broadcom/genet/bcmmii.c:           id =
> of_alias_get_id(dn, "eth");
> drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c:    plat->bus_id =
> of_alias_get_id(np, "ethernet");
> drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c:   plat->bus_id =
> of_alias_get_id(np, "ethernet");
> drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:  plat->bus_id =
> of_alias_get_id(np, "ethernet");
>
> There were discussions about using that alias to name ethernet network
> devices in the past (cannot quite point to the thread), the current
> consensus appears to be that if you use the "label" property (which was
> primed by DSA) then your network device will follow that name, still not
> something the networking stack does for you within the guts of
> register_netdev().

Right, I recall several discussions and debates about this.

I did find a few references:
- failed attempt at using dt for naming:
https://patchwork.kernel.org/project/linux-arm-kernel/patch/1399390594-1409-1-git-send-email-boris.brezillon@free-electrons.com/
- systemd predicatable interface names:
https://systemd.io/PREDICTABLE_INTERFACE_NAMES/

I do find it odd that for DSA devices the port names are defined in dt
yet the cpu uplink port can not be.

The issue I was trying to work through is an IMX8MP board which has
IMX8MP FEC as the cpu uplink port to a GbE switch and IMX8MP EQOS as
an additional GbE. In this case the FEC enumerates first becoming eth0
and the EQOS second becoming eth1. I wanted to make the EQOS eth0 as
it is the first RJ45 on the board physically followed by
lan1/lan2/lan3/lan4/lan5. While I can do this in U-Boot by controlling
the aliases for fec/eqos the same doesn't work for Linux so it's not
worth doing as that would add user confusion.

I have never liked the idea of using systemd to deal with network
interface re-naming as that's just another dependency where embedded
Linux users typically want to strip things down to the bare minimum.

Best Regards,

Tim
