Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7DDD38BC18
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:58:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237989AbhEUB7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:59:21 -0400
Received: from mail-oo1-f52.google.com ([209.85.161.52]:33642 "EHLO
        mail-oo1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238069AbhEUB7U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:59:20 -0400
Received: by mail-oo1-f52.google.com with SMTP id j17-20020a4ad6d10000b02901fef5280522so4256880oot.0
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:57:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q3AVBLeEjNCGN7VKTkQFrmo0hpViq6C5T/td9kc4Wtc=;
        b=IaiOz0qMmdDKLKr47C7Zq+Rzwx3PVFkIOB8d7OILtsxc4/r6vmOp7aBvZDt2dBT2PA
         Amv8bFAqE9PPWL/PLV716Vngi4bqD3MvI5ufopTlCzKTDw+mq5wYDzSW0xSwsOyxrkeL
         dzOwJ21wDknMAEcw9+JCiXjXUHVnK/ea9DwSk2jA5jgivuL/OQo50Hof9oGdLF+1vBk3
         CEdSubq4glylbhabv3lduENThCoOWJSrd88sNoNrxxt6gUBl3DP6/zNSRh4W4x0IAYOJ
         ZvgT9wdSOd5V76z6ExAfJ4gUMOBbwsIcM0QJahLI/eXtDiXSB4HghFl1hFxPAQrjBEUj
         E7Nw==
X-Gm-Message-State: AOAM5300FiajAN0BMnMnYPWsvdY1cQ40a5bYskRxL/NpjffzWS06hrBd
        6Xwt2ZWGHIAqeS+8hMruYg==
X-Google-Smtp-Source: ABdhPJyM3l84gvuir/2ulWRoGXGz1qtS2ZijHaIYTaoX19YDlJHfqGi8aGyPcL4RD9+2kOnB8Yhn6Q==
X-Received: by 2002:a4a:b402:: with SMTP id y2mr6035318oon.87.1621562278050;
        Thu, 20 May 2021 18:57:58 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y14sm974929otq.4.2021.05.20.18.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:57:57 -0700 (PDT)
Received: (nullmailer pid 2494659 invoked by uid 1000);
        Fri, 21 May 2021 01:57:56 -0000
Date:   Thu, 20 May 2021 20:57:56 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Michal Simek <monstr@monstr.eu>, devicetree@vger.kernel.org,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Srinivas Goud <sgoud@xilinx.com>,
        Helmut Grohne <helmut.grohne@intenta.de>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v20 03/19] dt-binding: memory: pl353-smc: Drop the
 partitioning section
Message-ID: <20210521015756.GA2494603@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-4-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-4-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:20 +0200, Miquel Raynal wrote:
> This sentence does not belong to this file as this file describes the
> bus on which various controllers are wired to.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/memory-controllers/pl353-smc.txt        | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
