Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B17AA38BC14
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:57:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237998AbhEUB7O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:59:14 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:40625 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237991AbhEUB7K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:59:10 -0400
Received: by mail-ot1-f54.google.com with SMTP id 80-20020a9d08560000b0290333e9d2b247so6123149oty.7
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:57:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9L7pKcvqI0fsrhbEbHnXQEuzxdv5ou6NPrrXgllc7Dk=;
        b=h74irAd7u4L/JrL/DKABIyZMH3lmBjdlIwPITyjOCjND9jQ6d0YfXzuhSy0wmn8TFx
         QSPVTxiktb27bL76YCGKVB+lZye07735OMhWW3k+rgaXW4an9LvF6Tgi+oERYNuoPEPk
         H3kSmNaU6bowmtANJLT6YazRS80LQamD0qbwR+Ijfi5y1HysbqXhjlUrUNLuTOfLvgcA
         2gbPCf8vSWTIM5Zm11BxuziPqky7cPpvun5/ZNNvE2LUOaRppC8qM6L7bZu5Cb7yY9aE
         45MISxJ/Cq5lY/1l5UvkW1NWihQ1gqTS9Mhgy6CX4uEWVqjDhaTIiksX+AIaYSs4fuxa
         dX1g==
X-Gm-Message-State: AOAM533v5VmfEQEdCVAzUdQG7WZHAaqrgR6iNKc404uVPRhFLbkFgY9m
        GunL3CLx7K+AZn53q4xNUg==
X-Google-Smtp-Source: ABdhPJyaGIey5VcnOZaNjzuo/5KXRneEgguzjndJceFStXPXWdk4ti/MCiRd7D2fvjVBthWd77/V9g==
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr5900711oth.306.1621562267864;
        Thu, 20 May 2021 18:57:47 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l9sm913590oou.43.2021.05.20.18.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:57:47 -0700 (PDT)
Received: (nullmailer pid 2494214 invoked by uid 1000);
        Fri, 21 May 2021 01:57:46 -0000
Date:   Thu, 20 May 2021 20:57:46 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Michal Simek <monstr@monstr.eu>, linux-mtd@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Richard Weinberger <richard@nod.at>,
        Helmut Grohne <helmut.grohne@intenta.de>
Subject: Re: [PATCH v20 02/19] dt-binding: memory: pl353-smc: Document the
 range property
Message-ID: <20210521015746.GA2494157@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-3-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:19 +0200, Miquel Raynal wrote:
> The ranges property is missing in the description while actually used in
> the example. This property is actually needed, so mention it.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/memory-controllers/pl353-smc.txt         | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
