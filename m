Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDCE1227566
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 04:10:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726161AbgGUCKv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jul 2020 22:10:51 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:44381 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725857AbgGUCKv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jul 2020 22:10:51 -0400
Received: by mail-io1-f65.google.com with SMTP id i4so19696650iov.11
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 19:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tYsP4V1SUj+7wnz/5rxYaGFYfj8VWJ5SvCfnjHlpT0o=;
        b=oujicZ4ZnWgLZy6in2ZiVdlHQnVofsvQeo4mh893TOL0LClH+Enl67N5aN3Ngh2Tn5
         R7YRXIDryA2LPihxrRC6zeBrvCRJzEMvtLZJmIGL+xTUpkJ1Dqz8cuyi5nLtPiLcKs8U
         7DgOepny2z200sf4b2R7uf82S9WU3y0eGAFK2y4XNrDi2n64Q00z5NgyO0Lw3jDEMoJg
         TaJ6oqtEUbFH9NsWEHNQ01qIb4OOqUh3rmiU81hKwqNtuOg9/IQ4YmQDgiQYmm0mGF67
         cvZhfSl2cz5ANrvu9kfpE4TCaWi1ZEcdYAW2b/AwYf5g+/PHJSVKc730HQiim12lTPBP
         k48g==
X-Gm-Message-State: AOAM531g/+XtPoQmUVeo6Y6LAoNgqddPCl3g82rSSCyKmfMg4e0DddAl
        ZbBdtcbT4lv2r5BsMFHiEw==
X-Google-Smtp-Source: ABdhPJzyDAbDfMw1LYrqe/3mIzRA1pgLV9u86hXuncaTyOc9EHaatv5II0wRnco3FxckodBb/3eBDw==
X-Received: by 2002:a5e:8f4b:: with SMTP id x11mr24467381iop.90.1595297450479;
        Mon, 20 Jul 2020 19:10:50 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id k21sm468811iok.10.2020.07.20.19.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 19:10:49 -0700 (PDT)
Received: (nullmailer pid 3387441 invoked by uid 1000);
        Tue, 21 Jul 2020 02:10:48 -0000
Date:   Mon, 20 Jul 2020 20:10:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chen-Yu Tsai <wens@kernel.org>
Cc:     Maxime Ripard <mripard@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Siarhei Siamashka <siarhei.siamashka@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, David Airlie <airlied@linux.ie>
Subject: Re: [PATCH 3/5] dt-bindings: arm: sunxi: Add compatible for MSI
 Primo73 tablet
Message-ID: <20200721021048.GA3387398@bogus>
References: <20200714071305.18492-1-wens@kernel.org>
 <20200714071305.18492-4-wens@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200714071305.18492-4-wens@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Jul 2020 15:13:03 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Document board compatible name for MSI Primo73 tablet.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
