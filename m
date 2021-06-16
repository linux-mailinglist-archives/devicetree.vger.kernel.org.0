Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A97BB3AA7AD
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:46:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232783AbhFPXsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:48:13 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:38486 "EHLO
        mail-io1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234777AbhFPXsM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:48:12 -0400
Received: by mail-io1-f45.google.com with SMTP id h5so1087867iok.5
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JYuZ3r/sj5OYp1JtoZOnJCPxzZdULX5CVuo0+FTaYXI=;
        b=RjYEnTwwwkEr2A3zhTo1z+jqVMyY1MVDlJgm9CdNCKJ7XMAm6w4lB1lR3PfEr+EqNY
         jdFPML3LHZ7NzWa+9GubqsfRt/8M+Wvo34RidnC3ZzwjPg0ll3YO30/ixGpd5fVAuqwg
         7vztDBZnqL2jxZegrH78M7Okw1epqM2oerj8gP/stUgTTRZyuygDvdwm+K9cvkZc4p3S
         ql2Maklt5RAJ8w4lBNmOsIXnr1qppZe7KJOgr5A2tAiz0dS27SSzGNZtF/5E1g+t1Ust
         SkCnt28GFw+rrUZN0Dl1GfdQYAANtj/HV6kRjnKMVtNnppsRpCR9ircp/iULA4OyfMjL
         gnCA==
X-Gm-Message-State: AOAM532WElQuXU7wLJEiJjvdS9Z3emchYTRQpcS6t0TWXxVhiOIdrt5C
        T9UsCvEogdrrJfQ55Cc6/A==
X-Google-Smtp-Source: ABdhPJymPmjF07zm+OIOvaNFmOw24UONGfn9CZNQoXc1hlEUq2WNj+n1/gDtjOSJNNT1V+5x2OoHag==
X-Received: by 2002:a05:6602:2283:: with SMTP id d3mr1444805iod.121.1623887165570;
        Wed, 16 Jun 2021 16:46:05 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id j4sm1952688iom.28.2021.06.16.16.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:46:04 -0700 (PDT)
Received: (nullmailer pid 309019 invoked by uid 1000);
        Wed, 16 Jun 2021 23:46:01 -0000
Date:   Wed, 16 Jun 2021 17:46:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, festevam@gmail.com,
        linux-imx@nxp.com, linus.walleij@linaro.org, aisheng.dong@nxp.com,
        kernel@pengutronix.de, sboyd@kernel.org, s.hauer@pengutronix.de,
        shawnguo@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 08/11] dt-bindings: arm: fsl: Add binding for imx8ulp evk
Message-ID: <20210616234601.GA308972@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-9-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-9-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Jun 2021 16:39:18 +0800, Jacky Bai wrote:
> Add the dt binding for i.MX8ULP EVK board.
> 
> i.MX 8ULP is part of the ULP family with emphasis on extreme
> low-power techniques using the 28 nm fully depleted silicon on
> insulator process. Like i.MX 7ULP, i.MX 8ULP continues to be
> based on asymmetric architecture, however will add a third DSP
> domain for advanced voice/audio capability and a Graphics domain
> where it is possible to access graphics resources from the
> application side or the realtime side.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
