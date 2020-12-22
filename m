Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B4022E0E37
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 19:29:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725967AbgLVS3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 13:29:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725946AbgLVS3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Dec 2020 13:29:36 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4779EC0613D6
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 10:28:56 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id ga15so19530584ejb.4
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 10:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hESG9UKwjjD/S2wid9cDDihOcqi7xLn6ltJQh3ZQhIw=;
        b=Ao+v0fik8uwEpkyYsZtDsrfl2EVTaUXpPZ/9xymU/DDU+nYFvZPgJYUVmqVsSs77zf
         kKIDktED9PDTQ6wB4+SZ/Vg3YXM5xhqRVdXoeSCbP9XJHH5c6RawHiNO+xvvWq8c9Kgw
         45zssytIlK2bL3CuBrbRcYiPdTwn9MeAcnjBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hESG9UKwjjD/S2wid9cDDihOcqi7xLn6ltJQh3ZQhIw=;
        b=Kr6WWg2kBGjcoLu/Z0AiwLhHpRAzn91tiAOL7cpQb2M0cXRd68HdsduIur9eX8MvTn
         Z6vXzhp9ez044CFwEJvFtbww4wzyQpzEk3DJDpcVwF/ICjnt+WWqPamXpXAEKgnLgRHh
         FX3BffLAx1OBMGlhxsijS2hkCOjqfJzd7PHlqx48QSqNZEBJt+unmEjzb5p4uXVxg/yf
         w/hZvlZhGPeIixtm90N7Mt/Gel/vopirartwRWltEmG+EHjKpX26K8fR1zNUxoDg2oxh
         nen9Nx69W21/lKnDOwaiZ9GtGWh4kh07PW5y+jdIwwi5kZR/CNpTTRL3P0wSf4+my2X3
         3ytw==
X-Gm-Message-State: AOAM533512bLxZlstRq9aPBW5j8eYoO/j4SCf5BS9YQr8yJjQo05SD1v
        qgmtMdYnNVLVZQlrS3OpLmDh74cGRS41pH3ziOd3Kw==
X-Google-Smtp-Source: ABdhPJxK0nngyZUDb6zuuobNnh5aY2C7rqJLlI1jiiPrwB/zHnYF8tEFCdHwD3Tr11aNX1qpb07DCzJNCQN4t7mqvNE=
X-Received: by 2002:a17:906:2707:: with SMTP id z7mr21173163ejc.418.1608661734951;
 Tue, 22 Dec 2020 10:28:54 -0800 (PST)
MIME-Version: 1.0
References: <20201221113151.94515-1-jagan@amarulasolutions.com>
 <20201221113151.94515-3-jagan@amarulasolutions.com> <20201221134625.GB31176@kozik-lap>
 <CAMty3ZAi0B=fSRfpQG4bgE+Jt6GVhzRb_FZjCL3VQXp9vn-FEw@mail.gmail.com>
 <20201221140501.GE31176@kozik-lap> <CAMty3ZA4K8GvTfmrV1Mz6zp1w+iF0FvE04CODZUsHvg+J+a1nw@mail.gmail.com>
 <20201221144206.GA36114@kozik-lap> <CAMty3ZD8JAp3UGuOS2zTsOZ5QcFE6_Ba_UjtmhKpD3R3qra5jg@mail.gmail.com>
