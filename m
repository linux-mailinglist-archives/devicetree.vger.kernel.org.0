Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44786628759
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 18:44:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236282AbiKNRon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 12:44:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237371AbiKNRoj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 12:44:39 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C04E31F9C5
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 09:44:36 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3F35CB80DE3
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 17:44:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DE2AC433C1
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668447873;
        bh=2TjVLu2q8lMiH7uOAC/yrRQClmKmPtPh0frEBjBbT7w=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=NbVOQ9z6BnRIx2SFJLZYDs84Y/PF6K+a9SDeP/ICJ6T3OmUfzOmO12HkzorNY0jNt
         CR6qVcElxH6FM1/1HB+2Tyt0WELFaXVR1MT53rnMeZ3oX/dX6NY3Y+YB6HRiDeAz+d
         IrHSJSxn2vZomY6YR+wZm3OfFiu35pRme8QEXcl7goUwUhU34gbpfSlkwKNHNQ7qED
         vUHIxVXg0TkUQ9nHUYy58+tf7wnkB+FTMHmaxqm40Zt6ZH2CIZblrwavlhX3Ly9hPJ
         IHFZ+80CWqP+5xu+VW7iUM6gUUk8YBAmMEtoM+BrzR3nz4BF7SR+CkPQkCoEIX8qQI
         f6yQWvBdAIuOg==
Received: by mail-lj1-f172.google.com with SMTP id u2so14199798ljl.3
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 09:44:33 -0800 (PST)
X-Gm-Message-State: ANoB5pnnIFoEyrviRq11/M6Vs/tSTax4d08QtA7EELQqcUpktBQXV59S
        yy051x8+BCh/wVFIeBpoAD27o7GcBQZ/8e0/kQ==
X-Google-Smtp-Source: AA0mqf4/mKdPluj0aczjqit94bAzoFqMw1Kt+8FApS40xlu3l2U+7QAo6gt+Fa1aHi/MSNxsxyl1YIXvwEPrX8hwlnE=
X-Received: by 2002:a2e:869a:0:b0:277:f46:617b with SMTP id
 l26-20020a2e869a000000b002770f46617bmr4279250lji.221.1668447871382; Mon, 14
 Nov 2022 09:44:31 -0800 (PST)
MIME-Version: 1.0
References: <20221102031312.216353-1-sjg@chromium.org> <CAL_JsqJHgxkmswiA_WgYmcGcTbqOgnqNL0TQzaHHpupwKaS6UA@mail.gmail.com>
 <CAPnjgZ2MpvgbO_xAA6u1SG=9RPy30p8VSUhgvjnx8KJRU1vAGQ@mail.gmail.com>
 <CAL_Jsq+37nc6vicyf3b9QZ0_28g2WGieP-yMwD3FNPRBLsvLjw@mail.gmail.com> <CAPnjgZ1TaQ6Dp0y2zVgRj5=w2GKToaCB5dmYxk-tHf3y74_6ig@mail.gmail.com>
In-Reply-To: <CAPnjgZ1TaQ6Dp0y2zVgRj5=w2GKToaCB5dmYxk-tHf3y74_6ig@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 14 Nov 2022 11:44:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJyBVgWKSS24nyGXpgHpcdw3D+P4LMQU7z_CogcoKgqdQ@mail.gmail.com>
Message-ID: <CAL_JsqJyBVgWKSS24nyGXpgHpcdw3D+P4LMQU7z_CogcoKgqdQ@mail.gmail.com>
Subject: Re: [PATCH v4] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Joakim Bech <joakim.bech@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Ilias, Bill and Joakim

On Sat, Nov 12, 2022 at 9:21 AM Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> (unfortunately I have a filter on this list due to the insane traffic
> and am not sure how to let these emails through, so I just saw this)

https://lore.kernel.org/linux-devicetree/?q=a%3Asjg%40chromium.org

And 'lei' can make that search a persistent mailbox.

