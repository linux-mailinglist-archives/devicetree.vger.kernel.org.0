Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6D3A4F185B
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 17:28:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354311AbiDDPaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 11:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349937AbiDDPaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 11:30:08 -0400
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F55A31935
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 08:28:12 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id e4so10421788oif.2
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 08:28:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CMAZDlHZgNwtz0roIoFrFkP5I0hM5Ka8PZuGrF8daIM=;
        b=LAKo4kdQl3qLGUYGskzvpr30coSKmYPvx/OAKb4/mDc6hdEPdJCvTKRxBazVexB9kb
         gHhm4Ji2kS8QE5TyxSAlzti0i1CSQUBrDkMBwAHqvLWnAyJBREmqnCzb08ajrhinaLin
         YgEwTWgtbGCbakW4mALIdMj/eQaLPXY8DS7rrUlmHj9vo7Rh3FwPulJykLbyca6OD8b0
         zk2VjSyGnJW/0lb9egBc/Z7VLQp7sZWJaDoTG44teT2LU/bdVhjgSWOCQdFZ0T5mtkI1
         yfTvVBvYadgSUB7/6gP9UGOCNoG2E+kbfbhfqshnCfXWsTuxwuiB+opB42L+EpoXU8dn
         LE9A==
X-Gm-Message-State: AOAM5311/xX1visrIx56hLaCDahixBu1DKYy1f3i2jJCazcgkgyHb9yq
        k3hhLM6SyO2E3gX4bUDlGys5h/i9kg==
X-Google-Smtp-Source: ABdhPJzwy0WY7B/N5LU4Fdra5RjMT/BpunQ/E9y8mWRkIFdFoRh+aK0icUktrwTy8x8OLe22r5Us7Q==
X-Received: by 2002:aca:5941:0:b0:2f7:5c90:ad61 with SMTP id n62-20020aca5941000000b002f75c90ad61mr10111767oib.190.1649086091538;
        Mon, 04 Apr 2022 08:28:11 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a17-20020a4ae931000000b0032933be7230sm3078785ooe.4.2022.04.04.08.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 08:28:11 -0700 (PDT)
Received: (nullmailer pid 1366199 invoked by uid 1000);
        Mon, 04 Apr 2022 15:28:10 -0000
Date:   Mon, 4 Apr 2022 10:28:10 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefano Stabellini <sstabellini@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        Julien Grall <julien@xen.org>,
        xen-devel <xen-devel@lists.xenproject.org>
Subject: Re: [PATCH] of: of_property_read_string return -ENODATA when !length
Message-ID: <YksOipbvQh8N1C+V@robh.at.kernel.org>
References: <alpine.DEB.2.22.394.2203311740450.2910984@ubuntu-linux-20-04-desktop>
 <CAL_Jsq+udUpUK3y7WOeLF2dtGs0=Jz59ed0mu_sgzstB-=TDzA@mail.gmail.com>
 <alpine.DEB.2.22.394.2204011338140.2910984@ubuntu-linux-20-04-desktop>
 <CAL_JsqJ6Yoc-gq=qUw+cS-34ZOsxtHAA01aa+FjaBySz1vwtuQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2204011517450.2910984@ubuntu-linux-20-04-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2204011517450.2910984@ubuntu-linux-20-04-desktop>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 01, 2022 at 03:43:42PM -0700, Stefano Stabellini wrote:
