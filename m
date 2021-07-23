Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 331583D4247
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 23:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232129AbhGWU7H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 16:59:07 -0400
Received: from mail-il1-f179.google.com ([209.85.166.179]:46859 "EHLO
        mail-il1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231350AbhGWU65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 16:58:57 -0400
Received: by mail-il1-f179.google.com with SMTP id r5so2771270ilc.13
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 14:39:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=YJdwsSK+u5g8iovUeytzq4ceHa8IFYH43Svi2bSvDso=;
        b=iaHpYggRIPYzbpfUfwzbBrXqQ/2X+jmoZ1Dvli5COnG//jIi9Crv1PPsh0tVL9mmXN
         J4ZXrgInGThBR2k5dR0/HTc2jG9L257o+3PrwXmi21j208UmB8jjhm2Vu87mMv8tnRYw
         hm5cxF3qu5lOGd5Abo/LIBd942iwgus6EGMsPaO2ElMYXLG70YOUKWB4zEBO5VVp+vRX
         5MbT/Hw7fQ2aXDwyBLGeHrqY+KLkiYIj5clh+S3I6PUUs/J1mQKHnbscLn0QzNNUBa/i
         qNVeL1rYEGzz/vsHIQC8MOsYgAqF0bK9T8CYV2/QsytKORJj2r8eRPynYePyRN6+G5UB
         i8wg==
X-Gm-Message-State: AOAM5313BGg65it8RwW61Mh03LNbE+I+wAih+d87GOVdK+MGtJEzZtr3
        qIfhAQ5nQhJ1c8BziqZ3lA==
X-Google-Smtp-Source: ABdhPJyWwh8TgxC+yjG4ej7sgnZ/7qUCHhdhVYdp35adJ3cp9/1UfIs56RK5n3XwNL+2x2bjsNNjXw==
X-Received: by 2002:a92:de4f:: with SMTP id e15mr439481ilr.267.1627076369563;
        Fri, 23 Jul 2021 14:39:29 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t24sm19104446ioh.24.2021.07.23.14.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 14:39:28 -0700 (PDT)
Received: (nullmailer pid 2635859 invoked by uid 1000);
        Fri, 23 Jul 2021 21:39:26 -0000
Date:   Fri, 23 Jul 2021 15:39:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 09/54] dt-bindings: clocks: Fix typo in the H6 compatible
Message-ID: <20210723213926.GA2635807@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-10-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-10-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:39 +0200, Maxime Ripard wrote:
> Even though both the driver and the device trees all use the
> allwinner,sun50i-h6-de3-clk, we documented the compatible as
> allwinner,sun50i-h6-de2-clk in the binding. Let's fix this.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
