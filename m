Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8F875B858
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 21:55:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbjGTTzw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 15:55:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbjGTTzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 15:55:51 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75DBF2118
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:55:49 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-521dc8ae899so1171204a12.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689882948; x=1690487748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3VAQPEMn7FHAysOx9pV9OvOoZlErbOTtfzyiDQi71No=;
        b=W01YwetJEfel/gyvML5dHq1Gjiex1GGio4NPYFRa5Szdkd6oRirOGGVjVC/tNtb1nz
         niJf5WgJeaknDNlHT5jH2y7cgcMJdIhlYj00MqCLBkZ6P0p9ewMf+wj+nud/xcftJS1f
         Ygwh2CHWV2U3xskjoFPzRuEaqSmRN8Wo8U/XA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689882948; x=1690487748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3VAQPEMn7FHAysOx9pV9OvOoZlErbOTtfzyiDQi71No=;
        b=H15H7ulB82zLQIUUNEieAbaNjPWRuIaAzGOKoWehW1W9/DMV+s5LnLk0YZ+7eAM8HN
         GrQtbgIsSHBFBMzIFRDCpe81grhaHUVw+gVKEC0HG17jOkZATyLd4md/hn7SU8X4JacP
         CzJDd4DTSox+NBhDMvCS4VkUIkY6qys5At8kITB6vT+WJ+2OkqMYZHdiXHldB5+0BYSX
         ZRRq3k/ZRCazlKYbu19rwAM1hUuXkIEoM16TbEXZqgCQTVXm95nKOLg+7rUnBE1+oRMO
         XxmN6/iJkXfUuX4d+0VhsTStJujqs/u8NcKnS+IUFOqDIcaqjOLr4i99j91FDPfmnEgB
         JtYQ==
X-Gm-Message-State: ABy/qLZwuws5cUoE2r8wnhnnPnVbu4znRlBRVQQI7o6Rmcz3bRrrofFE
        YoeThyYEyumAm6NbdQx4Z7rK3bhfcotEJRDzhzU/8g==
X-Google-Smtp-Source: APBJJlF6cWSvjOrQBjHuYC1/hnfEjEa2T3tVdXb9tFwWPNBhNi+XNqql49o0HjwPe4i1keM5CZry7OFGLWZbAnX2mYw=
X-Received: by 2002:a05:6402:517b:b0:51e:5169:6262 with SMTP id
 d27-20020a056402517b00b0051e51696262mr5700624ede.15.1689882947593; Thu, 20
 Jul 2023 12:55:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230711211810.4172447-1-sjg@chromium.org> <20230711211810.4172447-2-sjg@chromium.org>
 <e2a70bbe-5acf-8329-1ca4-b5b3bc72b8a3@gmail.com>
In-Reply-To: <e2a70bbe-5acf-8329-1ca4-b5b3bc72b8a3@gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Thu, 20 Jul 2023 13:55:36 -0600
Message-ID: <CAPnjgZ1DBMX+Th61TFmKtfq8oFtQCvpcivTahVtijRvwdJwf-Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] schemas: Add a schema for binman
To:     Alper Nebi Yasak <alpernebiyasak@gmail.com>
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alper,

On Thu, 20 Jul 2023 at 09:23, Alper Nebi Yasak <alpernebiyasak@gmail.com> wrote:
>
> Hi Simon,
>
> I know I haven't been able to look at binman stuff for a long time, but
> I've been occasionally thinking about it through the course of a year
> and think binman severely needs a design-wise review before things get
> entrenched, even in the most fundamental parts. I do see the
> cross-project collaboration intention here, but still...

Yes, I agree. I was expecting a few more comments but I suppose not
that many people worry too much about open firmware. Many of the
points you've mentioned here have been in my mind as we've moved from
a prototype 6 years ago to what Binman is today, and I know we've
discussed some before on the mailing list. I really appreciated you
collecting your thoughts on this. The whole thing needs a new look and
I hope that the discussion here can help us settle on an industry
standard for this stuff.

So...

>
> There's also the issue of binman having multiple different device-trees:
> its input, the ones in fdtmaps per image, the ones injected to U-Boot
> dtb files per image. I'd say each has different needs, and those
> differences have to be figured out before specified upstream. I can only
> guess this is about the one that'll be in a u-boot.dtb.

Well, there is really only one. The fdtmap is actually the same
schema, except that it mentions only the image that it is embedded in,
i.e. if the fdtmap is for the SPI image, then the fdtmap in SPI flash
only contains the definition for the SPI image, not the MMC image
which is in a different device. The input is the same schema, albeit
that things like 'offset' may be filled in by Binman automatically
when it packs things.

>
> I want to go through binman more thoroughly, but a lot of changes
> happened since I last looked at it and I'm a bit slow at writing things,
> so won't exactly be soon. That being said, here's some ideas off the top
> of my head, for inspiration on both this schema and binman itself.

Do you mean the code? There are definitely some abstractions that are
stretching a bit, but it is mostly holding together for now.

