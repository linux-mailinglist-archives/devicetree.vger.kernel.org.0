Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B75795BBE98
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 17:15:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbiIRPP3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 11:15:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiIRPP2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 11:15:28 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B11A1262A
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 08:15:27 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id ck2-20020a056830648200b0065603aef276so12804609otb.12
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 08:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=haSMo7o9wDmpNe4+ICrZyKItlpGGl0h0k0FxnfB9o3E=;
        b=p1tARwHjPaYKTKvBtjPvqnJQzEWG63DikUG0eChb8tzP+hPJGeUhZWz9dSJKtFeIVi
         taLn0SGW6zLCFE8FIa1mTijzOUMYwJM/khkXjWSpt2EPlZWp5+KKTXAFAQ7fKMMJDA3t
         Se4GQlBLEc81ivspInfvvh5mTskOsOCgJeHN1WFqmpIuzaWuQD7vTgvduOb9q236iAq2
         YfysOoxuIIxjXNRAq/XKZpnsA8dAwUGUbSRsi+noLE/+1xRW+f8+/SoktidhazG85Rfm
         Yk79kbBgh638t3ECoZnD+X8CYmwjt/CVLnKF8Q11cJqfzpC5PtfC/sZ5EtEgyaggOvIC
         mFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=haSMo7o9wDmpNe4+ICrZyKItlpGGl0h0k0FxnfB9o3E=;
        b=nsTL+aUr62Zbh0ujrzclEg3LxMsLCTpq8Qz8HCfcZEx6SNxTY8Sc9jYrPCLoXwBlzh
         pwjs+f5ztl1q4FV0Oh6x0rjzfiOkrfSK0C/T11tzUkAT81iUrMt/PtVQMDNpHIt5QEoJ
         92uWET7vOMlcTNgdDoTWJx4QCschZ7ryMqXm1GIcaryZPBMTb1bphC4PbtH+oK9ul/OR
         5eIsAKaclWkhBZL4zYeQ4ramqnLAo4ElroGr2wfB2ABREuU9iaxbt1wN2qV23AAojW18
         hfOWj4Z+dNjHJxl9BnTJp5jjcBXz/r99UKrqcgPk0BBrefbRByn1iP8r+stC2UbVOp+e
         MeeQ==
X-Gm-Message-State: ACrzQf3XsBaDK1nwzwrRODmWAKUbaGii1LZvY1LpTguyrw5CGh5O7eG7
        cYQDnY0Iv1IdGcmcMHugsyRbPfExnijYMV4clXy+nSkeXJg=
X-Google-Smtp-Source: AMsMyM4yN2AHM6YNYP80dsC6hFlE6q2G1wehq1ccc+ocCsspDGiXbhaRYS5Mbq3NlBD5K4AXgQcUqdI048JAzZETOyY=
X-Received: by 2002:a05:6830:150e:b0:655:bc7d:1e5d with SMTP id
 k14-20020a056830150e00b00655bc7d1e5dmr6262629otp.272.1663514126635; Sun, 18
 Sep 2022 08:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com> <20220918112245.GA5555@alpha.franken.de>
In-Reply-To: <20220918112245.GA5555@alpha.franken.de>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Sun, 18 Sep 2022 17:15:15 +0200
Message-ID: <CAMhs-H9LCQHsK2bxfwxEAP4VnoK2AkCzOkLQdbyLNkGQri0jBA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mips: add CPU bindings for MIPS architecture
To:     Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Thomas,

On Sun, Sep 18, 2022 at 1:22 PM Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:
>
> On Sat, Sep 17, 2022 at 06:11:36AM +0200, Sergio Paracuellos wrote:
> > +  compatible:
> > +    enum:
> > +      - brcm,bmips3300
> > +      - brcm,bmips4350
> > +      - brcm,bmips4380
> > +      - brcm,bmips5000
> > +      - brcm,bmips5200
> > +      - ingenic,xburst-mxu1.0
> > +      - ingenic,xburst-fpu1.0-mxu1.1
> > +      - ingenic,xburst-fpu2.0-mxu2.0
> > +      - loongson,gs264
> > +      - mips,mips1004Kc
> > +      - mips,m14Kc
> > +      - mips,mips24KEc
> > +      - mips,mips4KEc
>
> could you add mips,mips4Kc ? I have a board, which I'm switching to
> DT, which uses that core.

Sure, I will add it and send v3. I am going to wait to send v3 until
Rob's review just in case something is still wrong / missing here.

Thanks,
    Sergio Paracuellos
>
> Thomas.
>
> --
> Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
> good idea.                                                [ RFC1925, 2.3 ]
