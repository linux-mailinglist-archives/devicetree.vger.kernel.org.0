Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A35338BC0F
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 03:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237972AbhEUB6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 21:58:41 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:43961 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237361AbhEUB6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 21:58:40 -0400
Received: by mail-ot1-f46.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso6019300otu.10
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 18:57:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=V/grUGlZ1IOFucqyPu1CObFEALt2O4ZD4el/NT6r+AA=;
        b=oB9SHrzu5ohsnMZQBvi3if+XAT6+0h0yaJzW2HfZqvrCRm+oJGzeESjs0MunuQAn0I
         IBxN7zpJrchHfLqLbLT327jjdfphfkVfnvBWMUInCJkyk/6kWwchZfOrlRJ57+/MgXqU
         e92D3RKp3rY/5UXHdaXbhfuPertd3XICv/juvcnX+7GFidUcl6rwO15r5mJcrOgpFwek
         hIe8AOsYvGx5Sk5T4PgP4x7Mb0WV6W7YY0Tf1+LlURnu0vpywFueehdVZ5SRMhDzflQD
         +pQ2OBziBdHqCQf4p4DoduGoaC0jQZIuiif3momoxhIdOJS5AXpEvAdlTylTQfo7zQzl
         q+nw==
X-Gm-Message-State: AOAM530xe9xw1FigNRxo6JLgAem8PUZIf0Kb0Pvo/XfPI/rktqXcG3d0
        /5T5IEbzzE0aWbH7sCUmVA==
X-Google-Smtp-Source: ABdhPJxEPcmZQvSzJGRoVQ+CrSc/49kjuaLmfEwdVox1OJQKcJpkq2hiA9TKlvYkZ9w+0VJqBHyO+A==
X-Received: by 2002:a05:6830:1e8b:: with SMTP id n11mr6196444otr.327.1621562238249;
        Thu, 20 May 2021 18:57:18 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n13sm911690oov.30.2021.05.20.18.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:57:17 -0700 (PDT)
Received: (nullmailer pid 2493231 invoked by uid 1000);
        Fri, 21 May 2021 01:57:16 -0000
Date:   Thu, 20 May 2021 20:57:16 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Helmut Grohne <helmut.grohne@intenta.de>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Subject: Re: [PATCH v20 09/19] dt-binding: memory: pl353-smc: Detail the main
 reg property content
Message-ID: <20210521015716.GB2483864@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-10-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-10-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 08:26:26PM +0200, Miquel Raynal wrote:
> Describe the two reg entries: the first one will receive the
> subcontroller configuration, the second one is for the regular cycles on
> the memory bus (eg. CMD, ADDR, DATA for a NAND device).
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/memory-controllers/pl353-smc.txt        | 2 ++
>  1 file changed, 2 insertions(+)

This and patch 8 look like 1 change to me (if it stands).

> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> index 9d220d4cb39d..d388bb87365f 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> @@ -6,6 +6,8 @@ of memory interfaces: NAND and memory mapped interfaces (such as SRAM or NOR).
>  Required properties:
>  - compatible		: Should be "arm,pl353-smc-r2p1", "arm,primecell".
>  - reg			: Controller registers map and length.
> +			  First entry is for the configuration registers,
> +			  second entry covers the memory bus transfers.
>  - clock-names		: List of input clock names - "memclk", "apb_pclk"
>  			  (See clock bindings for details).
>  - clocks		: Clock phandles (see clock bindings for details).
> -- 
> 2.27.0
> 
