Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E639E3111AC
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 21:01:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231430AbhBESRJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 13:17:09 -0500
Received: from mail-ot1-f41.google.com ([209.85.210.41]:38073 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233412AbhBESFv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 13:05:51 -0500
Received: by mail-ot1-f41.google.com with SMTP id t25so8047238otc.5
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 11:47:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4z/7XA5iPMGNQ8PQneXW9neZp9ngnApofX98s+/VZV4=;
        b=ix+AaNJJ53rBFi93538GL9VEstjVeMY2BFs6FKzVXQ0SwNz8BaquXUhxww/Yr2/OPr
         SDnrW3U+fFinwF0wS/4KTrTOeQKYLLM1w2nAsmGEvQoTI3Z/+kXPIIYP85AkjKbOA4L9
         WE1wtVTjxf5bfGSQI8UxNxb1iKqshg+aS3DOCNo3ifvYr5Eq1JExsMk4GnoDD+tNkExX
         WmzXorEP4b+vJL6D/HlInMfQWz0GtWqHyjkQzgKE3XQ5vmf3a1xMUgrA4iui7+T1NfIY
         InURc/Jw+EgBP4Cyur92dJcqLqY6cveGjZ7RT/iZTnJdgZiqr/t6mpEbCrMXlTUVTSIU
         gkdw==
X-Gm-Message-State: AOAM5336ricA02zvzVu6NFx4JBuCrXCFDybQ4g0GS6GfMltvEwBX+3ee
        P1iYqAMbHVM354haBSCLCA==
X-Google-Smtp-Source: ABdhPJwImh6w0sBLMWw3V5TtWhQ+AZWMRJJkAzV3k+Xiy7feAu2ebjIrVoLlWnDP6J//bp+4OR/TLg==
X-Received: by 2002:a9d:7b5a:: with SMTP id f26mr4296962oto.95.1612554454562;
        Fri, 05 Feb 2021 11:47:34 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l64sm1952247oib.13.2021.02.05.11.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 11:47:33 -0800 (PST)
Received: (nullmailer pid 3597936 invoked by uid 1000);
        Fri, 05 Feb 2021 19:47:32 -0000
Date:   Fri, 5 Feb 2021 13:47:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Anup Patel <anup.patel@wdc.com>, devicetree@vger.kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Sean Anderson <seanga2@gmail.com>,
        Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v16 04/16] dt-bindings: update sifive plic compatible
 string
Message-ID: <20210205194732.GA3597861@robh.at.kernel.org>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-5-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210205065827.577285-5-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 05 Feb 2021 15:58:15 +0900, Damien Le Moal wrote:
> Add the compatible string "canaan,k210-plic" to the Sifive plic bindings
> to indicate the use of the "sifive,plic-1.0.0" IP block in the Canaan
> Kendryte K210 SoC. The description is also updated to reflect this
> change, that is, that SoCs from other vendors may also use this plic
> implementation.
> 
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../interrupt-controller/sifive,plic-1.0.0.yaml     | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
