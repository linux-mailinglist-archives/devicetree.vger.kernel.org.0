Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88AA06EA573
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 10:00:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230008AbjDUIAA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 04:00:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231604AbjDUH7z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:59:55 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0328C86BC
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:59:51 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-246fd87a124so1645376a91.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1682063991; x=1684655991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hDgrY/FXqoIAzYJsew65ayPQtJ3UxRL6ZA9eZ8f7Df4=;
        b=KCR2uWFpoJXm6q16XPmAMcDicSFEBpslRR0rhHT26kx90tWLALJJ5hoJqs++/b2Beu
         Z/OYJ4o/+sAuRiFIV4xSgSP0cfWSpbhPv80UCRV5ok8MB6q+iuIwNU9NbbhROc1xklkb
         cMXmuXqF93grjsKl7ELlE/9nsY4RGXtQlpHlyt8SuHO2B+8DdxSGpVshpEzTG73MdBcx
         mpJ9DWfr+Wdiw43WSgk5Dlo9RebVnnbhh3UB1GLqOws3kV6eGLBbGupDt83yS3hrFROT
         y0vpWUgr2/NJMk0Mc90At8cNnTW67XIxwQwRjbKQkkACiUtHOd4kQGeorqlUGOL+9lVx
         lePQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682063991; x=1684655991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hDgrY/FXqoIAzYJsew65ayPQtJ3UxRL6ZA9eZ8f7Df4=;
        b=WBjTf2FLGqVNY+jMdnUIRA+8dUqqZloiHeUfbuOMYjKKnG71G3xLR//1/StJF1jPZL
         Azn7U0lLNoEiHLfs4QalX1DrTqqFYtsAM4zD9lG3urFrpG9vihR2NOl45QofS13bWGRx
         2SWyKO5YmdKpi7oj2/A6jcisz9RVGAwDX/y6NWYEMmztQjB8JiECHWRaFeO8HV2uOuDb
         Pm/5FS13YcEOdrfpQkDyO59m3D9WZyG7x3YF0clxMK1JnyhZ8rgZD4hylrvl5mxHleq5
         j0drKEVa9a03MWuaezwm1r16p76oKpQO4MLvqNRwba/0bZltJOh15YIEomaNuAKkyaNT
         CGxQ==
X-Gm-Message-State: AAQBX9die4fAKdGDfw5p0meYhruK00KaQb+LzJF2RD56/NktGctwVrfw
        kkx0mcvmYN0bn8bwZpJ19oZ79IXd3BVWKPCwXt4Gfv03PXTEW61L
X-Google-Smtp-Source: AKy350b95xFjwcBLuNsT1OwufK2B27AmzevQZcPRj1wTypc61N/cXDC1VBPIO75SFP1mmCuMMBtkh8CeOeaafuIkfFg=
X-Received: by 2002:a17:90a:fb4d:b0:247:2680:4090 with SMTP id
 iq13-20020a17090afb4d00b0024726804090mr4740585pjb.11.1682063991122; Fri, 21
 Apr 2023 00:59:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230420122924.37997-1-iivanov@suse.de> <20230420122924.37997-3-iivanov@suse.de>
 <d3bbd951-67b0-95a3-8f26-a100d6ed12e6@linaro.org>
In-Reply-To: <d3bbd951-67b0-95a3-8f26-a100d6ed12e6@linaro.org>
From:   Tim Gover <tim.gover@raspberrypi.com>
Date:   Fri, 21 Apr 2023 08:59:39 +0100
Message-ID: <CAAvKZ677mibbUB34kysm7=wcnYZkeD2HAkLb=6T=8nAvsJrchQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] ARM: dts: Add nvmem node for BCM2711 bootloader
 public key
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "Ivan T. Ivanov" <iivanov@suse.de>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Apr 2023 at 08:55, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/04/2023 14:29, Ivan T. Ivanov wrote:
> > From: Tim Gover <tim.gover@raspberrypi.com>
> >
> > Make a copy of the bootloader secure-boot public key available to the OS
> > via an nvmem node. The placement information is populated by the
> > Raspberry Pi firmware[1] if a public key is present in the BCM2711
> > bootloader EEPROM.
> >
> > [1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes
> >
> > Signed-off-by: Tim Gover <tim.gover@raspberrypi.com>
> > [iivanov] Added link to documentation.
> > Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> > ---
> >  arch/arm/boot/dts/bcm2711-rpi.dtsi | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > index 98817a6675b9..e30fbe84f9c3 100644
> > --- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > @@ -15,6 +15,7 @@ aliases {
> >               ethernet0 = &genet;
> >               pcie0 = &pcie0;
> >               blconfig = &blconfig;
> > +             blpubkey = &blpubkey;
> >       };
> >  };
> >
> > @@ -67,6 +68,19 @@ blconfig: nvram@0 {
> >               no-map;
> >               status = "disabled";
> >       };
> > +
> > +     /*
> > +      * RPi4 will copy the binary public key blob (if present) from the bootloader
> > +      * into memory for use by the OS.
> > +      */
> > +     blpubkey: nvram@1 {
> > +             compatible = "raspberrypi,bootloader-public-key", "nvmem-rmem";
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +             reg = <0x0 0x0 0x0>;
> > +             no-map;
> > +             status = "disabled";
>
> Why this is disabled? What external resources are missing?
>
> Best regards,
> Krzysztof

These nodes default to disabled because the firmware will not populate
them if the public-key or configuration file are not present.
e.g. There's no requirement to have a bootloader EEPROM on BCM2711.

Tim
