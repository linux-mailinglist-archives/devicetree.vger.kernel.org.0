Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F71427D63C
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 20:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728417AbgI2S4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 14:56:51 -0400
Received: from mail-oo1-f66.google.com ([209.85.161.66]:41971 "EHLO
        mail-oo1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727740AbgI2S4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 14:56:51 -0400
Received: by mail-oo1-f66.google.com with SMTP id t3so1550709ook.8
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 11:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3n1sEJj1d/T5t6mDkjBuyZ9BXKV6dF5ewph34dRkWoQ=;
        b=aFUEpa081gSebSoottheOfsfD0yE4ES5k+RqNKfy47y+i9ZJFVhM6805ffk9zzc2QR
         PT7CLn6QmgLsccABDSRaB7nEG8RR4UZ4AT98GrKhMR1SpApkRNxZapWlyKh0uXyp67tE
         v+cm5a9HMh3tKBnsACTi/JibUvXG0DgUG5TI807xRrSqgLQdzomGVOuD9gZCblPJrEr3
         2fu47cgZ+cQD7ZOX6Ux0/hj5VFcOorsvYWrj0ItirmiMxSGX/NilmsZoUm5wb/scu+jf
         ZEAm0elvVEa25a5GhHcPqkZ75pCuVQIBHPL2rBQgxnynW1ofoTOGvV6ecRhtrlOb8FlX
         Zi4A==
X-Gm-Message-State: AOAM533xGI9FZr49yGWO1Z0jXQvjZr7T2rHUn9as0//EjmsLXzbMacZf
        UaSJrf5BV+eYlstklj2DfQ==
X-Google-Smtp-Source: ABdhPJysTT9XoIPg1e3QiOgJvgfhFbX1bvWMufZ8ragceCULxDU2tl6AeKKR6Yh/9+GN80jFijaH9Q==
X-Received: by 2002:a4a:96a3:: with SMTP id s32mr5651709ooi.17.1601405810495;
        Tue, 29 Sep 2020 11:56:50 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n13sm1214383oic.14.2020.09.29.11.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 11:56:49 -0700 (PDT)
Received: (nullmailer pid 961908 invoked by uid 1000);
        Tue, 29 Sep 2020 18:56:49 -0000
Date:   Tue, 29 Sep 2020 13:56:49 -0500
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] dt-bindings: example: Grammar improvements
Message-ID: <20200929185649.GA961845@bogus>
References: <20200925111429.3146-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200925111429.3146-1-geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Sep 2020 13:14:29 +0200, Geert Uytterhoeven wrote:
> Improve grammar in recently added sentences:
>   - Drop superfluous "be" in front of "have",
>   - Add missing articles.
> 
> Fixes: 73f76a41c4ed7def ("dt-bindings: example: Extend based on practice")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Feel free to fold into the original commit.
> 
>  Documentation/devicetree/bindings/example-schema.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Applied, thanks!
