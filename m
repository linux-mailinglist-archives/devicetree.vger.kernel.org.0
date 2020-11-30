Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DB502C8886
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 16:44:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728451AbgK3PoB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 10:44:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728178AbgK3Pn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 10:43:59 -0500
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 875B3C0613D6
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 07:43:13 -0800 (PST)
Received: by mail-il1-x135.google.com with SMTP id b8so11653143ila.13
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 07:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k5I7KqALguoeog0gnsFYIqqqlUt936F5QrTHzVce5rQ=;
        b=JbKfcZlgS5UzNR+HJ5s+8V0IGTkiULizmM6eH/VJXNzq6x3Yl8ohybPQVutizTL1WH
         S3aTPJN43nob+4rKC0MXz1IkjAH85U9aGDMXTqDNBWQpp1l98/9bMMJ8n0Q0okptgI7t
         bWsr0GrJnG8z7UexL2UYBhs45shGJWGzd3DzycBh9u4dcsgvy6SQcWUl0yMzf/yi7tmA
         1m1GkiOuZP0HPZOpF+tea3sdMYhiOA/tORU0C9PqCyrG1atQpSwEzAffVRc1piemLUR0
         SeO9M0gOV13KltmFKjNuiRr1qbVh2Yu+tBmwzE7/MzxkCSFYeF7Fzwl3rjg5cdExxJba
         G1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k5I7KqALguoeog0gnsFYIqqqlUt936F5QrTHzVce5rQ=;
        b=PoE7pNt//dYH+xNb4qj0reMd6UHDh6YJjLxq+9Li/K+dQnP8MCFnDPGr4upp4TBfSX
         5WiinfvcYX3GIl1lrae0HxabEHZS8HwtTLO/Dz6lzTdQkugq6EHRLvJN9EF5Gbg3o/1i
         6Er5p3MX8rt26suGbNSBXuYIKtK8JIreIkeIWrucVRM3yilwd5wvJx2fFQQil30JmBVD
         UR3EfXDJ1+AWQ1AgRZqP0RlwhwxhmRfykgVPfRsOoRTA1fWdLYW2VXK6y+0wHN/+TLQb
         fbEgwQ48CnrORN5DMzsbORUe5ypXFbO9bz+/orsstVNcjgBM8CzIs+PNgtA9J/mDk3n2
         rT6Q==
X-Gm-Message-State: AOAM531ABUjYMt3beOC0Q9PdZkrcXjSYPXOS4tG2My5kua6s0ntvXj/T
        J+rBtsb3hol5jetsGN7aZJQOpcf0m8vq3tmQ+xw=
X-Google-Smtp-Source: ABdhPJwrHpjt9S/IjIAkrxruyBVRjzlRDB74B/6kntM/o5YCx16IRM16sXnQp9x057hQwCKV2VxruYrne1lcGmnqUz4=
X-Received: by 2002:a05:6e02:926:: with SMTP id o6mr16367610ilt.65.1606750992596;
 Mon, 30 Nov 2020 07:43:12 -0800 (PST)
MIME-Version: 1.0
References: <20201003224555.163780-1-marex@denx.de> <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
 <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de> <CAHCN7xJFsi-zfzHOYJ56s5cx-owRL5EPrXCqzBgfrhrveAfo2A@mail.gmail.com>
 <CAHCN7xKDP02QTNrxg84OvVF=Orcnh_gWj551ZV4bJphysfgu5w@mail.gmail.com>
 <bfc7b2e9-506b-1161-95ca-6aaf73f38a2a@denx.de> <aa5e86be-07a8-878c-54ff-2c2c7cdd9ef7@kontron.de>
In-Reply-To: <aa5e86be-07a8-878c-54ff-2c2c7cdd9ef7@kontron.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Mon, 30 Nov 2020 09:43:01 -0600
Message-ID: <CAHCN7x+oz9hoNfNYytGD++EbtAkceer7q359qoOP=pwUvaD9mQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Frieder Schrempf <frieder.schrempf@kontron.de>
Cc:     Marek Vasut <marex@denx.de>, Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 30, 2020 at 5:47 AM Frieder Schrempf
<frieder.schrempf@kontron.de> wrote:
>
> Hi,
>
> On 07.10.20 22:50, Marek Vasut wrote:
> > On 10/7/20 10:17 PM, Adam Ford wrote:
> >> On Wed, Oct 7, 2020 at 3:08 PM Adam Ford <aford173@gmail.com> wrote:
> >>>
> >>> On Wed, Oct 7, 2020 at 3:03 PM Marek Vasut <marex@denx.de> wrote:
> >>>>
> >>>> On 10/7/20 9:52 PM, Adam Ford wrote:
> >>>>> On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
> >>>>>>
> >>>>>> Add the i.MX8MM BLK_CTL compatible string to the list.
> >>>> [...]
> >>>>>> ---
> >>>>>>   Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
> >>>>>>   1 file changed, 1 insertion(+)
> >>>>>>
> >>>>>
> >>>>> Is there a DTSI change part of this patch?  I was going to try to test
> >>>>> it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
> >>>>> sure where to put the node.
> >>>>
> >>>> There are in fact quite a few other pieces you need to have in place,
> >>>> this patchset in itself is not particularly useful, it is just infra for
> >>>> the LCDIF and MIPI DSIM block control. You might want to wait until they
> >>>> all land in next and test that result.
> >>>
> >>> I have several patches in place, the GPCv2, this block driver,
> >>> enabling GPU DT node, I'm also working on the DSIM patch you posted.
> >>> I was hoping to test them all together and reply to the various
> >>> threads with tested-by.  I also want to get my device tree stuff ready
> >>> on the beacon boards so when everything lands, I can post DTS updates
> >>> to enable the LCDIF, DSI, and the HDMI bridge.
> >>>
> >>> If you have a repo somewhere that has all these combined, I can just
> >>> work on the final layer to enable the device tree plumbing on my
> >>> board.  I just need the imx8mm.dtsi changes for this, DSIM, and the
> >>> LCDIF so I can finish the task.
> >>
> >> On that note, I also have a i.MX8M Nano board which is similar to my
> >> 8MM.  If I understood the 8MM clock block driver better, I hope to
> >> adapt your changes for the Nano too.  Once the GPCv2 driver is
> >> accepted, I was also going to look at updating it to support the Nano
> >> as well which also has the same DSIM and LCDIF as the 8MM as well and
> >> a better GPU than the Mini but lacking the VPU.
> >
> > I don't have a branch, but I sent you the collected patches off-list.
> >
>
> I would also be interested in the patch collection for BLK_CTL, DSIM,
> etc. Marek, would you mind sending me those, too?
>
> Adam, did you already set up a branch and do some tests with the full stack?

Frieder,

I have been monitoring some of the activity on the BLK_CTL.  It seems
like there is some disagreement on how to connect the power domain
controller with the BLK_CTL.  Someone reported that it causes a hang
on the 8MP, so until that gets resolved, I doubt we'll be able to use
the display system.  Some of the DSIM changes happening are being
pushed back for further changes, so it seems like having the full
integration might be a while.

adam
>
> Thanks,
> Frieder
