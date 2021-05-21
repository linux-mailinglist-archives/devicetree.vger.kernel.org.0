Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FF6438BC20
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:58:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238126AbhEUCAK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 22:00:10 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:38568 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238017AbhEUCAK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 22:00:10 -0400
Received: by mail-ot1-f45.google.com with SMTP id i14-20020a9d624e0000b029033683c71999so5495114otk.5
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:58:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8E3lx0LtnmXkn4zmw+kmVk+CeXLZmUSlDecTRGiMrEU=;
        b=a5G+U9gfEsTCQA9EmfdM4sXwtf9AUvonwL45VLhBWDDxQ07A42QQnasKn4gao4GSIt
         +oJW0A9laeYt0/lp3vVHLdar4rOQSYMBPZ8EYoifFEpC8YEwLaXcMuI0sMdIMSpgZlsG
         3DOxf/VwhJasGgOtypkJMp6BIyDqnzDdy6GTguhb6ah7ppccrHMpVfLG+xgYO1TifYYb
         AUzBOTwFdTUipGP+yqmB6tT6rwsUFEOY3mUlQ+sbWQP7sAVxbwIKeqshKvFF7wGC0GFi
         WUXNbaUs7c7/zS8xiNbQvJWSutzB7y1W4lYHeZHsIs5qK6mVALakyq9AQeTkg/5DBb2D
         Rvgg==
X-Gm-Message-State: AOAM531LfzwKlX+FVAX2GjMZL2DSEy3OKniwjnl0fkVrMMkyhNZPT4+H
        DvNnYssFMCx6z4h1HfKQfg==
X-Google-Smtp-Source: ABdhPJznIlvVhog9VmvyTBs+XWtmbCFcpljzvpaYjzBLXyIS6rKxyqFFbDTryMIBOUOn9a5QCE3W3A==
X-Received: by 2002:a05:6830:4da:: with SMTP id s26mr5961025otd.77.1621562327848;
        Thu, 20 May 2021 18:58:47 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t26sm1016521otc.23.2021.05.20.18.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:58:47 -0700 (PDT)
Received: (nullmailer pid 2496601 invoked by uid 1000);
        Fri, 21 May 2021 01:58:46 -0000
Date:   Thu, 20 May 2021 20:58:46 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Michal Simek <monstr@monstr.eu>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        devicetree@vger.kernel.org,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        linux-mtd@lists.infradead.org, Richard Weinberger <richard@nod.at>,
        Helmut Grohne <helmut.grohne@intenta.de>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>
Subject: Re: [PATCH v20 07/19] dt-binding: memory: pl353-smc: Fix the NAND
 controller node in the example
Message-ID: <20210521015846.GA2496572@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-8-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-8-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:24 +0200, Miquel Raynal wrote:
> To be fully valid, the NAND controller node in the example should be
> named nand-controller instead of flash, should be at the address @0,0
> instead of @e1000000 and should have a couple of #address-cells and
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/memory-controllers/pl353-smc.txt      | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
