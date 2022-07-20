Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 178CC57C107
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 01:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbiGTXnD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 19:43:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231400AbiGTXnC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 19:43:02 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A623B65586
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 16:43:00 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id bu1so28176310wrb.9
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 16:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7U1Ho9Tfog4r9e2WK3efCnbYYOpvvooZzQpVkrqOxKk=;
        b=JKIgm0i3yGFF8SG34FR8bWc1wXlap74X5CibcHsE7Dg5S66YkTsMbRPMCALOuiGofj
         6RlOYbRy2rKdPEuzZtOu1OMdc9piXIjiAVa21syqmnc1NdPKwGDJzDa6mzBVeb56PIhd
         z8GkXa4nUmXE5W8dcg5LEWGAF6v/3mXklUCMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7U1Ho9Tfog4r9e2WK3efCnbYYOpvvooZzQpVkrqOxKk=;
        b=1Afv23cf7dRkD6AT/ZenhAlm4ZQ5zgz8WWbcChRMUkJ3FBx1fwJZ2Y2jSbeHz9Alzt
         K65pO53y6KMHYTVR1v2A/ilY5WJK6aSubVO6LytXPadaRQZCxWDF7uJUFRA/Bp3ErvZK
         Tb1fHrnB4oU8RDyk6f8PhGc2Dytvy/cc6s4mv107Ggr7xw8omVU1EMUEyY43Mq4gKU83
         aAU0i/qdWHPfMUyPmVGPgiwSMH6BYSxEXIbk/yWUJFjmmzaC4wHa7nE2kXLK1J+FErsQ
         MNb2mq+w0B7Aq+aMqrUA4HerS7w+D+YPsWu7PsXB2hE2aS6EZgh9qZ+0cjbzLbWkgbCA
         XgFw==
X-Gm-Message-State: AJIora/0uOTYYmWVxhxxxebctjdJ2HPr94sQ+YoqkTGusMP6hHv7ocQH
        qYnHWjbMz9HHEpaJLDjgdDbQ/MLsfzlVbBI87Unnhw==
X-Google-Smtp-Source: AGRyM1t/g0g6u5gmEG+RIfSjF2r2ciVej2JxIO+4giO4FWhgq6b7mTjkvmPj0XOa6AuR7sfTStWnt0jBREzL3wUFjzQ=
X-Received: by 2002:a5d:5985:0:b0:21d:b6aa:23f5 with SMTP id
 n5-20020a5d5985000000b0021db6aa23f5mr33243023wri.18.1658360578984; Wed, 20
 Jul 2022 16:42:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAODwPW9E8wWwxbYKyf4_-JFb4F-JSmLR3qOF_iudjX0f9ndF0A@mail.gmail.com>
 <CAODwPW8fiFSNehZbZDdR9kjHxohLGiyE7edU=Opy0xV_P8JbEQ@mail.gmail.com>
 <3bb0ffa0-8091-0848-66af-180a41a68bf7@linaro.org> <CAODwPW89xZQZiZdQNt6+CcRjz=nbEAAFH0h_dBFSE5v3aFU4rQ@mail.gmail.com>
 <8f51aed8-956b-ac09-3baf-2b4572db1352@linaro.org> <CAODwPW9MvYJo8QbKOoVcUAKJ8Hxon2MCv_H5qpv=yaSTLLc+ug@mail.gmail.com>
 <628a7302-1409-81f7-f72b-6b1645df9225@linaro.org> <CAODwPW-4i+idH8Nz6=EmNUXYWgWkoOHs3wOZ7BbrH5GwGDZ1Ww@mail.gmail.com>
 <1f3189ef-7d3f-27b3-a691-b9649090b650@linaro.org>
In-Reply-To: <1f3189ef-7d3f-27b3-a691-b9649090b650@linaro.org>
From:   Julius Werner <jwerner@chromium.org>
Date:   Wed, 20 Jul 2022 16:42:46 -0700
Message-ID: <CAODwPW-GDkfyFaNSnEngpSfz8LSXRetu+xwp3QrFHP1rH1O06w@mail.gmail.com>
Subject: Re: [RFC] Correct memory layout reporting for "jedec,lpddr2" and
 related bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Julius Werner <jwerner@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Jian-Jia Su <jjsu@google.com>,
        Doug Anderson <dianders@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Nikola Milosavljevic <mnidza@outlook.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-10.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sorry, got distracted from this for a bit. Sounds like we were pretty
much on the same page about how the updated binding should look like
here, the remaining question was just about the compatible string.

> >> Yes, we can. You still would need to generate the compatible according
> >> to the current bindings. Whether we can change it I am not sure. I think
> >> it depends how much customization is possible per vendor, according to
> >> JEDEC spec. If we never ever have to identify specific part, because
> >> JEDEC spec and registers tell us everything, then we could skip it,
> >> similarly to lpddr2 and jedec,spi-nor.
> >
> > Shouldn't that be decided per use case? In general LPDDR is a pretty
> > rigid set of standards and memory controllers are generally compatible
> > with any vendor without hardcoding vendor-specific behavior, so I
> > don't anticipate that this would be likely (particularly since there
> > is no "real" kernel device driver that needs to initialize the full
> > memory controller, after all, these bindings are mostly
> > informational).
>
> If decided per use case understood as "decided depending how to use the
> bindings" then answer is rather not. For example Linux implementation is
> usually not the best argument to shape the bindings and usually to such
> arguments answer is: "implementation does not matter".
>
> If by "use case" you mean actual hardware or specification
> characteristics, then yes, of course. This is why I wrote "it depends".

By "use case" I mean our particular platform and firmware requirements
-- or rather, the realities of building devices with widely
multi-sourced LPDDR parts. One cannot efficiently build firmware that
can pass an exact vendor-and-part-specific compatible string to Linux
for this binding for every single LPDDR part used on such a platform.
And I don't see why that should be needed, either... that's kinda the
point of having an interoperability standard, after all, that you can
just assume the devices all work according to the same spec and don't
need to hardcode details about each specific instance.

The existing bindings seem to have clearly been designed for platforms
that only ever use a single specific LPDDR part, and in those cases
these issues don't come up, so I assume this choice had just been made
without much thought. But now I would like to reuse them on platforms
where this is a problem, and that's why I would like to either expand
or change the binding to (also) allow a generic compatible string to
solve it. (Whether that means moving all platforms to only use this
generic compatible string, or allowing it side-by-side with the
existing part-specific compatible strings is up to you -- I don't want
to preclude other platforms from doing what they prefer, I just want
to make sure there's some form of workable solution for my platform.
But if you would prefer this to be an all-or-nothing thing, we could
change everything over to a generic compatible string too if you
want.)

> > Of course there may always be mistakes and broken
> > devices that need custom handling, and if someone has a platform with
> > such a case I of course don't want to preclude them from tying special
> > behavior to a custom compatible string. But why would that mean we
> > need to make this mandatory for all platforms even if it's not
> > relevant (and not practically feasible) for them? Why not allow both?
>
> Depends. If generic compatible is not enough (works only for your case)
> then it should have never been added alone.

No, I don't think it would work only for my case -- in fact I think
it's pretty unlikely that we'll ever find a case where this doesn't
work. LPDDR is a very rigid standard that generally needs to be able
to interoperate (at the memory controller and firmware training code
level) without any vendor-specific software quirks. I was just trying
to say that I wouldn't want to stop anybody from adding
vendor-specific quirks for a platform if they really needed to -- but
I don't know of any such case in practice and I doubt it actually
exists. The few existing uses of this binding don't use the compatible
string for anything more than to parse out the manufacturer ID, which
I think would make much more sense to model as a property.
