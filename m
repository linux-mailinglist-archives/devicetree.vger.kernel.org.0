Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A6FE98A7C
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 06:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725799AbfHVEny (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 00:43:54 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:46534 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbfHVEny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 00:43:54 -0400
Received: by mail-qk1-f195.google.com with SMTP id p13so3969677qkg.13
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 21:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OJYGyBg/ceLSDjtApXeg+QYPHZlKNwzKjUa+6OSFeUo=;
        b=D1q9lH02crG0hVsSBHPDz4Ty4HHcz8uyhNg9zQlxODrOvuYxeTHbGEOpCeARUKNIc8
         CsKSL/M/Vp4b0TkraUwdiA0FHEyNiShpWbpIh6c/sY45K/P791GuVCHgLILJz4fPi1rH
         LL/0LmTxDTPyzUpomzWrXr+nNoZOwBRCJHWNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OJYGyBg/ceLSDjtApXeg+QYPHZlKNwzKjUa+6OSFeUo=;
        b=bOLvmPpfSIeE4WSL3vXgbRaZulUQJGyvwv9JTByg8f8Rlb/F3ycOUXCfTmQffnW1Am
         6xE4UZRp+NgY0onv7lVDq53SV174TL9ABepPs80vQ8gFrLi3ABAgN7+B8vd8WuKw3FGQ
         H+6QBvp09kodaIKzYLXGpOtkIrIVQFQH6w34mww2y+vRanttWcRAIpN6Xq6ik9HHzxr8
         Rkah1qFLrOgcz2M9N51kyGJhdeVDJbtlb2d65wFgVXJ+oqCBXIkmVLlihU4/6sX5TRc8
         v/37+jkdMziC96nbt0PeepHNqVQKkxIKeXWi221A7qTArKPSHkNiI7Pc4XELw0+otP1Q
         wqSg==
X-Gm-Message-State: APjAAAXtjlmx4G1/EXW2dooiK1JUf6I4NopyoSzaBrCrnbFbz3L8v01a
        DZymVzzgIZP42wZbIo/TJGS6DIWadVsE1ix65B0=
X-Google-Smtp-Source: APXvYqw7+6RHrrapRSIiCA1W4LX4FEsS39J4H0GHx8pMtsjmQmcpotn5m7W2/GkBsc1gILGchs2Kr22CmwLnNjW//2Y=
X-Received: by 2002:a37:649:: with SMTP id 70mr34466573qkg.208.1566449033127;
 Wed, 21 Aug 2019 21:43:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190821055530.8720-1-joel@jms.id.au> <20190821055530.8720-8-joel@jms.id.au>
 <faf79f9d-baa1-4c8c-a35b-c5d97ad6df8b@www.fastmail.com>
In-Reply-To: <faf79f9d-baa1-4c8c-a35b-c5d97ad6df8b@www.fastmail.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Thu, 22 Aug 2019 04:43:41 +0000
Message-ID: <CACPK8Xe=mq_Zuw6vsFtb=42ZodbHcizX9QwUoRzY0cDdoWr-Fw@mail.gmail.com>
Subject: Re: [PATCH 7/7] ARM: configs: aspeed_g5: Enable AST2600
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Aug 2019 at 02:07, Andrew Jeffery <andrew@aj.id.au> wrote:
> > +CONFIG_MMC=y
> > +CONFIG_MMC_SDHCI=y
> > +CONFIG_MMC_SDHCI_PLTFM=y
> > +CONFIG_MMC_SDHCI_OF_ASPEED=y
>
> The patches haven't yet been applied to the MMC tree, maybe we should
> add this later?

When enabling drivers in the same merge window as they go into the
tree we will always be in this situation.

If the driver doesn't make it in this merge window, or first has has
changes, the worst that will happen is the kconfig name changes and I
need to update it later. I think we're safe to include it as-is.

Thanks for the review.

Cheers,

Joel
