Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C18463CC08
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 00:58:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230351AbiK2X6m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 18:58:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230362AbiK2X6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 18:58:40 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5AE2537FD
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 15:58:37 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id b2so21317001eja.7
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 15:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9v4AxfOBv7CHl73mjmKp6KazHPGiMDIljaR8e+6O6cA=;
        b=Y8fKJZc3n8m+skSFs/3bjF614FtGp3fps0p/FO1m7wBzYiscQH34nYpeaHj0Q3iJDd
         B/YnaUCup2LwCCFBYiPT/EQLdFCE6yo4zNZuNQqzX7Ha6shnfubL7R4Nl492b9r6mP9J
         R2v/DlhdE/rKhwjfqv8as7TAZKKGRaWqWo/HI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9v4AxfOBv7CHl73mjmKp6KazHPGiMDIljaR8e+6O6cA=;
        b=GOL+KgasYDg/6+V4Jh9bTX9wdY2oPY7XOuwTAThKXkC1MzK4nN+4+v76AlxgitwMmH
         DOEPPDvdAd6wKs1m4Y8LjRGzFAuOBxjY7NWfMyMrle9DYsmAxolYEy4yqVrern9VoCxB
         9CVRzxBAtGzMucn9PqOSg59OA+wWZU/zm3AIYUXZxkRJXfsYBhZv6bfFZdBP1HC7zQid
         4WbuR5y8p8DWi71VCe2p7Y2vTpt9HuVUSbZ71Y2+ZW/SHvVYwy+4ysAkE28WMhHzKHBQ
         HFqu0ZqHc31L3FqWlPc68dm8FAilFpN/VxzunlYScP/B52KUUWpU2c6mnAllpnM2veHR
         54og==
X-Gm-Message-State: ANoB5plcw2bc1UrxGua0cO2zxpRkqxD1GKdi2xdiflLrD/yQjIwNX3I8
        a959qqDhpfBM1+vfPTu7jojjInWEINdnieomiXG2pJ9GztyrXqdSHis=
X-Google-Smtp-Source: AA0mqf40AR/E/z3sKo+Q2ubX3v/J1BvMLM2vDbfCfkO26t+RZuWk0YVS7bedi4PVTEOCXnjnELJnT9BQz7u3XrgGsp0=
X-Received: by 2002:a17:906:80e:b0:7c0:8608:e62b with SMTP id
 e14-20020a170906080e00b007c08608e62bmr5125194ejd.660.1669766315529; Tue, 29
 Nov 2022 15:58:35 -0800 (PST)
MIME-Version: 1.0
References: <20221102031312.216353-1-sjg@chromium.org> <CAL_JsqJHgxkmswiA_WgYmcGcTbqOgnqNL0TQzaHHpupwKaS6UA@mail.gmail.com>
 <CAPnjgZ2MpvgbO_xAA6u1SG=9RPy30p8VSUhgvjnx8KJRU1vAGQ@mail.gmail.com>
 <CAL_Jsq+37nc6vicyf3b9QZ0_28g2WGieP-yMwD3FNPRBLsvLjw@mail.gmail.com>
 <CAPnjgZ1TaQ6Dp0y2zVgRj5=w2GKToaCB5dmYxk-tHf3y74_6ig@mail.gmail.com>
 <CAL_JsqJyBVgWKSS24nyGXpgHpcdw3D+P4LMQU7z_CogcoKgqdQ@mail.gmail.com>
 <CAPnjgZ2sA5MGZ7RNccYXjrzAvtcEx6=X-caP64=D-Wo+t-1cEQ@mail.gmail.com> <CAPnjgZ3UwZQ7+mp14ELvLRkLqk+zDAbdz_Mz=ks1cKtutZF9Eg@mail.gmail.com>
