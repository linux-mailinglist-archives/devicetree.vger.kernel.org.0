Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E04993890C9
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:28:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346848AbhESO3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:29:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241149AbhESO3m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:29:42 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C5FAC061760
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:28:19 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id gb17so2241124ejc.8
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=v5CXWXv+dicxXzBmVU94yt1htl8k2quY3j/LebiIK+k=;
        b=EvWNtCTc8p9rBoagHQZW3apWHQWRmFXtifalApkJiN+PrAeY/YI5SKIs0c1NJoHb+B
         rSWorFAyAtolyweWqIdEmbisnakESOLNsp85MCQZq/4VuvkfnNIIn1Fr6jkDpeNyKTnW
         UwPyQ18Ut1oeW5Wge+ZEpyAT6GxRu3HrqpiPLVQ/IXBMTsljzlPqxpVy5wig0EFoSXKF
         hMSoAaZW1ZP8y2zAT+RwceIUKtHUerklkrqbxaliQ6ri+aE6s2TJD2jaCnCvr7xICc0a
         6MwVi2h179oCbAC8VRQCD+AZjnmWYcT82K7X0nLGT0JSz9PzICghqTANga/lEKxoshmI
         eX4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=v5CXWXv+dicxXzBmVU94yt1htl8k2quY3j/LebiIK+k=;
        b=Yl0ifk4Rd2AlwPCjf5t60+3HhhCogfcautjYccOe1OE3dzPvv9UQMO914QyrKvCEec
         2LZHEZShi34olkB5WHC7lUUVtz5xfWjW5W91ZBRWBmU/aknFde4357DS02A9qdPQUj+9
         0+5hXtA5jUQCM14XnmSyapwL4RbV7dKTJRuKRc2lr93wnYurG/+Q8hWsarABV3xnZGTf
         m1NSBkNbJLRfLVEWicjdtuXNxcuW2CGiYGmMX7aAytN5bn7bOqFKMBY5Sbu6aPsrLjHz
         dtrl5Y5c4cnuQzlhcMG4zEdJIeR41BWWTcXMpBR5IViRTabzHnoCtYnYAvUd8hUry4mV
         farw==
X-Gm-Message-State: AOAM530jvG9a0t/1MlD69NFQNQNb9IVNRubC7Q8VFztYTnR8E+NWpEoS
        jced4jh0SqBh4oF45tUReLuqvX+fF3rh/qH53OtDWw==
X-Google-Smtp-Source: ABdhPJxP6OKa3AVmX8FScoq0kJuQdUDNbLmKvSmiJx0cmEb2xPU0a2tDtgZyDtqHbMKnFlI3b8rMHaBznk1oEjb0x4g=
X-Received: by 2002:a17:907:161f:: with SMTP id hb31mr13134677ejc.514.1621434498337;
 Wed, 19 May 2021 07:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210407123438.224551-1-mindal@semihalf.com> <20210511030658.GG3425@dragon>
 <AM0PR04MB67542D30A9424D455DB3ADD496539@AM0PR04MB6754.eurprd04.prod.outlook.com>
 <20210513021214.GJ3425@dragon> <20210513141921.i7sfmekbcw2m7vxd@skbuf>
 <CAPv3WKfnWFjfZw39avZBEyUpEsH2f=NCs8VfjeR+wzk4qV3GmA@mail.gmail.com>
 <20210513183102.6dflgb4v2oekdlq5@skbuf> <CAKpxNiyxDi66CXW4Z_exC=uy6mNbfhdBG5czgqNZqxmszegB0A@mail.gmail.com>
In-Reply-To: <CAKpxNiyxDi66CXW4Z_exC=uy6mNbfhdBG5czgqNZqxmszegB0A@mail.gmail.com>
From:   =?UTF-8?Q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>
Date:   Wed, 19 May 2021 16:28:07 +0200
Message-ID: <CAKpxNiyHaw6kr98q5466Amjs-mTtyWArJShPwvYm+znjPDZ0yw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: fsl-ls1028a: Correct ECAM PCIE window ranges
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Vladimir Oltean <vladimir.oltean@nxp.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Claudiu Manoil <claudiu.manoil@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Leo Li <leoyang.li@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "tn@semihalf.com" <tn@semihalf.com>,
        "upstream@semihalf.com" <upstream@semihalf.com>,
        Alexandru Marginean <alexandru.marginean@nxp.com>,
        Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

On Fri, May 14, 2021 at 10:25 AM Kornel Dul=C4=99ba <mindal@semihalf.com> w=
rote:
>
> Hi Vladimir,
>
> On Thu, May 13, 2021 at 8:31 PM Vladimir Oltean <vladimir.oltean@nxp.com>=
 wrote:
> >
> > Hi Marcin,
> >
> > On Thu, May 13, 2021 at 07:54:15PM +0200, Marcin Wojtas wrote:
> > > Hi Vladimir,
> > >
> > > czw., 13 maj 2021 o 16:19 Vladimir Oltean <vladimir.oltean@nxp.com> n=
apisa=C5=82(a):
> > > >
> > > > On Thu, May 13, 2021 at 10:12:15AM +0800, Shawn Guo wrote:
> > > > > On Tue, May 11, 2021 at 09:48:22AM +0000, Claudiu Manoil wrote:
> > > > > > >-----Original Message-----
> > > > > > >From: Shawn Guo <shawnguo@kernel.org>
> > > > > > >Sent: Tuesday, May 11, 2021 6:07 AM
> > > > > > [...]
> > > > > > >Subject: Re: [PATCH] arm64: dts: fsl-ls1028a: Correct ECAM PCI=
E window
> > > > > > >ranges
> > > > > > >
> > > > > > >+ Claudiu
> > > > > > >
> > > > > > >On Wed, Apr 07, 2021 at 02:34:38PM +0200, Kornel Duleba wrote:
> > > > > > >> Currently all PCIE windows point to bus address 0x0, which d=
oes not match
> > > > > > >> the values obtained from hardware during EA.
> > > > > > >> Replace those values with CPU addresses, since in reality we
> > > > > > >> have a 1:1 mapping between the two.
> > > > > > >>
> > > > > > >> Signed-off-by: Kornel Duleba <mindal@semihalf.com>
> > > > > > >
> > > > > > >Claudiu,
> > > > > > >
> > > > > > >Do you have any comment on this?
> > > > > > >
> > > > > >
> > > > > > Well, probing is still working with this change, I've just test=
ed it.
> > > > > >
> > > > > > PCI listing at boot time changes from:
> > > > > >
> > > > > > pci-host-generic 1f0000000.pcie: host bridge /soc/pcie@1f000000=
0 ranges:
> > > > > > pci-host-generic 1f0000000.pcie:      MEM 0x01f8000000..0x01f81=
5ffff -> 0x0000000000
> > > > > > pci-host-generic 1f0000000.pcie:      MEM 0x01f8160000..0x01f81=
cffff -> 0x0000000000
> > > > > >
> > > > > > to:
> > > > > >
> > > > > > pci-host-generic 1f0000000.pcie: host bridge /soc/pcie@1f000000=
0 ranges:
> > > > > > pci-host-generic 1f0000000.pcie:      MEM 0x01f8000000..0x01f81=
5ffff -> 0x01f8000000
> > > > > > pci-host-generic 1f0000000.pcie:      MEM 0x01f8160000..0x01f81=
cffff -> 0x01f8160000
> > > > > >
> > > > > > and looks reasonable.
> > > > > > Adding Vladimir and Alex just in case.
> > > > > >
> > > > > > Acked-by: Claudiu Manoil <claudiu.manoil@nxp.com>
> > > > >
> > > > > Thanks, Claudiu.
> > > > >
> > > > > Kornel,
> > > > >
> > > > > Do we need a Fixes tag for this patch?
> > > > >
> > > > > Shawn
> > > >
> > > > Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > > >
> > > > I am not sure whether "incorrect data that is unused" deserves a Fi=
xes:
> > > > tag or not, probably not.
> > > >
> > > > Bjorn Helgaas did point out before that "The fact that all these wi=
ndows
> > > > map to PCI bus address 0 looks broken", so there's that:
> > > >
> > > > https://patchwork.kernel.org/project/linux-pci/cover/20201129230743=
.3006978-1-kw@linux.com/
> > > >
> > > > And while it does look "broken", with the Enhanced Allocation capab=
ility
> > > > and the pci-host-ecam-generic driver, there is no address translati=
on
> > > > taking place, so no inbound/outbound windows are configured, so the
> > > > range.pci_addr calculated in devm_of_pci_get_host_bridge_resources(=
) is
> > > > not used for anything except for printing.
> > >
> > > ...in Linux. Please note Linux device trees can be used as-is by othe=
r
> > > projects. Regardless my opinion on how that's unfortunate, FreeBSD
> > > does additional ranges check before performing EA and fails. Since th=
e
> > > current DT description is imo broken and the change is transparent fo=
r
> > > Linux, it would be great to get this change merged into tree in case
> > > there are are no objections.
> >
> > Just for my curiosity, can you please link me to the extra FreeBSD chec=
ks?
>
> FreeBSD parses values from "ranges" and uses "rman" API to store them.
> Now "rman", or Resource manager is used in the FreeBSD kernel to
> manage memory regions.
> In particular it checks if any two regions inserted into the same
> "manager" overlap.
> If they do it is treated as a fatal error, which in our case causes
> the PCI driver to fail to probe.
> code: https://github.com/freebsd/freebsd-src/blob/main/sys/dev/pci/pci_ho=
st_generic.c#L148.
>
> >
> > Anyway, I'm not sure what is more "broken", to have a "ranges" property
> > when no address translation takes place, or for that "ranges" property
> > to be set to a confusing "child address space" value. That's not to say
> > I have an objection against Shawn merging the patch.
> >
> > My main point was slightly different though, the "ranges" property is
> > currently mandatory, although in this case it provides no information
> > which cannot be retrieved directly from the config space. Properties
> > that have no other use except to be pedantic are, well, useless.
> > Maybe we can do something about that too.

Do you have any more remarks regarding this patch?
