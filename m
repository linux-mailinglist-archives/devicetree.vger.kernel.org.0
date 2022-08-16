Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC3159612D
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 19:30:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236442AbiHPRap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 13:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236778AbiHPRaD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 13:30:03 -0400
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71FC5589
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:29:43 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id m9so942863ili.1
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=/0rh9BmcB/cVaPI5w5LAU732jeBXzJhkovndxZMgo/U=;
        b=3ZZbi7HGXn7hciqfNY4cnzH9kZgAhvx8iEfI1FCJDrpNOwWwpwUMui4Kn8YSlUhkhw
         QXSTv7BTcQBKx3x4a7SBw0pd3rd0+5zXfj0Z70c3x01Xg8yUZAjO8Cxpu+xO5fLVfJ7t
         YYa4zVg7XqbBRstip24kmKYMiWiUR+7/xPrtis6iR+HM/SVBLq7VimqYrW9Futny9k8a
         7OUPZfho0TAxiyFP2b81EFG8eksUxIkcgyiPUTgKWMyI5uVV9sPRwYt5tC+FY9OZ0DVj
         DmUcyUmfsl6uBmzQ8GW3BHUbjjST93ioc59jebCRRzBOZxhMHhnWfK0Z4eQMuwtfw7e6
         GmMA==
X-Gm-Message-State: ACgBeo0sCioJfzQozPwDh4TXbxeK8Gu03vYBO3C8mIQBewuC1wlbRQG9
        AU2KIu1uXIjyYdm0b+Gsf+zaOoD4+g==
X-Google-Smtp-Source: AA6agR41xh7hy9Plk16TN9uUqBneKMbhdlpQWRHZzNy1kGyZj3x+K0Jty63puVf3EJjtAc1qZcQopw==
X-Received: by 2002:a05:6e02:1a8e:b0:2e5:50f6:7238 with SMTP id k14-20020a056e021a8e00b002e550f67238mr7258446ilv.309.1660670983156;
        Tue, 16 Aug 2022 10:29:43 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id y19-20020a056638229300b0034382439ecasm4437985jas.121.2022.08.16.10.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 10:29:42 -0700 (PDT)
Received: (nullmailer pid 2417836 invoked by uid 1000);
        Tue, 16 Aug 2022 17:29:40 -0000
Date:   Tue, 16 Aug 2022 11:29:40 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sergey Shtylyov <s.shtylyov@omp.ru>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH] of: fdt: fix off-by-one error in unflatten_dt_nodes()
Message-ID: <20220816172940.GA2417741-robh@kernel.org>
References: <7c354554-006f-6b31-c195-cdfe4caee392@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7c354554-006f-6b31-c195-cdfe4caee392@omp.ru>
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

On Sat, 13 Aug 2022 23:34:16 +0300, Sergey Shtylyov wrote:
> Commit 78c44d910d3e ("drivers/of: Fix depth when unflattening devicetree")
> forgot to fix up the depth check in the loop body in unflatten_dt_nodes()
> which makes it possible to overflow the nps[] buffer...
> 
> Found by Linux Verification Center (linuxtesting.org) with the SVACE static
> analysis tool.
> 
> Fixes: 78c44d910d3e ("drivers/of: Fix depth when unflattening devicetree")
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> 
> ---
> The patch is against the 'master' branch of Rob Herring's 'linux-git' repo...
> 
>  drivers/of/fdt.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!
