Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDB416247C1
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 17:59:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232760AbiKJQ7l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 11:59:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232768AbiKJQ7d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 11:59:33 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AF7BB7DA
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 08:59:31 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id m22so6495371eji.10
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 08:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=njwGnIi92oRLCOK45t81+7hHNaB8MkCxWiGj20z4PII=;
        b=iaD1bN+af8Sh99pC50xuItQrWoKo9LFdJRj947kt38bOqwyjfjxffLoyn8u9yt57mK
         bkbl4LREnKdVXDPo6QAtgvlOTftelTpsbk1tAbOHVqgotoRwgHMxNjB56ABu47xXsuHr
         EX1nRvAd4Vi7GNKwcAbL+hss4bQyqO3CvaKJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njwGnIi92oRLCOK45t81+7hHNaB8MkCxWiGj20z4PII=;
        b=Mv46bE0gm68T1qu6wuGz1WdQbpU/j19NWQUR815cf6OZA2WopVlyGzo37Ayj/KCtdW
         h5nZcYrJbjhrWEAcltAekqSiAIFVTNYM0xQ07A8ABwzwZ2OswZStNEw2g9VA0VxIqxCp
         jtaXRnTWH5W3DEdtcW6CcvN2dUBBM97H7mpLvKXb3zgdLRirycyo85fmaE76ViIkdkIQ
         5PJbEEFaam6dvHGejKuLloRwrMefQxvvRRTMQiW7axwglaB8HhBO9Exvqj/ieHxi/jsT
         aibGmSJRpUmHHa3xMGJL8CCfJV3FrDd2EBSgq72ZBptR3dUDuel3wXaT4OmhOqu606jO
         ZOAw==
X-Gm-Message-State: ANoB5pmsX5B3m2fpD1b6ChzFNZEWKXWlxJMQEZCcTWTM0YJPtpvJK006
        0IhoI2GzmlbNQ8ydUFHwp98s1Rarwl1o15bKpHB8lTq42faUbad2
X-Google-Smtp-Source: AA0mqf4jsZamOY9AJjAQawm++xliClahr87/KuvhwtEHiWpxvh/bv8V+MYPDrxs+uEEAL4dWlPeqGe+zBGFFsWobrv4=
X-Received: by 2002:a17:906:50d:b0:7ae:70f9:114 with SMTP id
 j13-20020a170906050d00b007ae70f90114mr2472054eja.44.1668099569201; Thu, 10
 Nov 2022 08:59:29 -0800 (PST)
MIME-Version: 1.0
References: <20221102031312.216353-1-sjg@chromium.org> <CAL_JsqJHgxkmswiA_WgYmcGcTbqOgnqNL0TQzaHHpupwKaS6UA@mail.gmail.com>
In-Reply-To: <CAL_JsqJHgxkmswiA_WgYmcGcTbqOgnqNL0TQzaHHpupwKaS6UA@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Thu, 10 Nov 2022 09:59:17 -0700
Message-ID: <CAPnjgZ2MpvgbO_xAA6u1SG=9RPy30p8VSUhgvjnx8KJRU1vAGQ@mail.gmail.com>
Subject: Re: [PATCH v4] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>
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

