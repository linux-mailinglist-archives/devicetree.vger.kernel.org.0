Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24AAF5FD388
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 05:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbiJMDUL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 23:20:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbiJMDUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 23:20:10 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7C4B422EA
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 20:20:03 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id r13so842078wrj.11
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 20:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MgUahT8Qolr8pb8A2+MnNnG1QRlgnsURkjWBIHLsd2k=;
        b=LvlPeYgujcH/m5gh/adrbluUoPGd6HvLlSRHFr6ereT6Kl3kWSlghtv/+QyAo36at+
         UhgNv9EcJL996pczeB/TtehiVNo/bm6NH5PHNdxD/WBQbFj1tTKprxM716HzWhgbvcjH
         Dn9iwfMMhEBGitzFPD9H+EauzCyfieM309EoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MgUahT8Qolr8pb8A2+MnNnG1QRlgnsURkjWBIHLsd2k=;
        b=xFOLxYj/aAgg7ck8PepCzgvqb4Kmx1JaW8Jffft5qCl09sdgYhgIdCGN2yvrYPyh5N
         L7SOvIusLbVGbijwl7zRV1Q8w7Xfn3HGjp5VszZefQVvIpBrBbMzo6y1ZFgGzxVSHryr
         I/WoHc/NFFoPEbLJtIsq7o+RL6UBvcCKVDkK4tdW25achn7VrVSQh14a7lqo4qeYrfmR
         3wsRXc8BHEmrzNraDsL1RTrjbwSnoHvEceF4IMPFppXi8t0RzcjdIgrmozpit+nm1BPw
         +5TEjdyEddID2tLsQIGDQiwlJylY3vMXwglHsaG6vqahXvdeaBb6UjJWEZefYFQWS28x
         c2Jw==
X-Gm-Message-State: ACrzQf1dZrN73RIyVfsoD6Z9vtZhDmrJHiGKcjV43gg5gzl29VjC9IbS
        LUZkI+vI6TZXthkTTgB5ckWT7jdoZ7/FtXFwW31cx7LGEJdBUg==
X-Google-Smtp-Source: AMsMyM63Gzv1lnrmKpcPW8EIR9bRpQRn/JyqSCvS2tQ74PjTf2QTjn06r7+1/lN4Vb9lNsp7vJUjMvQK+Is1J7us8PE=
X-Received: by 2002:a5d:428c:0:b0:22e:5d4e:c71e with SMTP id
 k12-20020a5d428c000000b0022e5d4ec71emr19169913wrq.19.1665631201745; Wed, 12
 Oct 2022 20:20:01 -0700 (PDT)
MIME-Version: 1.0
References: <20221004232246.239237-1-sjg@chromium.org> <CAL_JsqLF4J1UeuYtE_SHUVsFTuwd-THK6KX=E1wU03hnZB7X9A@mail.gmail.com>
In-Reply-To: <CAL_JsqLF4J1UeuYtE_SHUVsFTuwd-THK6KX=E1wU03hnZB7X9A@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Wed, 12 Oct 2022 21:19:50 -0600
Message-ID: <CAPnjgZ3LhS6ZsqBy+TrPOrum-Oa-di9gF1X67E4MiptMnVEygA@mail.gmail.com>
Subject: Re: [PATCH v3] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        David Gibson <david@gibson.dropbear.id.au>
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

On Mon, 10 Oct 2022 at 10:34, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Oct 4, 2022 at 6:22 PM Simon Glass <sjg@chromium.org> wrote:
> >
> > Until recently it has not been possible to add any U-Boot-specific
> > properties to the device tree schema. Now that it is somewhat separated
> > from Linux and people are feeling the enormous pain of the bifurcated
> > schema, it seems like a good time to add this and other U-Boot-specific
> > bindings.
>
> It's been possible provided there was agreement on the properties.
> There just wasn't in this case.
>
> What's the pain point precisely? I can think of several. Syncing dts
> files from Linux tree, running schema validation on a dtb from u-boot,
> or ...?

U-Boot

See Tom's response.

As Tom says, I am not bothered about history and can change anything
in the commit message. Just so long as history never repeats!

>
> > U-Boot has some particular challenges with device tree and devices which
> > are not faced with Linux:
> >
> > - U-Boot has multiple build phases, such as a Secondary Program Loader
> >   (SPL) phase which typically runs in a pre-SDRAM environment where code
> >   and data space are limited. In particular, there may not be enough
> >   space for the full device tree blob. U-Boot uses various automated
> >   techniques to reduce the size from perhaps 40KB to 3KB.
>
> As this is a build time thing, would this be better handled as a
> source annotation rather than properties? We already have a 'delete if
> unreferenced' tag for similar reasons. We could add something more
> flexible like '/tag spl, tpl/' and dtc could have command line options
> to keep or delete nodes based on tag names. (Added David G for his
> thoughts on this)

If you like. I imagine that would work.

This would involve recompiling the DT from source multiple times,
which we don't currently do. Of all the DTs that are built for a
particular U-Boot board, the 'default' one is selected and used for
SPL.  I cannot think of any problem it would cause, though.

