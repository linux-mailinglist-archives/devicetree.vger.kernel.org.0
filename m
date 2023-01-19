Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69F52673E6F
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 17:18:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230347AbjASQSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 11:18:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjASQSR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 11:18:17 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD62E4B767
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 08:18:08 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id hw16so6955081ejc.10
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 08:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=75CApwyoYZwB9vzOQ7DfHNnPCwckr8Pwh0B/ncYxlkA=;
        b=UZa5xD2TGmBoMEgkVNNtelfVbGvESaW3KLlHnokagVgG6+O4POq4nXvv1uJtYggGC5
         F4vOZD1rzCIFNNdzO5A+oeh5a587aN3p8rxxajSbfPVEf3P2hO4LhnXlL6vn0/D7aqgk
         EIpg8DS1+74AwNCXldSURzBaCtwGaf5emaCvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=75CApwyoYZwB9vzOQ7DfHNnPCwckr8Pwh0B/ncYxlkA=;
        b=M9USV3fb7Jk4lp6yaVGaYxvUmJMtowv0MZipBMe0Sq8jNkHmjSeAsTHc+T0qmylZP5
         cd+9H0L8MEJOgi9n8p0f36rzDlhoc66l2Fj4E8GZ0/ahWrjoz453DpH6NdoLlnspmovM
         bR5Vz+eyqgFFo8jy/keughKd0I9LmAGoa1oUp9dQUIREHmF/TzlPnyFCmVQkQ/PAYBtC
         eCxcWp3pLsMK11h37UR2QbUSn4PBE0GyK6v1pd5PtfYJPEqyGmifK88MF8H1RApQFooH
         NIonJe0d48X9tUH/K+Fy/Vfw08HQG1IIWuMg96YFMMbIBtTYGVVg3jqP87u6x26MIKuL
         V6Gg==
X-Gm-Message-State: AFqh2koL9/NatWFVpSsLZC3QC+XdAk+LZAmQBWCze1A3l1RY278BxHMH
        n+vlVPvzamTAHMdOMAGJqBoTtfOGaPwMug6pcAeOp4dDlfcp51LP
X-Google-Smtp-Source: AMrXdXuPMdUVXlyniSTjJFlOS8NU9CeoSYFOuGeQ1uMYDjjyOKjtRTaUujRoKPcFy0QsWnQUjtOaawNrm35ccbneIA8=
X-Received: by 2002:a17:906:2b57:b0:85c:86a7:ad7b with SMTP id
 b23-20020a1709062b5700b0085c86a7ad7bmr1596606ejg.745.1674145086854; Thu, 19
 Jan 2023 08:18:06 -0800 (PST)
MIME-Version: 1.0
References: <20230113205518.206306-1-sjg@chromium.org> <20230113205518.206306-2-sjg@chromium.org>
 <CAL_JsqL6rOaFHcYTuP9YXhcWuhn7t0LKwZn0D0grLVMsu+PwLw@mail.gmail.com>
 <CAPnjgZ37fcrnxcT4XOb=irVomRN1NYLni0p7MRgesjm7hwg8hg@mail.gmail.com> <CAL_Jsq+xevOq1ZsgSge2MijXPXojAFq545JT4XuGgyPf7tKX5g@mail.gmail.com>
In-Reply-To: <CAL_Jsq+xevOq1ZsgSge2MijXPXojAFq545JT4XuGgyPf7tKX5g@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Thu, 19 Jan 2023 09:17:54 -0700
Message-ID: <CAPnjgZ3Cztbm_irU-nLPCa73sZYEftT4p8rQ36tnXLS8XdSDVQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org
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

On Thu, 19 Jan 2023 at 08:28, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jan 18, 2023 at 4:05 PM Simon Glass <sjg@chromium.org> wrote:
> >
> > Hi Rob,
> >
> > On Wed, 18 Jan 2023 at 13:34, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Fri, Jan 13, 2023 at 2:58 PM Simon Glass <sjg@chromium.org> wrote:
> > > >
> > > > U-Boot has some particular challenges with device tree and devices:
> > > >
> > > > - U-Boot has multiple build phases, such as a Secondary Program Loader
> > > >   (SPL) phase which typically runs in a pre-SDRAM environment where code
> > > >   and data space are limited. In particular, there may not be enough
> > > >   space for the full device tree blob. U-Boot uses various automated
> > > >   techniques to reduce the size from perhaps 40KB to 3KB. It is not
> > > >   always possible to handle these tags entirely at build time, since
> > > >   U-Boot proper must have the full device tree, even though we do not
> > > >   want it to process all nodes until after relocation.
> > > > - Some U-Boot phases needs to run before the clocks are properly set up,
> > > >   where the CPU may be running very slowly. Therefore it is important to
> > > >   bind only those devices which are actually needed in that phase
> > > > - U-Boot uses lazy initialisation for its devices, with 'bind' and
> > > >   'probe' being separate steps. Even if a device is bound, it is not
> > > >   actually probed until it is used. This is necessary to keep the boot
> > > >   time reasonable, e.g. to under a second
> > > >
> > > > The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> > > > pre-relocation, then post-relocation). ALl but the last two are optional.
> > > >
> > > > For the above reasons, U-Boot only includes the full device tree in the
> > > > final 'U-Boot proper' build. Even then, before relocation U-Boot only
> > > > processes nodes which are marked as being needed.
> > > >
> > > > For this to work, U-Boot's driver model[1] provides a way to mark device
> > > > tree nodes as applicable for a particular phase. This works by adding a
> > > > tag to the node, e.g.:
> > > >
> > > >    cru: clock-controller@ff760000 {
> > > >       bootph-all;
> > > >       compatible = "rockchip,rk3399-cru";
> > > >       reg = <0x0 0xff760000 0x0 0x1000>;
> > > >       rockchip,grf = <&grf>;
> > > >       #clock-cells = <1>;
> > > >       #reset-cells = <1>;
> > > >       ...
> > > >    };
> > > >
> > > > Here the "bootph-all" tag indicates that the node must be present in all
> > > > phases, since the clock driver is required.
> > > >
> > > > There has been discussion over the years about whether this could be done
> > > > in a property instead, e.g.
> > > >
> > > >    options {
> > > >       bootph-all = <&cru> <&gpio_a> ...;
> > > >       ...
> > > >    };
> > > >
> > > > Some problems with this:
> > > >
> > > > - we need to be able to merge several such tags from different .dtsi files
> > > >   since many boards have their own specific requirements
> > > > - it is hard to find and cross-reference the affected nodes
> > > > - it is more error-prone
> > > > - it requires significant tool rework in U-Boot, including fdtgrep and
> > > >   the build system
> > > > - is harder (slower, more code) to process since it involves scanning
> > > >   another node/property to find out what to do with a particular node
> > > > - we don't want to add phandle arguments to the above since we are
> > > >   referring, e.g., to the clock device as a whole, not a paricular clock
> > > > - the of-platdata feature[2], which converts device tree to C for even
> > > >   more constrained environments, would need to become aware of the
> > > >   /options node
> > > >
> > > > There is also the question about whether this needs to be U-Boot-specific,
> > > > or whether the tags could be generic. From what I can tell, U-Boot is the
> > > > only bootloader which seriously attempts to use a runtime device tree in
> > > > all cases. For this version, an attempt is made to name the phases in a
> > > > generic manner.
> > > >
> > > > It should also be noted that the approach provided here has stood the test
> > > > of time, used in U-Boot for 8 years so far.
> > > >
> > > > So add the schema for this. This will allow a major class of schema
> > > > exceptions to be dropped from the U-Boot source tree.
> > > >
> > > > This being sent to the mailing list since it might attract more review.
> > > > A PR will be sent when this has had some review. That is why the file
> > > > path is set up for https://github.com/devicetree-org/dt-schema rather
> > > > than the Linux kernel.
> > > >
> > > > [1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.html
> > > > [2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html
> > > >
> > > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > > ---
> > > >
> > > > Changes in v6:
> > > > - Use 'bootph' instead of 'phase'
> > > > - Use | instead of , in patternProperties
> > > > - Drop mention of 40KB for device-tree size
> > > > - Rework description of handling of parent nodes
> > > > - Use separate properties for each boot phase
> > > > - Update validation example at the top of bootphases.dts
> > > >
> > > > Changes in v5:
> > > > - Fix instructions to run test
> > > > - Update binding title
> > > > - Use 'phase-' instead of 'phase,'
> > > >
> > > > Changes in v4:
> > > > - Drop some unnecessary context from the commit message
> > > > - Explain why parent nodes do not automatically inherit their children's
> > > >   tags
> > > > - Rename the tags to use a phase,xxx format, explaining each one
> > > >
> > > > Changes in v3:
> > > > - Fix an incorrect schema path in $id
> > > >
> > > > Changes in v2:
> > > > - Expand docs to include a description of each tag
> > > > - Fix some typos and unclear wording
> > > >
> > > >  dtschema/lib.py              |  5 +++
> > > >  dtschema/schemas/bootph.yaml | 86 ++++++++++++++++++++++++++++++++++++
> > > >  test/bootphases.dts          | 22 +++++++++
> > > >  3 files changed, 113 insertions(+)
> > > >  create mode 100644 dtschema/schemas/bootph.yaml
> > > >  create mode 100644 test/bootphases.dts
> > > >
> > > > diff --git a/dtschema/lib.py b/dtschema/lib.py
> > > > index c7b6cb9..95a4f10 100644
> > > > --- a/dtschema/lib.py
> > > > +++ b/dtschema/lib.py
> > > > @@ -493,6 +493,11 @@ def fixup_node_props(schema):
> > > >      schema['properties'].setdefault('status', True)
> > > >      schema['properties'].setdefault('secure-status', True)
> > > >      schema['properties'].setdefault('$nodename', True)
> > > > +    schema['properties'].setdefault('bootph-pre-sram', True)
> > > > +    schema['properties'].setdefault('bootph-verify', True)
> > > > +    schema['properties'].setdefault('bootph-pre-ram', True)
> > > > +    schema['properties'].setdefault('bootph-some-ram', True)
> > > > +    schema['properties'].setdefault('bootph-all', True)
> > > >
> > > >      keys = list()
> > > >      if 'properties' in schema:
> > > > diff --git a/dtschema/schemas/bootph.yaml b/dtschema/schemas/bootph.yaml
> > > > new file mode 100644
> > > > index 0000000..275c4da
> > > > --- /dev/null
> > > > +++ b/dtschema/schemas/bootph.yaml
> > > > @@ -0,0 +1,86 @@
> > > > +# SPDX-License-Identifier: BSD-2-Clause
> > > > +# Copyright 2022 Google LLC
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/bootph.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Boot-phase-specific device nodes
> > > > +
> > > > +maintainers:
> > > > +  - Simon Glass <sjg@chromium.org>
> > > > +
> > > > +description: |
> > > > +  Some programs run in memory-constrained environments yet want to make use
> > > > +  of device tree.
> > > > +
> > > > +  The full device tree is often quite large relative to the available memory
> > > > +  of a boot phase, so cannot fit into every phase of the boot process. Even
> > > > +  when memory is not a problem, some phases may wish to limit which device
> > > > +  nodes are present, so as to reduce execution time.
> > > > +
> > > > +  This binding supports adding tags to device tree nodes to allow them to be
> > > > +  marked according to the phases where they should be included.
> > > > +
> > > > +  Without any tags, nodes are included only in the final phase, where all
> > > > +  memory is available. Any untagged nodes are dropped from previous phases
> > > > +  and are ignored before the final phase is reached.
> > > > +
> > > > +  The build process produces a separate executable for each phase. It can
> > > > +  use fdtgrep to drop any nodes which are not needed for a particular build.
> > > > +  For example, the pre-sram build will drop any nodes which are not marked
> > > > +  with bootph-pre-sram or bootph-all tags.
> > > > +
> > > > +  Note that phase builds may drop the tags, since they have served their
> > > > +  purpose by that point. So when looking at phase-specific device tree files
> > > > +  you may not see these tags.
> > > > +
> > > > +  Multiple tags can be used in the same node.
> > > > +
> > > > +  Tags in a child node are implied to be present in all parent nodes as well.
> > > > +  This is important, since some missing properties (such as "ranges", or
> > > > +  "compatible") can cause the child node to be ignored or incorrectly
> > > > +  parsed.
> > > > +
> > > > +  That said, at present, fdtgrep applies tags only to the node they are
> > > > +  added to, not to any parents. This means U-Boot device tree files often
> > > > +  add the same tag to parent nodes, rather than relying on tooling to do
> > > > +  this. This is a limitation of fdtgrep and it will be addressed so that
> > > > +  'Linux DTs' do not need to do this.
> > > > +
> > > > +  The available tags are describes as properties below, in order of phase
> > >
> > > described
> > >
> > > > +  execution.
> > > > +
> > >
> > > I think your issue testing is you need a 'select: true' here. 'select'
> > > is how we test whether a schema should be applied to a node. The
> > > default is to use compatible or $nodename for matching. You have
> > > neither, so select is false.
> >
> > I feel like I have the opposite problem, in that the validation is not
> > actually happening, i.e. it isn't failing with something like
> > bootph-pre-sramxxx or anything else I put into the node:
>
> Right. Since you get the default 'select: false', your schema is never
> used for validation.
>
> >
> > I do see this:
> >
> > dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -m test.dtb
> > test.dtb: /some-device: failed to match any schema with compatible:
> > ['vendor,soc1-ip']
>
> Adding '-s test/schemas' to dt-validate should fix that error (and
> probably add schema errors).

dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -s
test/schemas -m test.dtb
/usr/local/google/home/sjg/cosarm/dt-schema/test/schemas/bad-example.yaml:
ignoring, error in schema: title
/usr/local/google/home/sjg/cosarm/dt-schema/test.dtb: some-device:
'bootph-pre-sram' does not match any of the regexes: 'pinctrl-[0-9]+'
From schema: /usr/local/google/home/sjg/cosarm/dt-schema/test/schemas/good-example.yaml

So now it seems unhappy. Are you sure that I have the schema set up
correctly? Unfortunately I find the whole thing quite hard to get my
head around. I think I understand what it is supposed to be doing, but
I cannot make what it does match my understanding :-)

>
>
> > but even changing it into a 'cpus' node it still lets me any any
> > random property I like.
>
> ATM, I think we allow additional properties in cpus nodes. That's
> something I'm working on...
>
> Most of what's in dt-schema doesn't restrict properties present in a
> node in any way other than global rules on property names and values
> because dt-schema is all common schemas except for the test schemas.

OK I see.

Regards,
Simon
