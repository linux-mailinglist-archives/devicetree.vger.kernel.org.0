Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59DDA5A86EF
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 21:45:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232014AbiHaTpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 15:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232059AbiHaTpA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 15:45:00 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 956AE186E9
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 12:44:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id B5700CE205A
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 19:44:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29832C433D7
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 19:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661975096;
        bh=sz2T+ud5P9UX3tTIlm3sksy/sp19ufddjzuJpBeVDq4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=s6wBkNfiVaFUSgEdiMnns9DNbIo1uUxgHtxurD9r2G7MtFMp/K5HO8gAqwPjCv22G
         NWHsGovSOL8iKP622W9dRhUBJzUrM9Ow0MPuiZrQ6gmVQzvIyylIhefA72ZsGUtdwJ
         w3R3Q+kVFy8gA0GzgL9Hu/829/C273To5c14eK4QlFGuuvkKVrVxXxEsINx74/CSbS
         r6D0AymZvPpw60M+VEBJXNpd7k8YRqDEGliV1fkZvd2+2DKDpz8wuUYsVEhF6ag4w7
         EYJ8LTKILMMmh0m+5e2N4uazyFlt5NZtDQ7k/jxRRA0sPeUvVYKh13M1/54adRZ4U/
         1WjLp0XS6odNQ==
Received: by mail-vk1-f172.google.com with SMTP id j11so5290006vkl.12
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 12:44:56 -0700 (PDT)
X-Gm-Message-State: ACgBeo0lkpBRXBhuOe90xlt8nATJsYYD5Bfhf0rmo8TBtd3iGlWYi5m6
        Uu3/OksCaYeV0ciTWpox/WebIT4aS4D//bqUUw==
X-Google-Smtp-Source: AA6agR4dfss08ZairIfTRzxmTqq3y9tDFGOmnpc3o+tjRr37foW1zfeS1bbqCpNOEz7/Q4GfxN4sj1Mh87l3mjpxDpU=
X-Received: by 2002:a1f:2ec9:0:b0:394:717a:92e8 with SMTP id
 u192-20020a1f2ec9000000b00394717a92e8mr5323465vku.5.1661975095104; Wed, 31
 Aug 2022 12:44:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220825013258.3459714-1-andrew@lunn.ch> <20220830184334.GA1825505-robh@kernel.org>
 <Yw5jaz/EqNS0hT/T@lunn.ch>
In-Reply-To: <Yw5jaz/EqNS0hT/T@lunn.ch>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 31 Aug 2022 14:44:43 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+6SkguPyorEZWmh=WXG9ha8FQM7_Z4JGEwz6deym37EQ@mail.gmail.com>
Message-ID: <CAL_Jsq+6SkguPyorEZWmh=WXG9ha8FQM7_Z4JGEwz6deym37EQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/12] Start converting MVEBU bindings to DT Schema
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
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

On Tue, Aug 30, 2022 at 2:22 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Tue, Aug 30, 2022 at 01:43:34PM -0500, Rob Herring wrote:
> > On Thu, Aug 25, 2022 at 03:32:46AM +0200, Andrew Lunn wrote:
> > > This is the first batch of patches converting the Marvell MVEBU driver
> > > bindings from .txt to .yaml. So far, kirkwood has been used for
> > > testing, but these drivers apply to a range of Marvell SoCs.
> > >
> > > In order to reduce the number of warnings from the DT schema checking
> > > tools, a few minor changes have been made to a few DT files. No actual
> > > errors have been found, the changes just make the checker quiet.
> > >
> > > I propose these patches are merged via mvebu to arm-soc. No conflicts
> > > are expected with these patches.
> >
> > Why? I strongly prefer the bindings go via subsystem trees. That is the
> > documented way.
>
> I have 50 patches to convert kirkwood from .txt to .yaml. probably
> around 30 subsystems.
>
> 1) Complete nightmare to keep track of so many different patchsets
>    going in 30 different directions.

That's what everyone else does. Send them out and let the maintainers
pick them up. Anything left can go via the DT tree or arm-soc. That is
going to happen anyways once you Cc the correct maintainers unless you
state in each patch not to apply.

> 2) None of these patches change any driver code. This is pure
>    'Documentation'. The subsystem probably reviewed the .txt file 10
>    years ago when I and other mvebu maintainers submitted
>    them. Nothing is changing in the kernel code base, except now we
>    gain some degree of validation for this 'Documentation'.
>
> 3) Pretty much all of these were merged via arm-soc 10 years ago. Why
>    do it different now? What is gained by not going via arm-soc?

10 years ago it was hit or miss whether bindings even got reviewed.
Shall we go back to that?

Probably my biggest complaint is when anything breaks in next, fixes
going into arm-soc are slow because there are 2 levels of maintainers.

Rob