> On Fri, 1 Apr 2022, Rob Herring wrote:
> > On Fri, Apr 1, 2022 at 3:49 PM Stefano Stabellini
> > <sstabellini@kernel.org> wrote:
> > >
> > > On Fri, 1 Apr 2022, Rob Herring wrote:
> > > > On Thu, Mar 31, 2022 at 7:46 PM Stefano Stabellini
> > > > <sstabellini@kernel.org> wrote:
> > > > >
> > > > > From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> > > > >
> > > > > When the length of the string is zero of_property_read_string should
> > > > > return -ENODATA according to the description of the function.
> > > >
> > > > Perhaps it is a difference of:
> > > >
> > > > prop;
> > > >
> > > > vs.
> > > >
> > > > prop = "";
> > > >
> > > > Both are 0 length by some definition. The description, '-ENODATA if
> > > > property does not have a value', matches the first case.
> > > >
> > > > >
> > > > > However, of_property_read_string doesn't check pp->length. If pp->length
> > > > > is zero, return -ENODATA.
> > > > >
> > > > > Without this patch the following command in u-boot:
> > > > >
> > > > > fdt set /chosen/node property-name
> > > > >
> > > > > results in of_property_read_string returning -EILSEQ when attempting to
> > > > > read property-name. With this patch, it returns -ENODATA as expected.
> > > >
> > > > Why do you care? Do you have a user? There could be an in tree user
> > > > that doesn't like this change.
> > >
> > > During review of a Xen patch series (we have libfdt is Xen too, synced
> > > with the kernel) Julien noticed a check for -EILSEQ. I added the check
> > > so that Xen would behave correctly in cases like the u-boot example in
> > > the patch description.
> > >
> > > Looking more into it, it seemed to be a mismatch between the description
> > > of of_property_read_string and the behavior (e.g. -ENODATA would seem to
> > > be the right return value, not -EILSEQ.)
> > >
> > > I added a printk to confirm what was going on when -EILSEQ was returned:
> > >
> > > printk("DEBUG %s %d value=%s value[0]=%d length=%u len=%lu\n",__func__,__LINE__,(char*)pp->value, *((char*)pp->value),pp->length,
> > > strlen(pp->value));
> > >
> > > This is the output:
> > > DEBUG of_property_read_string 205 value= value[0]=0 length=0 len=0
> > 
> > It turns out that we never set pp->value to NULL when unflattening
> > (and libfdt always returns a value). This function is assuming we do.
> > >
> > > As the description says:
> > >
> > >  *
> > >  * Return: 0 on success, -EINVAL if the property does not exist, -ENODATA if
> > >  * property does not have a value, and -EILSEQ if the string is not
> > >  * null-terminated within the length of the property data.
> > >  *
> > >
> > > It seems that this case matches "property does not have a value" which
> > > is expected to be -ENODATA instead of -EILSEQ. I guess one could also
> > > say that length is zero, so the string cannot be null-terminated,
> > > thus -EILSEQ?
> > >
> > > I am happy to go with your interpretation but -ENODATA seems to be the
> > > best match in my opinion.
> > 
> > I agree. I just think empty property should have a NULL value and 0
> > length, but we should only have to check one. I don't want check
> > length as that could be different for Sparc or non-FDT. So I think we
> > need this instead:
> > 
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index ec315b060cd5..d6b2b0d49d89 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -165,7 +165,7 @@ static void populate_properties(const void *blob,
> > 
> >                 pp->name   = (char *)pname;
> >                 pp->length = sz;
> > -               pp->value  = (__be32 *)val;
> > +               pp->value  = sz ? (__be32 *)val : NULL;
> >                 *pprev     = pp;
> >                 pprev      = &pp->next;
> >         }
> > 
> > 
> > It looks like setting 'value' has been like this at least since 2010.
> 
> Yep, fixing old bugs nobody cares about, that's me :-)

:)


> I made the corresponding change to Xen to check that it fixes the
> original issue (I am using Xen only for convenience because I already
> have a reproducer setup for it.)
> 
> Unfortunately it breaks the boot: the reason is that of_get_property is
> implemented as:
> 
>   return pp ? pp->value : NULL;
> 
> and at least in Xen (maybe in Linux too) there are instances of callers
> doing:
> 
>         if (!of_get_property(node, "interrupt-controller", NULL))
>             continue;
> 
> This would now take the wrong code path because value is returned as
> NULL.
> 
> So, although your patch is technically correct, it comes with higher
> risk of breaking existing code. How do you want to proceed?

We should just check 'length' is 0 and drop the !value part.

Rob
