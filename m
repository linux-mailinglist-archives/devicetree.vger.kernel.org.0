Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 562C03B372E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 21:43:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232528AbhFXTpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 15:45:18 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:33572 "EHLO
        mail-io1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232178AbhFXTpS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 15:45:18 -0400
Received: by mail-io1-f42.google.com with SMTP id a6so9783505ioe.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 12:42:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=THfvJkAueSmNMFmfgmtn+SZkItyt6FrEjnkmqGS/Sxw=;
        b=NjRjgRsjmORGSw6+ed5xRAjk30vxuqeFqBpwPmpPH97NOxuIvuWPvQ9qcl+TyV5pcO
         vgMzQysyslK3Sq2r/esmNGOjB1CMpPcyw/FIh+hgATCwx/NVF+omFQqRzT38QW09Aw4D
         B5Opd5aqGvBDbMZabB6kQmuWAPa4+dOIIHlRcuG+60ndTfCNR5S3DhQJUY/MyyPpBuOs
         ZO2ERvzjSC5p2GOC+tf5r3BheZZmLOGN4S6LMzbuWjM1PcFawy8vbFmFeEHbhikH8Nan
         Vp7W2pdX5pd4PoBMipVCGSyi0LRsuqLDTbo44C3s/v2Klc5r2hQ6hKA9p/9fesrp+dxj
         Sb/w==
X-Gm-Message-State: AOAM533J/iV9Hl8m5Drc1KSia/95SSoZdSPaA1I7Gltw0Gqa8R1EAchq
        CnweVchvf4INrj2OnclxrVOcGx3fqw==
X-Google-Smtp-Source: ABdhPJxPTiJVjXEVlqlbTHze08iGbxs03FGnRpR1KT7nfbxUeVMFDqUt6JHztbNFQzQQ6dRBK+Ki/g==
X-Received: by 2002:a5d:948a:: with SMTP id v10mr5444385ioj.37.1624563778689;
        Thu, 24 Jun 2021 12:42:58 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id i1sm1774450iol.16.2021.06.24.12.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 12:42:57 -0700 (PDT)
Received: (nullmailer pid 1869205 invoked by uid 1000);
        Thu, 24 Jun 2021 19:42:54 -0000
Date:   Thu, 24 Jun 2021 13:42:54 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: interrupt-controller: Convert ARM VIC to
 json-schema
Message-ID: <20210624194254.GA1869153@robh.at.kernel.org>
References: <20210617205317.3060163-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210617205317.3060163-1-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 17 Jun 2021 21:53:17 +0100, Sudeep Holla wrote:
> Convert the ARM VIC binding document to DT schema format using
> json-schema.
> 
> Cc: Rob Herring <robh@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../bindings/interrupt-controller/arm,vic.txt | 41 ----------
>  .../interrupt-controller/arm,vic.yaml         | 81 +++++++++++++++++++
>  2 files changed, 81 insertions(+), 41 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
> 
> v2[2]->v3:
> 	- Dropped unnecessary maxItems and description fields as suggested
> 	- Used enum instead of oneOf
> 	- Reverted back to GPL-2.0
> 
> v1[1]->v2[2]:
> 	- Added arm,versatile-vic to the list of compatibles as suggested
> 	  by Linus W and added his review tag
> 	- Updated the SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> 
> [1] https://lore.kernel.org/r/20210610135717.2782793-1-sudeep.holla@arm.com/
> [2] https://lore.kernel.org/r/20210611111033.2818949-1-sudeep.holla@arm.com/
> 

Applied, thanks!
