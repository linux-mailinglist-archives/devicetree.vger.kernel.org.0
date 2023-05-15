Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C38E7022F8
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 06:38:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233993AbjEOEir (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 00:38:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229590AbjEOEiq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 00:38:46 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83AB9E48
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 21:38:45 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-644d9bf05b7so6835334b3a.3
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 21:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1684125525; x=1686717525;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3aTpP/j5XmZsI2M1PtQbEVHdnmyw0F8FitgytTs/n3k=;
        b=I+VtzDQRP5VX1htzV9toXnehk6nZVWL75nnhS3zUH/YQ8tmq6o2+eviYtIyirHm6OL
         p2ED2EylpVRC1Z+XlaFd52RhruwrgrTQRh6EftAh3SsJb7sQlhVkHd0oqZh1w+heMLnz
         MSLfUcmVGCIYYxOSFavyEOqP8TJKfv6eb4cN8450qtAZrpsLxdHHuAmLasFpQo3Woe3H
         K7xAcuv1dasODpATlBrf61tdvs2UsaoQmBoyOPNCSeHKTeNt6Rp3igQ38if7OoBSp0Wk
         6yYmd0ccqotu6xnTwda0yO7CVP2rxJV0SiYWjvgCzAIDYid8ema2ak30GgkN4Gx7G4KG
         vRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684125525; x=1686717525;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3aTpP/j5XmZsI2M1PtQbEVHdnmyw0F8FitgytTs/n3k=;
        b=RoMhSnI1TNdPcpUPhyx7Hrk3NZetK99okf5rLqc2OWOtw2e1VaJG0WiwnHCFi8CeJM
         fVdO4y3ajXOtcFbk8vzYsCppZ/Olcln+ttiajdzzcTXsH8QuJX5RWHQ52GM0etAA9eVT
         OUNUewiwO3MK3uqHOTbrTznUoRPTlEzFplhHb3TuqUv9rJ3mng7Zcfn3mj8neKO86h0+
         awkVF0+T9Nu+6GsD5uHMaImdeG0ZkS1SgRKKldb01reBLKE77Cbwfsnl4mzNSADMRyBi
         DcxXMaK7tvuwMgvQ+7xspOxzyWzWjjmDWkyHWT/XOM9Gffuow0sGWUMCsWBc6lD43S2P
         sQ8Q==
X-Gm-Message-State: AC+VfDzugkAAQtUtPdCwtK6K3F8B7/aucbZS4XsKKuWTbdy+xQG6FbA4
        3at84rN1fDO1PtTFNZHUWKsg1Q==
X-Google-Smtp-Source: ACHHUZ4GLzEA2JfT+FyfAdyb9sKhKFz1qwPptmFPwInp7Q/6hgJmlWWdC5yWKSb77JXs13LuyQUmyw==
X-Received: by 2002:a05:6a00:b49:b0:648:b185:efd9 with SMTP id p9-20020a056a000b4900b00648b185efd9mr24148052pfo.11.1684125524830;
        Sun, 14 May 2023 21:38:44 -0700 (PDT)
Received: from sunil-laptop ([106.51.191.118])
        by smtp.gmail.com with ESMTPSA id b19-20020aa78713000000b00643355ff6a6sm11157378pfo.99.2023.05.14.21.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 May 2023 21:38:44 -0700 (PDT)
Date:   Mon, 15 May 2023 10:08:35 +0530
From:   Sunil V L <sunilvl@ventanamicro.com>
To:     Anup Patel <apatel@ventanamicro.com>
Cc:     Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>, atishp@atishpatra.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        conor+dt@kernel.org, heiko@sntech.de, cyy@cyyself.name,
        Conor Dooley <conor.dooley@microchip.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com, Krste Asanovic <krste@sifive.com>,
        Andrew Waterman <andrew@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <ZGG3S3FgmHy/XGBx@sunil-laptop>
References: <20230511-occupancy-cleat-06e532e3ea11@spud>
 <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud>
 <20230512-exhume-unfold-f104dd4c4cbf@spud>
 <CAK9=C2XJDDYKN_HO8Q2OShQs=crQUhx4aUi5Xx4=YiAA9OYSqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK9=C2XJDDYKN_HO8Q2OShQs=crQUhx4aUi5Xx4=YiAA9OYSqQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 13, 2023 at 01:17:03PM +0530, Anup Patel wrote:
> On Sat, May 13, 2023 at 3:35 AM Conor Dooley <conor@kernel.org> wrote:
> >
> > +CC Greg, Mark, Krste, Philipp, Andrew,
> >
> > (this is LKML now, no top posting or html replies)
> >
> > On Fri, May 12, 2023 at 08:40:10PM +0100, Conor Dooley wrote:
> > > On Fri, May 12, 2023 at 11:01:09AM -0700, Palmer Dabbelt wrote:
> > > > On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
> > > > > On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
> > > > > > On Thu, May 11, 2023 at 2:47 PM Conor Dooley <conor@kernel.org> wrote:
> > > > > > > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
> > > > >
> > > > > > > That's more than last year at this point, and nothing has changed in the
> > > > > > > documentation! Talk's cheap, ehh?
> > > > > > >
> > > > > >
> > > > > > Yup. I will poke RVI folks to check if it still is the plan or changed !!
> > > > >
> > > > > Sounds good, thanks!
> > >
> > > There has been some movement on that front, shall see where it goes
> > > :upsidedown_smile:
> >
> > There's been some off-list discussion prompted by Atish with some of the
> > RVI spec folk, from which the upshot __appears__ to be an understanding
> > that using version numbering to indicate removal of ISA features is a bad
> > idea.
> > I'm hoping that this results in the enshrinement of this in the ISA
> > specs, so that we have something concrete to point to as the basis for
> > not needing to handle version numbering.
> > Certainly that'd be great for ACPI and remove concerns there.
> >
> > > > > > We will likely have a vendor specific string parsing logic.
> > > > >
> > > > > Complicating the parsing logic is the exact sort of crap that I want
> > > > > to avoid.
> > > >
> > > > Ya, I think we're reallly overcomplicating things with the ISA strings.
> > > > Let's just deprecate them and move to something that doesn't need all the
> > > > bespoke string parsing.
> > >
> > > Versioning aside, although that removes a large part of the motivation,
> > > the interface becomes quite nice:
> > > of_property_present(node, "riscv,isa-extension-zicbom")
> >
> > My current feeling is that, rather than introducing a key-value type of
> > property, adding boolean properties for extensions is the way to go
> > here. The "riscv,isa" part of the DT ABI pre-dates even the ratification
> > of the base extensions (and thus the removal of some features...).
> > Starting again with a new property would allow us to define extensions
> > as per their ratified state, rather than the intermediate & incompatible
> > states that we have currently got with "riscv,isa".
> > Such a model does rely on the strengthening of the wording in the
> > specification.
> 
> ISA string parsed for both DT and ACPI.
> 
> For ACPI, moving to a per-extension bit in a bitmap and defining
> a new bit with every ISA extension will be very very inconvenient
> for updating the ACPI specs. We should continue the ISA string
> parsing at least for ACPI.
> 
> For DT, users can either use "riscv,isa" DT property or use boolean
> DT properties.
> 
From ACPI perspective, the format better be backed by unpriv (or any
other) spec from RVI considering it is a standard across OSs and to
avoid any maintenance issues.

Thanks,
Sunil
