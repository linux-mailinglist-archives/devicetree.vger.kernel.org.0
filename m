Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 482414EFCD9
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 00:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236916AbiDAWpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 18:45:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235963AbiDAWpg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 18:45:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F24C1139
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 15:43:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 191F961B2D
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 22:43:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26A59C340F3;
        Fri,  1 Apr 2022 22:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648853023;
        bh=k+RZxHyvOZAl6E9QWvnNayngGp2nt7useuqyNj/G844=;
        h=Date:From:To:cc:Subject:In-Reply-To:References:From;
        b=Bg6G8dxO/J6ZJnOC9CEhkPZSA/v7/BSHz2tzcCAikbKFO0b0Zga3mo50CcME+5129
         vQRKoRzq1X7dJYOGZWZbSMtSjANrMU1NzqhsxZOka2SLe1T5tygKKBN1vtnCfqF+09
         c1h7yBUYwox5kyrrgRw50AC9LdJNMoSKgjc6ABANIF1OW2M0ruzkDXcjWLyc6RWssb
         XPEReBjKkW6hKSSMNFrH/RrRHWhaXBsVJd/I2nyF1IawhC1anAfZRXmpPnoZVwDbu/
         WiCF/mGbjHjhV/0LwCZ/RCKugrFzT5GFu5PuI7RHs88CvmNvI8zWRPTE6MSm5dvsPZ
         PSgkRMdht8LFg==
Date:   Fri, 1 Apr 2022 15:43:42 -0700 (PDT)
From:   Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To:     Rob Herring <robh+dt@kernel.org>
cc:     Stefano Stabellini <sstabellini@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Julien Grall <julien@xen.org>,
        xen-devel <xen-devel@lists.xenproject.org>
Subject: Re: [PATCH] of: of_property_read_string return -ENODATA when
 !length
In-Reply-To: <CAL_JsqJ6Yoc-gq=qUw+cS-34ZOsxtHAA01aa+FjaBySz1vwtuQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204011517450.2910984@ubuntu-linux-20-04-desktop>
References: <alpine.DEB.2.22.394.2203311740450.2910984@ubuntu-linux-20-04-desktop> <CAL_Jsq+udUpUK3y7WOeLF2dtGs0=Jz59ed0mu_sgzstB-=TDzA@mail.gmail.com> <alpine.DEB.2.22.394.2204011338140.2910984@ubuntu-linux-20-04-desktop>
 <CAL_JsqJ6Yoc-gq=qUw+cS-34ZOsxtHAA01aa+FjaBySz1vwtuQ@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 1 Apr 2022, Rob Herring wrote:
> On Fri, Apr 1, 2022 at 3:49 PM Stefano Stabellini
> <sstabellini@kernel.org> wrote:
> >
> > On Fri, 1 Apr 2022, Rob Herring wrote:
> > > On Thu, Mar 31, 2022 at 7:46 PM Stefano Stabellini
> > > <sstabellini@kernel.org> wrote:
> > > >
> > > > From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> > > >
> > > > When the length of the string is zero of_property_read_string should
> > > > return -ENODATA according to the description of the function.
> > >
> > > Perhaps it is a difference of:
> > >
> > > prop;
> > >
> > > vs.
> > >
> > > prop = "";
> > >
> > > Both are 0 length by some definition. The description, '-ENODATA if
> > > property does not have a value', matches the first case.
> > >
> > > >
> > > > However, of_property_read_string doesn't check pp->length. If pp->length
> > > > is zero, return -ENODATA.
> > > >
> > > > Without this patch the following command in u-boot:
> > > >
> > > > fdt set /chosen/node property-name
> > > >
> > > > results in of_property_read_string returning -EILSEQ when attempting to
> > > > read property-name. With this patch, it returns -ENODATA as expected.
> > >
> > > Why do you care? Do you have a user? There could be an in tree user
> > > that doesn't like this change.
> >
> > During review of a Xen patch series (we have libfdt is Xen too, synced
> > with the kernel) Julien noticed a check for -EILSEQ. I added the check
> > so that Xen would behave correctly in cases like the u-boot example in
> > the patch description.
> >
> > Looking more into it, it seemed to be a mismatch between the description
> > of of_property_read_string and the behavior (e.g. -ENODATA would seem to
> > be the right return value, not -EILSEQ.)
> >
> > I added a printk to confirm what was going on when -EILSEQ was returned:
> >
> > printk("DEBUG %s %d value=%s value[0]=%d length=%u len=%lu\n",__func__,__LINE__,(char*)pp->value, *((char*)pp->value),pp->length,
> > strlen(pp->value));
> >
> > This is the output:
> > DEBUG of_property_read_string 205 value= value[0]=0 length=0 len=0
> 
> It turns out that we never set pp->value to NULL when unflattening
> (and libfdt always returns a value). This function is assuming we do.
> >
> > As the description says:
> >
> >  *
> >  * Return: 0 on success, -EINVAL if the property does not exist, -ENODATA if
> >  * property does not have a value, and -EILSEQ if the string is not
> >  * null-terminated within the length of the property data.
> >  *
> >
> > It seems that this case matches "property does not have a value" which
> > is expected to be -ENODATA instead of -EILSEQ. I guess one could also
> > say that length is zero, so the string cannot be null-terminated,
> > thus -EILSEQ?
> >
> > I am happy to go with your interpretation but -ENODATA seems to be the
> > best match in my opinion.
> 
> I agree. I just think empty property should have a NULL value and 0
> length, but we should only have to check one. I don't want check
> length as that could be different for Sparc or non-FDT. So I think we
> need this instead:
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index ec315b060cd5..d6b2b0d49d89 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -165,7 +165,7 @@ static void populate_properties(const void *blob,
> 
>                 pp->name   = (char *)pname;
>                 pp->length = sz;
> -               pp->value  = (__be32 *)val;
> +               pp->value  = sz ? (__be32 *)val : NULL;
>                 *pprev     = pp;
>                 pprev      = &pp->next;
>         }
> 
> 
> It looks like setting 'value' has been like this at least since 2010.

Yep, fixing old bugs nobody cares about, that's me :-)

I made the corresponding change to Xen to check that it fixes the
original issue (I am using Xen only for convenience because I already
have a reproducer setup for it.)

Unfortunately it breaks the boot: the reason is that of_get_property is
implemented as:

  return pp ? pp->value : NULL;

and at least in Xen (maybe in Linux too) there are instances of callers
doing:

        if (!of_get_property(node, "interrupt-controller", NULL))
            continue;

This would now take the wrong code path because value is returned as
NULL.

So, although your patch is technically correct, it comes with higher
risk of breaking existing code. How do you want to proceed?
