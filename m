Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB69B567163
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 16:45:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbiGEOpb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 10:45:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbiGEOpa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 10:45:30 -0400
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6523CDEF6
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 07:45:29 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id k15so11305912iok.5
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 07:45:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kzNni35SFNQlsUgubCcWVgHiPnHU7/7OvbXajagFisE=;
        b=heal7XKz3FyLzZs3SMOsrb60ykeFkt4Gy6v1FWHuv1yridv2wfnSBiQH5PrpQ0pXmw
         Y+zvqwH4JtB57HriYuFjBdm6Nto38740jMcAsG6OLBsPqO0GzjqMo7hmgmmBH74o8k8l
         iqdDerW/MERGjSmiXw5ToXuA/cnX8MOxYdNGD8f54XLmW9EjqpaBPdmmSLx5S/Lj9Ykk
         6t/bqFYbZiCpfD5tWTI31Kf8SWxs1+aUn22qQBTNekrxfv4R3hbeuqb1wGS2sm+9GpbY
         QZCUShb0Zkmp1ZAxMZ3K2Au2xzU3uhhBKpYto/UK4mfL5IXcRbWHKUA6bKPveAjQxHWY
         bjIQ==
X-Gm-Message-State: AJIora/DVXoKQkDw0qSaxSk3n89NysJRyryjo19Z2r6h0HciiDWfF+W0
        tdaPsaIsWNtJDoznigJCfyK1dTTErA==
X-Google-Smtp-Source: AGRyM1vjvtiWl5dDIhWFurOCQ0VcILZsiG5q7plwPTtlWd+bq/A0umlZ5oI6GT3ArXJjP/ZqZoUJLQ==
X-Received: by 2002:a6b:e309:0:b0:675:242:d63e with SMTP id u9-20020a6be309000000b006750242d63emr19068741ioc.57.1657032328679;
        Tue, 05 Jul 2022 07:45:28 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id i83-20020a6bb856000000b0065a47e16f53sm15726650iof.37.2022.07.05.07.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 07:45:28 -0700 (PDT)
Received: (nullmailer pid 2081237 invoked by uid 1000);
        Tue, 05 Jul 2022 14:45:27 -0000
Date:   Tue, 5 Jul 2022 08:45:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Liang He <windhl@126.com>
Cc:     frowand.list@gmail.com, devicetree@vger.kernel.org,
        linmq006@gmail.com
Subject: Re: [PATCH] of: device: Fix missing of_node_put() in
 of_dma_set_restricted_buffer
Message-ID: <20220705144527.GA2048024-robh@kernel.org>
References: <20220702014449.263772-1-windhl@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220702014449.263772-1-windhl@126.com>
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

On Sat, Jul 02, 2022 at 09:44:49AM +0800, Liang He wrote:
> We should use of_node_put() for the reference 'node' returned by
> of_parse_phandle() which will increase the refcount.
> 
> Fixes: fec9b625095f ("of: Add plumbing for restricted DMA pool")
> Co-authored-by: Miaoqian Lin <linmq006@gmail.com>
> Signed-off-by: Liang He <windhl@126.com>
> ---
>  drivers/of/device.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index 874f031442dc..75b6cbffa755 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -81,8 +81,11 @@ of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
>  		 * restricted-dma-pool region is allowed.
>  		 */
>  		if (of_device_is_compatible(node, "restricted-dma-pool") &&
> -		    of_device_is_available(node))
> +		    of_device_is_available(node)) {
> +			of_node_put(node);
>  			break;
> +		}
> +		of_node_put(node);

This should be converted to use of_for_each_phandle() iterator instead. 
That takes care of the put here (but not in the break).

Rob
