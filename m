Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08084443AA7
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 01:59:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbhKCBCE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 21:02:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbhKCBCB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 21:02:01 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1998BC061714
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 17:59:26 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id s9so940089qvk.12
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 17:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=h+FtktSBGtvGfOhDF8b/AVzYi4kQSm1ZeFNNHmkXlFM=;
        b=EwMeJReSB5I3854NCV6PTfVNODDjMfIi7fXVX8sLNAJs7szQ29jOR43a/0naPxh2FK
         dYsrIIHNLkKVPC5A22c6boDvb701j14lPPb+5phW1XD9OAVjnwy+ZiBwJrCF0+e/H10a
         nJ373Y21PHBNgyGe/nfkntnZEPgpUUZ+yNelpZTazNFvpBaR4tSM8wi21KL1yLnoTYjz
         hwE4jYmUw735v8q9GWZLc+YkqF7MGBi82AZvMVfxDJwNbS4YyeMPDZ0XWNTAEYCh2bsc
         /UwE/6tw8UWH13cKDz8iUzJ6jek7l8Beiti5KmIuJ5+5M5fV3ZtdsKxreqWcyLmLrAxv
         I1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to;
        bh=h+FtktSBGtvGfOhDF8b/AVzYi4kQSm1ZeFNNHmkXlFM=;
        b=0dTklPaZgZTTrLcdlG1oa1+e6FrjVOQD+u0JsDjy5Bc3KFu12UjwWVnceJF672MF53
         HgNKcwtaJ69uEYUtxXSHZoCa9G8HBWQc6qXB6hiw24jJTIut2ZNk8AXQekikLrPfVgsn
         BLoG+dgRcxTRN0F2bC6WJyEA1EEywJCknwh8y0TzQIRPHQWWCtpCpbK6fV9jJllAAiHa
         /Qm0Tc+J6aCVkGHaRmTnen89g9lAePXfSGa90FuG5G6tX5ICnOBES8M1R5OAxBl+FtBl
         7CDFgslQWYqlgosVxqnP7LKEj3bJUi0tQVl4YaYXBgnkL4kZcXfsBYpTwbzyWUq+JKsY
         QTOw==
X-Gm-Message-State: AOAM532Ik6c7o53l9eFiF2biAsmpCDHSAUs2RclVJip8bIupVyptjXuE
        9f6iEFP9sYejrYCtjS9tf5DqPkhR4e7c
X-Google-Smtp-Source: ABdhPJxYTFe+/H+/2eDVPHUh15JejRMXQsnrYykDake5H7RlOjK7ucGttAIR9G3rOVHtpUjv1Ci7og==
X-Received: by 2002:a05:622a:d5:: with SMTP id p21mr26792476qtw.44.1635901165049;
        Tue, 02 Nov 2021 17:59:25 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
        by smtp.gmail.com with ESMTPSA id q4sm427526qkn.61.2021.11.02.17.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 17:59:24 -0700 (PDT)
Sender: Corey Minyard <tcminyard@gmail.com>
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:b4e0:932d:f90c:fafb])
        by serve.minyard.net (Postfix) with ESMTPSA id 93C741800B9;
        Wed,  3 Nov 2021 00:59:23 +0000 (UTC)
Date:   Tue, 2 Nov 2021 19:59:22 -0500
From:   Corey Minyard <minyard@acm.org>
To:     jae.hyun.yoo@intel.com
Cc:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
Subject: Re: [PATCH -next v2 0/6] Add LCLK control into Aspeed LPC sub drivers
Message-ID: <20211103005922.GN4667@minyard.net>
Reply-To: minyard@acm.org
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 02, 2021 at 01:37:11PM -0700, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> Hello all,
> 
> This series is for appliying below fix to all Aspped LPC sub drivers.
> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/

Ok, I've added this to my next tree.

There was some duplicated code between the aspeed and bt files, but I'm
not sure it's enough to matter.

-corey

> 
> An LPC sub driver can be enabled without using the lpc-ctrl driver or it
> can be registered ahead of lpc-ctrl depends on each system configuration and
> this difference introduces that LPC can be enabled without heart beating of
> LCLK so it causes improper handling on host interrupts when the host sends
> interrupts in that time frame. Then kernel eventually forcibly disables the
> interrupt with dumping stack and printing a 'nobody cared this irq' message
> out.
> 
> To prevent this issue, all LPC sub drivers should enable LCLK individually
> so this patch adds clock control logic into the remaining Aspeed LPC sub
> drivers.
> 
> Please review this series.
> 
> Thanks,
> Jae
> 
> Changes sinve v1:
>  - Added 'clocks' property into ibt and kcs-bmc bindings using
>    'aspeed,ast2400-ibt-bmc.txt' and 'aspeed,ast2400-kcs-bmc.yaml'
>    respectively because these are not merged into 'aspeed-lpc.yaml' yet.
>    The bindings merging could be done using a separate patch later.
> 
> Jae Hyun Yoo (6):
>   ARM: dts: aspeed: add LCLK setting into LPC IBT node
>   dt-bindings: ipmi: bt-bmc: add 'clocks' as a required property
>   ipmi: bt: add clock control logic
>   ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
>   dt-bindings: ipmi: aspeed,kcs-bmc: add 'clocks' as a required property
>   ipmi: kcs_bmc_aspeed: add clock control logic
> 
>  .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt  |  2 ++
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml |  7 +++++
>  arch/arm/boot/dts/aspeed-g4.dtsi              |  1 +
>  arch/arm/boot/dts/aspeed-g5.dtsi              |  5 +++
>  arch/arm/boot/dts/aspeed-g6.dtsi              |  5 +++
>  drivers/char/ipmi/bt-bmc.c                    | 24 +++++++++++++-
>  drivers/char/ipmi/kcs_bmc_aspeed.c            | 31 ++++++++++++++++---
>  7 files changed, 70 insertions(+), 5 deletions(-)
> 
> -- 
> 2.25.1
> 
