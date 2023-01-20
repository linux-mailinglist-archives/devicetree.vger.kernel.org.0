Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6619675701
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 15:25:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbjATOYu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 09:24:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231172AbjATOYo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 09:24:44 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 543D779EB4
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 06:24:31 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C6C0461F8D
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 14:23:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C2DAC433EF
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 14:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674224639;
        bh=y2reV7xJ4uitcBFWUUuFkbWiz/rmFBqB4EegyhCRSq8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=WQW9adTzQ87CTXrEINdOrGbcOqrZYZznoQNDQQGrk303db0pbCHF3e4vouQwJvKYN
         q9+ekyB9BZAa64MuZkf/+jAXZPpS0ou5NCONJrXd3hMDH2SbHy8NV2YW7mJuidRz/l
         bc3Vn+WXfdEGRK2NwrirMipYgyNrmTKaJag71tnh5j7yzWTi3bdl+8pAiHgyGCZ2Id
         mWbFvTEjjF0xPjxt1UJw8D3OJafBqjoLz55r4tTIq6dyWqa9vtwNKc28NrP2qQ7yLG
         HCFMSe94V4MxAJeiSgtndODe3bnSK5w1dH+J4crtGWCSWQnvDdkF/QfwHtP9fGEz3v
         cS/+l66wK9sHw==
Received: by mail-vs1-f51.google.com with SMTP id q125so5882571vsb.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 06:23:59 -0800 (PST)
X-Gm-Message-State: AFqh2kpOJqT05M+1hb+csNTcRSEuY0fgH6UGOcGIrVYtX+V5sz6Zcbw8
        2D4BYwYjdQRCjLV3cfCi1uk5fdRYNG/zXC1TdQ==
X-Google-Smtp-Source: AMrXdXsEMdjE4sZR7pZsAcSqYDHUxL2TRAH2m9HUmrfhxAPRUrKVn9vb5iJstv+YP1oj10YLXynxC7Xwdw1t3Tpp0Os=
X-Received: by 2002:a67:ef8a:0:b0:3d0:b955:e0af with SMTP id
 r10-20020a67ef8a000000b003d0b955e0afmr2179963vsp.26.1674224637983; Fri, 20
 Jan 2023 06:23:57 -0800 (PST)
MIME-Version: 1.0
References: <20230113205518.206306-1-sjg@chromium.org> <20230113205518.206306-2-sjg@chromium.org>
 <CAL_JsqL6rOaFHcYTuP9YXhcWuhn7t0LKwZn0D0grLVMsu+PwLw@mail.gmail.com>
 <CAPnjgZ37fcrnxcT4XOb=irVomRN1NYLni0p7MRgesjm7hwg8hg@mail.gmail.com>
 <CAL_Jsq+xevOq1ZsgSge2MijXPXojAFq545JT4XuGgyPf7tKX5g@mail.gmail.com>
 <CAPnjgZ3Cztbm_irU-nLPCa73sZYEftT4p8rQ36tnXLS8XdSDVQ@mail.gmail.com>
 <CAL_Jsq+dLHppmmyNWEncZG3o0HkJ6WOcQPfqyw-yCR4SjMNrfA@mail.gmail.com>
 <CAPnjgZ3c7A+=n0ZS03T3kHAC1cVTUyeGQ2330O=q06SLf7zMVQ@mail.gmail.com> <CAPnjgZ3FG8p8sXcPozo-4SQ0+xCyAiyyYhxRam8cp9F2LaHoGg@mail.gmail.com>
