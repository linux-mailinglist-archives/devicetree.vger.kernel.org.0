Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B37E61AD19A
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2020 22:58:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728393AbgDPU5n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Apr 2020 16:57:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728160AbgDPU5m (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Apr 2020 16:57:42 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7F3C061A0C
        for <devicetree@vger.kernel.org>; Thu, 16 Apr 2020 13:57:41 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id w12so4235248otm.13
        for <devicetree@vger.kernel.org>; Thu, 16 Apr 2020 13:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hx7/nOiCw5Hd+bxU8Fgk82+zxrn6SClg6ec9VcWYoko=;
        b=rQTW3KNlc+OcNX5HxG3geEybbQCtTAYsQgFb/qVAWqkJboTXQScKHZ7uimNpq0JnjZ
         MGcFPaLhGE70cep4CbWV3NnCqez2X5Jecmffd1Jg+LcEQqN6TN/OSFG1xsg1QE4LbfHQ
         THforAq2O1U9Ib7PMvFC63wtQu30T5my8GswVD4EAvKnkr3j2w9FpEFO84AhrePCSqNq
         kkXzZX5BScvAv4tIgCMAH8bmk+rm+rJO6ZfGRmmwChamYZiiIj5a62MC91REwxwrtPvl
         4EQJ/rEt7Ifv1/3TnhCsf3jWbQAUf5qNfV1QU2oPa0RTmNdAEG09SfudUUjn3gCrjTKw
         vslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hx7/nOiCw5Hd+bxU8Fgk82+zxrn6SClg6ec9VcWYoko=;
        b=k7i+fpts0dDCVL8KkqOXcwI+pAW6akOer6DqWsLjnnnhlhOyGF6z5taIYJqXs6ZwF/
         4Oki0XQtmJdbQCgjXbCsu3Pk+h9sTfxtrJNDguKs/8bDye7RIjVp9KdpdABKsxr1BHq6
         E5Kz9b8G75aDhEketfUvApsqqboUxr2UXMM8cxB1XbnIjLvl4cDqCsgXdkutVVzNV9hq
         OAVAGLX3aQCxBcPRMsyjOZmO3PeEUwyWkrrUWP8VDw9GS1M/SLWGZOVOZ4WhyTwLBcov
         rqbdVlDWGfyCIWLn3fiCCpIHGauJ9u6dV6OG1ADNe55TE044c5owBBXY4RQsmgHlhoZD
         3jAw==
X-Gm-Message-State: AGi0PuaWq+kEmtd43pHYb5NX2WfSRI5jcJbQZW4xszzePTEF7eoTs4BQ
        ByV8oJaL7mKv5EH7c+G324LL/wbMmyh6Uu65/1c1Ng==
X-Google-Smtp-Source: APiQypKbeGIyWfaz4zUquQ5JhqmIOU5az3s755XGPMV1v5RV0fpRpQWddjHOnaZpU1gfucWhRzy02eYm0ftnIaYACQQ=
X-Received: by 2002:a9d:441:: with SMTP id 59mr26631otc.236.1587070660790;
 Thu, 16 Apr 2020 13:57:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200415150550.28156-1-nsaenzjulienne@suse.de>
 <20200415150550.28156-5-nsaenzjulienne@suse.de> <CAGETcx9ewwOq3TRWorDf26HQzfQSd0KbtUT9AcoNnKpBwfuu+g@mail.gmail.com>
 <c48a3baef99f3d74e7904498c4054221ec384b36.camel@suse.de>
In-Reply-To: <c48a3baef99f3d74e7904498c4054221ec384b36.camel@suse.de>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 16 Apr 2020 13:57:04 -0700
Message-ID: <CAGETcx9awXfX0qF4P+xTJLpCj6EUX8T=bYwycfqnKtT7AmnsAA@mail.gmail.com>
Subject: Re: [PATCH 4/4] of: property: Avoid linking devices with circular dependencies
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 16, 2020 at 9:01 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Wed, 2020-04-15 at 11:52 -0700, Saravana Kannan wrote:
> > On Wed, Apr 15, 2020 at 8:06 AM Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > When creating a consumer/supplier relationship between devices it's
> > > essential to make sure they aren't supplying each other creating a
> > > circular dependency.
> >
> > Kinda correct. But fw_devlink is not just about optimizing probing.
> > It's also about ensuring sync_state() callbacks work correctly when
> > drivers are built as modules. And for that to work, circular
> > "SYNC_STATE_ONLY" device links are allowed. I've explained it in a bit
> > more detail here [1].
>
> Understood.
>
> [...]
>
> > This only catches circular links made out of 2 devices. If we really
> > needed such a function that worked correctly to catch bigger
> > "circles", you'd need to recurse and it'll get super wasteful and
> > ugly.
>
> Yeah, I was kind of expecting this reply :).
>
> > Thankfully, device_link_add() already checks for circular dependencies
> > when we need it and it's much cheaper because the links are at a
> > device level and not examined at a property level.
> >
> > Is this a real problem you are hitting with the Raspberry Pi 4's? If
> > so can you give an example in its DT where you are hitting this?
>
> So the DT bit that triggered all this series is in
> 'arch/arm/boot/dts/bcm283x.dtsi'. Namely the interaction between
> 'cprman@7e101000' and 'dsi@7e209000.' Both are clock providers and both are
> clock consumers of each other.
>
> Well I had a second deeper look at the issue, here is how the circular
> dependency breaks the boot process (A being soc, B being cprman and C being
> dsi):
>
> Device node A
>         Device node B -> C
>         Device node C -> B
>
> The probe sequence is the following (with DL_FLAG_AUTOPROBE_CONSUMER):
> 1. A device is added, the rest of devices are siblings, nothing is done
> 2. B device is added, C device doesn't exist, B is added to
>    'wait_for_suppliers' list with 'need_for_probe' flag set.
> 3. C device is added, B is picked up from 'wait_for_suppliers' list, device
>    link created with B consuming from C.
> 4. C is then parsed, and tried to be linked with B as a consumer this time.
>    This fails after testing for circular deps (by device_is_dependent()) during
>    device_link_add(). This leaves C in the 'wait_for_suppliers' list *for ever*
>    as every further attempt at add_link() on C will fail.
>
> -> Ultimately this prevents C for ever being probed, which also prevents B from
>    being probed. Which isn't good as B is the main clock provider of the system.
>
> Note that B can live without C. I think some clock re-parenting will not be
> accessible, but that's all.
>
> > I'll have to NACK this patch for reasons mentioned above and in [1].
> > However, I think I have a solution that should work for what I'm
> > guessing is your real problem. But let me see the description of the
> > real scenario before I claim to have a solution.
>
> My intuition would be, upon getting a circular dep from device_is_dependent()
> with DL_FLAG_AUTOPROBE_CONSUMER to switch need_for_probe to false on both
> devices.

The problem with that is the devices will start trying to probe and
then defer due to other suppliers that are needed for probing but
haven't been linked yet. So it'll go a bit against what you are trying
to do. Also it doesn't solve the problem of already created links that
are wrong.

I'll send out a patch in reply to your email. I've been meaning to
send that outside of this discussion. It doesn't cover all cases of
cycles, but it'll cover most cases and I think it should fix your case
too.

For a more comprehensive fix, I'd like to do something like what I
explain here [1]. That should be doable for your driver too if you
want to try that approach. But I haven't heard Rob/Frank's opinion on
that.

-Saravana
[1] - https://lore.kernel.org/lkml/CAGETcx_2vdjSWc3BBN-N2WrtJP90ZnH-2vE=2iVuHuaE1YmMWQ@mail.gmail.com/
