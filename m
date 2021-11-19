Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DD73456745
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 02:08:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233898AbhKSBL2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 20:11:28 -0500
Received: from mail-oo1-f51.google.com ([209.85.161.51]:43763 "EHLO
        mail-oo1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232373AbhKSBL1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 20:11:27 -0500
Received: by mail-oo1-f51.google.com with SMTP id w5-20020a4a2745000000b002c2649b8d5fso2625998oow.10
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 17:08:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Nl07X1pqpx8geRh2cxLd4Ju9lF6KwEfmJ0AkwUACphE=;
        b=uVCP3l7Uw7Rkzqa8UHqiRvHoVoSmA/iHkD9MD8bviA1uskA9VNGCJVAIqd7f8g1ta4
         fDINQPx3eJ+2ZzGE03uQF0OQInqa4NNKDNmH1hLqwAtzIoPh6LxTF43N+cphmeIcSDI0
         gk8qsKR9fhRftId9B0OdvJfQ24PSPOErbXHBmLwWePH16I+bRzGuvi0tXzWzHygTOFbU
         rUq8DU+bwMVM1NK7x4z+VzysNWfVZd0QwE8YFdkYjiQmXQHURyeEcvG6AhHCKz8vqWny
         DEV2QmTcwEfmL01PxIXKKh/vJYvDmiKBEoI6K6Jyu/MEX8/S4ASBApTK+M/9q22Npn7/
         Cc4A==
X-Gm-Message-State: AOAM533ClvTZ8sbv+uAkKSBSsdrMCjKZbAacfXYTiKCekzokPshPAEKH
        VyAEYsZOmTnRSKJWy5GA5w==
X-Google-Smtp-Source: ABdhPJwnZGC6mR/cCWiBVybeXex5u15BXVqI6oLYPz4nNpWFmHoWYbOfOoCXlxh6JjWrV3eb8Xu00g==
X-Received: by 2002:a4a:d48c:: with SMTP id o12mr15793590oos.55.1637284106636;
        Thu, 18 Nov 2021 17:08:26 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n20sm299854ooe.7.2021.11.18.17.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 17:08:26 -0800 (PST)
Received: (nullmailer pid 2150728 invoked by uid 1000);
        Fri, 19 Nov 2021 01:08:25 -0000
Date:   Thu, 18 Nov 2021 19:08:25 -0600
From:   Rob Herring <robh@kernel.org>
To:     jae.hyun.yoo@intel.com
Cc:     Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        linux-arm-kernel@lists.infradead.org,
        Cedric Le Goater <clg@kaod.org>,
        openipmi-developer@lists.sourceforge.net,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Corey Minyard <minyard@acm.org>
Subject: Re: [PATCH v3 5/6] dt-bindings: ipmi: aspeed,kcs-bmc: add 'clocks'
 as a required property
Message-ID: <YZb5CWKRXdVUzaB6@robh.at.kernel.org>
References: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
 <20211108190200.290957-6-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211108190200.290957-6-jae.hyun.yoo@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 Nov 2021 11:01:59 -0800, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> If LPC KCS driver is registered ahead of lpc-ctrl module, LPC KCS
> hardware block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
> 
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds 'clocks' property as one of
> required properties to enable the LCLK by the LPC KCS driver.
> 
> Note: dtsi change in this patch series should be applied along with,
> and dtbs should be re-compiled after applying this series since
> it's adding a new required property otherwise the driver will not
> be probed correctly.
> 
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> v2 -> v3:
>  * Made commit message more descriptive.
> 
> v1 -> v2:
> Changes sinve v1:
>  * Added 'clocks' property into kcs-bmc bindings using
>    'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
>    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>    separate patch later.
> 
>  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