>
> On 2023-07-12 00:18 +03:00, Simon Glass wrote:
> > I am unsure whether to add this with a generic name, such as 'layout',
> > but for now am using /firmware/binman to avoid conflicts with any other
> > firmware-layout schema that others might be working on.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
>
> I've been thinking of compatible = "data,<type>" for entries, so
> proposing 'data' here. A big ask, but it might be the one schema to
> unify them all if we look at things as "description of data" instead of
> "firmware layout".

As I mentioned in the commit message I was a bit unsure about just
coming out with a generic name, but let's do it and see what people
think.

>
> Also consider data layouts in-memory. For example it could be an
> alternative to /chosen linux,initrd-start to specify initramfs location.
> Or things like keys or logs received from previous stages / other parts?
> Weak examples, but maybe might connect better into firmware handoff
> things. (Sorry, I don't know much about those.)

Yes I suspect at the high level those are better handled by firmware
handoff, which is some other work going on. But I would like this to
be a standard for firmware images, so BInman could perhaps plug into
the handoff size of things too,

>
> I'm also thinking about things like JPEG/BMP files for ACPI BGRT-like
> boot splash, unique firmware/configuration/calibration data for drivers,
> but they don't exactly need to be in-memory I guess.

Sure,

>
> >
> >  dtschema/schemas/firmware/binman.yaml       | 51 ++++++++++++++++++
> >  dtschema/schemas/firmware/binman/entry.yaml | 57 +++++++++++++++++++++
> >  2 files changed, 108 insertions(+)
> >  create mode 100644 dtschema/schemas/firmware/binman.yaml
> >  create mode 100644 dtschema/schemas/firmware/binman/entry.yaml
> >
> > diff --git a/dtschema/schemas/firmware/binman.yaml b/dtschema/schemas/firmware/binman.yaml
> > new file mode 100644
> > index 0000000..4b1ecf6
> > --- /dev/null
> > +++ b/dtschema/schemas/firmware/binman.yaml
> > @@ -0,0 +1,51 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2023 Google LLC
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/firmware/binman.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Binman firmware layout
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +description: |
> > +  The binman node provides a layout for firmware, used when packaging firmware
> > +  from multiple projects. For now it just supports a very simple set of
> > +  features, as a starting point for discussion.
> > +
> > +  Documentation for Binman is available at:
> > +
> > +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
> > +
> > +  with the current image-description format at:
> > +
> > +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
> > +
> > +properties:
> > +  $nodename:
> > +    const: binman
>
> I think having a single /firmware/binman node for a single image *and*
> having a "multiple-images" mode under it is quite bad because the
> single-image mode is multiple-images with one image. Multiple images
> should be the only mode of operation

Yes, I think that is pretty clear now. Most boards have ended up with
more than a single image, which I had not envisaged at the start.

>
> Furthermore, each image should be able to function independently of
> others, so I think to help enforce that maybe there shouldn't be any
> formal binman node. Merely instances of images that may happen to be
> under one parent node that may happen to be called /firmware/binman. The
> images can be compatible = "data,image" or something and we could search
> by that.

An image is a section with some extra properties. But yes that seems OK to me.

>
> Or, heh, a single image node that happens to be named /firmware/binman
> because we are embedding it into a u-boot.dtb in that image. But perhaps
> we shouldn't restrain things like that. A bit contrived, but why should
> we be unable to start from an image in SPI and make it load something
> from microSD?

Well, you can do that, although U-Boot currently has no mechanism to
connect the binman definition to the media. We need use cases for this
stuff, IMO, since designing something before it is needed by a
particular board is just a pain.

>
> Going even further, let me suggest putting the image nodes as children
> of the devices whose layout the image describes. Then I imagine we can
> have something like a "data driver" (both for U-Boot and Linux) that
> reads the entry data from the parent data/block device and makes it
> available for other drivers or in sysfs.

Yes, we have that on x86 actually (grep for "fwstore_spi" in U-Boot).
I'm sure people will weigh in on this, but I feel it is a natural
thing to do. Of course, we may have the same image structure which can
appear on SD or eMMC, so perhaps we should have a property in the
device, like data,image-desc = <&binman_image_node> so that the image
desc can be in the /firmware node.

>
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: false
>
> Including the binman version or a version number for the spec might be
> useful later on.

I worry a little about that. Devicetree schemas are supposed to be
backwards-compatible. But you are right in that we may add new
features later and that may involve new properties. As an example, the
'image-pos' property was added to Binman long after the 'offset'
property. Perhaps we need a way for readers to see what level of
support is present in the file?

But for now I am going to leave it out, since I'm not sure what to do
here. If you have a proposal, please let me know.

>
> > +
> > +examples:
> > +  - |
> > +  - |
> > +    firmware {
> > +      binman {
> > +        compatible = "u-boot,binman";
>
> Consider including "image" or "namespace" in the compatible string to
> disambiguate. Not sure of the conventions, "binman,*" could work just as
> well, though I'm partial to "data,*" as I've suggested.

OK I can try 'data,image' and see what people think.

>
> > +
> > +        u-boot {
> > +          size = <0xa0000>;
> > +        };
> > +
> > +        atf-bl31 {
> > +          offset = <0x100000>;
> > +        };
> > +      };
> > +    };
> > diff --git a/dtschema/schemas/firmware/binman/entry.yaml b/dtschema/schemas/firmware/binman/entry.yaml
> > new file mode 100644
> > index 0000000..16b84c5
> > --- /dev/null
> > +++ b/dtschema/schemas/firmware/binman/entry.yaml
> > @@ -0,0 +1,57 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2023 Google LLC
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/firmware/binman/entry.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Binman entry
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +description: |
> > +  The entry node specifies a single entry in the firmware.
> > +
> > +  Entries have a specific type, such as "u-boot" or "atf-bl31". If the type
> > +  is missing, the name is used as the type.
>
> I really dislike the name being a fallback for the type, it's guiding
> people to using types as the names (or even worse, to assuming names can
> only be same as the type), leading to ugly combinations of "blob-ext",
> "fdt-N", "fit", "section" and so on. Node names should be descriptive
> even when you don't have the device-tree source in front of you, think
> of "binman extract" and others. Ones like "u-boot" and "atf-bl31" are
> fine only because they are very specific entry types.

Well this doesn't have to be in the schema itself, since Binman can
state that it handles fixing up these things. I really like the
name-as-type thing since it simplifies so much of the documentation,
test dts files and makes it much easier for people to understand
initially.

>
> > +
> > +  Note: This definition is intended to be hierarchical, so that entries can
> > +  appear in other entries. Schema for that is TBD.
>
> It might be better to redesign things bottom-up -- first raw data, then
> a few data types, then sections and images that hold these. Oh, and I
> have a feeling section/image can be the same thing if we think hard
> enough (e.g. explicit node labels/references for fdtmap).

Yes section and image are essentially the same, as you can see in the
code. But we do need top-level nodes which represent images.

>
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^[-a-z]+(-[0-9]+)?$"
> > +
> > +  type:
> > +    $ref: /schemas/types.yaml#/definitions/string
>
> Consider compatible = "data,bytes" instead, making it required. Or maybe
> "data,blob" but that's not what's there on the binman side. (e.g. rename
> "blob" to "file", "blob-ext" could be "file" combined with a
> globally-available "optional" property.)

I don't like 'file' at all, sorry. Where it comes from is not the
point here; we are worried about what it is. Since we have no
information on its format, it is a blob, IMO. Binman has an "optional"
property which means that the entry itself is optional.

For now I just have a generic entry, with no definition of the
available types. For a first series I very much want to avoid getting
into this level of detail. It is easy to add stuff later.

>
> > +
> > +  offset:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: |
> > +      Provides the offset of this entry from the start of its parent section.
> > +
> > +  size:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: |
> > +      Provides the size of this entry in bytes.
>
> Can't we use "reg" for these, and even entry@<addr> in the definitions?
> I know the latter conflicts with the fdt@SEQ stuff, but that should be a
> binman-input-only thing, and I dislike that anyway. Maybe could work if
> we put image nodes under block devices...

That was an early decision, based on the fact that generally you don't
specify the offset or size, so they are optional; reg does not work
well with an optional address or size. Also, we have image-pos as the
absolute position (which again I have elected to worry about later
once we have an agreed initial schema). Does reg mean an absolute
address or a relative one ('ranges', anyone...nooooo!!!)? To me it is
stretching the meaning.

That said, I can see some benefit in writing a 'reg' property when all
the entries are packed:

reg = <offset size>

i.e. the offset is relative to its containing section. That would
simplify some of the 'replace' logic, since offset and size can be
left in there.

>
> Or maybe even better, I think we should make it like FIT: allow a "data"
> property that has it inside the dtb, or a pair of "data-offset/position"
> and "data-size" properties if it's outside.

Eh? The point of the entry is to declare the position of actual data.
If the data is elsewhere, then the entry will be too.

> Inlining data inside the dtb
> could help us do nice things in binman, like hashes/signatures as entry
> types instead of special-casing them.

We already do that though, right? See testHash() for example. This is
a powerful feature of a firmware-layout description / Binman, IMO,
since all the metadata you need is right there.

>
> In fact it could be possible to turn binman images into a FIT 2.0 if we
> do some more work on top of that, instead of nesting a FIT inside a
> binman image.

Well binman needs to produce things which are not FITs. Bear in mind
that the output can be a binary file in any format. It doesn't
necessarily have to have any metadata in it at all, certainly not a
FIT header.

>
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    firmware {
> > +      binman {
> > +        compatible = "u-boot,binman";
> > +
> > +        u-boot {
> > +          size = <0xa0000>;
> > +        };
> > +
> > +        second-area {
> > +          type = "atf-bl31";
> > +          offset = <0x100000>;
> > +        };
> > +      };
> > +    };

Thanks again for your encouraging comments. I'll do a v2 with the above changes.

Regards,
Simon