In-Reply-To: <CAPnjgZ3UwZQ7+mp14ELvLRkLqk+zDAbdz_Mz=ks1cKtutZF9Eg@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Wed, 30 Nov 2022 12:58:23 +1300
Message-ID: <CAPnjgZ2u+YYEgTj3ioO+HswFucCmb-4hAOVqY9nG+M6ueTwudw@mail.gmail.com>
Subject: Re: [PATCH v4] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Joakim Bech <joakim.bech@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

ping for any comments?

- Simon

On Wed, 23 Nov 2022 at 12:59, Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> On Tue, 15 Nov 2022 at 14:56, Simon Glass <sjg@chromium.org> wrote:
> >
> > Hi Rob,
> >
> > On Mon, 14 Nov 2022 at 10:44, Rob Herring <robh@kernel.org> wrote:
> > >
> > > +Ilias, Bill and Joakim
> > >
> > > On Sat, Nov 12, 2022 at 9:21 AM Simon Glass <sjg@chromium.org> wrote:
> > > >
> > > > Hi Rob,
> > > >
> > > > (unfortunately I have a filter on this list due to the insane traffic
> > > > and am not sure how to let these emails through, so I just saw this)
> > >
> > > https://lore.kernel.org/linux-devicetree/?q=a%3Asjg%40chromium.org
> >
> > Thanks, I stumbled upon that a week ago and the search works well.
> > Will bookmark. But as to filters I am using gmail for now...
> >
> > >
> > > And 'lei' can make that search a persistent mailbox.
> >
> > What is lei?
> >
> > >
> > > >
> > > > On Thu, 10 Nov 2022 at 11:30, Rob Herring <robh@kernel.org> wrote:
> > > > >
> > > > > On Thu, Nov 10, 2022 at 10:59 AM Simon Glass <sjg@chromium.org> wrote:
> > > > > >
> > > > > > Hi Rob,
> > > > > >
> > > > > > On Tue, 8 Nov 2022 at 10:19, Rob Herring <robh@kernel.org> wrote:
> > > > > > >
> > > > > > > On Tue, Nov 1, 2022 at 10:13 PM Simon Glass <sjg@chromium.org> wrote:
> > > > > > > >
> > > > > > > > U-Boot has some particular challenges with device tree and devices:
> > > > > > > >
> > > > > > > > - U-Boot has multiple build phases, such as a Secondary Program Loader
> > > > > > > >   (SPL) phase which typically runs in a pre-SDRAM environment where code
> > > > > > > >   and data space are limited. In particular, there may not be enough
> > > > > > > >   space for the full device tree blob. U-Boot uses various automated
> > > > > > > >   techniques to reduce the size from perhaps 40KB to 3KB. It is not
> > > > > > > >   always possible to handle these tags entirely at build time, since
> > > > > > > >   U-Boot proper must have the full device tree, even though we do not
> > > > > > > >   want it to process all nodes until after relocation.
> > > > > > > > - Some U-Boot phases needs to run before the clocks are properly set up,
> > > > > > > >   where the CPU may be running very slowly. Therefore it is important to
> > > > > > > >   bind only those devices which are actually needed in that phase
> > > > > > > > - U-Boot uses lazy initialisation for its devices, with 'bind' and
> > > > > > > >   'probe' being separate steps. Even if a device is bound, it is not
> > > > > > > >   actually probed until it is used. This is necessary to keep the boot
> > > > > > > >   time reasonable, e.g. to under a second
> > > > > > > >
> > > > > > > > The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> > > > > > > > pre-relocation, then post-relocation). ALl but the last two are optional.
> > > > > > > >
> > > > > > > > For the above reasons, U-Boot only includes the full device tree in the
> > > > > > > > final 'U-Boot proper' build. Even then, before relocation U-Boot only
> > > > > > > > processes nodes which are marked as being needed.
> > > > > > > >
> > > > > > > > For this to work, U-Boot's driver model[1] provides a way to mark device
> > > > > > > > tree nodes as applicable for a particular phase. This works by adding a
> > > > > > > > tag to the node, e.g.:
> > > > > > > >
> > > > > > > >    cru: clock-controller@ff760000 {
> > > > > > > >       phase,all;
> > > > > > > >       compatible = "rockchip,rk3399-cru";
> > > > > > > >       reg = <0x0 0xff760000 0x0 0x1000>;
> > > > > > > >       rockchip,grf = <&grf>;
> > > > > > > >       #clock-cells = <1>;
> > > > > > > >       #reset-cells = <1>;
> > > > > > > >       ...
> > > > > > > >    };
> > > > > > > >
> > > > > > > > Here the "phase,all" tag indicates that the node must be present in all
> > > > > > > > phases, since the clock driver is required.
> > > > > > > >
> > > > > > > > There has been discussion over the years about whether this could be done
> > > > > > > > in a property instead, e.g.
> > > > > > > >
> > > > > > > >    options {
> > > > > > > >       phase,all = <&cru> <&gpio_a> ...;
> > > > > > > >       ...
> > > > > > > >    };
> > > > > > > >
> > > > > > > > Some problems with this:
> > > > > > > >
> > > > > > > > - we need to be able to merge several such tags from different .dtsi files
> > > > > > > >   since many boards have their own specific requirements
> > > > > > > > - it is hard to find and cross-reference the affected nodes
> > > > > > > > - it is more error-prone
> > > > > > > > - it requires significant tool rework in U-Boot, including fdtgrep and
> > > > > > > >   the build system
> > > > > > > > - is harder (slower, more code) to process since it involves scanning
> > > > > > > >   another node/property to find out what to do with a particular node
> > > > > > > > - we don't want to add phandle arguments to the above since we are
> > > > > > > >   referring, e.g., to the clock device as a whole, not a paricular clock
> > > > > > > > - the of-platdata feature[2], which converts device tree to C for even
> > > > > > > >   more constrained environments, would need to become aware of the
> > > > > > > >   /options node
> > > > > > > >
> > > > > > > > There is also the question about whether this needs to be U-Boot-specific,
> > > > > > > > or whether the tags could be generic. From what I can tell, U-Boot is the
> > > > > > > > only bootloader which seriously attempts to use a runtime device tree in
> > > > > > > > all cases. For this version, an attempt is made to name the phases in a
> > > > > > > > generic manner.
> > > > > > > >
> > > > > > > > It should also be noted that the approach provided here has stood the test
> > > > > > > > of time, used in U-Boot for 8 years so far.
> > > > > > > >
> > > > > > > > So add the schema for this. This will allow a major class of schema
> > > > > > > > exceptions to be dropped from the U-Boot source tree.
> > > > > > > >
> > > > > > > > This being sent to the mailing list since it might attract more review.
> > > > > > > > A PR will be sent when this has had some review. That is why the file
> > > > > > > > path is set up for https://github.com/devicetree-org/dt-schema rather
> > > > > > > > than the Linux kernel.
> > > > > > > >
> > > > > > > > [1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.html
> > > > > > > > [2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html
> > > > > > > >
> > > > > > > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > > > > > > ---
> > > > > > > >
> > > > > > > > Changes in v4:
> > > > > > > > - Drop some unnecessary context from the commit message
> > > > > > > > - Explain why parent nodes do not automatically inherit their children's
> > > > > > > >   tags
> > > > > > > > - Rename the tags to use a phase,xxx format, explaining each one
> > > > > > > >
> > > > > > > > Changes in v3:
> > > > > > > > - Fix an incorrect schema path in $id
> > > > > > > >
> > > > > > > > Changes in v2:
> > > > > > > > - Expand docs to include a description of each tag
> > > > > > > > - Fix some typos and unclear wording
> > > > > > > >
> > > > > > > >  dtschema/lib.py             |  5 +++
> > > > > > > >  dtschema/schemas/phase.yaml | 73 +++++++++++++++++++++++++++++++++++++
> > > > > > > >  test/phases.dts             | 26 +++++++++++++
> > > > > > > >  3 files changed, 104 insertions(+)
> > > > > > > >  create mode 100644 dtschema/schemas/phase.yaml
> > > > > > > >  create mode 100644 test/phases.dts
> > > > > > > >
> > > > > > > > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > > > > > > > index 3b6c937..9a2fafa 100644
> > > > > > > > --- a/dtschema/lib.py
> > > > > > > > +++ b/dtschema/lib.py
> > > > > > > > @@ -514,6 +514,11 @@ def fixup_node_props(schema):
> > > > > > > >      schema['properties'].setdefault('status', True)
> > > > > > > >      schema['properties'].setdefault('secure-status', True)
> > > > > > > >      schema['properties'].setdefault('$nodename', True)
> > > > > > > > +    schema['properties'].setdefault('phase,pre-sram', True)
> > > > > > > > +    schema['properties'].setdefault('phase,verify', True)
> > > > > > > > +    schema['properties'].setdefault('phase,pre-ram', True)
> > > > > > > > +    schema['properties'].setdefault('phase,some-ram', True)
> > > > > > > > +    schema['properties'].setdefault('phase,all', True)
> > > > > > >
> > > > > > > These are added to just about every node in every schema. Maybe they
> > > > > > > should be filtered out of the DTB instead. Anyways, that's an
> > > > > > > implementation detail which is not too important to worry about yet.
> > > > > >
> > > > > > Is there a better way to do this? I thought this was what you were suggesting.
> > > > >
> > > > > I did, but I'm just worried a bit about the bloat in the schema
> > > > > especially if we add to this list. If we did 'phase = <list of
> > > > > phases>', that would be a bit better.
> > > >
> > > > I've been thinking about that. We could even use a single-cell value
> > > > with a bitmask. It isn't as easy to use though. Making this easy for
> > > > humans should be the primary goal IMO.
> > >
> > > We can use defines though that only helps at the source level:
> > >
> > > phase = <(PHASE_PRE_RAM | PHASE_SOME_RAM)>;
> > >
> > > This would also allow for 'phase = <0>;' which may be needed as an
> > > override to not include a parent node except for a full DT.
> > >
> > > Also, I'd probably rename it to 'boot-phase' or something a bit more
> > > specific. (Trying to not have properties which have multiple types and
> > > meanings.)
> >
> > It is more a build phase than a boot phase I think. Anyway, I'll write
> > something up about the options.
> >
> > >
> > > > > The alternative I mentioned is to "filter out of the DTB". That means
> > > > > when we read the DTB for validation, we just strip the properties out
> > > > > of it. Then the validation never sees them. Of course, then we aren't
> > > > > validating these properties. For booleans at least, there's not much
> > > > > to validate.
> > > >
> > > > Yes, filtering them out first should work. If someone spells something
> > > > wrong, it will remain in there, so will fail validation. But this
> > > > feels like a convenience for the tooling, not the user.
> > >
> > > It mostly is internal to the tooling except when people inspect the
> > > processed schema. If you use a pattern though, then you get error
> > > messages like "'foo-bar' is not one of: pinctrl-[0-9]+,
> > > any-other-pattern-*, etc." which I find may be a bit confusing for
> > > users because where did 'pinctrl' magically come from.
> > >
> > > In any case, this is mostly an implementation detail within the
> > > tooling. Let's sort the properties out first.
> > >
> > > > Is this because schema validation is slow? I think I did offer
> > > > something faster that avoided json ;)
> > >
> > > It is slow, but this isn't going to affect it much. Note a good
> > > portion of the time is just python startup and importing. I'm eagerly
> > > awaiting lazy imports.
> >
> > Ah good to hear that startup time may reduce. It is comically slow at times.
> >
> > >
> > > > > [...]
> > > > >
> > > > > > > > +      One complication with fdtgrep is that tags apply only to the node they are
> > > > > > > > +      added to, not to any parents. This means that you often need to add the
> > > > > > > > +      same tag to parent nodes so that any properties needed by the parent
> > > > > > > > +      driver are included. Without that, the parent node may have no properties,
> > > > > > > > +      or may not be bound before relocation (meaning that its child will not be
> > > > > > > > +      bound either). This is for implementation reasons and it may be possible
> > > > > > > > +      to address this in the future.
> > > > > > >
> > > > > > > First, I don't think a tool limitation should define the design.
> > > > > > >
> > > > > > > Second, switching this later is a problem. U-boot can only support 1
> > > > > > > behavior as there is no other indication whether parents are
> > > > > > > implicitly or explicitly included. So all possible DT files have to
> > > > > > > change in sync to u-boot changing. That's not manageable. If we are
> > > > > > > changing the property names as we are here, then we can change the
> > > > > > > behavior and move platforms 1 by 1.
> > > > > >
> > > > > > I don't fully understand this. If we later decide that all parent
> > > > > > properties should automatically be included based on their children's
> > > > > > phase tags, then any 'duplicate' phase tags in the parents will become
> > > > > > redundant. I don't see a problem with this.
> > > > >
> > > > > You're right. I was thinking about it the other way around. However, I
> > > > > think there's still an issue. The switch in u-boot may cause an
> > > > > increase in memory usage which could break a working platform on the
> > > > > switch. I suppose you could have a compile time config. If we're
> > > > > changing property names, why not change the behavior now rather than
> > > > > redefine how it works later. Changing behavior of bindings midway is
> > > > > never a good thing.
> > > >
> > > > The problem of memory usage is real, but in most cases, if the
> > > > parent's properties are missing, that includes the compatible string,
> > > > so the children mostly won't be bound anyway. Of course there are
> > > > things like PMICs and GPIO controllers where that breaks down.
> > > >
> > > > If that ends up being the hold-up I can look at it from the tooling
> > > > side. I am not completely sure that a blanket rule like this is the
> > > > right thing, but it is hard to know without trying it out for a while.
> > >
> > > Again, I don't think changing behavior midway is good, but I really
> > > don't care too much until we start syncing dts files or if/when
> > > u-boot's dtb is also passed to the OS. So I'd like this in the schema
> > > sooner rather than later. I think something like this construct could
> > > enforce it:
> > >
> > > if:
> > >   required: [ phase ]
> > > then:
> > >   additionalProperties:
> > >     additionalProperties:
> > >        phase: false
> > >
> > > This says if a node has 'phase', then child nodes can't have 'phase'.
> > > (I'll have to test whether this actually works)
> >
> > For things like a GPIO controller we need to be able to include the
> > top-level controller node and then perhaps only one or two of the
> > subnodes. So including the parent does not tell anything about whether
> > the children should be included. So we need to be able to put these
> > things in child nodes.
> >
> > >
> > > > > > If this were the only objection to upstreaming U-Boot's DT bindings,
> > > > > > we could perhaps discuss some tooling changes.
> > > > > >
> > > > > > >
> > > > > > > I browsed through the u-boot dts files looking at where the tags are
> > > > > > > used. There's a definite common pattern of what nodes are kept. It's
> > > > > > > the console (serial or LCD) and flash device(s) primarily. The other
> > > > > > > things look like dependencies of those or various other bits that need
> > > > > > > to be poked. There's always going to be some exceptions that need
> > > > > > > explicit hints, but manually identifying every node to keep seems
> > > > > > > redundant and fragile. We already have a way to identify which device
> > > > > > > is the console, so why not use that information along with
> > > > > > > CONFIG_xPL_SERIAL to determine whether to keep a serial node and which
> > > > > > > one to keep.
> > > > > >
> > > > > > Just to clarify:
> > > > >
> > > > > I'm looking at this in terms of how to reduce the number of tags you
> > > > > need in dts files. That would both reduce the manual effort to
> > > > > identify what nodes are needed and the amount of change to add all
> > > > > this to 'Linux' dts files.
> > > >
> > > > Yes I understand.
> > > >
> > > > >
> > > > > > 1. Are you saying that U-Boot should (at run-time) decide whether to
> > > > > > bind a device based on heuristics and likely needs? Apart from the
> > > > > > complexity and code cost, I can imagine the exceptions would make this
> > > > > > difficult. People spend days trying to save space in SPL, or to reduce
> > > > > > boot time.
> > > > >
> > > > > No, I was thinking at build time.
> > > >
> > > > OK
> > > >
> > > > >
> > > > > > or
> > > > > >
> > > > > > 2. Are you saying that tooling should decide what tags to add into the
> > > > > > DT automatically, with a way to override it for particular cases? That
> > > > > > sounds very useful to me, but it doesn't seem to affect the need for
> > > > > > this biding.
> > > > >
> > > > > Sort of. I was thinking strip nodes from dtb(s) except ones that
> > > > > either have a tag or are a class of device identified to keep. But
> > > > > once you can identify the nodes to keep, it's an implementation detail
> > > > > whether you first add tags and then strip nodes or just straight away
> > > > > strip nodes. I suppose the former would be easier to adapt to u-boot's
> > > > > current build system.
> > > >
> > > > At present, identifying the nodes is a manual process, requiring tags.
> > > > If we move to having rules then we will need exceptions. Perhaps the
> > > > rules need to be encoded in the DT as well, since they need to be
> > > > stored somewhere and we cannot have future rule changes affecting old
> > > > platforms in case they break.
> > >
> > > For consoles, I was thinking it's 'if CONFIG_SPL_SERIAL, then keep (or
> > > add the tag to) the node stdout-path points to'. Maybe you want to get
> > > rid of CONFIG_SPL_SERIAL in favor of something in DT? If so, then
> > > we're probably looking at multiple config properties per phase, but
> > > that's probably an orthogonal issue.
> > >
> > > We'd need something similar to stdout-path defined for boot flash
> > > devices. Maybe that's just an alias.
> >
> > Well I'd like to take up this discussion once we have the bindings
> > agreed since I think it is orthogonal.
> >
> > Any 'magic' like this needs to be controllable, e.g. with a policy
> > property to indicate what fdtgrep, etc. should do. Note that some
> > build phases won't have a console, but will just write text into a
> > memory / logging buffer.
> >
> > >
> > > > In that case, I'd suggest that explicit tags are the first step
> > > > towards getting this off the ground, with the 'rules' coming later as
> > > > a way to reduce the number of tags.
> > >
> > > Certainly. It's more of a requirement for syncing dts files as it's
> > > not something we can enforce with a schema. So really just looking for
> > > some agreement on the direction.
> >
> > OK. I have no objection to magic / conventions / defaults so long as
> > we can control it, e.g. with:
> >
> > auto-console = <some way of saying which phases should use this feature>
> >
> > This needs a lot of thought so let's worry about it later. But I
> > certainly agree that this could make everything considerably easier to
> > use. Turning things off might be easier than turning them on, which is
> > what you currently have to do.
> >
> > >
> > > > > > Part of the sugglishness (in terms of future development) on fdtgrep
> > > > > > is that it never made it upstream. Now that you have provided a repo
> > > > > > that might encourage more collaboration and development. But we need
> > > > > > to get some bindings in first.
> > > > > >
> > > > > > BTW dependencies are fairly complex, like power, syscon, some clocks,
> > > > > > some pinctrl nodes, some GPIOs, etc. We should not make light of them.
> > > > > > It isn't as easy as just bringing everything in, since this adds
> > > > > > space.
> > > > >
> > > > > Yes, we've (Saravana really) learned that implementing dependencies in
> > > > > the kernel. There's fun circular dependencies to deal with too.
> > > > >
> > > > > I do have to wonder if we implemented a similar approach with
> > > > > dependencies here, but at build time, how the resulting DT would
> > > > > compare. That would entail, for example, if the serial console device
> > > > > has 'clocks' then we parse it and keep the clock provider nodes.
> > > > > Repeat that for all known providers and work down the tree of
> > > > > dependencies.
> > > >
> > > > Yes, but isn't this the same thing? We are trying to make rules about
> > > > what matters. Many platforms use a clock and pinctrl driver in SPL,
> > > > e.g. rockchip, but some will just program up the basics and omit it.
> > >
> > > Meaning they ignore/omit the DT clock/pinctrl nodes and just stuff
> > > registers with magic values while others will use their pinctrl/clock
> > > driver, but only a subset of the nodes? I agree we can't distinguish
> > > that without something explicit.
> >
> > Yes, we use both cases in U-Boot.
> >
> > >
> > > > For those that include it, they still may only want a subset of the
> > > > clock/pinctrl nodes. This all sounds like a useful tooling
> > > > enhancement, but doesn't get at the basic need to control what device
> > > > tree is presented to each phase, does it?
> > >
> > > It could, but only if you could assume you needed all dependencies of
> > > some set of devices.
> >
> > That is a brave assumption from where I sit.
> >
> > >
> > > > Another thing I should mention is that for TPL, we use the tags to
> > > > decide which things end up in the (build-time) DT and therefore which
> > > > nodes need (run-time) C structures and data, etc.
> > >
> > > Okay, it looked like it was more you needed both config options and DT
> > > tags. But that was for SPL as that's most of the examples. Is that a
> > > more general direction for things? For example, serial devices in the
> > > SPL DT controlling what CONFIG_SPL_SERIAL enables instead?
> >
> > I don't quite understand that. To some extent, the CONFIG options
> > define what code is built, while the DT defines what code is used at
> > runtime. Can you elaborate a bit?
>
> Further to this and as discussed on the call, here is my attempt to
> list out the options with pros and cons. Can you please:
>
> 1. Take a look and make comments
> 2. Any any other ideas you have
>
> https://docs.google.com/document/d/1wfpzf0wPGSDl_AowJf11raVg41JBTSyh-cPaHSvRQjs/edit#heading=h.z6bw3mo3f3gu
>
> Firmware phase tags
> Simon Glass, sjg@chromium.org, 22-Nov-22
> Introduction
> This describes possible ways we can implement phase tags for use by firmware.
> Background
> See Initial PR under discussion.
> For U-Boot, see device tree documentation, SPL docs.
> Design ideas
> 1. Status quo (U-Boot-specific boolean tags)
> Use tags like 'u-boot,dm-spl' which appear in the node they relate to:
>         clk_fixed: clk-fixed {
>                 u-boot,dm-pre-reloc;
>                 compatible = "sandbox,fixed-clock";
>                 #clock-cells = <0>;
>                 clock-frequency = <1234>;
>         };
> This indicates that the node will be included in driver model
> processing before relocation. Parent notes must be tagged in a similar
> way, to ensure that properties are retained.
> Pro
> * Already working in U-Boot
> * No tool changes
> * Easy to merge tags from multiple .dtsi files
> Con
> * U-Boot-specific tags need to be duplicated by other projects
> 2. Rename (still use boolean tags)
> As above but rename the tags to be generic, e.g. 'phase,pre-sram',
> 'phase,verify'.
> Pro:
> * Generic tags can be used by any project
> * Easy to add and easy to read
> * Most efficient in terms of space
> * Tags can sometimes be removed entirely
> * Relative minor effort to rework U-Boot (~1 week)
> Con
> * May need multiple tags in each node
> 3. String list
> Use a list of tags:
>         clk_fixed: clk-fixed {
>                 phase = "pre-sram", "verify";
>                 compatible = "sandbox,fixed-clock";
>                 #clock-cells = <0>;
>                 clock-frequency = <1234>;
>         };
> Pro
> * Easy to read
> Con
> * Far too inefficient to process in U-Boot
> * Hard to merge tags from multiple .dtsi files
> * Lots of work to retool (weeks)
> 4. Integer list
> As above but use integers:
>         clk_fixed: clk-fixed {
>                 phase = <PHASE_PRE_SRAM PHASE_VERIFY>;
>                 compatible = "sandbox,fixed-clock";
>                 #clock-cells = <0>;
>                 clock-frequency = <1234>;
>         };
> Pro
> * Somewhat easy to read apart from the shouting
> Con
> * Less efficient to process in U-Boot, but bearable
> * Hard to merge tags from multiple .dtsi files
> * Lots of work to retool (weeks)
> 5. Bit mask
> Similar to above but use a bitmask:
>         clk_fixed: clk-fixed {
>                 phase = <(PHASE_PRE_SRAM | PHASE_VERIFY)>;
>                 compatible = "sandbox,fixed-clock";
>                 #clock-cells = <0>;
>                 clock-frequency = <1234>;
>         };
> Pro
> * A little easier to read due to the OR operator
> Con
> * Slightly less efficient than boolean tags
> * Fairly efficient to process in U-Boot
> * Hard to merge tags from multiple .dtsi files
> * A bit error-prone, since it requires multiple tags to be ORed
> together, also brackets
> * Lots of work to retool (weeks)
> Appendix A: fdtgrep
> There is not much documentation for this tool, but here are the flags:
> Usage: fdtgrep - extract portions from device tree
>
>
> Usage:
>         fdtgrep <options> <dt file>|-
>
>
> Output formats are:
>         dts - device tree soure text
>         dtb - device tree blob (sets -Hmt automatically)
>         bin - device tree fragment (may not be a valid .dtb)
>
>
> Options: -[haAc:b:C:defg:G:HIlLmn:N:o:O:p:P:rRsStTvhV]
>   -a, --show-address                 Display address
>   -A, --colour                       Show all nodes/tags, colour those
> that match
>   -b, --include-node-with-prop <arg> Include contains containing property
>   -c, --include-compat <arg>         Compatible nodes to include in grep
>   -C, --exclude-compat <arg>         Compatible nodes to exclude in grep
>   -d, --diff                         Diff: Mark matching nodes with +,
> others with -
>   -e, --enter-node                   Enter direct subnode names of
> matching nodes
>   -f, --show-offset                  Display offset
>   -g, --include-match <arg>          Node/property/compatible string
> to include in grep
>   -G, --exclude-match <arg>          Node/property/compatible string
> to exclude in grep
>   -H, --show-header                  Output a header
>   -I, --show-version                 Put "/dts-v1/;" on first line of dts output
>   -l, --list-regions                 Output a region list
>   -L, --list-strings                 List strings in string table
>   -m, --include-mem                  Include mem_rsvmap section in binary output
>   -n, --include-node <arg>           Node to include in grep
>   -N, --exclude-node <arg>           Node to exclude in grep
>   -p, --include-prop <arg>           Property to include in grep
>   -P, --exclude-prop <arg>           Property to exclude in grep
>   -r, --remove-strings               Remove unused strings from string table
>   -R, --include-root                 Include root node and all properties
>   -s, --show-subnodes                Show all subnodes matching nodes
>   -S, --skip-supernodes              Don't include supernodes of matching nodes
>   -t, --show-stringtab               Include string table in binary output
>   -T, --show-aliases                 Include matching aliases in output
>   -o, --out <arg>                    -o <output file>
>   -O, --out-format <arg>             -O <output format>
>   -v, --invert-match                 Invert the sense of matching
> (select non-matching lines)
>   -h, --help                         Print this help and exit
>   -V, --version                      Print version and exit
>
> Regards,
> Simon
