Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D9F566A4AA
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 21:59:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231132AbjAMU7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 15:59:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbjAMU7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 15:59:07 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D8058E9A9
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:57:22 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id s6so547881edd.13
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GyqENGOIAYn1sMHWMJP0E3Yi+rfv4KBYyhtoSetJ/Bs=;
        b=ZEMFlPsuRfn7Lhz0gJkrePE6XYQbusBA//9FZBFAu59P2QKv/vePj9xblI7NYU5BsB
         JllKp9qfxDwJ451OT9AlXi5GpLm/eqXX+TXQmtabUuhoQ6gm/xY2NN6lYCm5RmdX0wY3
         kMH/15efGRN60pyKWwzAKJ14lQlNiXjI+GAJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GyqENGOIAYn1sMHWMJP0E3Yi+rfv4KBYyhtoSetJ/Bs=;
        b=cjYQFG1LlWAuCUXYml5WNVJO6kSmh37rU64JVsSFiBFkSDy5L4xtswxeD+t+jx26fn
         RPzDUQkv6gJfmtYSansxJI81p0ZG2q7tfjIp7fF11aMEcZVXboIL5H3b8A7pwASI2lBp
         oRixeFZGrFqSgpgUGBdB4WR+gXxf9oIWN4KpG9l+TRidrnVzMyiVd5edpzI87ZaeHTvg
         hbKVuh4w6XFfK0GQC9xFp7ZuFSf2bw9dojiBVGRilJl5Q7hckBJ9Hf7CoCBIvmHTR3vN
         TnA1ZIYVB36uER6dgMhBATsUFIASLAGeuoDPI+iJK7t+BV4hJ3+1GXuv5APOUFdKOb5D
         7weA==
X-Gm-Message-State: AFqh2kokmFYYWMpuuvLm1mhIbuV6u0OAUkS59TBZOkZOrUSvvIiAsbYK
        AVcuHwC6UwV6UZai7VQkXyv0YzQb1hn2+Xok3yeQLg==
X-Google-Smtp-Source: AMrXdXsLX68GF9wtwfO4/PKYHLiVuEvL0RaA+uyYK83A9uV/6mv/2Dzd6MYPOZ+exNqkjV22lkNgv2FTLCVEKo1cxOM=
X-Received: by 2002:a05:6402:194a:b0:48e:c093:c06d with SMTP id
 f10-20020a056402194a00b0048ec093c06dmr3459703edz.166.1673643440831; Fri, 13
 Jan 2023 12:57:20 -0800 (PST)
MIME-Version: 1.0
References: <20221110165924.1059818-1-sjg@chromium.org> <CAL_Jsq+DmAbxhCsxvXqNEe_Rm+QW1P59OdO3sKeQLA+UgR0wuQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+DmAbxhCsxvXqNEe_Rm+QW1P59OdO3sKeQLA+UgR0wuQ@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Fri, 13 Jan 2023 13:57:08 -0700
Message-ID: <CAPnjgZ1wMBPOcC2yWFc+XSeCgiakiSDEF-a7ddi0fob7GCVQPA@mail.gmail.com>
Subject: Re: [PATCH v5] schemas: Add schema for U-Boot driver model 'phase tags'
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

On Wed, 11 Jan 2023 at 14:40, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Nov 10, 2022 at 10:59 AM Simon Glass <sjg@chromium.org> wrote:
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
> >       phase-all;
> >       compatible = "rockchip,rk3399-cru";
> >       reg = <0x0 0xff760000 0x0 0x1000>;
> >       rockchip,grf = <&grf>;
> >       #clock-cells = <1>;
> >       #reset-cells = <1>;
> >       ...
> >    };
> >
> > Here the "phase-all" tag indicates that the node must be present in all
> > phases, since the clock driver is required.
> >
> > There has been discussion over the years about whether this could be done
> > in a property instead, e.g.
> >
> >    options {
> >       phase-all = <&cru> <&gpio_a> ...;
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
>
> I guess if no one else has any input at all on alternatives to a
> boolean per phase, then we should just stick with that as that's the
> easiest.
>
> However, I do still think parent nodes need to be implicitly included
> rather than explicitly. Otherwise, the result can be invalid DTs
> (primarily with 'reg' and addressing)

[..]

> > diff --git a/dtschema/schemas/phase.yaml b/dtschema/schemas/phase.yaml
> > new file mode 100644
> > index 0000000..a6f090d
> > --- /dev/null
> > +++ b/dtschema/schemas/phase.yaml
> > @@ -0,0 +1,74 @@
> > +# SPDX-License-Identifier: BSD-2-Clause
> > +# Copyright 2022 Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phase.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Boot-phase-specific device nodes
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +patternProperties:
> > +  "^phase-(pre-sram,verify,pre-ram,some-ram,all)$":
>
> s/,/|/
>
> To bikeshed the name again, I find 'phase' a bit vague. Perhaps
> 'boot-phase-'? Or 'boot-ph-'?

I really don't like boot-phase-some-ram as we have hyphens in the
'root' property name and in the leaf.

I've gone with bootph as a compromise - I hope you like it.

[..]

Regards,
Simon
