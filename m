Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D730DFDEA
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2019 08:59:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387647AbfJVG7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Oct 2019 02:59:22 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:37635 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731026AbfJVG7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Oct 2019 02:59:21 -0400
Received: by mail-vk1-f194.google.com with SMTP id v78so3355071vke.4
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2019 23:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=48GsjoJkha+FkK4BjEpjxR+SeBNRB+aPyJf6ECBpNI8=;
        b=hbyPJZlxSdwm88myuhdtJEWIniVP1HiyEFgnExhI8LirSFCoAssFt32rZiA6ATyVm1
         RfPrjPXMTCjoAwM+OIdY+RZmtVg+qMxVFAFdE1sSNExUcHfa5QU/axOjkyW9NIhXAnMw
         12HfGq8+/d7D00ifWT3bp1gIIGhSCTcWH+AOmyLfDPf2pm+QQayGYH6BM5PnZcao+fGx
         EN2Ht1omTOCmgsUVR6YVT2YLw5ezM3kXz8KQFgXSzvnivqvBoEff2XKL34V5JzZ7ygvs
         6ovL3ZC5dP+zoCqhRdoblDoZCU9DAwv3bVwBcsq87BrFkpXHAkgA+4tHyuorekroJaA5
         kHPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=48GsjoJkha+FkK4BjEpjxR+SeBNRB+aPyJf6ECBpNI8=;
        b=V8cQyUirTk/P8NoIOg7hAnmMBl2G6jhbXhZyzj+pAweG1WmwC2Jw7mnTY8LUq/WTyT
         73O8Vtgq2WDOnw36aCwJhNEk6jJSySd5drZH/ssQHIiLzUWR4NRBACaOYrwWZr4gD0zL
         zgyFCzfXSniS2TrRYmqcLF665DjK2dyAsOGh+FjW794Hn8/VJdsmKlH6O0ZJA0ctV/vz
         IzdGu4Zyz/SgJBsxLnw/PXU0h22cUDfaoMQna+896l8yJzKhabJEZc7IxIO70ogFLsla
         TPTfAB3v93CwyOtwMKJnkYVXXu16NQOaYwV2+hjI2EwDpwcxc9VWVrabkiVuFj3PzbnV
         xZpA==
X-Gm-Message-State: APjAAAVSux7olTPGODUQ5TiCeHlC17VWJsk5AWU757S8WiGXKMe2Nf3W
        6ZdU8OnhqqXuCSMaV1CRcyHbz/Y8vkH3Nz08jjpu4Q==
X-Google-Smtp-Source: APXvYqyQp/ZBzqbnbb99OA7AcxXgKHIl2AlPbDn895oCL9HPi5AEBH3Op7dbJ+nVlsWjQf3q2l3n/Tbcy8/XA0+cyS0=
X-Received: by 2002:a1f:a293:: with SMTP id l141mr1033147vke.43.1571727560670;
 Mon, 21 Oct 2019 23:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571510481.git.hns@goldelico.com> <9bd4c0bb0df26523d7f5265cdb06d86d63dafba8.1571510481.git.hns@goldelico.com>
 <20191021143008.GS5610@atomide.com> <3FDBE28F-B2C5-4EDE-905C-687F601462B6@goldelico.com>
 <20191021171104.GY5610@atomide.com>
In-Reply-To: <20191021171104.GY5610@atomide.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 22 Oct 2019 08:58:44 +0200
Message-ID: <CAPDyKFryqo3wF-GphhytNqrDL4rbZ7Qou1Ki3e2_5w-yh2o=uw@mail.gmail.com>
Subject: Re: [PATCH v2 07/11] omap: remove old hsmmc.[ch] and in Makefile
To:     Tony Lindgren <tony@atomide.com>,
        "H. Nikolaus Schaller" <hns@goldelico.com>
Cc:     Kalle Valo <kvalo@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-omap <linux-omap@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- Trimmed cc-list (could be a good idea for next submission as well)

On Mon, 21 Oct 2019 at 19:11, Tony Lindgren <tony@atomide.com> wrote:
>
> * H. Nikolaus Schaller <hns@goldelico.com> [191021 17:08]:
> >
> > > Am 21.10.2019 um 16:30 schrieb Tony Lindgren <tony@atomide.com>:
> > >
> > > * H. Nikolaus Schaller <hns@goldelico.com> [191019 18:43]:
> > >> --- a/arch/arm/mach-omap2/Makefile
> > >> +++ b/arch/arm/mach-omap2/Makefile
> > >> @@ -216,7 +216,6 @@ obj-$(CONFIG_MACH_NOKIA_N8X0)          += board-n8x0.o
> > >>
> > >> # Platform specific device init code
> > >>
> > >> -omap-hsmmc-$(CONFIG_MMC_OMAP_HS)  := hsmmc.o
> > >> obj-y                                      += $(omap-hsmmc-m) $(omap-hsmmc-y)
> > >
> > > The related obj-y line can go now too, right?
> >
> > Yes, I think so. It is a construction that I have never seen before :)
> > Therefore I did not recognize that it is related.
> >
> > > And looks like common.h also has struct omap2_hsmmc_info
> > > so maybe check by grepping for hsmmc_info to see it's gone.
> >
> > Yes, it is just a forward-declaration of the struct name with
> > no user anywhere.
> >
> > Scheduled for v3.
> >
> > BTW: should this series go through your tree since it is an
> > omap machine?
>
> Or MMC tree as that's where the code change really are.

I am okay with that. I will have a look at the series and provide some comments.

Kind regards
Uffe
