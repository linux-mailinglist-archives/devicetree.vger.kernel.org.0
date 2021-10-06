Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 595C34248B5
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 23:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbhJFVS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 17:18:57 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:36569 "EHLO
        mail-ot1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239488AbhJFVS5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 17:18:57 -0400
Received: by mail-ot1-f44.google.com with SMTP id 5-20020a9d0685000000b0054706d7b8e5so4874289otx.3
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 14:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qCe2vwRkq/KamFI9Zd2+cDpw+cH6YFXWZ+M8t6MYr4s=;
        b=kLpzYp8yRhu3oKoDv3gjQFdA92HxpZXZU6El3bLSgF7AMIfI9+wfS6cWIdFUbyTl68
         xbVEriaqebR/fpe+QMNGHp2U1QNqhoGiZiHRkFYtUczfMp8A7aS23xFdD5znDaG9P157
         8/7vxANoVyuBavgddPpHI2Jibpr40fsVpssdM8b3RtfCSBzTwZnPanQi4szAv8fLbMmQ
         oprIqNKq4lR1ti8stBxJ5l8BGPQoDmbUXO7KoOw8kcqzSpuHPweuwStpJmaczd6zkeU6
         CLwIrVWIOgUyitHxMOqafEzSimQgIUEWCFNiNwVD7YC0u/iYnLEkyu5QX5mxTDZKU5IL
         u8rw==
X-Gm-Message-State: AOAM533FIjpsY+PXpIF/ziIM85Q1x1ilfrZynk5FMTfPf+RGA5BzmUeD
        VWdvsQs/ljoYHEH1PH64NQ==
X-Google-Smtp-Source: ABdhPJwVyjydRB+UHinE4lPCZDt9ajEGWneSWV0FPE30Gu5bsZaTe01E52HKPn1zSFDeqFDN1NG9+A==
X-Received: by 2002:a9d:7b4f:: with SMTP id f15mr437187oto.158.1633555024239;
        Wed, 06 Oct 2021 14:17:04 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bk40sm4232746oib.8.2021.10.06.14.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 14:17:03 -0700 (PDT)
Received: (nullmailer pid 2891305 invoked by uid 1000);
        Wed, 06 Oct 2021 21:17:03 -0000
Date:   Wed, 6 Oct 2021 16:17:03 -0500
From:   Rob Herring <robh@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        rzysztof.kozlowski@canonical.com, manish.narani@xilinx.com,
        michal.simek@xilinx.com
Subject: Re: [PATCH] dt-bindings: memory: add entry for version 3.80a
Message-ID: <YV4ST+91WQ7a9HU5@robh.at.kernel.org>
References: <20210930152039.864907-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210930152039.864907-1-dinguyen@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Sep 2021 10:20:39 -0500, Dinh Nguyen wrote:
> Add an entry for version 3.80a of the Synopsys DDR controller.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../bindings/memory-controllers/synopsys,ddrc-ecc.yaml           | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
