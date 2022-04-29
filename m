Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3762851591F
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 01:46:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381769AbiD2XtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 19:49:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381758AbiD2XtX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 19:49:23 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E77F99AE7E
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 16:46:03 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id z19so10676423edx.9
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 16:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OLnQzeeY+30Hbm9Yw7xfSR/sboSsBplmCvkRsDvNapQ=;
        b=aaMlNIz+kvjrqzRA+TmMPrr9z/agjC6uZDS/7LzDLGLKOi4ApEf1uA0dLxxujTYIg2
         k4csVTi1/t6S9EQJ3MIRmwGXdjodr4WNvGYWb19StfFpvduYW0wOVdmF/rnYnGBpmY5I
         u6UNjR+DrO8IcvxvoMkhAexM4ekx78OnlEKgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OLnQzeeY+30Hbm9Yw7xfSR/sboSsBplmCvkRsDvNapQ=;
        b=TwGFaeL9JEZrWkZtO0BLEotFyzfB4Q4BWoF9OS4RjtRUQZlOHByxZEncOsNxKjOoMI
         rThhtk7rrB0rvktyxShLXGQSnukwikZbnzA3dt/9twjQnPTdOCyE3bf+hid2JFYDvr2K
         L5lZwwew30Vh7wyghq1ZB3eJD/ztlJ+bOM7FnLR5juAbUWky0I22WETTz+hupDlspar9
         wi7AiXN+EA2H1h2H4lZT/wZAIsoAw0dctjtEDN0ClcwsHx+tFIFInfiFTZ4fVyqzcmk6
         +MrdnRei4ZtGPIyfuABa37WlcqGB95YAodo6jS9dmwenfHwvBwZTVZooWTiZ0l+gwn/B
         S8WA==
X-Gm-Message-State: AOAM5331CnzYEcoRfnBytUNXZoH/ej0/DmG0N00vMv0Y6WKBn1LCwI/b
        4Wqhk2v8Vone/Rc2XQRC8lXO2v3iiruseQQk
X-Google-Smtp-Source: ABdhPJwrUaeeQDJJuBkLw6gasiLp5fWzYXWmx1oamiHHSaoFH4DOQkFHdDT7blBILiRmTYsAy6Qt/w==
X-Received: by 2002:a05:6402:5ca:b0:423:f330:f574 with SMTP id n10-20020a05640205ca00b00423f330f574mr1825883edx.116.1651275962303;
        Fri, 29 Apr 2022 16:46:02 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id d3-20020a170907272300b006f3ef214de5sm1079702ejl.75.2022.04.29.16.46.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 16:46:00 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id b19so12573971wrh.11
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 16:46:00 -0700 (PDT)
X-Received: by 2002:a5d:64eb:0:b0:20a:ecf8:ac9f with SMTP id
 g11-20020a5d64eb000000b0020aecf8ac9fmr1038404wri.342.1651275960111; Fri, 29
 Apr 2022 16:46:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220408184844.22829-1-andriy.shevchenko@linux.intel.com> <20220408184844.22829-2-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20220408184844.22829-2-andriy.shevchenko@linux.intel.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 29 Apr 2022 16:45:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UqGw3mQHXZvxwtJ4n085s3gXNKwaPeOiKVuMqRTyO0Lw@mail.gmail.com>
Message-ID: <CAD=FV=UqGw3mQHXZvxwtJ4n085s3gXNKwaPeOiKVuMqRTyO0Lw@mail.gmail.com>
Subject: Re: [PATCH v6 2/5] device property: Introduce fwnode_for_each_parent_node()
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Rob Herring <robh@kernel.org>, linux-acpi@vger.kernel.org,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 8, 2022 at 11:50 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> In a few cases the functionality of fwnode_for_each_parent_node()
> is already in use. Introduce a common helper macro for it.
>
> It may be used by others as well in the future.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
> v6: added tag (Sakari)
>  drivers/base/property.c  | 56 +++++++++++++++++++++-------------------
>  include/linux/property.h |  9 +++++--
>  2 files changed, 36 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/base/property.c b/drivers/base/property.c
> index 6ecc1398b0ba..f0ac31d28798 100644
> --- a/drivers/base/property.c
> +++ b/drivers/base/property.c
> @@ -596,17 +596,17 @@ EXPORT_SYMBOL_GPL(fwnode_get_next_parent);
>   */
>  struct device *fwnode_get_next_parent_dev(struct fwnode_handle *fwnode)
>  {
> +       struct fwnode_handle *parent;
>         struct device *dev;
>
> -       fwnode_handle_get(fwnode);
> -       do {
> -               fwnode = fwnode_get_next_parent(fwnode);
> -               if (!fwnode)
> -                       return NULL;
> +       fwnode_for_each_parent_node(fwnode, parent) {
>                 dev = get_dev_from_fwnode(fwnode);

Breadcrumbs in case anyone else ends up at this patch due to a bisect,
like I just did. The above should have been changed to
"get_dev_from_fwnode(parent);" in this patch. Fix posted at:

https://lore.kernel.org/r/20220429164325.1.I2a3b980ea051e59140227999f0f0ca16f1125768@changeid
