Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF1534F426
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 00:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232866AbhC3WT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 18:19:29 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:37521 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232825AbhC3WTY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 18:19:24 -0400
Received: by mail-ot1-f52.google.com with SMTP id t23-20020a0568301e37b02901b65ab30024so17088962otr.4
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 15:19:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=2HG6bxS1qk7/z0h78vEgTknJko4wlCO+oTcTSzUNmVI=;
        b=Jysuy6zt0hWkTqw7tsd++lbQWOnZYdjsou2VN1bjz61UbtVX3LzFbP6i6xlCSpxzYT
         ibHjOflWQp2PTC3cr4bcj7Tj0l05IZmBDmE1Iumj9Zh45s0B+L7HswiHIwjuWX1FiK+t
         +wzYsbtu2F9JAeGRhg3jSKVCx8Bz6f5ZopCfVEHfwytYt5wueVSGQu9cIpIANG4/dTwD
         eXIbUEtmcXFh8wbYtQoC0h+WpYkNZMU5CJ1VWymqrYuvfCWbWdtRuM2JVnZpcE7E7z3d
         INtT605gF3SxcG3yeCeW+2iw1Txm332aT+8+13w5SbMpSw4eLbbx1WdwrhRfg4cutTcf
         I6KA==
X-Gm-Message-State: AOAM533qOHh7jYj/WmkXOmMsMVv47IUyyFb8qskMIaVFYtnz6SGWImk8
        fn6cufIg6YO/4SZw9CWFj++rB/Tj7Q==
X-Google-Smtp-Source: ABdhPJxCGf3RrQ04rjQ3xx9SW74JSdKeolmpb5+DQ3MBuHNGcQYmtg2Sg5yElQdNqXrHgucwrSSGJA==
X-Received: by 2002:a05:6830:18c:: with SMTP id q12mr61547ota.355.1617142764085;
        Tue, 30 Mar 2021 15:19:24 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v65sm76540oib.42.2021.03.30.15.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 15:19:23 -0700 (PDT)
Received: (nullmailer pid 815356 invoked by uid 1000);
        Tue, 30 Mar 2021 22:19:22 -0000
Date:   Tue, 30 Mar 2021 17:19:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Ansuel Smith <ansuelsmth@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH RFC] dt-bindings: mtd: allow NVMEM cells in BCM4908
 partitions
Message-ID: <20210330221922.GA801452@robh.at.kernel.org>
References: <20210329150723.26584-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210329150723.26584-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 29, 2021 at 05:07:23PM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Every MTD partition can be NVMEM provider now. It's not handled by the
> shared partition.yaml so add proper "compatible" to the BCM4908.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> Ideally I'd like to have:
> 1. partition.yaml allowing "nvmem-cells" by using nvmem-cells.yaml
> 2. brcm,bcm4908-partitions.yaml using partition.yaml and extending the
>    compatible list by "brcm,bcm4908-firmware"
> 
> I don't know if such a solution is possible to implement using YAML?

You would have to do something like:

items:
  - const: foo,bar
  - {}

and then in partition.yaml:

contains: 
  const: nvmem-cells

But that does work if nvmem-cells is not always present.

However, do we have partition.yaml and nvmem-cells.yaml backwards? 
nvmem-cells.yaml should reference partition.yaml as nvmem-cells.yaml is 
partition.yaml plus more constraints.

And then brcm,bcm4908-partitions.yaml references nvmem-cells.yaml and 
the above schema would work.

> 
> Proposed solution (RFC) isn't a really clean one:
> 1. It duplicates "nvmem-cells" which is already in the nvmem-cells.yaml
> 2. Generic "nvmem-cells" should be part of the partition.yaml

I'm fine with this too. It's more explicit as to what the compatible 
strings are.

> 
> Rob? Help? :)
> ---
>  .../bindings/mtd/partitions/brcm,bcm4908-partitions.yaml      | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml
> index 7b113e5e3421..28aa3bdd1103 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml
> @@ -32,7 +32,9 @@ patternProperties:
>      $ref: "partition.yaml#"
>      properties:
>        compatible:
> -        const: brcm,bcm4908-firmware
> +        enum:
> +          - brcm,bcm4908-firmware
> +          - nvmem-cells
>      unevaluatedProperties: false
>  
>  required:
> -- 
> 2.26.2
> 
