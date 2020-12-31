Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A4302E81A5
	for <lists+devicetree@lfdr.de>; Thu, 31 Dec 2020 19:35:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726492AbgLaSfV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Dec 2020 13:35:21 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:45415 "EHLO
        mail-oi1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726230AbgLaSfV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Dec 2020 13:35:21 -0500
Received: by mail-oi1-f173.google.com with SMTP id f132so22521632oib.12
        for <devicetree@vger.kernel.org>; Thu, 31 Dec 2020 10:35:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=F6GO/pF6op8vNadZMJry1vYTssx1a6tY68+XCu4xIas=;
        b=FEtf6FzB4puc3Lj0Sj9r1NrQwGyiFZsLYU96GKgNqwV83qWkaAMYUPWwQ8Lel9oM2U
         JEnhORYCf8GpWt9ZORcopKyq0DY8eaWkyFquaQsLH50LVJSjzpRVqjqhX9/EJYNuT6UE
         3+zduR/IjYWC1bRxht72m0u9WE9FkJBSVe11nlzKEPcAM+/g82AzDgEMq/5ADr+Ck+Z7
         BS7kOTUzcm2FDWpBLXfCx/G5Z0AjLLKQFO/65MPiTsJEgYeNQ86TiG1UTCKUaKRNgks7
         ZKo64us1NjxpvDwKOKfRVYuBjYzgt5mRya12tWfqhFJ3b59fRmkyMXReFpF0MSCSGlIy
         TfiA==
X-Gm-Message-State: AOAM530nn+b4ytjs26Ek0MUlbiGm6XFVULfIZ7pNhn38kPk75W8xWEwy
        TFHIy8eXzMpBJd09xHvchg==
X-Google-Smtp-Source: ABdhPJw5jb2HbYQ/4+/j5s0xoEhsHOLYmsFBuhcXx7aFLOWXNkmjfe0Ob33KoZ3EIedtrzOcqKi60A==
X-Received: by 2002:aca:f106:: with SMTP id p6mr8709854oih.63.1609439680378;
        Thu, 31 Dec 2020 10:34:40 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id r13sm11496792oti.49.2020.12.31.10.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 10:34:39 -0800 (PST)
Received: (nullmailer pid 2113540 invoked by uid 1000);
        Thu, 31 Dec 2020 18:34:35 -0000
Date:   Thu, 31 Dec 2020 11:34:35 -0700
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     damien.lemoal@wdc.com, devicetree@vger.kernel.org,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        linux-riscv@lists.infradead.org, david.abdurachmanov@gmail.com,
        aou@eecs.berkeley.edu, atish.patra@wdc.com,
        lewis.hanly@microchip.com, j.neuschaefer@gmx.net,
        cyril.jean@microchip.com, anup.patel@wdc.com, robh+dt@kernel.org,
        jassisinghbrar@gmail.com, palmer@dabbelt.com
Subject: Re: [PATCH v3 2/5] dt-bindings: add bindings for polarfire soc
 mailbox
Message-ID: <20201231183435.GA2113432@robh.at.kernel.org>
References: <20201223163302.29057-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201223163302.29057-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Dec 2020 16:33:02 +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller mailbox on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../mailbox/microchip,mailbox-mpfs.yaml       | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mailbox-mpfs.yaml
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

