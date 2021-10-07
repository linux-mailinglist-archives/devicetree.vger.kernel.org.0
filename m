Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42A55424D55
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 08:37:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbhJGGjH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 02:39:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231279AbhJGGjH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 02:39:07 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ECA3C061746
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 23:37:13 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id r1so5155206qta.12
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 23:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dUxrBRt6OvcLPoqJOHX2abNP7ltgihocL0g/sk7K2lw=;
        b=CiajSCb53oY9Y7D5FhuUPDEnBHhSOyTuSZGT9aGm9ggRPT4+/EEWBLLIwHh0UqFuKE
         ONe6Syoxkz0PK+gnBAm9UolufPrg8n//f8lOJwiZ/aON684yVzPxLDMM4/7WtA6Kyv5u
         flk1mgyICUVxF4VdXVzEulYjBCAPlK7vqjGLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dUxrBRt6OvcLPoqJOHX2abNP7ltgihocL0g/sk7K2lw=;
        b=c6FRA86jJXWLlcM4wzCtdI/gwFRzHR1BCDe5A7rSe7ScriCMHIfFskjWjuAoU+Yy71
         rffqeI5hzLPeIH+crXZEwd4MQdf6yYy6oRMRIrI5tBApcznmq3DC1Fg0PNyTrhverl7d
         bvxN2geC8dsMV3uJzbv4lnwzh2BHO6r9/O5EyXFOAEGZwt4V15CVVTWg3pUYDfEw9uWo
         M0rG7srh1oW8ZgwEfmvBQ1mxXmIrsDtt/EXThm1icYjZCGi887Rn3tZEgCj+9XkSgS1/
         bO7OH4bJDUaPEKmTXteYQKpsq8eRoFIp5ME4oylsDEDuUFlulEaFGKufubtVFu6ZnVgP
         u4Pg==
X-Gm-Message-State: AOAM5321GRAfNe/EklK5pRXTkta/cYMBOvQKfqMJLuYrMVFZNrmOv57f
        M4Avjj0RXXUFS0Vb1NsVjWwhvAaYmHFAWTT3p4g=
X-Google-Smtp-Source: ABdhPJzJKGB0bKrPdFevp0Kfe6cAN2pA2BxujBR69LHxUrmv7BgsbuOxEEMKWMY2urlciyFICIvo2gpM0UIjfhrtoWg=
X-Received: by 2002:a05:622a:11c9:: with SMTP id n9mr2966552qtk.295.1633588632121;
 Wed, 06 Oct 2021 23:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210903015314.177987-1-joel@jms.id.au> <YTe46lyQDfV6OzOc@robh.at.kernel.org>
In-Reply-To: <YTe46lyQDfV6OzOc@robh.at.kernel.org>
From:   Joel Stanley <joel@jms.id.au>
Date:   Thu, 7 Oct 2021 06:37:00 +0000
Message-ID: <CACPK8XeC=ZN2SRP+M2pz9RiAPD=chZr9+aifnnY03HAXDQ3xOA@mail.gmail.com>
Subject: Re: [PATCH] ipmi: bt: Add ast2600 compatible string
To:     Rob Herring <robh@kernel.org>, Corey Minyard <minyard@acm.org>
Cc:     openipmi-developer@lists.sourceforge.net,
        Andrew Jeffery <andrew@aj.id.au>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Sept 2021 at 19:09, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote:
> > The AST2600 has the same register set as the previous generation SoCs.
> >
> > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
> >  drivers/char/ipmi/bt-bmc.c                                       | 1 +
> >  2 files changed, 2 insertions(+)
> >
>
> Acked-by: Rob Herring <robh@kernel.org>

Corey, can you please merge this one?

Cheers,

Joel
