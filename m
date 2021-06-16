Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C99B23AA411
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 21:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232564AbhFPTOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 15:14:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232540AbhFPTOy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 15:14:54 -0400
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A1CDC06175F
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 12:12:47 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id c9so630560qkm.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 12:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6CdpKCnesjjutZBqbm6qWm0t1Iy3+W2y39QK3kQSJL0=;
        b=z6tcWmxBC36xoU5YFthaSMT5P7RDTF7d7E5ioP2/ArfSJpDmM7q9ABhZKjoyIYNlw6
         US8DP3IlqYH2ABvMxwvAPFKdP0ofPvCZRDu8rqUVask2mLtfnscqlWUC0uDRvbIjUJCd
         l+KeGmoI9irPFiIN+SoIY5SqM7Wz/w2JGcTM+XgODP74ZUl973yaJHgZBZwB18usJw8u
         twUOL99wKI0HgK4DTjGBzpb3l3dcFwujGKsDmibBELzzQ7/pH205If7lrB/wFv1PlC+p
         AEq+HRvo7eZz67EkvhK9jiihy15sDJTfPa3kot5HLaDdr8l0AnCZ+ceCWs58PsfvZvti
         PqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6CdpKCnesjjutZBqbm6qWm0t1Iy3+W2y39QK3kQSJL0=;
        b=VSZVbC6UK0zF9uCsNRxoXC1CLRdrtx6V+leLE1kA528JSCm3BcKEP1R4GXskCcpc6l
         Pk9GyQ7KdJBdLsvEwVlfF0SST1FdjRrnGpN/MHO0vRlcfkG3ptGN3feEP7Hscedd7o+g
         8Kowp2xjCsVgcx5PPsrBhPOC/OKC/DD5bkcFjURqpPZ3EaznSgHbkid3zcdNM06ZbYzQ
         O6K1QDHKsNmoqaV2bJnREFG8w8s8qndVkZV2sEiQeNTsVD39hZGt1MdkP+N4W7vUTpjw
         Z+ddgTlb1H75xbpR0utF0isCz1FqrQLTWuQFLHd4VkNwDSaZfmmmfZI436448iP8p0SW
         4s5Q==
X-Gm-Message-State: AOAM5300TJrjsAJpzqm4YU4Dh4Wwgp1WQQMsH+A0Br7/BSwh8iS325E0
        9fspmBZOD9+3UDXQ47AW115TBIcOHZklEvIxha1HQg1obRU=
X-Google-Smtp-Source: ABdhPJz3fJhUQeCV412s6GcsVHkPfqmEn61opIk+EPhPY0YVU/cxLjkqlyjqhnSYR3AmVXLGQBgHPtBa7/rf0FNlR2c=
X-Received: by 2002:a05:620a:a83:: with SMTP id v3mr1645464qkg.360.1623870766629;
 Wed, 16 Jun 2021 12:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210322003915.3199775-1-mw@semihalf.com> <YFiKHu3hlAk+joOn@lunn.ch>
 <CAPv3WKdf5aX2W77N_-FBM5hugYW-ME1DvkjNuCUrcU8FG2XENg@mail.gmail.com>
In-Reply-To: <CAPv3WKdf5aX2W77N_-FBM5hugYW-ME1DvkjNuCUrcU8FG2XENg@mail.gmail.com>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Wed, 16 Jun 2021 21:12:37 +0200
Message-ID: <CAPv3WKfJkeN7ez1O0UZ4w3U1tHa71hjsQ=uAsPX1bw4Otmpftg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: ensure backward compatibility of the AP807 Xenon
To:     =?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!

=C5=9Br., 12 maj 2021 o 17:50 Marcin Wojtas <mw@semihalf.com> napisa=C5=82(=
a):
>
> Hi Gregory,
>
> pon., 22 mar 2021 o 13:14 Andrew Lunn <andrew@lunn.ch> napisa=C5=82(a):
> >
> > On Mon, Mar 22, 2021 at 01:39:15AM +0100, Marcin Wojtas wrote:
> > > A recent switch to a dedicated AP807 compatible string for the Xenon
> > > SD/MMC controller result in the driver not being probed when
> > > using updated device tree with the older kernel revisions.
> > > It may also be problematic for other OSs/firmware that use
> > > Linux device tree sources as a reference. Resolve the problem
> > > with backward compatibility by restoring a previous compatible
> > > string as secondary one.
> > >
> > > Signed-off-by: Marcin Wojtas <mw@semihalf.com>
> >
> > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> >
>
> Do you have any feedback about this patch? I just noticed it's not
> merged in v5.13-rc1, it would be great to have it in the next release
> though.
>

Kind reminder. We are approaching v5.13 and it would be really great
to have this fix in time.

Thanks,
Marcin
