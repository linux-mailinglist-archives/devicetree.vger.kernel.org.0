Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06BCE37EDF2
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 00:54:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386884AbhELU5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 16:57:12 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:37796 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385241AbhELUHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 16:07:47 -0400
Received: by mail-oi1-f171.google.com with SMTP id k25so23420293oic.4
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 13:06:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mhpVbi3cQ0EGsYKOMYQzIVlqfrLnOqg6o9Wpirz2Iqw=;
        b=CxpjJW9Og2vyJSTX0DLvJmAjR9nLukZ4D4IUFfibQzifIMHu4N1SxRahwAxZxZtgC4
         9rjaQ/vRE5gr3MazFahCR0yzlZ644KDi79fF2DiIWLuaWH5lnSyt/63KKpCXrKhuEdnZ
         A9gREo6Vumezh1IphQsipuYxsPCWAyjY/h0hpaFAt88OsF2FVeYv/koJpwS6x+BZCcwn
         AVXEdPhJ4SLDjMVJNXZ7D+PqE86spBlWq8FJUCRHqAc/AAvkpQZRKPSfLmyrfv8Pm8UM
         TiiuldwoYnPyFgmq8BmU6DObRvEOH6qv+5+2nk3q58VEHQu1QblqfSVdUSXjBFeVJd2B
         kMLg==
X-Gm-Message-State: AOAM532N8sf5bn+GZATzSzONqmcm+ipEvPfR6fdns8kMZvxPRRqxHywh
        xhhUila5JEhyUmw+yU8jKQ==
X-Google-Smtp-Source: ABdhPJxV73spz7jlOZ+/ObE49mgGuVapQXl8RziXnYJDGDCgxiCCw1rYjMpCidY0PxE9jNdnhI1Vbg==
X-Received: by 2002:aca:d404:: with SMTP id l4mr160681oig.160.1620849996845;
        Wed, 12 May 2021 13:06:36 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x24sm170641otk.16.2021.05.12.13.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 13:06:36 -0700 (PDT)
Received: (nullmailer pid 2227429 invoked by uid 1000);
        Tue, 11 May 2021 16:24:40 -0000
Date:   Tue, 11 May 2021 11:24:40 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Michal Simek <monstr@monstr.eu>, linux-mtd@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4] dt-binding: mtd: nand: Document the cs-gpios property
Message-ID: <20210511162440.GA2227381@robh.at.kernel.org>
References: <20210510171800.27225-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210510171800.27225-1-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 19:18:00 +0200, Miquel Raynal wrote:
> To reach higher capacities, arrays of chips are now pretty common.
> Unfortunately, most of the controllers have been designed a decade ago
> and did not all anticipate the need for several chip-selects. The new
> cs-gpios property allows to workaround this limitation by adding as many
> GPIO chip-select as needed.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> 
> Resending only the binding patch of the series, with the following
> changes requested by Rob:
> * Fixed the coherency between cs-gpios and gpios-cs
> * Added maxItems: 8 (this is a good enough value for most of the cases I
>   guess, this can be increased later if needed).
> * Adding maxItems: 8 lead to an error when checking the example,
>   minItems: 8 had to be added as well to the schema to fix it, not sure
>   this was expected or not.
> 
>  .../bindings/mtd/nand-controller.yaml          | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
