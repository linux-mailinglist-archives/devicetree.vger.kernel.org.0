Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3275E2868EA
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 22:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727981AbgJGUR5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 16:17:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726348AbgJGUR5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 16:17:57 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04F19C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 13:17:57 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id l16so3536695ilt.13
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 13:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PxE1SXKrniv35/XLIVk+hqpaTYVAa5E00lUy1wSBj5E=;
        b=trjbaBkvpmIgKYpngVlHEtl0AS2oxlhu2sGJZ3UefKOgaPlGBVW19wc1QpOQDpgFU9
         +sypvN998MLPiRYeccT3FhtYwA5khv5jV35RStzgPXvijeUdZg/ckTy/smB76VEhQClp
         cnEJt1CdOFOywr8TIgxCOgxNtD7phYIapPo6DJXbSFDbLJg9exYQPlGT9ddyMnbL9Fux
         Nr5biP2+t1A9cCRVwAn99b9fGz178O7Sjc5Ijacix62OfyEiqP9lEoo1CWwm9ZbqrfLA
         3zl2FqVN8vvHo085SiVjbWbMs+9Ir28JDWUUiaY6NzgrPVuusy8Cva4xWd1SMFjBqEXY
         tdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PxE1SXKrniv35/XLIVk+hqpaTYVAa5E00lUy1wSBj5E=;
        b=rEso9B16/3a7ekpFuXThvhNvzTTooFbaSbjGv4esginQvzE1I5rrrXuhBS06oZVp2R
         M8IQccoiydsgcDFBpdJ8KgRYTpP3h2GHdjCatfwYG8CB8HuNlQZmIsF8y9Osn7NLC6JR
         9RRpOZQDBzv2RvpOoBP01OAxh5MaOYHnJpP7gdnOLlOEya/QUO3GXIA4WewY634ySmSc
         9aTvUoMcHMZDYD3MlQWfA5U7fryMezKo/5MI5dSq4jxYqEz4hi0ZoNp6ah3h9lRu4pMO
         m+Qf/MnKnCfhHhBTmSOj5VCkuOgZ+CWnjWc1cxgSHvhWTh2Ff8qI5j/vA0XffGeRJsuG
         I6hw==
X-Gm-Message-State: AOAM532J/IzIj05gvE2B4cRoFSiUkcxh+JjsGKL6Zi1PwJS+/RiV4GnP
        QB81azBIOvcCTLz47xxxj16Avs75rJ72f9YOgQk=
X-Google-Smtp-Source: ABdhPJzX5sgbrEF32H/yUoB+wyx+7izqNFJqwAmXwX1pJ+N7UbIIFCt0XirKNr/LjlnP2YaGSt89YvYoBEijzIg2nzQ=
X-Received: by 2002:a05:6e02:1392:: with SMTP id d18mr4025633ilo.196.1602101876198;
 Wed, 07 Oct 2020 13:17:56 -0700 (PDT)
MIME-Version: 1.0
References: <20201003224555.163780-1-marex@denx.de> <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
 <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de> <CAHCN7xJFsi-zfzHOYJ56s5cx-owRL5EPrXCqzBgfrhrveAfo2A@mail.gmail.com>
In-Reply-To: <CAHCN7xJFsi-zfzHOYJ56s5cx-owRL5EPrXCqzBgfrhrveAfo2A@mail.gmail.com>
From:   Adam Ford <aford173@gmail.com>
Date:   Wed, 7 Oct 2020 15:17:45 -0500
Message-ID: <CAHCN7xKDP02QTNrxg84OvVF=Orcnh_gWj551ZV4bJphysfgu5w@mail.gmail.com>
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Marek Vasut <marex@denx.de>
Cc:     arm-soc <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 7, 2020 at 3:08 PM Adam Ford <aford173@gmail.com> wrote:
>
> On Wed, Oct 7, 2020 at 3:03 PM Marek Vasut <marex@denx.de> wrote:
> >
> > On 10/7/20 9:52 PM, Adam Ford wrote:
> > > On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
> > >>
> > >> Add the i.MX8MM BLK_CTL compatible string to the list.
> > [...]
> > >> ---
> > >>  Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
> > >>  1 file changed, 1 insertion(+)
> > >>
> > >
> > > Is there a DTSI change part of this patch?  I was going to try to test
> > > it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
> > > sure where to put the node.
> >
> > There are in fact quite a few other pieces you need to have in place,
> > this patchset in itself is not particularly useful, it is just infra for
> > the LCDIF and MIPI DSIM block control. You might want to wait until they
> > all land in next and test that result.
>
> I have several patches in place, the GPCv2, this block driver,
> enabling GPU DT node, I'm also working on the DSIM patch you posted.
> I was hoping to test them all together and reply to the various
> threads with tested-by.  I also want to get my device tree stuff ready
> on the beacon boards so when everything lands, I can post DTS updates
> to enable the LCDIF, DSI, and the HDMI bridge.
>
> If you have a repo somewhere that has all these combined, I can just
> work on the final layer to enable the device tree plumbing on my
> board.  I just need the imx8mm.dtsi changes for this, DSIM, and the
> LCDIF so I can finish the task.

On that note, I also have a i.MX8M Nano board which is similar to my
8MM.  If I understood the 8MM clock block driver better, I hope to
adapt your changes for the Nano too.  Once the GPCv2 driver is
accepted, I was also going to look at updating it to support the Nano
as well which also has the same DSIM and LCDIF as the 8MM as well and
a better GPU than the Mini but lacking the VPU.

adam
>
> adam
