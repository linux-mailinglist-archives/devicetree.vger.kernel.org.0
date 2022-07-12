Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D795F57217A
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 18:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233396AbiGLQ7E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 12:59:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229769AbiGLQ7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 12:59:03 -0400
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6AE322292
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 09:59:01 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id y2so8412512ior.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 09:59:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ab3YykQtENNYR96P2deloUUA7ozL89etTbBGV9drVIg=;
        b=T5any5UxhEiPvgdr1QMNPp4tjg1DTscJBFkNbuITRSFRJjy1Bh8UaYhpOIqb71DWUU
         3iQKeZGAUoz7iPQMwnSqwgZisnnJBaT0YzfoIc0dmfvJV+q9p9gk3Ayk1sjcHhJhdUy9
         s8vHPSrxj+3OE8cHtEl3kXZ8n9ZACKNPILnnZO78aats4Su1dwSFUqCXhS4dXVeHiFCl
         WH+l3aEgjPtkvr/LY5J5afXvpisd9u3A2qGAKIcT1fkRvVfwmgPDn/X2CqKOA9Hg8CMD
         m9b3u6Pquyxe1Gopr/we6doDOSlG6w1Hn0mGvl8QgdANkWezXj3OsZOCJGWkxTfuDzXO
         5OFA==
X-Gm-Message-State: AJIora/Wzg8ZtqCnlhrFWvY/ySnOamGLVPuuUwDZoPeZ+YRnkDAMRc4k
        Urr3+rw2XWsLDwfpQzQifg==
X-Google-Smtp-Source: AGRyM1sGCNnDya34fRk249CJ69juOy7ZBX23cVbQ1UiHqldyoOanwr/0IxGKIPC2yqJBD6ld+NaVNg==
X-Received: by 2002:a05:6638:dd0:b0:33f:1886:4e5d with SMTP id m16-20020a0566380dd000b0033f18864e5dmr13861646jaj.245.1657645140867;
        Tue, 12 Jul 2022 09:59:00 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id r2-20020a0566022b8200b0067b7966553fsm3153992iov.20.2022.07.12.09.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 09:59:00 -0700 (PDT)
Received: (nullmailer pid 2018335 invoked by uid 1000);
        Tue, 12 Jul 2022 16:58:59 -0000
Date:   Tue, 12 Jul 2022 10:58:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Liang He <windhl@126.com>
Cc:     frowand.list@gmail.com, devicetree@vger.kernel.org,
        linmq006@gmail.com
Subject: Re: Re: [PATCH] of: device: Fix missing of_node_put() in
 of_dma_set_restricted_buffer
Message-ID: <20220712165859.GE1823936-robh@kernel.org>
References: <20220702014449.263772-1-windhl@126.com>
 <20220705144527.GA2048024-robh@kernel.org>
 <4faba661.4c9a.181d26dbd0d.Coremail.windhl@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4faba661.4c9a.181d26dbd0d.Coremail.windhl@126.com>
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

On Wed, Jul 06, 2022 at 03:33:36PM +0800, Liang He wrote:
> 
> 
> At 2022-07-05 22:45:27, "Rob Herring" <robh@kernel.org> wrote:
> >On Sat, Jul 02, 2022 at 09:44:49AM +0800, Liang He wrote:
> >> We should use of_node_put() for the reference 'node' returned by
> >> of_parse_phandle() which will increase the refcount.
> >> 
> >> Fixes: fec9b625095f ("of: Add plumbing for restricted DMA pool")
> >> Co-authored-by: Miaoqian Lin <linmq006@gmail.com>
> >> Signed-off-by: Liang He <windhl@126.com>
> >> ---
> >>  drivers/of/device.c | 5 ++++-
> >>  1 file changed, 4 insertions(+), 1 deletion(-)
> >> 
> >> diff --git a/drivers/of/device.c b/drivers/of/device.c
> >> index 874f031442dc..75b6cbffa755 100644
> >> --- a/drivers/of/device.c
> >> +++ b/drivers/of/device.c
> >> @@ -81,8 +81,11 @@ of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
> >>  		 * restricted-dma-pool region is allowed.
> >>  		 */
> >>  		if (of_device_is_compatible(node, "restricted-dma-pool") &&
> >> -		    of_device_is_available(node))
> >> +		    of_device_is_available(node)) {
> >> +			of_node_put(node);
> >>  			break;
> >> +		}
> >> +		of_node_put(node);
> >
> >This should be converted to use of_for_each_phandle() iterator instead. 
> >That takes care of the put here (but not in the break).
> >
> >Rob
> 
> Hi, Rob.
> 
> After I carefully read the implementation of of_for_each_phandle() and of_parse_phandle(),
> I think it is better to keep current coding style as it will change a lot of current code.
> 
> Besides, the loop index 'i' will be used in following of_reserved_mem_device_init_by_idx(), so
> I cannot give a simple and correct way to use of_for_each_phandle().

Ah, okay. I've applied this now. Thanks.

Rob
