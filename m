Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E209764480D
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 16:32:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234701AbiLFPcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 10:32:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234514AbiLFPcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 10:32:07 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC63C2A728
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 07:32:04 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5F117B81A94
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 15:32:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1031BC433C1
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 15:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670340722;
        bh=axhkrtTZzvlywYAMDwvujecvydQKXudml4jHifGsv90=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=l7JPLrL79bKdcQTiGKfEEEb9haJKAQQv8hMlI3rCTzthSGIOse4UkghrJX0CJhGHJ
         rAisTXMmDO68/xbA+tHL3tYSZ7vqkb5uqwk07NGpvu+kFJRgYCAIx4v0mBOGLevPAm
         7pGFk9wcLuBts6KExe8bvAMI/7NQUqxEditEN+6z5Xb/c7Q/gzswNbiSQiV80BXh3V
         UqWsX9hkuAXHF/GVca7qKgDM8G/ZITSwFataPvHnie5205zxKfDQa78gKH2Xr0Bbki
         +EWAJ207Xl7nRZqKjFwZ4W9vZexYx0dj5PIoeBnkIn3bYPVdvwG3h6+mkHE+mLnWq+
         GlY7BASfduDng==
Received: by mail-ua1-f43.google.com with SMTP id s25so4794175uac.2
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 07:32:02 -0800 (PST)
X-Gm-Message-State: ANoB5pl1MA2Mtm8B/Kqch90H5JO0zhNzLNDGK1b5T/T421DxHCZPfv/1
        sb0Al0tWSGEQ0Ytbg54sf+rFkBxFKgxvV8zpEg==
X-Google-Smtp-Source: AA0mqf6rBdjZ3fmL2P7PWOW8Yt9Kw7MZhM13ejDWA385XqAFuxqk6Eqo6kD274e79PlFqzlaVNnQcK0WjOp/J7zrqe0=
X-Received: by 2002:ab0:3a96:0:b0:419:678:cf31 with SMTP id
 r22-20020ab03a96000000b004190678cf31mr29671562uaw.63.1670340721006; Tue, 06
 Dec 2022 07:32:01 -0800 (PST)
MIME-Version: 1.0
References: <Y3t2QLqXdomHkLTN@smile.fi.intel.com> <dc7f379a-4593-659e-a4c5-012bc11c8841@linaro.org>
 <Y3uG/XvhZzaIq5Zi@smile.fi.intel.com> <b958733a-18a0-d916-930a-e7efb481dd06@linaro.org>
 <Y3uZzR7wYy3lY++/@smile.fi.intel.com>
In-Reply-To: <Y3uZzR7wYy3lY++/@smile.fi.intel.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 6 Dec 2022 09:31:49 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKrGXMhvEGaOYg=6bNEHyakTio6DhFqLEai2BH8nEf7ig@mail.gmail.com>
Message-ID: <CAL_JsqKrGXMhvEGaOYg=6bNEHyakTio6DhFqLEai2BH8nEf7ig@mail.gmail.com>
Subject: Re: Mixed types of values inside a single property
To:     Andy Shevchenko <andriy.shevchenko@intel.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 9:31 AM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Mon, Nov 21, 2022 at 03:23:53PM +0100, Krzysztof Kozlowski wrote:
> > On 21/11/2022 15:11, Andy Shevchenko wrote:
> > > On Mon, Nov 21, 2022 at 02:52:37PM +0100, Krzysztof Kozlowski wrote:
> > >> On 21/11/2022 13:59, Andy Shevchenko wrote:
> > >>>
> > >>> Hi, Rob and Krzysztof!
> > >>>
> > >>> Today on SO one question [1] was popped up, and I, remembering a bit of
> > >>> the code of device properties in the Linux kernel, was a bit surprised of it
> > >>> in a way that reading DT specification (0.4-rc1 as of today) doesn't clarify
> > >>> that either.
> > >>>
> > >>> Can the specification be a bit more clear about that? Or is it me and the OP of
> > >>> that question who missed something in the DT spec?

Please use devicetree-spec list for questions like this because it's a
spec question and I only see these on my periodic search for non-patch
emails.

> > >>> [1]: https://stackoverflow.com/questions/74517569/reading-tuples-in-a-devicetree
> > >>
> > >> I saw question on Stackoverflow and I saw there answers, but what is the
> > >> question to us?
> > >
> > > Does the specification allows mixed types of the values in the same property?
> > > Because reading it doesn't give a hint.
> >
> > I think DT spec allows it ("Format is specific to the property. See the
> > property definition.")
>
> And the quoted sentence confuses me. Is it related to _defined_ only properties
> (that are in the same document) or is it to any property, then what does the
> second part actually mean in the latter case: "see the property definition".
> Where?

Any property in the schemas. (I would say if not in the spec, but
everything in the spec should have a schema.)

>
> It might be though it's lack of my understanding the English language
> (not a native speaker).
>
> > but DT schema mostly not (finite list of property
> > types). To some level DT schema accepts mixes, e.g. phandle-array
> > containing phandle and offsets, but that's because phandle is actually
> > also a number (dtschema/schemas/types.yaml).

At the spec level, properties are just byte strings. They can be
anything including a file (i.e. FIT images). In theory, you could make
properties C structs if you wanted.

However, since there is 0 type or field size information in the DT
itself, we don't mix data types or sizes. That's enforced at the
schema level and by what APIs we have to read properties.

Rob
