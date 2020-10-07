Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EEB42868D3
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 22:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727929AbgJGUJF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 16:09:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728158AbgJGUJE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 16:09:04 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1A3CC061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 13:09:04 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id c5so3516378ilk.11
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 13:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QXVGJtlp9NIIgEzsvhfSZnpPV7EQLjJzRfkCpT23eS4=;
        b=J4D9AmMh50+H0G1KbuawxzpMKd3uczZXMk9PiAEvDmCkZtDdUGowSjaq0AWQi5cfsM
         uega/UZvHp4Yi2W/boH4bd+O17cmj30utAPuN8pHt1eDy2INXoDRFYBGq58J+iEQCmuj
         bwKzx937HXR3bqEqt5dGhXjuag3xwwrnNLEnEhfVA+G0Zp+QBxGUupwMLTt6e+sIRdHm
         CorXRWDIuaMW1W2RdAdR4JDuE1dZSZ/WeMhLgH/fuHQCnrGWlJleGr6XSPiv142erM0N
         IPy67nXRSbgi0JBzvub9fL/9bPuEzHt513rLxUsYC5bxjg/Zw90c+qpxNALEHQ1LB9tf
         mNvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QXVGJtlp9NIIgEzsvhfSZnpPV7EQLjJzRfkCpT23eS4=;
        b=SrfwJE7CCWx2XnagiITaE0i0RssxtUmjnX1XNzm+FDHfRKyhmu5/0WAWXNdyIhbdMo
         om/ZE+8hkFrI7Ob9SGK0QnqUulFDEbRuYE1W9gOi/DE2dluzhM5fGh/PZvqvuoW9+oEt
         MSgw9qKdCVAflqqQOJomuGwXQfTZaaZA3e0YmbzYyJUqddnQOjGSXSZLGXJXXRfxtlFq
         RCmRlodem+g/GuVhZ9q06npkh3ou3A4agapjZNLhajakfH3TZcwZ3ulmQrilsXlGZkq2
         aQdDobpsKpM4Tyzyl3wlzP9KOaWDORxVfZF9meIyFBM7CrV22/fzheYjNTTkz5fQ3+mX
         dCeA==
X-Gm-Message-State: AOAM530DPz3SqYWce8sN0txkpUU5Y+xrgajpOKaky1flk0LtoJ7iUhp3
        92s2BL1EkicGoU2FtBnOk3uV8A877tlTk7IW0OU=
X-Google-Smtp-Source: ABdhPJzF3gIbzBBbqsMblJX6UBXcXyrrOEQ5cEU7E89ubgDsJqiUBSL1y91HgqOUiLYHZvN0yaH8JuuyVrhEbFhCJBs=
X-Received: by 2002:a92:4891:: with SMTP id j17mr3755396ilg.65.1602101343916;
 Wed, 07 Oct 2020 13:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <20201003224555.163780-1-marex@denx.de> <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
 <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de>
In-Reply-To: <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Wed, 7 Oct 2020 15:08:52 -0500
Message-ID: <CAHCN7xJFsi-zfzHOYJ56s5cx-owRL5EPrXCqzBgfrhrveAfo2A@mail.gmail.com>
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

On Wed, Oct 7, 2020 at 3:03 PM Marek Vasut <marex@denx.de> wrote:
>
> On 10/7/20 9:52 PM, Adam Ford wrote:
> > On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
> >>
> >> Add the i.MX8MM BLK_CTL compatible string to the list.
> [...]
> >> ---
> >>  Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >
> > Is there a DTSI change part of this patch?  I was going to try to test
> > it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
> > sure where to put the node.
>
> There are in fact quite a few other pieces you need to have in place,
> this patchset in itself is not particularly useful, it is just infra for
> the LCDIF and MIPI DSIM block control. You might want to wait until they
> all land in next and test that result.

I have several patches in place, the GPCv2, this block driver,
enabling GPU DT node, I'm also working on the DSIM patch you posted.
I was hoping to test them all together and reply to the various
threads with tested-by.  I also want to get my device tree stuff ready
on the beacon boards so when everything lands, I can post DTS updates
to enable the LCDIF, DSI, and the HDMI bridge.

If you have a repo somewhere that has all these combined, I can just
work on the final layer to enable the device tree plumbing on my
board.  I just need the imx8mm.dtsi changes for this, DSIM, and the
LCDIF so I can finish the task.

adam
