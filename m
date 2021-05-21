Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7241738BBFE
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237839AbhEUBxU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:53:20 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:37690 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237820AbhEUBxU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:53:20 -0400
Received: by mail-oi1-f169.google.com with SMTP id h9so18302581oih.4
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:51:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ebKIpo/U5Im5t5DrUZKKUiU83lrK2yYkjJaZaQ7BQj8=;
        b=tmlO7reXkQMgifd18T8+cs49C30xfpEEL/I7medKLv4WGH30ItpFIZlj6pZ7PrKV+v
         69UEtxsXmysLF3b9ai9REk9wi0G5EnURchRY1Zo6wd7L1Rxa2KfO6G4sDOGwP4MNhmmJ
         aupckUyBTEt4UeG0D8JsV88zUZWdxmiKTLIyN7/alWGqK4AUa5V0xor3pVAAe8hz5jUt
         XyrU1ofdD14c+E2zWRrfnjOEFPIkobUNxT0EvKjzTFazPQ/4vE6wJFlcsbbpzhFaOIMY
         QoGFtN7TBLIP0sZ4tgoALln7KWoPk3EKDNSILwADskw1r4HdO7AdFhSpUF0dL6qpOr+w
         AMjw==
X-Gm-Message-State: AOAM5307cR1JPz2fSj2No0Ycxur4SKJg/ka8D7tLxr6Qa1D4Ihfm/IjK
        Ny4gDyxPZrddWoqC0XyWGq0upuNiFw==
X-Google-Smtp-Source: ABdhPJytGTz21FqcBPIO+itCvblm5s0Ngtzf2eso9fjniOmIpY/TNIAWq6FKMB9qAbqhyET5/v9OmA==
X-Received: by 2002:aca:d409:: with SMTP id l9mr301812oig.77.1621561917660;
        Thu, 20 May 2021 18:51:57 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n17sm917860oij.57.2021.05.20.18.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:51:57 -0700 (PDT)
Received: (nullmailer pid 2483654 invoked by uid 1000);
        Fri, 21 May 2021 01:51:55 -0000
Date:   Thu, 20 May 2021 20:51:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Richard Weinberger <richard@nod.at>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Helmut Grohne <helmut.grohne@intenta.de>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>
Subject: Re: [PATCH v20 01/19] dt-binding: memory: pl353-smc: Rephrase the
 binding
Message-ID: <20210521015155.GA2483595@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-2-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:18 +0200, Miquel Raynal wrote:
> Reword this document before converting it to yaml.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/memory-controllers/pl353-smc.txt         | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
