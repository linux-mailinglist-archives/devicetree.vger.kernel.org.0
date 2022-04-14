Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7B4D501D91
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 23:38:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235858AbiDNVkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 17:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232240AbiDNVko (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 17:40:44 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE7536948E
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 14:38:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 75FECB82B97
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 21:38:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F7FCC385A5
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 21:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649972295;
        bh=7W9A83g3H9DW2XT2t9gYyV0uNVkAOsg2y4hcEO3j4es=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KfToX/X+dPwBquuRB8t8Q9XVF4MxxRwUP/7H+OOXiAKDWrH8pNz0+2oMmK5nzTb0+
         3n06s9anx83tPh0xCZ1GfEdW4dqJKB22/kuecsYXqS5mgq7iLtFjE1SlROtiIdi5D9
         fOe4rs4NbSp6k+LS95jukJ/NTZvtX2/b1+6v0Pddpg6OQ1ojAmZJkZY+pi3+8Niffy
         tDuD55Gjwuo/O8IywlY74MlbbYheU90/H8u3q5HlM4kotAKCgghM9qLvD7W08SPGv0
         c1zrZ1irOs8/aSzGDM5P3It4Ta7MtYR/aZklxiq5jl163kRmYZTRme2bY+mL7I4yHt
         Py+jzqj+c5e3A==
Received: by mail-oi1-f177.google.com with SMTP id q189so6793760oia.9
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 14:38:15 -0700 (PDT)
X-Gm-Message-State: AOAM530qOrbsFmfCyijLMW5h7KlFTtT0i5NVCKfH2FpfKCh/UqtYrKa0
        Mzc4DasduauHwiHBYF8k+6stJQWFmIVOlfKcYg==
X-Google-Smtp-Source: ABdhPJwLc1FO2yTnUOhYA75wJGxUBZjBFCydzppuOxvoC7enoPS0wBQHDbqGYtVjsaM60LjW8EfK8+qHfOAFFRTqZm8=
X-Received: by 2002:a05:6808:1402:b0:2da:b72:74f2 with SMTP id
 w2-20020a056808140200b002da0b7274f2mr266409oiv.113.1649972294191; Thu, 14 Apr
 2022 14:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <08fd5b71-9f9e-7635-747c-65ba7ee287d6@quicinc.com>
 <CAL_JsqLy+DfCqHKiVzs4TYx+PLmstAEjnujA=fR+NDrZKrFwSw@mail.gmail.com> <faa491b6-50fc-eccb-5c79-0abdc868f0bd@quicinc.com>
In-Reply-To: <faa491b6-50fc-eccb-5c79-0abdc868f0bd@quicinc.com>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 14 Apr 2022 16:38:01 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKT9inH+YRdp8-Pk+6cHtOJN=YYLL5xBP45D5pD6Hs4YQ@mail.gmail.com>
Message-ID: <CAL_JsqKT9inH+YRdp8-Pk+6cHtOJN=YYLL5xBP45D5pD6Hs4YQ@mail.gmail.com>
Subject: Re: dt-schema checks with dtbo source files
To:     "T.Michael Turney" <quic_mturney@quicinc.com>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 13, 2022 at 7:32 PM T.Michael Turney
<quic_mturney@quicinc.com> wrote:
>
>
> >>
> >> I'm assuming dt-schema is looking for a root node and the required
> >> properties in the root node and not finding it in the overlay file.
> >
> > Indeed. The required property errors would be easy to handle. We do
> > that already for disabled nodes as they may be incomplete.
> >
>
> Can you point me to example of handling required property errors for
> disabled nodes?  Is this in schema or meta-schema files or ??

dt-validate does the filtering.

> >> Is there a basic incompatibility between dt-schema and overlay support,
> >> or is this cockpit error?
> >
> > A lot depends on how you are using overlays. If you are using them to
> > add random properties on existing nodes (which isn't something that
> > can easily work at runtime), that's not going to work for validating
> > the overlay on its own (nor the base DT, if the base DT is not valid
> > on its own). If the overlays are adding complete nodes or subtrees
> > such as for an expansion card, then I would expect the overlay can
> > mostly be validated with perhaps some tweaks. The former case only
> > makes sense to validate the DT with overlays applied. If you look at
> > the overlay build support in the kernel, you'll see all the overlays
> > are applied at build time.
> >
>
> The base DT would be valid and pass dt-schema checks as well as dtc
> syntax and semantic warnings.  This DT would define a v1.0 SOC.
> Possible overlays to apply would be if newer SOC version required
> changes or if a platform introduced new nodes/properties.

You could have issues if you have board specific, required properties.
I guess the SOC DT can have defaults or the node disabled if that's
required.

> The overlays would be applied at runtime and most overlay files would be
> similar to example I provided, where an existing node in base DT has a
> property changed or added.  I suppose we could provide a root node in
> the overlay files to satisfy the dt-schema checks but were hoping to
> avoid this as it adds to the runtime footprint of these files and
> minimizing this footprint is one of the reasons we are embracing overlays.

If footprint is your main concern I have to wonder if doing that
automatically would be better than manually maintaining the split
between overlays and base DTs. Imagine a tool that's passed N DTBs and
it extracts everything common between the N DTBs into a base DTB and N
overlays. Such a tool would not be hard to implement.

> Are you indicating it is a "fool's errand" to try to do dt-schema checks
> on an arbitrary overlay file that has no other context associated, other
> than the few nodes/properties being added or changed?  I guess if the
> overlay file doesn't include a compatible property then dt-schema has
> nothing to work with and if a compatible property is provided and the
> overlay doesn't include all of the required properties, dt-schema is
> going to flag these as error cases anyway?

I think it's going to depend on what the overlays look like. You could
do some validation as some schemas are always applied, but vendor
specific properties for example would mostly not get checked without
compatible to match on. Common properties could have at least type
checks.

Don't you want to check that all the combinations of base DT and
overlays can be applied before you deploy them to a running system? If
you do that, then you can run the schema checks too.

> I am concerned about this:
>  > If you are using them to
>  > add random properties on existing nodes (which isn't something that
>  > can easily work at runtime),
> This is exactly our basic use-case for overlays, we are planning on
> using the APIs in fdt_overlay.c at runtime.  Are you suggesting this
> isn't a robust use of the overlay support?

If 'at runtime' means before anything uses the DT (or parts that could
be modified), then it is fine. It's allowing modifications at any
point in time that's problematic (and why there's not a general
purpose overlay applying interface exposed to userspace) If a driver
already probed and a new property shows up, how do you handle that?
Applying at runtime in early boot is fine.

Rob