In-Reply-To: <CAPnjgZ3FG8p8sXcPozo-4SQ0+xCyAiyyYhxRam8cp9F2LaHoGg@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 20 Jan 2023 08:23:46 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+qK1gq-OmiEX+=a0CXh7seeo3Kdtc9YZyaOzzBQ_NiPQ@mail.gmail.com>
Message-ID: <CAL_Jsq+qK1gq-OmiEX+=a0CXh7seeo3Kdtc9YZyaOzzBQ_NiPQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 2:33 PM Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> On Thu, 19 Jan 2023 at 10:32, Simon Glass <sjg@chromium.org> wrote:
> >
> > Hi Rob,
> >
> > On Thu, 19 Jan 2023 at 10:21, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Jan 19, 2023 at 10:18 AM Simon Glass <sjg@chromium.org> wrote:
> > > >
> > > > Hi Rob,
> > > >
> > > > On Thu, 19 Jan 2023 at 08:28, Rob Herring <robh@kernel.org> wrote:
> > > > >
> > > > > On Wed, Jan 18, 2023 at 4:05 PM Simon Glass <sjg@chromium.org> wrote:
> > > > > >
> > > > > > Hi Rob,
> > > > > >
> > > > > > On Wed, 18 Jan 2023 at 13:34, Rob Herring <robh@kernel.org> wrote:
> > > > > > >
> > > > > > > On Fri, Jan 13, 2023 at 2:58 PM Simon Glass <sjg@chromium.org> wrote:
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
> > > > > > > >       bootph-all;
> > > > > > > >       compatible = "rockchip,rk3399-cru";
> > > > > > > >       reg = <0x0 0xff760000 0x0 0x1000>;
> > > > > > > >       rockchip,grf = <&grf>;
> > > > > > > >       #clock-cells = <1>;
> > > > > > > >       #reset-cells = <1>;
> > > > > > > >       ...
> > > > > > > >    };
> > > > > > > >
> > > > > > > > Here the "bootph-all" tag indicates that the node must be present in all
> > > > > > > > phases, since the clock driver is required.
> > > > > > > >
> > > > > > > > There has been discussion over the years about whether this could be done
> > > > > > > > in a property instead, e.g.
> > > > > > > >
> > > > > > > >    options {
> > > > > > > >       bootph-all = <&cru> <&gpio_a> ...;
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
> > > > > > > > Changes in v6:
> > > > > > > > - Use 'bootph' instead of 'phase'
> > > > > > > > - Use | instead of , in patternProperties
> > > > > > > > - Drop mention of 40KB for device-tree size
> > > > > > > > - Rework description of handling of parent nodes
> > > > > > > > - Use separate properties for each boot phase
> > > > > > > > - Update validation example at the top of bootphases.dts
> > > > > > > >
> > > > > > > > Changes in v5:
> > > > > > > > - Fix instructions to run test
> > > > > > > > - Update binding title
> > > > > > > > - Use 'phase-' instead of 'phase,'
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
> > > > > > > >  dtschema/lib.py              |  5 +++
> > > > > > > >  dtschema/schemas/bootph.yaml | 86 ++++++++++++++++++++++++++++++++++++
> > > > > > > >  test/bootphases.dts          | 22 +++++++++
> > > > > > > >  3 files changed, 113 insertions(+)
> > > > > > > >  create mode 100644 dtschema/schemas/bootph.yaml
> > > > > > > >  create mode 100644 test/bootphases.dts
> > > > > > > >
> > > > > > > > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > > > > > > > index c7b6cb9..95a4f10 100644
> > > > > > > > --- a/dtschema/lib.py
> > > > > > > > +++ b/dtschema/lib.py
> > > > > > > > @@ -493,6 +493,11 @@ def fixup_node_props(schema):
> > > > > > > >      schema['properties'].setdefault('status', True)
> > > > > > > >      schema['properties'].setdefault('secure-status', True)
> > > > > > > >      schema['properties'].setdefault('$nodename', True)
> > > > > > > > +    schema['properties'].setdefault('bootph-pre-sram', True)
> > > > > > > > +    schema['properties'].setdefault('bootph-verify', True)
> > > > > > > > +    schema['properties'].setdefault('bootph-pre-ram', True)
> > > > > > > > +    schema['properties'].setdefault('bootph-some-ram', True)
> > > > > > > > +    schema['properties'].setdefault('bootph-all', True)
> > > > > > > >
> > > > > > > >      keys = list()
> > > > > > > >      if 'properties' in schema:
> > > > > > > > diff --git a/dtschema/schemas/bootph.yaml b/dtschema/schemas/bootph.yaml
> > > > > > > > new file mode 100644
> > > > > > > > index 0000000..275c4da
> > > > > > > > --- /dev/null
> > > > > > > > +++ b/dtschema/schemas/bootph.yaml
> > > > > > > > @@ -0,0 +1,86 @@
> > > > > > > > +# SPDX-License-Identifier: BSD-2-Clause
> > > > > > > > +# Copyright 2022 Google LLC
> > > > > > > > +%YAML 1.2
> > > > > > > > +---
> > > > > > > > +$id: http://devicetree.org/schemas/bootph.yaml#
> > > > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > > > +
> > > > > > > > +title: Boot-phase-specific device nodes
> > > > > > > > +
> > > > > > > > +maintainers:
> > > > > > > > +  - Simon Glass <sjg@chromium.org>
> > > > > > > > +
> > > > > > > > +description: |
> > > > > > > > +  Some programs run in memory-constrained environments yet want to make use
> > > > > > > > +  of device tree.
> > > > > > > > +
> > > > > > > > +  The full device tree is often quite large relative to the available memory
> > > > > > > > +  of a boot phase, so cannot fit into every phase of the boot process. Even
> > > > > > > > +  when memory is not a problem, some phases may wish to limit which device
> > > > > > > > +  nodes are present, so as to reduce execution time.
> > > > > > > > +
> > > > > > > > +  This binding supports adding tags to device tree nodes to allow them to be
> > > > > > > > +  marked according to the phases where they should be included.
> > > > > > > > +
> > > > > > > > +  Without any tags, nodes are included only in the final phase, where all
> > > > > > > > +  memory is available. Any untagged nodes are dropped from previous phases
> > > > > > > > +  and are ignored before the final phase is reached.
> > > > > > > > +
> > > > > > > > +  The build process produces a separate executable for each phase. It can
> > > > > > > > +  use fdtgrep to drop any nodes which are not needed for a particular build.
> > > > > > > > +  For example, the pre-sram build will drop any nodes which are not marked
> > > > > > > > +  with bootph-pre-sram or bootph-all tags.
> > > > > > > > +
> > > > > > > > +  Note that phase builds may drop the tags, since they have served their
> > > > > > > > +  purpose by that point. So when looking at phase-specific device tree files
> > > > > > > > +  you may not see these tags.
> > > > > > > > +
> > > > > > > > +  Multiple tags can be used in the same node.
> > > > > > > > +
> > > > > > > > +  Tags in a child node are implied to be present in all parent nodes as well.
> > > > > > > > +  This is important, since some missing properties (such as "ranges", or
> > > > > > > > +  "compatible") can cause the child node to be ignored or incorrectly
> > > > > > > > +  parsed.
> > > > > > > > +
> > > > > > > > +  That said, at present, fdtgrep applies tags only to the node they are
> > > > > > > > +  added to, not to any parents. This means U-Boot device tree files often
> > > > > > > > +  add the same tag to parent nodes, rather than relying on tooling to do
> > > > > > > > +  this. This is a limitation of fdtgrep and it will be addressed so that
> > > > > > > > +  'Linux DTs' do not need to do this.
> > > > > > > > +
> > > > > > > > +  The available tags are describes as properties below, in order of phase
> > > > > > >
> > > > > > > described
> > > > > > >
> > > > > > > > +  execution.
> > > > > > > > +
> > > > > > >
> > > > > > > I think your issue testing is you need a 'select: true' here. 'select'
> > > > > > > is how we test whether a schema should be applied to a node. The
> > > > > > > default is to use compatible or $nodename for matching. You have
> > > > > > > neither, so select is false.
> > > > > >
> > > > > > I feel like I have the opposite problem, in that the validation is not
> > > > > > actually happening, i.e. it isn't failing with something like
> > > > > > bootph-pre-sramxxx or anything else I put into the node:
> > > > >
> > > > > Right. Since you get the default 'select: false', your schema is never
> > > > > used for validation.
> > > > >
> > > > > >
> > > > > > I do see this:
> > > > > >
> > > > > > dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -m test.dtb
> > > > > > test.dtb: /some-device: failed to match any schema with compatible:
> > > > > > ['vendor,soc1-ip']
> > > > >
> > > > > Adding '-s test/schemas' to dt-validate should fix that error (and
> > > > > probably add schema errors).
> > > >
> > > > dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -s
> > > > test/schemas -m test.dtb
> > > > /usr/local/google/home/sjg/cosarm/dt-schema/test/schemas/bad-example.yaml:
> > > > ignoring, error in schema: title
> > > > /usr/local/google/home/sjg/cosarm/dt-schema/test.dtb: some-device:
> > > > 'bootph-pre-sram' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > > From schema: /usr/local/google/home/sjg/cosarm/dt-schema/test/schemas/good-example.yaml
> > >
> > > I pulled your 'dm' branch, ran the above command and only got the
> > > first expected error.
> > >
> > > I added 2 expected failing cases and got:
> > > $ dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -s
> > > test/schemas -m test.dtb
> > > /home/rob/proj/dt-schema/test/schemas/bad-example.yaml: ignoring,
> > > error in schema: title
> > > bootph-all: size (4) error for type flag
> > > /home/rob/proj/dt-schema/test.dtb: some-device: 'bootph-pre-sram-foo'
> > > does not match any of the regexes: 'pinctrl-[0-9]+'
> > >         From schema: /home/rob/proj/dt-schema/test/schemas/good-example.yaml
> > > /home/rob/proj/dt-schema/test.dtb: some-device: bootph-all: [[0]] is
> > > not of type 'boolean'
> > >         From schema: /home/rob/proj/dt-schema/dtschema/schemas/bootph.yaml
> > >
> > >
> > > The error message you see seems like the change in dtschema/lib.py is
> > > missing. Are you picking up a non-editable installed dtschema instead
> > > of the local one?
> >
> > Yes that was it...a previous installation so that it ignores the local one.
> >
> > >
> > > If you run 'dt-mk-schema test/schemas' and find 'good-example' in the
> > > output, you should see all the bootph entries added to the schema.
> >
> > Yes, all good, thank you. So we can go ahead?
> >
>
> I just wanted to check, is there anything else needed on the Linux
> side, or can people start submitting .dts files with this binding now?

I should make a release probably which I intended to soon anyways, but
that shouldn't hold up submitting dts files.

Rob
