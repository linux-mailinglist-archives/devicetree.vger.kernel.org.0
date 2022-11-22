Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF8B634B01
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 00:21:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232723AbiKVXVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 18:21:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232341AbiKVXVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 18:21:44 -0500
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87F67C67CA
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:21:43 -0800 (PST)
Received: by mail-io1-f51.google.com with SMTP id q21so12095659iod.4
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:21:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MgnANSZH0lDfcfuer2ybV9DIR7ykE/XY1TIuAPaYbnw=;
        b=zPcRNbIVUEkLAdz1l4W9uFfWjMhFxy9EuHq8haJzrYLDm9siZzKoQzGjQF8UFkDQ1/
         895/m7OIyJF2tCCypax9teaC4AdROEFWRIn26h0g/47Z6YJIRo1hbN4tUxqt7TjyPqyj
         Q+jKnieQdzT+3CQbBJni6lHSLzOTE3FUWGbjeQmZesIkPE7BO9Op0fR9N4Npp94uUubO
         KJro8jLs34kC8SQ4M0X1u7EMgF2M5vAAmurljV6QR8bpD8S35ylykZFsy7V3SQ1WNzpb
         wljPr8cA1jSr1zXI/KWiYCR93gE782ioqbqSOzL0LiBr/7cqnUDzAc64ALxgoeTpWvq9
         jxHA==
X-Gm-Message-State: ANoB5pmnzplICK9k0Zmo32D5bWHjc2g6YqGO5xzGqeO3bVQAItPcYeFc
        WpUkchEgTrAuEXfRBWjlsQ==
X-Google-Smtp-Source: AA0mqf779beh3QNi7kt9JP8qE+Mah6vGjB511QkdVkfy8XL63xKld2q8M/lbXt3hm3hFKKSNBfBsEA==
X-Received: by 2002:a02:a717:0:b0:376:1e43:c1d2 with SMTP id k23-20020a02a717000000b003761e43c1d2mr2852846jam.223.1669159302785;
        Tue, 22 Nov 2022 15:21:42 -0800 (PST)
Received: from robh_at_kernel.org ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id j8-20020a0566022cc800b006deb279d2desm3953764iow.2.2022.11.22.15.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 15:21:42 -0800 (PST)
Received: (nullmailer pid 762134 invoked by uid 1000);
        Tue, 22 Nov 2022 23:21:44 -0000
Date:   Tue, 22 Nov 2022 17:21:44 -0600
From:   Rob Herring <robh@kernel.org>
To:     Yang Yingliang <yangyingliang@huawei.com>
Cc:     devicetree@vger.kernel.org, rafael.j.wysocki@intel.com,
        robh+dt@kernel.org, sakari.ailus@linux.intel.com,
        frowand.list@gmail.com
Subject: Re: [PATCH v3] of: property: decrement node refcount in
 of_fwnode_get_reference_args()
Message-ID: <166915928638.761673.13107179203915118944.robh@kernel.org>
References: <20221121023209.3909759-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221121023209.3909759-1-yangyingliang@huawei.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 21 Nov 2022 10:32:09 +0800, Yang Yingliang wrote:
> In of_fwnode_get_reference_args(), the refcount of of_args.np has
> been incremented in the case of successful return from
> of_parse_phandle_with_args() or of_parse_phandle_with_fixed_args().
> 
> Decrement the refcount if of_args is not returned to the caller of
> of_fwnode_get_reference_args().
> 
> Fixes: 3e3119d3088f ("device property: Introduce fwnode_property_get_reference_args")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> Reviewed-by: Frank Rowand <frowand.list@gmail.com>
> ---
> v1 -> v3:
>   Update title and commit message that suggested by Frank.
> ---
>  drivers/of/property.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Applied, thanks!