>
> Yes, there is also a runtime need for a portion of this, but I think
> it's 2 different problems AIUI.

It's a little tricky. At present we can pass the full DT to xPL and it
can do the right thing, in principle. We use this sort of thing with
sandbox, which is the test/CI environment running natively on Linux.
If we split this up it would have impacts on that, but it would need
to be tried.

The removal of the tags in SPL (by fdtgrep) and the ignoring of them
in xPL builds is an optimisation to save space:

https://lxr.missinglinkelectronics.com/uboot+v2022.07/drivers/core/ofnode.c#L977

https://lxr.missinglinkelectronics.com/uboot+v2022.07/scripts/Makefile.lib#L584

We need to be careful not to make this impossible to test / debug.

>
> > - Some U-Boot phases needs to run before the clocks are properly set up,
> >   where the CPU may be running very slowly. Therefore it is important to
> >   bind only those devices which are actually needed in that phase
> > - Unlike Linux or UEFI, U-Boot uses lazy initialisation for its devices,
> >   with 'bind' and 'probe' being separate steps. Even if a device is bound,
> >   it is not actually probed until it is used. This is necessary to keep
> >   the boot time reasonable, e.g. to under a second
>
> Linux could do this now if we wanted. There's a full dependency graph.
> Once you have that, it's just an implementation decision whether you
> probe top down or bottom up. We have this graph because Linux specific
> probing hint properties in DT was rejected. (Not saying u-boot needs
> to go implement a dependency graph, but rather u-boot is not unique
> here and there's more than one way to solve it.)

OK good.

As Tom notes, I can remove any references to other projects from the
commit message. They are not relevant to operation, but I wanted to
save a dozen back-and-forward emails by trying to cover the obvious
points up front, so I seem to have included things that are
irrelevant.

BTW, does Linux separate bind() from probe()? I had not seen that up to now.

I'm also interested in the rejected hint-properties patch, if you can
point to it.

>
> > The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> > pre-relocation, then post-relocation). ALl but the last two are optional.
> >
> > For the above reasons, U-Boot only includes the full device tree in the
> > final 'U-Boot proper' build. Even then, before relocation U-Boot only
> > processes nodes which are marked as being needed.
> >
> > For this to work, U-Boot's driver model[1] provides a way to mark device
> > tree nodes as applicable for a particular phase. This works by adding a
> > tag to the node, e.g.:
> >
> >    cru: clock-controller@ff760000 {
> >       u-boot,dm-all;
> >       compatible = "rockchip,rk3399-cru";
> >       reg = <0x0 0xff760000 0x0 0x1000>;
> >       rockchip,grf = <&grf>;
> >       #clock-cells = <1>;
> >       #reset-cells = <1>;
> >       ...
> >    };
> >
> > Here the "u-boot,dm-all" tag indicates that the node must be present in
> > all phases, since the clock driver is required
> >
> > There has been discussion over the years about whether this could be done
> > in a property instead, e.g.
> >
> >    options {
> >       u-boot,dm-all = <&cru> <&gpio_a> ...;
> >       ...
> >    };
> >
> > Some problems with this:
> >
> > - we need to be able to merge several such tags from different .dtsi files
> >   since many boards have their own specific requirements
>
> A source annotation to append/prepend properties could solve that.

Yes, it has been discussed. I have oscillated back and forth on this
one, but in recent years have settled pretty firmly on what we have.
At least once I suggested that someone implement it to try it out, but
he/she didn't bite. It seems a bit hard to justify to me so I've never
tried implementing it myself. See below though:

>
> > - it is hard to find and cross-reference the affected nodes
> > - it is more error-prone
> > - it requires significant tool rework in U-Boot, including fdtgrep and
> >   the build system
> > - is harder (slower, more code) to process since it involves scanning
> >   another node/property to find out what to do with a particular node
> > - we don't want to add phandle arguments to the above since we are
> >   referring, e.g., to the clock device as a whole, not a paricular clock
> > - the of-platdata feature[2], which converts device tree to C for even
> >   more constrained environments, would need to become aware of the
> >   /options node
> >
> > There is also the question about whether this needs to be U-Boot-specific,
> > or whether the tags could be generic. From what I can tell, U-Boot is the
> > only bootloader which seriously attempts to use a runtime device tree in
> > all cases. We could perhaps adopt U-Boot's naming for the phases and drop
> > the "u-boot," prefix, but that might cause confusion.
>
> I am concerned about the u-boot adding your own properties, and then
> the next consumer wanting to add something similar. Even dropping
> 'u-boot,' the properties seem pretty u-boot specific. Of them, SPL
> seems like the least specific as that's a pre-DRAM state. VPL/TPL
> don't appear to be widely used. Pre/post relocation seems pretty
> implementation specific unless you can define what state that implies.
> So maybe a mixture with and without 'u-boot'?

We could define these generically if you like. I just thought it would
be easier to get U-Boot tags since I believe projects should be able
to add their own tags now without too much challenge from Linux.

Here is how I would define them:

