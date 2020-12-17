Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E0102DD33F
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 15:49:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727394AbgLQOtx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Dec 2020 09:49:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727414AbgLQOtx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Dec 2020 09:49:53 -0500
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDE73C0617A7
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 06:49:12 -0800 (PST)
Received: by mail-qk1-x730.google.com with SMTP id 143so26526804qke.10
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 06:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=RIzO25uia/ik2/pksNEfaC0K2hkKYlL8M9aPUeHrHkA=;
        b=jNKDdcUKUdd3WFTXtKNGH0PxO/FPpPWDBcR60lAY8wTkvAu7yXm7vvcgZBYY17ttpb
         US2lHSY3/EwQZaUow4vkqbGFSEQjGytc2cCuG/QyMiCtA2RpJspAQ0WpMw5ieQGZIOCO
         X4LPp06RcjHcCFa3kilhnmX4KeBhsl4SWeMJdOMvEZBu8rVxNyYR5bFBmAwpP3Uthf7+
         Uer8qorfPMzXNlbApFZiCmLqjNLuibtmmuZxH0vwV1ndKbO5Nt2TJk4ecmRGF/WMGMnl
         e0OUfxHDdIVqv3uhCbKwvUOxX8V0DC4BxDmI3K7vWwPExYsWrPpFcA9w5b0s9jsyP3Ge
         DOPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=RIzO25uia/ik2/pksNEfaC0K2hkKYlL8M9aPUeHrHkA=;
        b=q85oISzIdzGTe3vdlNOVr62/5DWt+amJ501x6iRSrSKOUGf2+3gL/h6bVYKStj6GCC
         TtydQ0NQM3zoPOmhq8S1NNqFK/tXmcoujuJWrTduptK/aZaVVixS6lh19gFhyO7n/WOw
         0VXzQOhApUv6PiJ1YCo2MGXgWsye/jAc00Wup2UBzlNbx017AzXY4ABzrGHIVk2Wrs/q
         AqAlORKcPN458NLjF0nUYD1YMipQTuqTKHLfWvUzVmEFWAQo2plS+TtFOtgOk7jwcOSx
         wqeCJC/ToE7J20xSefmiTsTIckvBBc7RQEfyosQ9tb/wyC9ZC02U5YV6mQ56+4I35aPn
         mEfg==
X-Gm-Message-State: AOAM532qhBCaLQnR+MbNqHLMqKJxXpurNU37T/ZAECl4NGUCHEGY7173
        BDh6Zw3SlJ91KbOlR3v9N8GtfKU/gIcGY+ZztlCpDw==
X-Google-Smtp-Source: ABdhPJzz7TrOiym3XxMYcQwkTaIhM2vbf/y0WES9+7lqImW/2SS6joU9/JP7gKeTm8pTEe/B/OWCi2AiuLMgvQRd+3I=
X-Received: by 2002:a37:7806:: with SMTP id t6mr48181369qkc.360.1608216552128;
 Thu, 17 Dec 2020 06:49:12 -0800 (PST)
MIME-Version: 1.0
References: <20201217112708.3473-1-kostap@marvell.com> <20201217112708.3473-3-kostap@marvell.com>
 <CAPv3WKdRM_=t8Rn8LkRWTV2+WGQ3biStjmGXwfQD0z9yKR19jA@mail.gmail.com> <20201217142127.GF4708@sirena.org.uk>
In-Reply-To: <20201217142127.GF4708@sirena.org.uk>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Thu, 17 Dec 2020 15:49:00 +0100
Message-ID: <CAPv3WKcbtRUhyr-xsgP12Fujofq1zPtkf_1_gLhVCyg=wPeDQQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] spi: orion: enable support for switching CS every
 transferred byte
To:     Mark Brown <broonie@kernel.org>
Cc:     linux-spi <linux-spi@vger.kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>, nadavh@marvell.com,
        =?UTF-8?B?QmVuIFBlbGVkICjXkdefINek15zXkyk=?= <bpeled@marvell.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Konstantin Porotchkin <kostap@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

czw., 17 gru 2020 o 15:21 Mark Brown <broonie@kernel.org> napisa=C5=82(a):
>
> On Thu, Dec 17, 2020 at 02:56:16PM +0100, Marcin Wojtas wrote:
>
> > Regarding your comment from patch 3/3 that "spi-1byte-cs" should be
> > replaced by handling based on the compatible string - do you mean
> > dropping above parsing and updating SPI bus mode field with
> > SPI_1BYTE_CS flag in the relevant SPI device driver?
>
> There's more to it than that but like I said in reply to the patch
> AFAICT we already support this.
>
> Please delete unneeded context from mails when replying.  Doing this
> makes it much easier to find your reply in the message, helping ensure
> it won't be missed by people scrolling through the irrelevant quoted
> material.

Sure, thanks.

Marcin
