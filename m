Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CA700C9221
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 21:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729059AbfJBTPD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 15:15:03 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:36960 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726669AbfJBTPD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 15:15:03 -0400
Received: by mail-qt1-f193.google.com with SMTP id l3so148944qtr.4
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 12:15:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SNQewQOqvUEKLZ+9nBo7G2D4eSHT9BYxCMnZtf2hPOY=;
        b=chufI7Abl/VmiAt3NeGKS/vlA2gs6G6aHNAkGsvHBVvadynUg90YeyBhiT8aDBEawJ
         NvMK4oslZeHsB0JlwbDgivmZZf2R5JIM/jmeNNz4+HQiU3GiMq/vc1WMx1RzWdVAfaAd
         cXLt1pxPb2o62GpPjKTVF+IbHK6vHVCY874721+oHgFUtFUDqp+oCQi8o/FNmGhAI8jq
         MTjQFBDgIlymYCa7w0/qmD+MJnOrx0zQivT30B6PxGEqFe86Ib3JEnRFo9qJg23HqRmq
         f4zeXSyMA+O4r2yWWSW/70+UU1skj1WTTvpeRtXlBM0VzBcK1LXd9K6EmukCQj+Kj3NN
         kXhg==
X-Gm-Message-State: APjAAAXoviVBlVt5O3CFCLCBqAYpaDV14MR3lah6HO0wLWQxjK426zKm
        jJj2FGBlqFjfmJEcn7mBMA==
X-Google-Smtp-Source: APXvYqyUI1wthEz8olLs+mo/GEdSv6OOOXYYWywFNhBMgdAxD2bmjXDeHyx4bS+0sGBO/MrLpgjXDw==
X-Received: by 2002:ad4:418c:: with SMTP id e12mr4675336qvp.70.1570043702178;
        Wed, 02 Oct 2019 12:15:02 -0700 (PDT)
Received: from localhost ([132.205.229.212])
        by smtp.gmail.com with ESMTPSA id t73sm44339qke.113.2019.10.02.12.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 12:15:01 -0700 (PDT)
Date:   Wed, 2 Oct 2019 14:15:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     kishon@ti.com, devicetree@vger.kernel.org,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: lantiq: Fix Property Name
Message-ID: <20191002191500.GA19556@bogus>
References: <20191002144640.114851-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191002144640.114851-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  2 Oct 2019 16:46:40 +0200, Maxime Ripard wrote:
> The binding has a typo where resets-names should read reset-names, which in
> turn leads to a warning when the example is validated, since reset-names is
> being used, and the binding prevent the usage of any property that isn't
> described.
> 
> Fixes: 088e88be5a38 ("dt-bindings: phy: add binding for the Lantiq VRX200 and ARX300 PCIe PHYs")
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../devicetree/bindings/phy/lantiq,vrx200-pcie-phy.yaml         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob
