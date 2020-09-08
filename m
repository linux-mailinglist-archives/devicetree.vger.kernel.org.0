Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 183A6261B10
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 20:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728350AbgIHSxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 14:53:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726726AbgIHSw1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 14:52:27 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D7F4C061573
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 11:52:27 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id a65so96113otc.8
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 11:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rEVfc7102aruoQnNs8/an5dNx6x874lhLVupvO8piOg=;
        b=ZibE8aNUyT2ZNL/rBW8SU9MxZ9F9pBXpIKcPl0zY4HfVL/zH1EVsZpEiR8wecsgOv+
         4+7zquW7RWTDWqt7SDS2kbowB+JBUy1cHus2w2HclNHy/i7hFcGlCZcy+4WKThzhYrw9
         NdQ/PaTQ10ilsQ0AeS8AtSIYK1fhnlZsFfA9X7IxMOmiB7qC7I3qN67TVHGIiCuaYOh1
         UmT4Vo1lJtRPSt55ZW7/6vVO7dqtc5vRhTjyia7dDiXR95+jepEDfKHbmAf5ucTU3yS2
         z+IIHUduJdw1B3erHZwaMBNjuqItsNdvF4Hdy9N7EeanI7DwrdqUH8Ccaon0WSIfLEhn
         NydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rEVfc7102aruoQnNs8/an5dNx6x874lhLVupvO8piOg=;
        b=sLnmz84ms3RI0IC/Bi1aw8ArnnnSb+pce2t8sJ4s3Vir1loxMd1q+H9TzLVhoOy5Ko
         mkD4Vd74iTJZqEvZlYveTIVgfT/6Hzc7stwYCiugK4OdVIBdaN+6VFYRGx3HYhlEOXY/
         mT5xRcXv6BR5Rj4a9YnLyTZT2jxTrN0IP1pUEOS/4HmFqbcL5Acie5SaPSAAPEL8Bb27
         TWVq9AkmpcY8lzp61kCW0vzbyb36wK1a5+TjhLox5/mjZxvOQTSgsrUe8HRDUCsg/Z0e
         fK922u6UtxTk8Df0Tno2W94u2FqGikB1o769IgPf9Jg92itnhE45QpwgLMMG65XbukOx
         InMQ==
X-Gm-Message-State: AOAM531eI1MIeheCmhD4wxhS03nha5ZrRsATFtOyiSGtu2+xOXrDhPd3
        a++setnpF8pU7RLnfzmlF5bvqHoA5lr6Mnaex6KEQw2EQfk=
X-Google-Smtp-Source: ABdhPJw7bXy65SK7JkQMJzyH9hqZryxuVmQGgRNHxawuX7a+mVyqjQXkowp1sezNpYgBLR9mUqLagq7mZyj5AmWjitY=
X-Received: by 2002:a9d:4cd:: with SMTP id 71mr336230otm.131.1599591146690;
 Tue, 08 Sep 2020 11:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200623130320.405852-1-mpe@ellerman.id.au> <d2652e63-b136-a805-fd6d-00584b64c772@gmail.com>
 <87mu20spxd.fsf@mpe.ellerman.id.au>
In-Reply-To: <87mu20spxd.fsf@mpe.ellerman.id.au>
From:   Christian Lamparter <chunkeey@gmail.com>
Date:   Tue, 8 Sep 2020 20:52:14 +0200
Message-ID: <CAAd0S9Cc2M+JsqC+3DhLtaQEecweVX-toC2SxNAzNdogFeeTOw@mail.gmail.com>
Subject: Re: [PATCH] powerpc/boot/dts: Fix dtc "pciex" warnings
To:     Michael Ellerman <mpe@ellerman.id.au>
Cc:     linuxppc-dev@ozlabs.org, sfr@canb.auug.org.au,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Chris Blake <chrisrblake93@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On Tue, Sep 8, 2020 at 9:12 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
> Christian Lamparter <chunkeey@gmail.com> writes:
> > On 2020-06-23 15:03, Michael Ellerman wrote:
> >> With CONFIG_OF_ALL_DTBS=y, as set by eg. allmodconfig, we see lots of
> >> warnings about our dts files, such as:
> >>
> >>    arch/powerpc/boot/dts/glacier.dts:492.26-532.5:
> >>    Warning (pci_bridge): /plb/pciex@d00000000: node name is not "pci"
> >>    or "pcie"
> >>
> >
> >
> > Unfortunately yes. This patch will break uboot code in Meraki MX60(W) / MX60.
> >
> >  > https://github.com/riptidewave93/meraki-uboot/blob/mx60w-20180413/board/amcc/bluestone/bluestone.c#L1178
> >
> > | if (!pci_available()) {
> > |     fdt_find_and_setprop(blob, "/plb/pciex@d00000000", "status",
> > |                   "disabled", sizeof("disabled"), 1);
> > | }
> >
> >
> > Backstory: There are two version of the Meraki MX60. The MX60
> > and the MX60W. The difference is that the MX60W has a populated
> > mini-pcie slot on the PCB for a >W<ireless card.
> >
> > That said, this is not earth shattering.
>
> I'm happy to revert that hunk if you think any one is actually booting
> mainline on those.

The MX60(W) or APM82181 in general?

The APM82181 devices run really well on the kernel 5.8. The APM82181
had some bitrot and missing pieces. But I started at around 4.4 with
upstreaming various bits and stuff. For proof, I can post a bootlog from
my MyBook Live dev station running my mbl-debian on this weekend:
<https://github.com/chunkeey/mbl-debian>.

This WD MyBook Live project really only needs
 - vanilla 5.8 (I got rid of the make-kpkg hack by switching to make bindeb-pkg)
 - the MyBookLive DTS.
 - kernel config is based on arch/powerpc/configs/44x/bluestone_defconfig +
   (I enabled dwc2 (USB-Port on the DUO), SATA, ext4(+squashfs),
   gpio-support, leds-support, crypto44x)
 - a powerpc32 userspace (debian's sid still builds up-to-date powerpc packages)

For the MX60(W): We have those two supported in OpenWrt. Currently they
are running a OpenWrt kernel based on stable 5.4 series. The missing "bit"
is upstream support for the AR8327 ethernet switch. I know that the chip
can be supported by qca8k: <https://www.spinics.net/lists/netdev/msg420810.html>

....

But of course: My future work with the MX60(W) (and AR8327) depends on how
this series goes. I'm testing the waters with the Meraki MR24 AP and the
WD MyBook Live series. Reason being that both devices are well supported.
They are available in great quantities... and all the core functions
are working.

Cheers,
Christian
