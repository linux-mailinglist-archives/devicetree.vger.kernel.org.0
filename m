Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E719231E9D
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 14:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726054AbgG2MeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jul 2020 08:34:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726853AbgG2MeX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jul 2020 08:34:23 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4605C0619D2
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 05:34:21 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id l2so10926771wrc.7
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 05:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YIO25dsj9y1sacwjOVQU2qxiT1NxKYb20Ra0eQDCssQ=;
        b=PlHqBHQ7oPTLAJXglbhBvrn0PuYZROIprcr6B/QbHZeFjyu7qu6UMil8qyc9i1KFRX
         4Sn9y/qO05dOHTSuiEl4Kng8D/B7ichVSg+xyl9FvseMe6+FOeD+am00t9LREIG8DJZ4
         g6rXerPW2bSYqNJdz/IRkaFLmlYQlJOZ+MjIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YIO25dsj9y1sacwjOVQU2qxiT1NxKYb20Ra0eQDCssQ=;
        b=QZwWGyU8pqTA/b45hG8f3kttz8kX0FIA1czEqBn/48vqINxAy5c1oFDezkE4MrhptF
         lCtNC8eZU1ijBoL+khLc/bPK/ImDq85uXfZq7FmF/UEfh+0Uh52EB08BOyfTHK61Kr+1
         XiCa/TtHibTG3o97UVJVH0cnCY3GYOhGqXBYFlpMMWp8gglEIao9wkmL7f4ukNIKy3BS
         DMeCJsE4N1x4dlDkJEkEL+UzJzXC7mAQuKMPtzTLOFz046DD/QwEJ0cvmpsFRoUowiSQ
         0WxWlh1WfkzyhSLFMnHkm+Qa02uk3kq8+pQukw3jmx8HLqPzzShonXZlbnDBUe90XTaa
         L/uQ==
X-Gm-Message-State: AOAM530TUsaTywXPl5isvLoSVnueu6HcUbyfzen4wTABLEZR6Zdq9YEa
        ZAD0SpBEievWYeQ2NJTxnmI48rWDvypvXo4cnvH6yw==
X-Google-Smtp-Source: ABdhPJyQMzNtPjGIIXmXxDEeBBrskdO6q0ASFwn9TWVeoCeE/LyRiv4udOWG4lbzVXrsNEOujM1yAvCF/TlRit9CwN4=
X-Received: by 2002:adf:f186:: with SMTP id h6mr30102581wro.144.1596026060446;
 Wed, 29 Jul 2020 05:34:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200728100321.1691745-1-daniel@0x0f.com> <20200728100321.1691745-2-daniel@0x0f.com>
 <20200728191842.GB2778962@bogus> <CAFr9PXkwpNAhQvOJFqLUm-uWoaH=nsNiq_y+OgTf8Z60i4RhRw@mail.gmail.com>
 <CAK8P3a0-rZq_aJxWY2+009C91igzC4nHG7XJFwXkbB8bJBertA@mail.gmail.com>
In-Reply-To: <CAK8P3a0-rZq_aJxWY2+009C91igzC4nHG7XJFwXkbB8bJBertA@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 29 Jul 2020 21:34:24 +0900
Message-ID: <CAFr9PXnuMCjhzYQWGBiw3ayDD36qrUc433DsSphyF5+tqetnNg@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: arm: mstar: Add binding details for mstar,pmsleep
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Rob Herring <robh@kernel.org>, SoC Team <soc@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

On Wed, 29 Jul 2020 at 21:14, Arnd Bergmann <arnd@arndb.de> wrote:
> > Does calling it "mstar,pmsleepv7" make more sense? I'm not sure what
> > to call it really.
>
> Use the name of the oldest chip you know that supports it in there,
> such as "mstar,msc313-pmsleep" if this one is specific to msc313.

That makes sense. I think the original patch got merged to soc/arm/newsoc.
Should I recreate the series or create a new patch to do the corrections?

Slightly off topic but I'm working on the series for the interrupt controller
and I've just renamed it from mstar,msc313e-intc to mstar,v7intc.
I originally called it msc313e because I only knew of that chip but the
same controller is present at the same place in all of the chips so far.
I guess I should probably rename it to mstar,msc313-intc to keep with
the first chip it appeared in pattern?

Thanks,

Daniel