On Tue, 8 Nov 2022 at 10:19, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Nov 1, 2022 at 10:13 PM Simon Glass <sjg@chromium.org> wrote:
> >
> > U-Boot has some particular challenges with device tree and devices:
> >
> > - U-Boot has multiple build phases, such as a Secondary Program Loader
> >   (SPL) phase which typically runs in a pre-SDRAM environment where code
> >   and data space are limited. In particular, there may not be enough
> >   space for the full device tree blob. U-Boot uses various automated
> >   techniques to reduce the size from perhaps 40KB to 3KB. It is not
> >   always possible to handle these tags entirely at build time, since
> >   U-Boot proper must have the full device tree, even though we do not
> >   want it to process all nodes until after relocation.
> > - Some U-Boot phases needs to run before the clocks are properly set up,
> >   where the CPU may be running very slowly. Therefore it is important to
> >   bind only those devices which are actually needed in that phase
> > - U-Boot uses lazy initialisation for its devices, with 'bind' and
> >   'probe' being separate steps. Even if a device is bound, it is not
> >   actually probed until it is used. This is necessary to keep the boot
> >   time reasonable, e.g. to under a second
> >
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
> >       phase,all;
> >       compatible = "rockchip,rk3399-cru";
> >       reg = <0x0 0xff760000 0x0 0x1000>;
> >       rockchip,grf = <&grf>;
> >       #clock-cells = <1>;
> >       #reset-cells = <1>;
> >       ...
> >    };
> >
> > Here the "phase,all" tag indicates that the node must be present in all
> > phases, since the clock driver is required.
> >
> > There has been discussion over the years about whether this could be done
> > in a property instead, e.g.
> >
> >    options {
> >       phase,all = <&cru> <&gpio_a> ...;
> >       ...
> >    };
> >
> > Some problems with this:
> >
> > - we need to be able to merge several such tags from different .dtsi files
> >   since many boards have their own specific requirements
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
> > all cases. For this version, an attempt is made to name the phases in a
> > generic manner.
> >
> > It should also be noted that the approach provided here has stood the test
> > of time, used in U-Boot for 8 years so far.
> >
> > So add the schema for this. This will allow a major class of schema
> > exceptions to be dropped from the U-Boot source tree.
> >
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
> > Changes in v4:
> > - Drop some unnecessary context from the commit message
> > - Explain why parent nodes do not automatically inherit their children's
> >   tags
> > - Rename the tags to use a phase,xxx format, explaining each one
> >
> > Changes in v3:
> > - Fix an incorrect schema path in $id
> >
> > Changes in v2:
> > - Expand docs to include a description of each tag
> > - Fix some typos and unclear wording
> >
> >  dtschema/lib.py             |  5 +++
> >  dtschema/schemas/phase.yaml | 73 +++++++++++++++++++++++++++++++++++++
> >  test/phases.dts             | 26 +++++++++++++
> >  3 files changed, 104 insertions(+)
> >  create mode 100644 dtschema/schemas/phase.yaml
> >  create mode 100644 test/phases.dts
> >
> > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > index 3b6c937..9a2fafa 100644
> > --- a/dtschema/lib.py
> > +++ b/dtschema/lib.py
> > @@ -514,6 +514,11 @@ def fixup_node_props(schema):
> >      schema['properties'].setdefault('status', True)
> >      schema['properties'].setdefault('secure-status', True)
> >      schema['properties'].setdefault('$nodename', True)
> > +    schema['properties'].setdefault('phase,pre-sram', True)
> > +    schema['properties'].setdefault('phase,verify', True)
> > +    schema['properties'].setdefault('phase,pre-ram', True)
> > +    schema['properties'].setdefault('phase,some-ram', True)
> > +    schema['properties'].setdefault('phase,all', True)
>
> These are added to just about every node in every schema. Maybe they
> should be filtered out of the DTB instead. Anyways, that's an
> implementation detail which is not too important to worry about yet.

Is there a better way to do this? I thought this was what you were suggesting.

>
> >      keys = list()
> >      if 'properties' in schema:
> > diff --git a/dtschema/schemas/phase.yaml b/dtschema/schemas/phase.yaml
> > new file mode 100644
> > index 0000000..886dbb0
> > --- /dev/null
> > +++ b/dtschema/schemas/phase.yaml
> > @@ -0,0 +1,73 @@
> > +# SPDX-License-Identifier: BSD-2-Clause
> > +# Copyright 2022 Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phase.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Bindings for phase-specific device nodes
>
> s/Bindings for/Boot/

OK

>
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +patternProperties:
> > +  "^phase,(pre-sram,verify,pre-ram,some-ram,all)$":
>
> Nit: s/,/-/
>
> 'phase' is not a vendor prefix. Commas other than separating the
> vendor prefix is a pattern we're trying to avoid.

OK

>
> > +    type: boolean
> > +    description: |
> > +      Some programs run in memory-constrained environments yet want to make use
> > +      of device tree.
> > +
> > +      The full device tree is often quite large (e.g. 40KB) and cannot fit into
> > +      every phase of the boot process. Even when memory is not a problem, some
> > +      phases may wish to limit which device nodes are present, so as to reduce
> > +      execution time.
> > +
> > +      This binding supports adding tags to device tree nodes to allow them to be
> > +      marked according to the phases where they should be included.
> > +
> > +      Without any tags, nodes are included only in final phase, where all memory
> > +      is available. Any untagged nodes are dropped from previous phases and are
> > +      ignored before the final phase is reached.
> > +
> > +      The build process produces a separate executable for each phase. It can
> > +      use fdtgrep to drop any nodes which are not needed for a particular build.
> > +      For example, the pre-sram build will drop any nodes which are not marked
> > +      with phase,pre-sram or phase,all tags.
> > +
> > +      The available tags are as follows, in order of phase execution:
> > +
> > +        phase,pre-sram:
> > +          Enable this node when SRAM is not available. This phase must set up
> > +          some SRAM or cache-as-RAM so it can execute.
>
> Presumably this is some XIP flash region?

No, for a data/bss region. Will update.

