Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F280624966
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 19:30:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231794AbiKJSaR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 13:30:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231810AbiKJSaQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 13:30:16 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE44C10059
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 10:30:14 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 81C63B8231D
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 18:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0271CC433D6
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 18:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668105012;
        bh=OIs2J/7XQVOFi1OHgf2+qsV0nabDTtpG0UItdEn845U=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=A2DSx1kHnub6mi2Msy5nyiXAZPviKZlhdPsx4GpMS8J7ZhK7zVVXWOci9GJNjaQF6
         ILRhI0xqTZIlcO1ZwpEeJ2EuA04N8GJI3XA0xL1rYPvrxMGgnDfq4e4kB/ipz3AB3H
         WVomdLl3aS1SbLimOVRRjK0eN3Tq3uXai9V1R50Gx8OXtDNkoQ/KPQ8KiMyPn/4zMM
         5CrRdl2/vg6oUTnZv0gGDuYnmorjYdv7/FT/v9T17q+DiXhDpG7hSDUkuUbxvUeEZ7
         6R8NeJg8thDy6h/21W5Q+qrhcgs4DrPz4b0q3ZziNFevVDrDSr9O9raqq0V0IQarFM
         sb/TpMNiHASuA==
Received: by mail-lj1-f170.google.com with SMTP id c25so1903339ljr.8
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 10:30:11 -0800 (PST)
X-Gm-Message-State: ACrzQf0H+zpoOvhP3wvywQWxwRuhKs2j8KqQsng3w7GpvdlI6bHY6KaZ
        tO4HV4z0DX04i0h7GUctaEPDOHF6xqhYV0L8hg==
X-Google-Smtp-Source: AMsMyM7xp85roxfM8BIw9mTF5TkQ8jJeRbeYQMo5cD4mzsEjHmVlj4RaTzgmzA+UkXKTfh/xVDfjPaCngxWh0kqt09U=
X-Received: by 2002:a2e:b04e:0:b0:277:f46:617b with SMTP id
 d14-20020a2eb04e000000b002770f46617bmr8609507ljl.221.1668105009873; Thu, 10
 Nov 2022 10:30:09 -0800 (PST)
MIME-Version: 1.0
References: <20221102031312.216353-1-sjg@chromium.org> <CAL_JsqJHgxkmswiA_WgYmcGcTbqOgnqNL0TQzaHHpupwKaS6UA@mail.gmail.com>
 <CAPnjgZ2MpvgbO_xAA6u1SG=9RPy30p8VSUhgvjnx8KJRU1vAGQ@mail.gmail.com>
