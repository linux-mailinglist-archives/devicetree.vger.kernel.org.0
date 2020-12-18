Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 436812DEAF0
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 22:20:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727117AbgLRVSQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 16:18:16 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:43416 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgLRVSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Dec 2020 16:18:16 -0500
Received: by mail-ot1-f51.google.com with SMTP id q25so3236775otn.10
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 13:18:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FmqKWYqfSjPfm/cDX80SI5DAuG0s2IxeZrQ3jbYh+Io=;
        b=ITpXkR90zUudMlIzu+yE/1ScmDe7YifKlq6kYY3IR8K6vhUUC/vm3p1DFe5+Q9vJ2C
         xqYiL8d/qzFDJP2EAqGvpCz/MFR1JJWRejjYs33aEx23jStXjhz/4TuCZSvM54ipnfUK
         qvjzL2aLtmYctH9sG4QnC6uakaeou8+h2sLGnztQKU4BxCKljXdnGDGQx6mDfDqcA6r6
         j5QoANnbq8OhEO/CW8vhl2Syny8mWsk/lo1FDR9+SKQIIjN0QF6gLrsx5ZXgEYfggPJC
         ufx9XvXH1pd6a/ZHgpolujVZGloaWN6RoJFuqh/xfiNlHwxzk40R2l8196Ss9VCdKZOn
         Q2Vg==
X-Gm-Message-State: AOAM530h50Cz5A8se19PisRQxzR8ZRmmR1YSPen2tMmxPDnyjzOY8nzO
        qv2AAEZW90na301ymIDgMg==
X-Google-Smtp-Source: ABdhPJxRmMg2yZ+Pv2wukFw99UfSiq8BHHl1aohV0NTbNZD9/WSCQgBDbiXuE8xqEc5zUq4tB4QqRw==
X-Received: by 2002:a05:6830:2363:: with SMTP id r3mr4247239oth.282.1608326255085;
        Fri, 18 Dec 2020 13:17:35 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t25sm195143oic.15.2020.12.18.13.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 13:17:34 -0800 (PST)
Received: (nullmailer pid 2191190 invoked by uid 1000);
        Fri, 18 Dec 2020 21:17:33 -0000
Date:   Fri, 18 Dec 2020 15:17:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Michael Tretter <m.tretter@pengutronix.de>
Cc:     kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, michal.simek@xilinx.com,
        robh+dt@kernel.org
Subject: Re: [PATCH] dt-bindings: xlnx, vcu-settings: fix dt_binding_check
 warnings
Message-ID: <20201218211733.GB2190633@robh.at.kernel.org>
References: <20201202090522.251607-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201202090522.251607-1-m.tretter@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Dec 2020 10:05:22 +0100, Michael Tretter wrote:
> When running make dt_binding_check, the xlnx,vcu-settings binding
> triggers the following two warnings:
> 
> 	'additionalProperties' is a required property
> 
> 	example-0: vcu@a0041000:reg:0: [0, 2684620800, 0, 4096] is too long
> 
> Fix the binding and make the checker happy.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> 
> Hi,
> 
> The xlnx,vcu-settings binding was reviewed [0] before the bot started to
> run automated tests on the device tree bindings, but now produces some
> warnings. The original patch that introduces the binding is still in
> Michal's tree and I am not entirely sure how to handle it, but here is a
> patch.
> 
> Michael
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20200429213659.GA9051@bogus/
> ---
>  .../bindings/soc/xilinx/xlnx,vcu-settings.yaml    | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 

Applied, thanks!
