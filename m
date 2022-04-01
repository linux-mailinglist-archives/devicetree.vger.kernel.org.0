Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CDC54EFC83
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 00:01:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244541AbiDAWD2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 18:03:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344925AbiDAWD1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 18:03:27 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 532C12675A0
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 15:01:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 05120B8267F
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 22:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1642C34112
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 22:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648850494;
        bh=ZQrbLPkLo5sfQcE73yUfUj3P2ZSop1t4uB2pIrb+x5s=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=M7Gw+J81HNta4UOZK1b5DyWKrKW6HKh1VcNWFV6Pl0XWEaxxxbzWB3JxBZadCJHen
         KqkaquNDuy6VAtgKBM+puNzLN/35Tb5J/NmiGFeBN5OX1X846buCpticFxaJCPdzgm
         ro6wU+BpnqYsXcnqNxFhQz15zvWA4liIIn09Q4pjkr/X31wZD/hp2b0QMfh9xNYRoW
         j+MSu9mrXbq9UZLBdfQvrYHkHndTUedPSgNX1a7A90K7c4WHQTudmQRlMNw4UU+ftq
         HxX2uFSghDrLaquvtN5tF4JtyLV5TkbatKPsZ884vb5KNjwmKDOpt+Gth4NQ9jDmIj
         wA1WEB2hc42MQ==
Received: by mail-io1-f46.google.com with SMTP id z7so4805622iom.1
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 15:01:34 -0700 (PDT)
X-Gm-Message-State: AOAM533G3fezHHiyCu9h4SB0LvYvSuYmc0aHk4300a+RJjap2nwR2PtN
        0YPgxhJta0itLPCBjrpbttCWiY4lXoZJyscFmw==
X-Google-Smtp-Source: ABdhPJw+LFcARwzaNCp2hP95MsT4VXSzQqMED1c5B/P2R3LB+Lv/I0+UJvyO4WpdpbHhv1y8zZlcKAkCdFFoaahnD14=
X-Received: by 2002:a05:6638:1301:b0:323:3b47:8b3f with SMTP id
 r1-20020a056638130100b003233b478b3fmr6606952jad.291.1648850493856; Fri, 01
 Apr 2022 15:01:33 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2203311740450.2910984@ubuntu-linux-20-04-desktop>
 <CAL_Jsq+udUpUK3y7WOeLF2dtGs0=Jz59ed0mu_sgzstB-=TDzA@mail.gmail.com> <alpine.DEB.2.22.394.2204011338140.2910984@ubuntu-linux-20-04-desktop>
In-Reply-To: <alpine.DEB.2.22.394.2204011338140.2910984@ubuntu-linux-20-04-desktop>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 1 Apr 2022 17:01:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ6Yoc-gq=qUw+cS-34ZOsxtHAA01aa+FjaBySz1vwtuQ@mail.gmail.com>
Message-ID: <CAL_JsqJ6Yoc-gq=qUw+cS-34ZOsxtHAA01aa+FjaBySz1vwtuQ@mail.gmail.com>
Subject: Re: [PATCH] of: of_property_read_string return -ENODATA when !length
To:     Stefano Stabellini <sstabellini@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        Julien Grall <julien@xen.org>,
        xen-devel <xen-devel@lists.xenproject.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 1, 2022 at 3:49 PM Stefano Stabellini
<sstabellini@kernel.org> wrote:
>
> On Fri, 1 Apr 2022, Rob Herring wrote:
> > On Thu, Mar 31, 2022 at 7:46 PM Stefano Stabellini
> > <sstabellini@kernel.org> wrote:
> > >
> > > From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> > >
> > > When the length of the string is zero of_property_read_string should
> > > return -ENODATA according to the description of the function.
> >
> > Perhaps it is a difference of:
> >
> > prop;
> >
> > vs.
> >
> > prop = "";
> >
> > Both are 0 length by some definition. The description, '-ENODATA if
> > property does not have a value', matches the first case.
> >
> > >
> > > However, of_property_read_string doesn't check pp->length. If pp->length
> > > is zero, return -ENODATA.
> > >
> > > Without this patch the following command in u-boot:
> > >
> > > fdt set /chosen/node property-name
> > >
> > > results in of_property_read_string returning -EILSEQ when attempting to
> > > read property-name. With this patch, it returns -ENODATA as expected.
> >
> > Why do you care? Do you have a user? There could be an in tree user
> > that doesn't like this change.
>
> During review of a Xen patch series (we have libfdt is Xen too, synced
> with the kernel) Julien noticed a check for -EILSEQ. I added the check
> so that Xen would behave correctly in cases like the u-boot example in
> the patch description.
>
> Looking more into it, it seemed to be a mismatch between the description
> of of_property_read_string and the behavior (e.g. -ENODATA would seem to
> be the right return value, not -EILSEQ.)
>
> I added a printk to confirm what was going on when -EILSEQ was returned:
>
> printk("DEBUG %s %d value=%s value[0]=%d length=%u len=%lu\n",__func__,__LINE__,(char*)pp->value, *((char*)pp->value),pp->length,
> strlen(pp->value));
>
> This is the output:
> DEBUG of_property_read_string 205 value= value[0]=0 length=0 len=0

It turns out that we never set pp->value to NULL when unflattening
(and libfdt always returns a value). This function is assuming we do.
>
> As the description says:
>
>  *
>  * Return: 0 on success, -EINVAL if the property does not exist, -ENODATA if
>  * property does not have a value, and -EILSEQ if the string is not
>  * null-terminated within the length of the property data.
>  *
>
> It seems that this case matches "property does not have a value" which
> is expected to be -ENODATA instead of -EILSEQ. I guess one could also
> say that length is zero, so the string cannot be null-terminated,
> thus -EILSEQ?
>
> I am happy to go with your interpretation but -ENODATA seems to be the
> best match in my opinion.

I agree. I just think empty property should have a NULL value and 0
length, but we should only have to check one. I don't want check
length as that could be different for Sparc or non-FDT. So I think we
need this instead:

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index ec315b060cd5..d6b2b0d49d89 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -165,7 +165,7 @@ static void populate_properties(const void *blob,

                pp->name   = (char *)pname;
                pp->length = sz;
-               pp->value  = (__be32 *)val;
+               pp->value  = sz ? (__be32 *)val : NULL;
                *pprev     = pp;
                pprev      = &pp->next;
        }


It looks like setting 'value' has been like this at least since 2010.

Rob
