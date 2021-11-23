Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FCE945A762
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 17:17:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237859AbhKWQUM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 11:20:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231683AbhKWQUM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 11:20:12 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81610C061574
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 08:17:03 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id v15so12317310ljc.0
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 08:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2Kqm2DTjWqf3+P2JqlqtbKR09dLEFPNogTBJfvpiSZk=;
        b=RdAE2Oe0NvubfRfuy+ZW1olv2kTIDbRQloRzAA0QFd6R52D4zihLwN1wyC0trtNqZf
         crfB/JK63sIL6dJvLGKmXTmwk3KliFlCiqT0vPxJwysVvcZrVTi8FtPSeU9pvF0tUcNS
         4ZIcOG2iMe59/3dQ+Ikn8Uq3yw+1QaYMo7d21fpNzcRSBxcqkRDT6kxHoJiEPR4fvNFa
         a4lmCF5IixhCvmNuggrKjnXbqlBoemIXlu+D4DIV5o0mUvWR7dN0ep1NCXAzhPocp6u3
         gUtJ9HDdT1g4SSw8+jGX8yiNh1hOW2J9bFpTzS4ugbcSbk+ObYWHXd1Gi/4hofo6EdBk
         3cIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Kqm2DTjWqf3+P2JqlqtbKR09dLEFPNogTBJfvpiSZk=;
        b=No4s+piQG3Laq9ZqWVOu6djMoUuW019UVRaI0Xxhw3HIVEOOLett/0Cb3Q7nx+oCVn
         Tf93YSiWGBTOmp75J4cC2auFl/wxsqlENMUTo8grAg2DF9S8tncsYhpmvx6knrzY1Esi
         671/7apqWJv7+HmrJe4F1QvVdwt4C/HTWeV6nZNAodeyo5rKX6+07y0xzlnjszkbaaDZ
         co1mA9BkTKrmfkqQtb0VrHQSHTsX3RBqpwORjcDwIULPcg8fcsFsP6YneDxZeslgy65P
         W+szzt4Fg5z0ytdw/jXuNjCacuZMKGNwPsRfZ8/DVaXX98lJbTwt3KLf/ZwQOsrZakbx
         U2Aw==
X-Gm-Message-State: AOAM533X0481D2VgTHgOq+B8HAiyJvOkvjLMcaQRIOJQFaS4D6E1NK/0
        NtTrxKEsXDyGbR6iKCHQK2PaEHMP1eyR6/d2X3ukXA==
X-Google-Smtp-Source: ABdhPJwC75fU59j/quBfR/x4FD+1qdMIsqCzGTKco/XIrZuXKuQjoXEF9i//qIJjHIdatGIZqu8T2StxZtTpr/QeGIY=
X-Received: by 2002:a2e:80c3:: with SMTP id r3mr6815654ljg.4.1637684221852;
 Tue, 23 Nov 2021 08:17:01 -0800 (PST)
MIME-Version: 1.0
References: <20211122103905.14439-1-biju.das.jz@bp.renesas.com>
 <20211122103905.14439-2-biju.das.jz@bp.renesas.com> <CAMuHMdV5c-1wjhWN1kBbbgp7RMZR4NFTg2btyJ1JSxuGhxq9vw@mail.gmail.com>
In-Reply-To: <CAMuHMdV5c-1wjhWN1kBbbgp7RMZR4NFTg2btyJ1JSxuGhxq9vw@mail.gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 23 Nov 2021 17:16:25 +0100
Message-ID: <CAPDyKFrxjO2q=pd4TP+4qAUBhdd-e5Lwe3WFMOGmXn7ONQP-Ww@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: renesas,sdhi: Rename RZ/G2L clocks
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Chris Paterson <chris.paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 23 Nov 2021 at 14:38, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> On Mon, Nov 22, 2021 at 11:39 AM Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > Rename the below RZ/G2L clocks to match with the clock names used in
> > R-Car Gen2 and later generations.
> >
> >  imclk->core
> >  clk_hs->clkh
> >  imclk2->cd
> >
> > This changes will avoid using fallback for RZ/G2L high speed clock,
> > if "clkh" is not used in device tree and also the code changes in
> > driver related to this clocks.
> >
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v5.17 if Ulf is happy.

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe
