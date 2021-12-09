Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91C6246F1EE
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 18:30:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242989AbhLIReC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 12:34:02 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:35570 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242968AbhLIReB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 12:34:01 -0500
Received: by mail-oi1-f170.google.com with SMTP id m6so9673998oim.2
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 09:30:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=N0T08ksgXMCLViURGUwMb3U9oQLd3nubMOx0K4G7hp4=;
        b=28zjBpeH5zzvk80L2gXfLMemFLkaEXHZC1yLonlxA9avqnV8/Mc0y7zL8KpvI4JPa9
         OYWLWS2vGGZXQ3rbbSrpjdg982L28DF21363+0L9VuA1evrKUH0Y+Xl0sykEl0TyoBpC
         PRUC+WswILtT8YV933EMf7YSzLq0d2XXvFdFdDfMOJBCantbCg2Fw5wXTyl2jEvEvVpz
         FQM+K2i5vn8H5iimFe3S4CiN3YEAUlZ00Zp1a5ZJ87Vvfelb3AgcBzUX3XzDevU4pwL6
         xuF3q0h2dumoVAMK6V+Mf4bCGb5JFxxTm1xj+1FJGAnslQqYrDracKJENWe3jvBG2atA
         cYUQ==
X-Gm-Message-State: AOAM532fzqOpd9fWsyiPFdXtN9G5qRyufJeG8DojIJM7VABAc3zCz3lg
        CAvhw48Qt7EOWT1cJzu9RQ==
X-Google-Smtp-Source: ABdhPJx+yFqLwj3iPKKgdObM5ybCtYcJyqdmvVxALW1Jf9DTPEJv/3UCWPkmYSMQiNj9rq6QXqlR+A==
X-Received: by 2002:aca:ac8e:: with SMTP id v136mr7019415oie.19.1639071027686;
        Thu, 09 Dec 2021 09:30:27 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id f20sm105773oiw.48.2021.12.09.09.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 09:30:27 -0800 (PST)
Received: (nullmailer pid 3249197 invoked by uid 1000);
        Thu, 09 Dec 2021 17:30:26 -0000
Date:   Thu, 9 Dec 2021 11:30:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Hector Martin <marcan@marcan.st>
Cc:     linux-arm-kernel@lists.infradead.org,
        Sven Peter <sven@svenpeter.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: power: apple,pmgr-pwrstate: Add
 apple,min-ps prop
Message-ID: <YbI9MrCGvx7JOeLq@robh.at.kernel.org>
References: <20211209044501.67028-1-marcan@marcan.st>
 <20211209044501.67028-2-marcan@marcan.st>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209044501.67028-2-marcan@marcan.st>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 09 Dec 2021 13:44:59 +0900, Hector Martin wrote:
> A few devices (DCP/DCPEXT) need to have the minimum power state for
> auto-PM configured. Add a property that allows the DT to specify this
> value.
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>
> ---
>  .../devicetree/bindings/power/apple,pmgr-pwrstate.yaml    | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