TPL - SoC setup (least possible init needed to run VPL)
VPL - verification / selection of firmware
SPL - set up RAM
U-Boot pre-reloc - prepare for relocation
U-Boot - main program

If you select which ones you think are generic, then we could do that.
I would still want U-Boot aliases though, since it is confusing if we
have to flip between different naming conventions in different parts
of the device tree.

>
> > It should also be noted that the approach provided here has stood the test
> > of time, used in U-Boot for 8 years so far.
> >
> > So add the schema for this. This will allow a major class of schema
> > exceptions to be dropped from the U-Boot source tree.
>
> This schema won't actually work for validation. The issue is for any
> given node, we need a schema that includes all possible properties for
> that node. That's necessary to detect any unknown properties.
> Typically, we have the device's schema with references to any common
> 'class' schemas. There are some exceptions of properties allowed on
> any node (or allowed when some other property is present). That is all
> handled as a schema fixup within the tool currently, but I've been
> thinking of changing that to an 'all nodes' schema file. Minimally,
> we'd just need to add '^u-boot,dm-' to the list. Look for 'status' or
> 'pinctrl-' in the dtschema.

OK I see. I  saw pinctrl and wasn't sure if there was magic there.

>
> > This being sent to the mailing list since it might attract more review.
> > A PR will be sent when this has had some review. That is why the file
> > path is set up for https://github.com/devicetree-org/dt-schema rather
> > than the Linux kernel.
> >
> > [1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.html
> > [2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> > Changes in v3:
> > - Fix an incorrect schema path in $id
> >
> > Changes in v2:
> > - Expand docs to include a description of each tag
> > - Fix some typos and unclear wording
> >
> >  dtschema/schemas/u-boot.yaml | 66 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >  create mode 100644 dtschema/schemas/u-boot.yaml
> >
> > diff --git a/dtschema/schemas/u-boot.yaml b/dtschema/schemas/u-boot.yaml
> > new file mode 100644
> > index 0000000..b888b3e
> > --- /dev/null
> > +++ b/dtschema/schemas/u-boot.yaml
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: BSD-2-Clause
> > +# Copyright 2022 Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/u-boot.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Bindings required by U-Boot driver model
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +patternProperties:
> > +  "^u-boot,dm-(tpl|vpl|spl|all|pre-reloc)$":
> > +    type: boolean
> > +    description: |
> > +      The device tree is often quite large (e.g. 40KB) and cannot fit into xPL
> > +      phases like SPL, TPL. Even with U-Boot proper, we normally only want to
> > +      init a small subset of devices before relocation.
> > +
> > +      U-Boot supports adding tags to device tree nodes to allow them to be
> > +      marked according to the U-Boot phases where they should be included.
> > +
> > +      Without any tags, nodes are included only in U-Boot proper after
> > +      relocation. Any untagged nodes are dropped from xPL and are ignored before
> > +      relocation in U-Boot proper.
> > +
> > +      The xPL builds use fdtgrep drop any nodes which are not needed for that
> > +      build. For example, TPL will drop any nodes which are not marked with
> > +      u-boot,dm-tpl or u-boot,dm-all tags.
> > +
> > +      The available tags are as follows:
> > +
> > +        u-boot,dm-all:
> > +          Include this node in all phases (see enum u_boot_phase)
> > +
> > +        u-boot,dm-pre-reloc:
> > +          Enable this node before relocation in U-Boot proper
> > +
> > +        u-boot,dm-tpl:
> > +          Enable this node in the Tertiary Program Loader (TPL)
> > +
> > +        u-boot,dm-vpl:
> > +          Enable this node in the Verifying Program Loader (VPL)
> > +
> > +        u-boot,dm-spl:
> > +          Enable this node in the Secondary Program Loader (SPL)
> > +
> > +      Note that xPL builds also drop the tags, since they have served their
> > +      purpose by that point. So when looking at xPL device tree files you will
> > +      not see these tags. This means, for example, that ofnode_pre_reloc()
> > +      always returns true in xPL builds. This is done to save space.
> > +
> > +      Multiple tags can be used in the same node.
> > +
> > +      One complication is that tags apply only to the node they are added to,
> > +      not to any parents. This means that you often need to add the same tag to
> > +      parent nodes so that any properties needed by the parent driver are
> > +      included. Without that, the parent node may have no properties, or may not
> > +      be bound before relocation (meaning that its child will not be bound
> > +      either).
>
> Why is this? That seems at best redundant and at worst pretty broken.
> For example, If you dropped 'ranges' and the associated address
> properties, then decoding 'reg' is broken. It would only kind of work
> if you just assume 1:1 address translation. The resulting dtb would
> also not pass validation.

It is mostly due to the complexity of dealing with it. At present
fdtgrep happily works 'forwards' and knows that it must include parent
nodes if a child is present, but it does not automatically include the
properties of that parent node.

I suspect it could be updated to handle this without too much grief.
But as you know, even the current fdtgrep was too complex for David to
consider :-)

I'll await your thoughts on some of the above and aim to send v4 in a week

Regards,
Simon
