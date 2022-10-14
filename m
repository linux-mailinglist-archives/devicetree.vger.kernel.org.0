Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A51B5FF50F
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 23:10:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbiJNVK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 17:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiJNVKz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 17:10:55 -0400
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF4C1AEED7
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 14:10:53 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1326637be6eso7254213fac.13
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 14:10:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfMblHSfuWfvOCZRhBB/EnBt4yulspEG8DpKqnyt/Cw=;
        b=jnk5iy8B8NYp6MWhMRcHxbpMg3Hq+XsG4RMEzVoL0uZvabPd2wv7IpLSUT0yYa2tbG
         0/9YEdbj58G8EAwHM7VnfvipxIPsDZ1nRYueDMErl2bQoHTnWJU0408yf6sbE1UDFbhc
         +WVGGgKHatke7MzLG+G8Yj7yYCpyOJuvlNzq2oT9sIWyvYFuJcPRW1vOoZF8O2XuWj0J
         5ayeqiDouils17bGpIgQES4Ljv+Ar7J/tv+wEmA8oBpUm2tncPDOEUo0iqjv/Hx4jsuZ
         vef6htMO7wrPI1jsloO3ygEfr5BtgMfP+7QP+t+1mlevkzsrysPHxVtct1R0p9s7gOkW
         k/aw==
X-Gm-Message-State: ACrzQf16jQP2uOenHBUPT6N45ONwfkfAGqatV9ZaXy137To6cw3C7N8a
        bjxe7dvPnHXD/FP/WkJCPzRTh+lqYJ4G
X-Google-Smtp-Source: AMsMyM5iOgY1AZ1ePlc+CN46mnaO9sPlTksKS2hYMZBW1EQ3MIFlDtYm2KGQGAZpWBFHyd93t6Hu7g==
X-Received: by 2002:a05:6870:c146:b0:131:6129:3f16 with SMTP id g6-20020a056870c14600b0013161293f16mr3870698oad.141.1665781852984;
        Fri, 14 Oct 2022 14:10:52 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l3-20020a9d7a83000000b00661a2c5fef9sm1753040otn.32.2022.10.14.14.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 14:10:52 -0700 (PDT)
Received: (nullmailer pid 2912398 invoked by uid 1000);
        Fri, 14 Oct 2022 21:10:53 -0000
Date:   Fri, 14 Oct 2022 16:10:53 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yang Yingliang <yangyingliang@huawei.com>
Cc:     robh+dt@kernel.org, frowand.list@gmail.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH -next v2 2/2] of/platform: use of_address_count() helper
Message-ID: <166578185223.2912332.7046418833597488780.robh@kernel.org>
References: <20221008115617.3583890-1-yangyingliang@huawei.com>
 <20221008115617.3583890-3-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221008115617.3583890-3-yangyingliang@huawei.com>
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

On Sat, 08 Oct 2022 19:56:17 +0800, Yang Yingliang wrote:
> Use of_address_count() to instead of open-coding it.
> 
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
>  drivers/of/platform.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 

Applied, thanks!
