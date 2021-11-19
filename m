Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8D4D456741
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 02:07:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233892AbhKSBKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 20:10:52 -0500
Received: from mail-oo1-f43.google.com ([209.85.161.43]:43745 "EHLO
        mail-oo1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231895AbhKSBKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 20:10:52 -0500
Received: by mail-oo1-f43.google.com with SMTP id w5-20020a4a2745000000b002c2649b8d5fso2625551oow.10
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 17:07:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=J7xF1Ruy1Zsr5uKClLiAhJlFdT48GSxSjpTzyXQZLA0=;
        b=X/v7aqt9+zIXntLhJVeC9p6Y9Y9rBsW050xNGdFPTgxg9HQKTjDos9XkjFm5MRHeHb
         1Pcvc1SwQHSyb6KvH7sJ4rTZySIlsnKP0QLDNAIMf4ZBDewzGwW6kKM2/1Rnlpy3riVU
         9BpHgUEwbbupyGijRKOhRs0wC5b7oBRfc08PVLP8EoofF60VxTJz3sPH3s/l1ZjnWg2I
         jz52+drsTceCS2t39TBb46XlK39rbgqo5oacKWYZAf36DMEJZ0O1JyYTnL/rlf+RuO4f
         H+VAg7pKtBC9vhuxjtH0c+L1KRVgGTciLfU6yTnlmx70VoMsw9aXfy9ir7wZJ0ct8ySB
         dVaw==
X-Gm-Message-State: AOAM530F6cgS8Y10OCdFmpEBb6usomL0yQWYf9krvjSE0TBJHhdyij4F
        mE4AAyK6g/gJlbzmbQX45A==
X-Google-Smtp-Source: ABdhPJzKo6/FJsF2qo0j7tAC6njlrJY9RLRXANHnK2WNurzqGE9JuI5HAEV1whTDVB7SAhWJkWjctQ==
X-Received: by 2002:a4a:d284:: with SMTP id h4mr15642824oos.31.1637284070896;
        Thu, 18 Nov 2021 17:07:50 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id x16sm287467otq.47.2021.11.18.17.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 17:07:50 -0800 (PST)
Received: (nullmailer pid 2149582 invoked by uid 1000);
        Fri, 19 Nov 2021 01:07:49 -0000
Date:   Thu, 18 Nov 2021 19:07:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     jae.hyun.yoo@intel.com
Cc:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        Corey Minyard <minyard@acm.org>, devicetree@vger.kernel.org,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        linux-arm-kernel@lists.infradead.org,
        openipmi-developer@lists.sourceforge.net,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        linux-aspeed@lists.ozlabs.org, Joel Stanley <joel@jms.id.au>,
        Cedric Le Goater <clg@kaod.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: ipmi: bt-bmc: add 'clocks' as a
 required property
Message-ID: <YZb45WLaOzRtW9+g@robh.at.kernel.org>
References: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
 <20211108190200.290957-3-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211108190200.290957-3-jae.hyun.yoo@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 Nov 2021 11:01:56 -0800, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> If LPC BT driver is registered ahead of lpc-ctrl module, LPC BT
> hardware block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
> 
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds 'clocks' property as one of
> required properties to enable the LCLK by the LPC IBT driver.
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
>  * Added 'clocks' property into ibt bindings using
>    'aspeed,ast2400-ibt-bmc.txt' because it's not merged into
>    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>    separate patch later.
> 
>  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