In-Reply-To: <CAPnjgZ2MpvgbO_xAA6u1SG=9RPy30p8VSUhgvjnx8KJRU1vAGQ@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 10 Nov 2022 12:30:01 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+37nc6vicyf3b9QZ0_28g2WGieP-yMwD3FNPRBLsvLjw@mail.gmail.com>
Message-ID: <CAL_Jsq+37nc6vicyf3b9QZ0_28g2WGieP-yMwD3FNPRBLsvLjw@mail.gmail.com>
Subject: Re: [PATCH v4] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 10, 2022 at 10:59 AM Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> On Tue, 8 Nov 2022 at 10:19, Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Nov 1, 2022 at 10:13 PM Simon Glass <sjg@chromium.org> wrote:
> > >
> > > U-Boot has some particular challenges with device tree and devices:
> > >
> > > - U-Boot has multiple build phases, such as a Secondary Program Loader
> > >   (SPL) phase which typically runs in a pre-SDRAM environment where code
> > >   and data space are limited. In particular, there may not be enough
> > >   space for the full device tree blob. U-Boot uses various automated
> > >   techniques to reduce the size from perhaps 40KB to 3KB. It is not
> > >   always possible to handle these tags entirely at build time, since
> > >   U-Boot proper must have the full device tree, even though we do not
> > >   want it to process all nodes until after relocation.
> > > - Some U-Boot phases needs to run before the clocks are properly set up,
> > >   where the CPU may be running very slowly. Therefore it is important to
> > >   bind only those devices which are actually needed in that phase
> > > - U-Boot uses lazy initialisation for its devices, with 'bind' and
> > >   'probe' being separate steps. Even if a device is bound, it is not
> > >   actually probed until it is used. This is necessary to keep the boot
> > >   time reasonable, e.g. to under a second
> > >
> > > The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> > > pre-relocation, then post-relocation). ALl but the last two are optional.
> > >
> > > For the above reasons, U-Boot only includes the full device tree in the
> > > final 'U-Boot proper' build. Even then, before relocation U-Boot only
> > > processes nodes which are marked as being needed.
> > >
> > > For this to work, U-Boot's driver model[1] provides a way to mark device
> > > tree nodes as applicable for a particular phase. This works by adding a
> > > tag to the node, e.g.:
> > >
> > >    cru: clock-controller@ff760000 {
> > >       phase,all;
> > >       compatible = "rockchip,rk3399-cru";
> > >       reg = <0x0 0xff760000 0x0 0x1000>;
> > >       rockchip,grf = <&grf>;
> > >       #clock-cells = <1>;
> > >       #reset-cells = <1>;
> > >       ...
> > >    };
> > >
> > > Here the "phase,all" tag indicates that the node must be present in all
> > > phases, since the clock driver is required.
> > >
> > > There has been discussion over the years about whether this could be done
> > > in a property instead, e.g.
> > >
> > >    options {
> > >       phase,all = <&cru> <&gpio_a> ...;
> > >       ...
> > >    };
> > >
> > > Some problems with this:
> > >
> > > - we need to be able to merge several such tags from different .dtsi files
> > >   since many boards have their own specific requirements
> > > - it is hard to find and cross-reference the affected nodes
> > > - it is more error-prone
> > > - it requires significant tool rework in U-Boot, including fdtgrep and
> > >   the build system
> > > - is harder (slower, more code) to process since it involves scanning
> > >   another node/property to find out what to do with a particular node
> > > - we don't want to add phandle arguments to the above since we are
> > >   referring, e.g., to the clock device as a whole, not a paricular clock
> > > - the of-platdata feature[2], which converts device tree to C for even
> > >   more constrained environments, would need to become aware of the
> > >   /options node
> > >
> > > There is also the question about whether this needs to be U-Boot-specific,
> > > or whether the tags could be generic. From what I can tell, U-Boot is the
> > > only bootloader which seriously attempts to use a runtime device tree in
> > > all cases. For this version, an attempt is made to name the phases in a
> > > generic manner.
> > >
> > > It should also be noted that the approach provided here has stood the test
> > > of time, used in U-Boot for 8 years so far.
> > >
> > > So add the schema for this. This will allow a major class of schema
> > > exceptions to be dropped from the U-Boot source tree.
> > >
> > > This being sent to the mailing list since it might attract more review.
> > > A PR will be sent when this has had some review. That is why the file
> > > path is set up for https://github.com/devicetree-org/dt-schema rather
> > > than the Linux kernel.
> > >
> > > [1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.html
> > > [2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html
> > >
> > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > ---
> > >
> > > Changes in v4:
> > > - Drop some unnecessary context from the commit message
> > > - Explain why parent nodes do not automatically inherit their children's
> > >   tags
> > > - Rename the tags to use a phase,xxx format, explaining each one
> > >
> > > Changes in v3:
> > > - Fix an incorrect schema path in $id
> > >
> > > Changes in v2:
> > > - Expand docs to include a description of each tag
> > > - Fix some typos and unclear wording
> > >
> > >  dtschema/lib.py             |  5 +++
> > >  dtschema/schemas/phase.yaml | 73 +++++++++++++++++++++++++++++++++++++
> > >  test/phases.dts             | 26 +++++++++++++
> > >  3 files changed, 104 insertions(+)
> > >  create mode 100644 dtschema/schemas/phase.yaml
> > >  create mode 100644 test/phases.dts
> > >
> > > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > > index 3b6c937..9a2fafa 100644
> > > --- a/dtschema/lib.py
> > > +++ b/dtschema/lib.py
> > > @@ -514,6 +514,11 @@ def fixup_node_props(schema):
> > >      schema['properties'].setdefault('status', True)
> > >      schema['properties'].setdefault('secure-status', True)
> > >      schema['properties'].setdefault('$nodename', True)
> > > +    schema['properties'].setdefault('phase,pre-sram', True)
> > > +    schema['properties'].setdefault('phase,verify', True)
> > > +    schema['properties'].setdefault('phase,pre-ram', True)
> > > +    schema['properties'].setdefault('phase,some-ram', True)
> > > +    schema['properties'].setdefault('phase,all', True)
> >
> > These are added to just about every node in every schema. Maybe they
> > should be filtered out of the DTB instead. Anyways, that's an
> > implementation detail which is not too important to worry about yet.
>
> Is there a better way to do this? I thought this was what you were suggesting.

I did, but I'm just worried a bit about the bloat in the schema
especially if we add to this list. If we did 'phase = <list of
phases>', that would be a bit better.

The alternative I mentioned is to "filter out of the DTB". That means
when we read the DTB for validation, we just strip the properties out
of it. Then the validation never sees them. Of course, then we aren't
validating these properties. For booleans at least, there's not much
to validate.

[...]

> > > +      One complication with fdtgrep is that tags apply only to the node they are
> > > +      added to, not to any parents. This means that you often need to add the
> > > +      same tag to parent nodes so that any properties needed by the parent
> > > +      driver are included. Without that, the parent node may have no properties,
> > > +      or may not be bound before relocation (meaning that its child will not be
> > > +      bound either). This is for implementation reasons and it may be possible
> > > +      to address this in the future.
> >
> > First, I don't think a tool limitation should define the design.
> >
> > Second, switching this later is a problem. U-boot can only support 1
> > behavior as there is no other indication whether parents are
> > implicitly or explicitly included. So all possible DT files have to
> > change in sync to u-boot changing. That's not manageable. If we are
> > changing the property names as we are here, then we can change the
> > behavior and move platforms 1 by 1.
>
> I don't fully understand this. If we later decide that all parent
> properties should automatically be included based on their children's
> phase tags, then any 'duplicate' phase tags in the parents will become
> redundant. I don't see a problem with this.

You're right. I was thinking about it the other way around. However, I
think there's still an issue. The switch in u-boot may cause an
increase in memory usage which could break a working platform on the
switch. I suppose you could have a compile time config. If we're
changing property names, why not change the behavior now rather than
redefine how it works later. Changing behavior of bindings midway is
never a good thing.

> If this were the only objection to upstreaming U-Boot's DT bindings,
> we could perhaps discuss some tooling changes.
>
> >
> > I browsed through the u-boot dts files looking at where the tags are
> > used. There's a definite common pattern of what nodes are kept. It's
> > the console (serial or LCD) and flash device(s) primarily. The other
> > things look like dependencies of those or various other bits that need
> > to be poked. There's always going to be some exceptions that need
> > explicit hints, but manually identifying every node to keep seems
> > redundant and fragile. We already have a way to identify which device
> > is the console, so why not use that information along with
> > CONFIG_xPL_SERIAL to determine whether to keep a serial node and which
> > one to keep.
>
> Just to clarify:

I'm looking at this in terms of how to reduce the number of tags you
need in dts files. That would both reduce the manual effort to
identify what nodes are needed and the amount of change to add all
this to 'Linux' dts files.

> 1. Are you saying that U-Boot should (at run-time) decide whether to
> bind a device based on heuristics and likely needs? Apart from the
> complexity and code cost, I can imagine the exceptions would make this
> difficult. People spend days trying to save space in SPL, or to reduce
> boot time.

No, I was thinking at build time.

> or
>
> 2. Are you saying that tooling should decide what tags to add into the
> DT automatically, with a way to override it for particular cases? That
> sounds very useful to me, but it doesn't seem to affect the need for
> this biding.

Sort of. I was thinking strip nodes from dtb(s) except ones that
either have a tag or are a class of device identified to keep. But
once you can identify the nodes to keep, it's an implementation detail
whether you first add tags and then strip nodes or just straight away
strip nodes. I suppose the former would be easier to adapt to u-boot's
current build system.

> Part of the sugglishness (in terms of future development) on fdtgrep
> is that it never made it upstream. Now that you have provided a repo
> that might encourage more collaboration and development. But we need
> to get some bindings in first.
>
> BTW dependencies are fairly complex, like power, syscon, some clocks,
> some pinctrl nodes, some GPIOs, etc. We should not make light of them.
> It isn't as easy as just bringing everything in, since this adds
> space.

Yes, we've (Saravana really) learned that implementing dependencies in
the kernel. There's fun circular dependencies to deal with too.

I do have to wonder if we implemented a similar approach with
dependencies here, but at build time, how the resulting DT would
compare. That would entail, for example, if the serial console device
has 'clocks' then we parse it and keep the clock provider nodes.
Repeat that for all known providers and work down the tree of
dependencies.

> > > +
> > > +additionalProperties: true
> > > diff --git a/test/phases.dts b/test/phases.dts
> > > new file mode 100644
> > > index 0000000..7f59840
> > > --- /dev/null
> > > +++ b/test/phases.dts
> > > @@ -0,0 +1,26 @@
> > > +// SPDX-License-Identifier: BSD-2-Clause
> > > +// Copyright 2022 Google LLC
> > > +
> > > +// An attempt to provide a device tree to validate
> > > +
> > > +// dt-mk-schema -j test/schemas/ > processed-schema.json
> >
> > What is 'test/schemas/'? From dtschema? Those are only for the dtschema tests.
>
> Yes, but I'm trying to run a test, so I was hoping to use that. What
> should I be doing?

Just use the core schemas without any extra schemas:
dt-mk-schema -j > processed-schema.json

But dt-mk-schema is just an optimization if validating many dtbs. So
skip it and do:

tools/dt-validate test.dtb

Rob
