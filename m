Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D750520E917
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2020 01:15:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727858AbgF2XID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jun 2020 19:08:03 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:42956 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727819AbgF2XID (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jun 2020 19:08:03 -0400
Received: by mail-io1-f67.google.com with SMTP id c16so19013938ioi.9
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 16:08:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Qa+3ZZE8Xi4EQp7D6ptCyZsYc29I75iWQWq+6E6hJuQ=;
        b=LF8fz6z4eu7lLFGowXI4isk7Vip8BgkS5irLHHG4kS0JbRNRU8yNSXu/MjId6rIDwD
         VxoTLubAU18At4wPsITkdLBmOT+ViDvhZk+/ukzxXhuVM1KbK0s/NZ1wXeb/Ne7w2lf/
         MzmIJxhjm40l+vlkgb8Y0APt51UkMkrBbqPMlC+Snq7MsGBSUlRkkU6yVPgBHLDa4Imh
         NRS3F5Y34hlJcO7NzdBOxWVVjpN5NOeDsg9R2JOjlVImeCu8YIXIGTghvlhqcTiHUOT5
         ZcXFZZEHp+9IPsHZudSDoXZOuwY3nTQ9ouPaJCatMHbAWT5LFYPxkz9uvLK620NfuDoX
         eadA==
X-Gm-Message-State: AOAM533koFXdBI7tAmd/qFo02vO/dIzRrmJgXWZPd3MZxUbstD+KvYfr
        PKFKsMtu2fsyRXVmxLuqBA==
X-Google-Smtp-Source: ABdhPJzPC+YcCSiHde0I1w4PXp0jjmzG9gKLew/aF2XeLXJ93K8mT6sc6s0frikIJmOA8bwR7OYWvg==
X-Received: by 2002:a6b:ba06:: with SMTP id k6mr19478147iof.101.1593472082765;
        Mon, 29 Jun 2020 16:08:02 -0700 (PDT)
Received: from xps15 ([64.188.179.255])
        by smtp.gmail.com with ESMTPSA id u3sm585206iol.41.2020.06.29.16.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 16:08:01 -0700 (PDT)
Received: (nullmailer pid 3140981 invoked by uid 1000);
        Mon, 29 Jun 2020 23:08:00 -0000
Date:   Mon, 29 Jun 2020 17:08:00 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org,
        Boris Brezillon <boris.brezillon@collabora.com>,
        masonccyang@mxic.com.tw, juliensu@mxic.com.tw,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v11 2/2] dt-bindings: mtd: Document boolean NAND ECC
 properties
Message-ID: <20200629230800.GA3136006@bogus>
References: <20200626071357.21421-1-miquel.raynal@bootlin.com>
 <20200626071357.21421-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200626071357.21421-3-miquel.raynal@bootlin.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 26, 2020 at 09:13:57AM +0200, Miquel Raynal wrote:
> Document nand-use-soft-ecc-engine and nand-no-ecc-engine properties.
> The former is here to force software correction, the latter prevents
> any correction to happen.
> 
> These properties (along with nand-ecc-engine) are supposed to be more
> accurate than the current nand-ecc-modes wich is very misleading and
> very often people think it is mandatory while the core should be
> relied upon to decide which correction to handle.
> 
> nand-ecc-mode was already inacurate, but it becomes totally
> problematic with setups where there are several hardware engines.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/nand-controller.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index 0969d2e6720b..a3750978ebb8 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -68,6 +68,12 @@ patternProperties:
>            3/ The ECC engine is external, in this case the phandle should
>            reference the specific ECC engine node.
>  
> +      nand-use-soft-ecc-engine: true
> +        description: Use a software ECC engine.
> +
> +      nand-no-ecc-engine: true
> +        description: Do not use any ECC correction.
> +

Still the same problem as v10.

You want:

nand-no-ecc-engine:
  type: boolean
  description: Do not use any ECC correction.

>        nand-ecc-placement:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string
> -- 
> 2.20.1
> 