>
> > +
> > +        phase,verify:
> > +          Enable this node in the verification step, which decides which of the
> > +          available images should be run next.
> > +
> > +        phase,pre-ram:
> > +          Enable this node in the phase that sets up SDRAM.
> > +
> > +        phase,some-ram:
> > +          Enable this node in the phase that is run after SDRAM is working but
> > +          before all of it is available. Some RAM is available but it is limited
> > +          (e.g. it may be split into two pieces by the location of the running
> > +          program) because the program code is not yet relocated out of the way.
> > +
> > +        phase,all:
> > +          Include this node in all phases (for U-Boot see enum u_boot_phase)
> > +
> > +      Note that phase builds may drop the tags, since they have served their
> > +      purpose by that point. So when looking at phase-specific device tree files
> > +      you may not see these tags.
> > +
> > +      Multiple tags can be used in the same node.
> > +
> > +      One complication with fdtgrep is that tags apply only to the node they are
> > +      added to, not to any parents. This means that you often need to add the
> > +      same tag to parent nodes so that any properties needed by the parent
> > +      driver are included. Without that, the parent node may have no properties,
> > +      or may not be bound before relocation (meaning that its child will not be
> > +      bound either). This is for implementation reasons and it may be possible
> > +      to address this in the future.
>
> First, I don't think a tool limitation should define the design.
>
> Second, switching this later is a problem. U-boot can only support 1
> behavior as there is no other indication whether parents are
> implicitly or explicitly included. So all possible DT files have to
> change in sync to u-boot changing. That's not manageable. If we are
> changing the property names as we are here, then we can change the
> behavior and move platforms 1 by 1.

I don't fully understand this. If we later decide that all parent
properties should automatically be included based on their children's
phase tags, then any 'duplicate' phase tags in the parents will become
redundant. I don't see a problem with this.

If this were the only objection to upstreaming U-Boot's DT bindings,
we could perhaps discuss some tooling changes.

>
> I browsed through the u-boot dts files looking at where the tags are
> used. There's a definite common pattern of what nodes are kept. It's
> the console (serial or LCD) and flash device(s) primarily. The other
> things look like dependencies of those or various other bits that need
> to be poked. There's always going to be some exceptions that need
> explicit hints, but manually identifying every node to keep seems
> redundant and fragile. We already have a way to identify which device
> is the console, so why not use that information along with
> CONFIG_xPL_SERIAL to determine whether to keep a serial node and which
> one to keep.

Just to clarify:

1. Are you saying that U-Boot should (at run-time) decide whether to
bind a device based on heuristics and likely needs? Apart from the
complexity and code cost, I can imagine the exceptions would make this
difficult. People spend days trying to save space in SPL, or to reduce
boot time.

or

2. Are you saying that tooling should decide what tags to add into the
DT automatically, with a way to override it for particular cases? That
sounds very useful to me, but it doesn't seem to affect the need for
this biding.

Part of the sugglishness (in terms of future development) on fdtgrep
is that it never made it upstream. Now that you have provided a repo
that might encourage more collaboration and development. But we need
to get some bindings in first.

BTW dependencies are fairly complex, like power, syscon, some clocks,
some pinctrl nodes, some GPIOs, etc. We should not make light of them.
It isn't as easy as just bringing everything in, since this adds
space.

>
> > +
> > +additionalProperties: true
> > diff --git a/test/phases.dts b/test/phases.dts
> > new file mode 100644
> > index 0000000..7f59840
> > --- /dev/null
> > +++ b/test/phases.dts
> > @@ -0,0 +1,26 @@
> > +// SPDX-License-Identifier: BSD-2-Clause
> > +// Copyright 2022 Google LLC
> > +
> > +// An attempt to provide a device tree to validate
> > +
> > +// dt-mk-schema -j test/schemas/ > processed-schema.json
>
> What is 'test/schemas/'? From dtschema? Those are only for the dtschema tests.

Yes, but I'm trying to run a test, so I was hoping to use that. What
should I be doing?

>
> > +// dtc -O dtb -o test.dtb test/phases.dts && tools/dt-validate -s processed-schema.json / test.dtb
>
> What's the '/' for? That's going to recursively validate every file under /.

OK that fixes it, thanks.

>
> > +// Traceback (most recent call last):
> > +//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 167, in <module>
> > +//     sg.check_trees(filename, testtree)
> > +//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 122, in check_trees
> > +//     self.check_subtree(dt, subtree, False, "/", "/", filename)
> > +//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 106, in check_subtree
> > +//     self.check_node(tree, subtree, disabled, nodename, fullname, filename)
> > +//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 38, in check_node
> > +//     node['$nodename'] = [ nodename ]
> > +// TypeError: 'str' object does not support item assignment
> > +
> > +/dts-v1/;
> > +
> > +/ {
> > +       some-device {
> > +               compatible = "vendor,soc1-ip";
> > +               phase,pre-sram;
> > +       };
> > +};
> > --
> > 2.38.1.273.g43a17bfeac-goog
> >

Regards,
Simon
