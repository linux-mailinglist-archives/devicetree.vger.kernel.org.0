Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99749A1534
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 11:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727007AbfH2Jzh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 05:55:37 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:42562 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725776AbfH2Jzh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 05:55:37 -0400
Received: by mail-lf1-f66.google.com with SMTP id u13so2003576lfm.9
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 02:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=evvUwMaL41hf6dQA5cbASb1N+VW/0lgS0C0cgu/S/XY=;
        b=MS5MBdUIFrK8j7JVNOIBDd0FVG15855op7IYcP7tlLIytYN6qxJRW0N8GjbTb23lbK
         rzQwQUy5RXgjl9OKpd0TEJGbSIAXrlppU/TkbF3aoQu4IIS1KSgFJsFfpHonZL4AuQ0r
         rQknOTfDjLfaJS/JJ3hYzVhSPudYP6OpPr5jdBlAp8Ln/oLFKkTDLxTrK6FtpSAPuTaB
         bC7yPU4oCUVaxI442RhA2CWrNDSNVDbN7hMRiym/QPz45b4MEA3XIKe518XH1JAE6+mB
         nM/yvP6HU7Wv4hr76APo59aA6DDuCNx6Accapkzd1cJ/BZjMnoNSjvf9stgHxe2BXlWc
         PARg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=evvUwMaL41hf6dQA5cbASb1N+VW/0lgS0C0cgu/S/XY=;
        b=srhebX4p089OK5mdvhQZe2RPvFYW3ICCQReOFD/wjRE9hqB5iTzgMYf5QvYFgc06bC
         VFxu6plJBPGnMdD54RF/i+UmoTM+5DnXr1R972MzRFd/NKw6ZDDqECNtyYavJ0SbUnJH
         reYFYG46ebeT2Pkic5vRwKaSrfSgEaBAkXrczIFP7V27GUyH1pSX+3dxlZ9xFHFCdnFB
         AEfqD4K4Pkhb4paEf6CLt/nuVRAYbq+xkjeaQMoDU1Gvh6NO46ZsdQ8XCcHPIvld7Jkx
         /3pPrfme2xqCwpKiZfE6+haSdVPmSW05iYYFgGaSWE74D79fH3W/OIcw5jwFOxYb3v0T
         J3qg==
X-Gm-Message-State: APjAAAXN5TH5rVaPl+DaFW8xpHIl9uhmn6dEEcssVDyNzVw9m3yuTFpZ
        nCx70lfY4opcThkI6VOpXHrdRwaF0LSLCJ+TpuRwjA==
X-Google-Smtp-Source: APXvYqwgzlt4Ba0fIdipzn2QNcarMqY0UEZGFrkuppA5LS/NNCU8eU6W17GnvKVQldIpJENYm0vxsdEZmOv6K7MVIh0=
X-Received: by 2002:ac2:46ef:: with SMTP id q15mr5544001lfo.25.1567072535444;
 Thu, 29 Aug 2019 02:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <1566882364-23891-1-git-send-email-yash.shah@sifive.com> <20190828.140644.534529249197568915.davem@davemloft.net>
In-Reply-To: <20190828.140644.534529249197568915.davem@davemloft.net>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Thu, 29 Aug 2019 15:24:58 +0530
Message-ID: <CAJ2_jOGiTgGZ0TEZt6hBVB3oFxWkrrKVGQ6n__G4Zf_-ijY10Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Update ethernet compatible string for SiFive FU540
To:     David Miller <davem@davemloft.net>
Cc:     netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        linux-riscv@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 29, 2019 at 2:36 AM David Miller <davem@davemloft.net> wrote:
>
> From: Yash Shah <yash.shah@sifive.com>
> Date: Tue, 27 Aug 2019 10:36:02 +0530
>
> > This patch series renames the compatible property to a more appropriate
> > string. The patchset is based on Linux-5.3-rc6 and tested on SiFive
> > Unleashed board
>
> You should always base changes off of "net" or "net-next" and be explicitly
> in your Subject lines which of those two trees your changes are for f.e.:
>
>         Subject: [PATCH v2 net-next N/M] ...

I will keep this in mind for future patches.

>
> >
> > Change history:
> > Since v1:
> > - Dropped PATCH3 because it's already merged
> > - Change the reference url in the patch descriptions to point to a
> >   'lore.kernel.org' link instead of 'lkml.org'
>
> Series applied to 'net'.

Thanks!

- Yash
