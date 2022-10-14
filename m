Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C250C5FF50D
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 23:10:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbiJNVKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 17:10:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiJNVKr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 17:10:47 -0400
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76062182C62
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 14:10:46 -0700 (PDT)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1324e7a1284so7288358fac.10
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 14:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTg3VOtYUy6KwfdTubwZlpR2bbgBtcoZg2Rent6kAWk=;
        b=rNH4ULMWDeL/TgrPS5mghohb+4m/oaxrR3MYSXN5MD8+0K/9RS3KaF+56YgOkMZnBo
         BZTq7ljlbpGJeSHRD7Ut4Pre5MJHuLC70gtNUlyXKbfFEmTtIms5ZOcUfp0RF+pOGmUW
         s+hFfj3OouWfTZwwYuKcsdS50p3EHWag+cgNnDUJBXCluBdQ0FTQ1t+ZoaG9cmR/Sics
         nKekaO0AedsqWGRsWy2K1g8/dMU1ZHQM32hciN3wdX0B/Wg5q5bOHU1kgePy57tJTuXi
         i47fQpXFa4i7dZfzdn1ogXokrZEfADfDf5JY+MotltOxW+UB+uCb+YKgpkVvydN58LAE
         7Zog==
X-Gm-Message-State: ACrzQf30c9s0phmvJLV/PXNvvcQRQ+a+aYq28M3+xlZ8hMhqIVbpxojU
        3a4KkbOKUvT6JQdzIA+R9g==
X-Google-Smtp-Source: AMsMyM4mT4FASBIdYMfyiBriDTl9MgkYn6LddPepoBwjhVETgQGH5ykAURs1JOGsGpctJMsv+uJECw==
X-Received: by 2002:a05:6870:3397:b0:133:f7:a730 with SMTP id w23-20020a056870339700b0013300f7a730mr9626786oae.281.1665781845734;
        Fri, 14 Oct 2022 14:10:45 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y3-20020a056870418300b0011f400edb17sm1911505oac.4.2022.10.14.14.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 14:10:45 -0700 (PDT)
Received: (nullmailer pid 2912093 invoked by uid 1000);
        Fri, 14 Oct 2022 21:10:45 -0000
Date:   Fri, 14 Oct 2022 16:10:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yang Yingliang <yangyingliang@huawei.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        frowand.list@gmail.com
Subject: Re: [PATCH -next v2 1/2] of/address: introduce of_address_count()
 helper
Message-ID: <166578184299.2912001.12592900941569120734.robh@kernel.org>
References: <20221008115617.3583890-1-yangyingliang@huawei.com>
 <20221008115617.3583890-2-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221008115617.3583890-2-yangyingliang@huawei.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 08 Oct 2022 19:56:16 +0800, Yang Yingliang wrote:
> Introduce of_address_count() helper to count the IO resources
> instead of open-coding it.
> 
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
>  include/linux/of_address.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Applied, thanks!
