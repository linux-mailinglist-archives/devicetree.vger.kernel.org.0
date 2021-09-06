Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3699F40201C
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 21:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244935AbhIFTDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 15:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230263AbhIFTDF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 15:03:05 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83B34C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 12:02:00 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id s10so14937061lfr.11
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 12:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oqWAGL2fRn24NYqi76mkOHUlsjxHIJ7aIVzbkoJm0Qg=;
        b=gZJGZasf019uBV8/sptx63W/7A813GL+fUz6yFVbIAaFE7EL58EQJ3GA75oxkYn9JJ
         z2iBkfKthYg6VZkqXiZy7GTaDCQuAbvh0SlNkp396OV5TOoLc84hNhKaPL3t2ktXCvmO
         0CKtWJBra7VUSkkFaX4UsTj3JGd1K8iKV/rLG8Z6SiGtkWNKnrWV2/ILLk7d92QaS0/t
         2FfM8fJvBX1HawbQh+m5ij+foAYZdU7tLFvf7fvoTlScJY1kF29L782GnNTDTtKgkYjs
         Jvd0fAoDSFA/JLoZg/+c29oeUq7ZKFq7hRykuNeV0/OW/sxBDXHmJkOZLJxzhvPMWnXx
         wAiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oqWAGL2fRn24NYqi76mkOHUlsjxHIJ7aIVzbkoJm0Qg=;
        b=mrNZGe11piZv43gjpgWr89XEswRj/uy/6AYwSEXxn8al6AwftyTAj0We3EMNv5Qh84
         3qN4QFst95Cj7wXBU8XjCI9H869LtMVBLPXianauE6PVkvGDUHxpLYRQB9C1AuExX+QX
         WaFLIKv7XksGrJtdybNv79hk9Ydm9TYWkk+22A4X0LfFvWkW/+qSVhJIlXJ2ck0KzYfg
         oa+K7zqPBUS9jfy3EJFvdD18/JJvcb2R8e08Sa2pN4xpzDdJOruKM2mVQxKd0+Y1YJyB
         8BUmS56W7sYSk/QkxoeV/Ih4hz7GIMRF5o/j0qiuH7nH2R+r2nUWCPrE10CMFyah6FiQ
         LMlA==
X-Gm-Message-State: AOAM5300uYMhJ1zfBWHZ5ORn2J80Yt8AJAf4Hl1eudPCCItq2xM+3hrC
        dw+OQGhjEaKa5kJasUHelBzl3Cp9S414IBbPeH7bY1LP
X-Google-Smtp-Source: ABdhPJyy/ixfCTjc8OGPkM4O+hd7ynDZrKWmN32cNzr+lEA8GsMfMJKDg0CF+YZL9tdurJAmXx6f2dhQhxofrFQGuB0=
X-Received: by 2002:a05:6512:2385:: with SMTP id c5mr10600916lfv.530.1630954918773;
 Mon, 06 Sep 2021 12:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
In-Reply-To: <20210906184333.1855426-1-l.stach@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 6 Sep 2021 16:01:47 -0300
Message-ID: <CAOMZO5CBWQmYL2ut7BD8XZNPeSan4968WRrNTiRUBybw_EHMKQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Mon, Sep 6, 2021 at 3:43 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi all,
>
> third revision of the GPC improvements and BLK_CTRL driver to enable
> all power domains on the i.MX8MM. Frieder is still hunting some
> sporadic and hard to reproduce issues and I currently don't have much
> time to help with that. Meanwhile here's a new revision with the
> obvious issues (DT binding validation fail) fixed to allow people to
> review the code, so we hopefully don't miss the next merge window again.
>
> I guess it would even be possible to merge the series with the
> sporadic issues still present, as it seems a lot of people are waiting
> for this to land, as it's blocking lots of other work.

Agreed, thanks!