In-Reply-To: <CAMty3ZD8JAp3UGuOS2zTsOZ5QcFE6_Ba_UjtmhKpD3R3qra5jg@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 22 Dec 2020 23:58:43 +0530
Message-ID: <CAMty3ZCzB87_NGTRRvugcurSHWikcaCvKPuBBJJ1ocmqDQ8wzw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: arm: fsl: Add Engicam i.Core MX8M
 Mini C.TOUCH 2.0
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 21, 2020 at 8:17 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Mon, Dec 21, 2020 at 8:12 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Mon, Dec 21, 2020 at 08:09:47PM +0530, Jagan Teki wrote:
> > > On Mon, Dec 21, 2020 at 7:35 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > On Mon, Dec 21, 2020 at 07:29:22PM +0530, Jagan Teki wrote:
> > > > > On Mon, Dec 21, 2020 at 7:16 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > > > >
> > > > > > On Mon, Dec 21, 2020 at 05:01:47PM +0530, Jagan Teki wrote:
> > > > > > > i.Core MX8M Mini is an EDIMM SoM based on NXP i.MX8M Mini from Engicam.
> > > > > > >
> > > > > > > C.TOUCH 2.0 is a general purpose carrier board with capacitive
> > > > > > > touch interface support.
> > > > > > >
> > > > > > > i.Core MX8M Mini needs to mount on top of this Carrier board for
> > > > > > > creating complete i.Core MX8M Mini C.TOUCH 2.0 board.
> > > > > > >
> > > > > > > Add bindings for it.
> > > > > > >
> > > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > > ---
> > > > > > > Changes for v2:
> > > > > > > - updated commit message
> > > > > > >
> > > > > > >  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
> > > > > > >  1 file changed, 2 insertions(+)
> > > > > > >
> > > > > > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > > > > index 67980dcef66d..e653e0a43016 100644
> > > > > > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > > > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > > > > @@ -667,6 +667,8 @@ properties:
> > > > > > >          items:
> > > > > > >            - enum:
> > > > > > >                - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
> > > > > > > +              - engicam,icore-mx8mm               # i.MX8MM Engicam i.Core MX8M Mini SOM
> > > > > > > +              - engicam,icore-mx8mm-ctouch2       # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
> > > > > >
> > > > > > Please test your DTS against new schema with dtbs_check. This won't
> > > > > > match.
> > > > >
> > > > > Sorry, not sure I understand clearly here.
> > > > >
> > > > > This the dts file ie used matched compatible.
> > > > > compatible = "engicam,icore-mx8mm-ctouch2", "engicam,icore-mx8mm",
> > > > >                      "fsl,imx8mm";
> > > > >
> > > > > I did build the dtbs_check without showing any issues like,
> > > > >
> > > > > $ make ARCH=arm64 dtbs_check
> > > > > ...
> > > > >
> > > > >     From schema: /w/dt-schema/dt-schema/dtschema/schemas/property-units.yaml
> > > > >   DTC     arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dtb
> > > > >   DTC     arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2-of10.dtb
> > > > >   DTC     arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dtb
> > > > > ..
> > > > >
> > > > > Can you let me know what I missed here?
> > > >
> > > > You pasted here output of validating with property-units.yaml (or
> > > > something else), not the schema which you changed. If you want to limit
> > > > the tests, use DT_SCHEMA_FILES.
> > > >
> > > > I mentioned about exactly the same problem in yout previous v1
> > > > at patch #5. No changes here stil.
> > >
> > > Yes, I usually did that check before posting. Please check the build
> > > log below and fsl.yaml binding is fine to build.
> > >
> > > # make dt_binding_check DT_SCHEMA_FILES=arm/fsl.yaml
> >
> > 1. Wrong path to schema file,
> > 2. Bindings pass, they are not a problem. You were running dtbs_check,
> > right?
>
> But kbuild is building the fsl.yaml I did verify with by adding some
> wrong character in the file, it is showing build issues.
>
> Please check the clean log.
>
> # make mrproper
>   CLEAN   Documentation/devicetree/bindings
>   CLEAN   scripts/basic
>   CLEAN   scripts/dtc
> # make dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/fsl.yaml
>   HOSTCC  scripts/basic/fixdep
>   HOSTCC  scripts/dtc/dtc.o
>   HOSTCC  scripts/dtc/flattree.o
>   HOSTCC  scripts/dtc/fstree.o
>   HOSTCC  scripts/dtc/data.o
>   HOSTCC  scripts/dtc/livetree.o
>   HOSTCC  scripts/dtc/treesource.o
>   HOSTCC  scripts/dtc/srcpos.o
>   HOSTCC  scripts/dtc/checks.o
>   HOSTCC  scripts/dtc/util.o
>   LEX     scripts/dtc/dtc-lexer.lex.c
>   YACC    scripts/dtc/dtc-parser.tab.[ch]
>   HOSTCC  scripts/dtc/dtc-lexer.lex.o
>   HOSTCC  scripts/dtc/dtc-parser.tab.o
>   HOSTCC  scripts/dtc/yamltree.o
>   HOSTLD  scripts/dtc/dtc
>   CHKDT   Documentation/devicetree/bindings/processed-schema-examples.json
> /w/linux/Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml:
> 'additionalProperties' is a required property
> /w/linux/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml:
> 'additionalProperties' is a required property
> /w/linux/Documentation/devicetree/bindings/media/coda.yaml:
> 'additionalProperties' is a required property
> /w/linux/Documentation/devicetree/bindings/serial/litex,liteuart.yaml:
> 'additionalProperties' is a required property
>   SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.json
> /w/linux/Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml:
> ignoring, error in schema:
> warning: no schema found in file:
> ./Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml
> /w/linux/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml:
> ignoring, error in schema:
> warning: no schema found in file:
> ./Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
> /w/linux/Documentation/devicetree/bindings/media/coda.yaml: ignoring,
> error in schema:
> warning: no schema found in file:
> ./Documentation/devicetree/bindings/media/coda.yaml
> /w/linux/Documentation/devicetree/bindings/serial/litex,liteuart.yaml:
> ignoring, error in schema:
> warning: no schema found in file:
> ./Documentation/devicetree/bindings/serial/litex,liteuart.yaml
>   DTEX    Documentation/devicetree/bindings/arm/fsl.example.dts
>   DTC     Documentation/devicetree/bindings/arm/fsl.example.dt.yaml
>   CHECK   Documentation/devicetree/bindings/arm/fsl.example.dt.yaml

Any further comments? I'm planning to send v3.

Jagan.
