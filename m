Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7241938BC1A
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:58:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238063AbhEUB7j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:59:39 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:40647 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238018AbhEUB7i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:59:38 -0400
Received: by mail-ot1-f46.google.com with SMTP id 80-20020a9d08560000b0290333e9d2b247so6123829oty.7
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:58:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XASxSKTST8H3msmy7k2kFv3UAr6tDcERZNo3DL5fULg=;
        b=jNuNOO9fq/ronexdluCpeSXWOyz+YzNBy67yTflfn2hrGFJC8FQ/VK4u2yBAaGXIw5
         52W7CCk4xlh0loN1OnnG5XUWv4nijmx59b+hZvdRGPcpaDv3QthP//0Wd+KAK67Jds57
         4IBaj68jEAjJakW2BGwNZf5Vwk5FdSGy/j+nU2hbW22f9Mor7YBainm5iFy77yK1kZHR
         4aIWQBwa3X2X/UmiGLG7Z4c8I8tpkrqqysuuZMLv1yXL41yZaa4dxMjWSy5+1D6Ilsb8
         tuwY4uUGFb2hdOWJnsvcjTqGhMMUZfBm+8kTbU0AgRCxrPgSd3M/8Iz+MSpnT4k9+A2A
         MIRw==
X-Gm-Message-State: AOAM532HERZNgTPTM73UoZZHPx/5Ie0LkYAIP243abvrZlQmRoo4zS9g
        EvXEXl+FL579RbjCFiqL9k1Ggaoy1w==
X-Google-Smtp-Source: ABdhPJxpaVJzfUyPRKjQhljXhKDI1D3iFlMTg7PvdkELuVSdB+sJrtO2mbvZ/XUR1oJwny02ByLN3w==
X-Received: by 2002:a05:6830:1656:: with SMTP id h22mr6171588otr.371.1621562295370;
        Thu, 20 May 2021 18:58:15 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j20sm750302oot.29.2021.05.20.18.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:58:14 -0700 (PDT)
Received: (nullmailer pid 2495285 invoked by uid 1000);
        Fri, 21 May 2021 01:58:13 -0000
Date:   Thu, 20 May 2021 20:58:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Helmut Grohne <helmut.grohne@intenta.de>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v20 04/19] dt-binding: memory: pl353-smc: Describe the
 child reg property
Message-ID: <20210521015813.GA2495194@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-5-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-5-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:21 +0200, Miquel Raynal wrote:
> Each chil node should have a reg property, no matter the type of
> controller (NAND, NOR, SRAM). This should be part of the bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/memory-controllers/pl353-smc.txt      | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
