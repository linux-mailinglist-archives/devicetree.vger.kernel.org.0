Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6B734EF73D
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 18:02:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348560AbiDAPzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 11:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353454AbiDAPKb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 11:10:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1953C2993FA
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 07:53:03 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 80C11611F0
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 14:53:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2A29C2BBE4
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 14:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648824781;
        bh=/qJ5e8ApNXEslgZif3A+1qHL8sGqL8BHZ/5lwZBrzOM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=onqVnLvJSriHESzJ6u+qJBPu1BkhMHlgpNIj7EyCvWoqp/fsLpWYkGyxxwdNGdZ6a
         VtsoCCRO4ayhbpBKeKnvm9A0AeX0DT5NirBNzcmf66oXMllCavYq8tHIQFrLeIyL6s
         DKt6BJWAU6/8rOnGpsLfzWW6NlbXB0QPr1rN5JM+Q1U/+8CTVhkJN6hxwGWvpP0d+1
         PhTebEGn56MP9ZT8N8hAuXzdSuHBjEfe9tOOCb4F3SLArTmYsvXz87ZZ28a4raUnCL
         X8ZLbBtLClhnT0sWLqM4cGamTA6bb0LwvQ/pA/ZYpfeWaUY9AvVK9RgEK9nGngRWl/
         SIzhOgof2YDhw==
Received: by mail-io1-f52.google.com with SMTP id p21so3436958ioj.4
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 07:53:01 -0700 (PDT)
X-Gm-Message-State: AOAM532XI3g9BlQe9rKDrhncw1ZUCJrYD8CcbFUkokJETmm3+QME07Rp
        QYijDAyPhf8jDo2N5dBjWTJpC1k5gVXF/43JTw==
X-Google-Smtp-Source: ABdhPJztqb7hywLo6jomiCi/xpWuP4Ps8FDR3Hi5OQUdcpkAmfwo4X57RxkU30wbPhT0Ng8yQ8uNFR2Z1JL0f/H8FMA=
X-Received: by 2002:a02:1107:0:b0:321:78dc:890d with SMTP id
 7-20020a021107000000b0032178dc890dmr6112922jaf.236.1648824781026; Fri, 01 Apr
 2022 07:53:01 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2203311740450.2910984@ubuntu-linux-20-04-desktop>
In-Reply-To: <alpine.DEB.2.22.394.2203311740450.2910984@ubuntu-linux-20-04-desktop>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 1 Apr 2022 09:52:49 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+udUpUK3y7WOeLF2dtGs0=Jz59ed0mu_sgzstB-=TDzA@mail.gmail.com>
Message-ID: <CAL_Jsq+udUpUK3y7WOeLF2dtGs0=Jz59ed0mu_sgzstB-=TDzA@mail.gmail.com>
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

On Thu, Mar 31, 2022 at 7:46 PM Stefano Stabellini
<sstabellini@kernel.org> wrote:
>
> From: Stefano Stabellini <stefano.stabellini@xilinx.com>
>
> When the length of the string is zero of_property_read_string should
> return -ENODATA according to the description of the function.

Perhaps it is a difference of:

prop;

vs.

prop = "";

Both are 0 length by some definition. The description, '-ENODATA if
property does not have a value', matches the first case.

>
> However, of_property_read_string doesn't check pp->length. If pp->length
> is zero, return -ENODATA.
>
> Without this patch the following command in u-boot:
>
> fdt set /chosen/node property-name
>
> results in of_property_read_string returning -EILSEQ when attempting to
> read property-name. With this patch, it returns -ENODATA as expected.

Why do you care? Do you have a user? There could be an in tree user
that doesn't like this change.

>
> Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 8e90071de6ed..da0f02c98bb2 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -439,7 +439,7 @@ int of_property_read_string(const struct device_node *np, const char *propname,
>         const struct property *prop = of_find_property(np, propname, NULL);
>         if (!prop)
>                 return -EINVAL;
> -       if (!prop->value)
> +       if (!prop->value || !pp->length)
>                 return -ENODATA;
>         if (strnlen(prop->value, prop->length) >= prop->length)
>                 return -EILSEQ;