>
> On Thu, 10 Nov 2022 at 11:30, Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Nov 10, 2022 at 10:59 AM Simon Glass <sjg@chromium.org> wrote:
> > >
> > > Hi Rob,
> > >
> > > On Tue, 8 Nov 2022 at 10:19, Rob Herring <robh@kernel.org> wrote:
> > > >
> > > > On Tue, Nov 1, 2022 at 10:13 PM Simon Glass <sjg@chromium.org> wrote:
> > > > >
> > > > > U-Boot has some particular challenges with device tree and devices:
> > > > >
> > > > > - U-Boot has multiple build phases, such as a Secondary Program Loader
> > > > >   (SPL) phase which typically runs in a pre-SDRAM environment where code
> > > > >   and data space are limited. In particular, there may not be enough
> > > > >   space for the full device tree blob. U-Boot uses various automated
> > > > >   techniques to reduce the size from perhaps 40KB to 3KB. It is not
> > > > >   always possible to handle these tags entirely at build time, since
> > > > >   U-Boot proper must have the full device tree, even though we do not
> > > > >   want it to process all nodes until after relocation.
> > > > > - Some U-Boot phases needs to run before the clocks are properly set up,
> > > > >   where the CPU may be running very slowly. Therefore it is important to
> > > > >   bind only those devices which are actually needed in that phase
> > > > > - U-Boot uses lazy initialisation for its devices, with 'bind' and
> > > > >   'probe' being separate steps. Even if a device is bound, it is not
> > > > >   actually probed until it is used. This is necessary to keep the boot
> > > > >   time reasonable, e.g. to under a second
> > > > >
> > > > > The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> > > > > pre-relocation, then post-relocation). ALl but the last two are optional.
> > > > >
> > > > > For the above reasons, U-Boot only includes the full device tree in the
> > > > > final 'U-Boot proper' build. Even then, before relocation U-Boot only
> > > > > processes nodes which are marked as being needed.
> > > > >
> > > > > For this to work, U-Boot's driver model[1] provides a way to mark device
> > > > > tree nodes as applicable for a particular phase. This works by adding a
> > > > > tag to the node, e.g.:
> > > > >
> > > > >    cru: clock-controller@ff760000 {
> > > > >       phase,all;
> > > > >       compatible = "rockchip,rk3399-cru";
> > > > >       reg = <0x0 0xff760000 0x0 0x1000>;
> > > > >       rockchip,grf = <&grf>;
> > > > >       #clock-cells = <1>;
> > > > >       #reset-cells = <1>;
> > > > >       ...
> > > > >    };
> > > > >
> > > > > Here the "phase,all" tag indicates that the node must be present in all
> > > > > phases, since the clock driver is required.
> > > > >
> > > > > There has been discussion over the years about whether this could be done
> > > > > in a property instead, e.g.
> > > > >
> > > > >    options {
> > > > >       phase,all = <&cru> <&gpio_a> ...;
> > > > >       ...
> > > > >    };
> > > > >
> > > > > Some problems with this:
> > > > >
> > > > > - we need to be able to merge several such tags from different .dtsi files
> > > > >   since many boards have their own specific requirements
> > > > > - it is hard to find and cross-reference the affected nodes
> > > > > - it is more error-prone
> > > > > - it requires significant tool rework in U-Boot, including fdtgrep and
> > > > >   the build system
> > > > > - is harder (slower, more code) to process since it involves scanning
> > > > >   another node/property to find out what to do with a particular node
> > > > > - we don't want to add phandle arguments to the above since we are
> > > > >   referring, e.g., to the clock device as a whole, not a paricular clock
> > > > > - the of-platdata feature[2], which converts device tree to C for even
> > > > >   more constrained environments, would need to become aware of the
> > > > >   /options node
> > > > >
> > > > > There is also the question about whether this needs to be U-Boot-specific,
> > > > > or whether the tags could be generic. From what I can tell, U-Boot is the
> > > > > only bootloader which seriously attempts to use a runtime device tree in
> > > > > all cases. For this version, an attempt is made to name the phases in a
> > > > > generic manner.
> > > > >
> > > > > It should also be noted that the approach provided here has stood the test
> > > > > of time, used in U-Boot for 8 years so far.
> > > > >
> > > > > So add the schema for this. This will allow a major class of schema
> > > > > exceptions to be dropped from the U-Boot source tree.
> > > > >
> > > > > This being sent to the mailing list since it might attract more review.
> > > > > A PR will be sent when this has had some review. That is why the file
> > > > > path is set up for https://github.com/devicetree-org/dt-schema rather
> > > > > than the Linux kernel.
> > > > >
> > > > > [1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.html
> > > > > [2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html
> > > > >
> > > > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > > > ---
> > > > >
> > > > > Changes in v4:
> > > > > - Drop some unnecessary context from the commit message
> > > > > - Explain why parent nodes do not automatically inherit their children's
> > > > >   tags
> > > > > - Rename the tags to use a phase,xxx format, explaining each one
> > > > >
> > > > > Changes in v3:
> > > > > - Fix an incorrect schema path in $id
> > > > >
> > > > > Changes in v2:
> > > > > - Expand docs to include a description of each tag
> > > > > - Fix some typos and unclear wording
> > > > >
> > > > >  dtschema/lib.py             |  5 +++
> > > > >  dtschema/schemas/phase.yaml | 73 +++++++++++++++++++++++++++++++++++++
> > > > >  test/phases.dts             | 26 +++++++++++++
> > > > >  3 files changed, 104 insertions(+)
> > > > >  create mode 100644 dtschema/schemas/phase.yaml
> > > > >  create mode 100644 test/phases.dts
> > > > >
> > > > > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > > > > index 3b6c937..9a2fafa 100644
> > > > > --- a/dtschema/lib.py
> > > > > +++ b/dtschema/lib.py
> > > > > @@ -514,6 +514,11 @@ def fixup_node_props(schema):
> > > > >      schema['properties'].setdefault('status', True)
> > > > >      schema['properties'].setdefault('secure-status', True)
> > > > >      schema['properties'].setdefault('$nodename', True)
> > > > > +    schema['properties'].setdefault('phase,pre-sram', True)
> > > > > +    schema['properties'].setdefault('phase,verify', True)
> > > > > +    schema['properties'].setdefault('phase,pre-ram', True)
> > > > > +    schema['properties'].setdefault('phase,some-ram', True)
> > > > > +    schema['properties'].setdefault('phase,all', True)
> > > >
> > > > These are added to just about every node in every schema. Maybe they
> > > > should be filtered out of the DTB instead. Anyways, that's an
> > > > implementation detail which is not too important to worry about yet.
> > >
> > > Is there a better way to do this? I thought this was what you were suggesting.
> >
> > I did, but I'm just worried a bit about the bloat in the schema
> > especially if we add to this list. If we did 'phase = <list of
> > phases>', that would be a bit better.
>
> I've been thinking about that. We could even use a single-cell value
> with a bitmask. It isn't as easy to use though. Making this easy for
> humans should be the primary goal IMO.

We can use defines though that only helps at the source level:

phase = <(PHASE_PRE_RAM | PHASE_SOME_RAM)>;

This would also allow for 'phase = <0>;' which may be needed as an
override to not include a parent node except for a full DT.

Also, I'd probably rename it to 'boot-phase' or something a bit more
specific. (Trying to not have properties which have multiple types and
meanings.)

> > The alternative I mentioned is to "filter out of the DTB". That means
> > when we read the DTB for validation, we just strip the properties out
> > of it. Then the validation never sees them. Of course, then we aren't
> > validating these properties. For booleans at least, there's not much
> > to validate.
>
> Yes, filtering them out first should work. If someone spells something
> wrong, it will remain in there, so will fail validation. But this
> feels like a convenience for the tooling, not the user.

It mostly is internal to the tooling except when people inspect the
processed schema. If you use a pattern though, then you get error
messages like "'foo-bar' is not one of: pinctrl-[0-9]+,
any-other-pattern-*, etc." which I find may be a bit confusing for
users because where did 'pinctrl' magically come from.

In any case, this is mostly an implementation detail within the
tooling. Let's sort the properties out first.

> Is this because schema validation is slow? I think I did offer
> something faster that avoided json ;)

It is slow, but this isn't going to affect it much. Note a good
portion of the time is just python startup and importing. I'm eagerly
awaiting lazy imports.

> > [...]
> >
> > > > > +      One complication with fdtgrep is that tags apply only to the node they are
> > > > > +      added to, not to any parents. This means that you often need to add the
> > > > > +      same tag to parent nodes so that any properties needed by the parent
> > > > > +      driver are included. Without that, the parent node may have no properties,
> > > > > +      or may not be bound before relocation (meaning that its child will not be
> > > > > +      bound either). This is for implementation reasons and it may be possible
> > > > > +      to address this in the future.
> > > >
> > > > First, I don't think a tool limitation should define the design.
> > > >
> > > > Second, switching this later is a problem. U-boot can only support 1
> > > > behavior as there is no other indication whether parents are
> > > > implicitly or explicitly included. So all possible DT files have to
> > > > change in sync to u-boot changing. That's not manageable. If we are
> > > > changing the property names as we are here, then we can change the
> > > > behavior and move platforms 1 by 1.
> > >
> > > I don't fully understand this. If we later decide that all parent
> > > properties should automatically be included based on their children's
> > > phase tags, then any 'duplicate' phase tags in the parents will become
> > > redundant. I don't see a problem with this.
> >
> > You're right. I was thinking about it the other way around. However, I
> > think there's still an issue. The switch in u-boot may cause an
> > increase in memory usage which could break a working platform on the
> > switch. I suppose you could have a compile time config. If we're
> > changing property names, why not change the behavior now rather than
> > redefine how it works later. Changing behavior of bindings midway is
> > never a good thing.
>
> The problem of memory usage is real, but in most cases, if the
> parent's properties are missing, that includes the compatible string,
> so the children mostly won't be bound anyway. Of course there are
> things like PMICs and GPIO controllers where that breaks down.
>
> If that ends up being the hold-up I can look at it from the tooling
> side. I am not completely sure that a blanket rule like this is the
> right thing, but it is hard to know without trying it out for a while.

Again, I don't think changing behavior midway is good, but I really
don't care too much until we start syncing dts files or if/when
u-boot's dtb is also passed to the OS. So I'd like this in the schema
sooner rather than later. I think something like this construct could
enforce it:

if:
  required: [ phase ]
then:
  additionalProperties:
    additionalProperties:
       phase: false

This says if a node has 'phase', then child nodes can't have 'phase'.
(I'll have to test whether this actually works)

> > > If this were the only objection to upstreaming U-Boot's DT bindings,
> > > we could perhaps discuss some tooling changes.
> > >
> > > >
> > > > I browsed through the u-boot dts files looking at where the tags are
> > > > used. There's a definite common pattern of what nodes are kept. It's
> > > > the console (serial or LCD) and flash device(s) primarily. The other
> > > > things look like dependencies of those or various other bits that need
> > > > to be poked. There's always going to be some exceptions that need
> > > > explicit hints, but manually identifying every node to keep seems
> > > > redundant and fragile. We already have a way to identify which device
> > > > is the console, so why not use that information along with
> > > > CONFIG_xPL_SERIAL to determine whether to keep a serial node and which
> > > > one to keep.
> > >
> > > Just to clarify:
> >
> > I'm looking at this in terms of how to reduce the number of tags you
> > need in dts files. That would both reduce the manual effort to
> > identify what nodes are needed and the amount of change to add all
> > this to 'Linux' dts files.
>
> Yes I understand.
>
> >
> > > 1. Are you saying that U-Boot should (at run-time) decide whether to
> > > bind a device based on heuristics and likely needs? Apart from the
> > > complexity and code cost, I can imagine the exceptions would make this
> > > difficult. People spend days trying to save space in SPL, or to reduce
> > > boot time.
> >
> > No, I was thinking at build time.
>
> OK
>
> >
> > > or
> > >
> > > 2. Are you saying that tooling should decide what tags to add into the
> > > DT automatically, with a way to override it for particular cases? That
> > > sounds very useful to me, but it doesn't seem to affect the need for
> > > this biding.
> >
> > Sort of. I was thinking strip nodes from dtb(s) except ones that
> > either have a tag or are a class of device identified to keep. But
> > once you can identify the nodes to keep, it's an implementation detail
> > whether you first add tags and then strip nodes or just straight away
> > strip nodes. I suppose the former would be easier to adapt to u-boot's
> > current build system.
>
> At present, identifying the nodes is a manual process, requiring tags.
> If we move to having rules then we will need exceptions. Perhaps the
> rules need to be encoded in the DT as well, since they need to be
> stored somewhere and we cannot have future rule changes affecting old
> platforms in case they break.

For consoles, I was thinking it's 'if CONFIG_SPL_SERIAL, then keep (or
add the tag to) the node stdout-path points to'. Maybe you want to get
rid of CONFIG_SPL_SERIAL in favor of something in DT? If so, then
we're probably looking at multiple config properties per phase, but
that's probably an orthogonal issue.

We'd need something similar to stdout-path defined for boot flash
devices. Maybe that's just an alias.

> In that case, I'd suggest that explicit tags are the first step
> towards getting this off the ground, with the 'rules' coming later as
> a way to reduce the number of tags.

Certainly. It's more of a requirement for syncing dts files as it's
not something we can enforce with a schema. So really just looking for
some agreement on the direction.

> > > Part of the sugglishness (in terms of future development) on fdtgrep
> > > is that it never made it upstream. Now that you have provided a repo
> > > that might encourage more collaboration and development. But we need
> > > to get some bindings in first.
> > >
> > > BTW dependencies are fairly complex, like power, syscon, some clocks,
> > > some pinctrl nodes, some GPIOs, etc. We should not make light of them.
> > > It isn't as easy as just bringing everything in, since this adds
> > > space.
> >
> > Yes, we've (Saravana really) learned that implementing dependencies in
> > the kernel. There's fun circular dependencies to deal with too.
> >
> > I do have to wonder if we implemented a similar approach with
> > dependencies here, but at build time, how the resulting DT would
> > compare. That would entail, for example, if the serial console device
> > has 'clocks' then we parse it and keep the clock provider nodes.
> > Repeat that for all known providers and work down the tree of
> > dependencies.
>
> Yes, but isn't this the same thing? We are trying to make rules about
> what matters. Many platforms use a clock and pinctrl driver in SPL,
> e.g. rockchip, but some will just program up the basics and omit it.

Meaning they ignore/omit the DT clock/pinctrl nodes and just stuff
registers with magic values while others will use their pinctrl/clock
driver, but only a subset of the nodes? I agree we can't distinguish
that without something explicit.

> For those that include it, they still may only want a subset of the
> clock/pinctrl nodes. This all sounds like a useful tooling
> enhancement, but doesn't get at the basic need to control what device
> tree is presented to each phase, does it?

It could, but only if you could assume you needed all dependencies of
some set of devices.

> Another thing I should mention is that for TPL, we use the tags to
> decide which things end up in the (build-time) DT and therefore which
> nodes need (run-time) C structures and data, etc.

Okay, it looked like it was more you needed both config options and DT
tags. But that was for SPL as that's most of the examples. Is that a
more general direction for things? For example, serial devices in the
SPL DT controlling what CONFIG_SPL_SERIAL enables instead?

Rob
