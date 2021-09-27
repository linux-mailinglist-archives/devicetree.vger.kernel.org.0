Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BA86419865
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 18:00:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235405AbhI0QCO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 12:02:14 -0400
Received: from mail-oo1-f54.google.com ([209.85.161.54]:42961 "EHLO
        mail-oo1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235429AbhI0QCE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 12:02:04 -0400
Received: by mail-oo1-f54.google.com with SMTP id a17-20020a4a6851000000b002b59bfbf669so2135836oof.9
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 09:00:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cSYXdsZMtCkjltzpzvc0iqOZm2IuxImc8AJFVYElbF8=;
        b=A4SplNukZEsa+OI9DfYzgNPMrrxV9jSwxRu59Ywmth7qMSI1NWNkULOTgvA6JfDjQS
         bQAoZYGAl0Uis5efG4w3Zvxbn48AuqqOdCQgF51YUitDO5rBJAnnT79SVnUVUnkk1FsX
         5YlE8GWbSlMk649TLK5ETwQ0uqll3frbOrUBAem+6d3kBjn0EGZrX1EPoUA9CrEKW5Md
         pS4iX0zCt1E8T/lLblnDFXwcdcb4DA8J4xQHgKXuCjYbAdFzZsMONSUMMuAM72f1kVHU
         L8CCeTF5HjHAnuOpT7t5hnSzlYr2vaEPCcDIQbMT8WMuW1RORjbJOIJC5yYH73Lj69BX
         vS7Q==
X-Gm-Message-State: AOAM5318Cmq0vnSyJ08+S/GCaBcEX8g05UGeFfGSQUel7Y46LVHROqjD
        9RLP9OQ8VvH2inGfeeBkCg==
X-Google-Smtp-Source: ABdhPJx+kWVKQPNSL7zRT2PF+nkAeUDBsLYsPQVsB+TvUtvQr5OPkVQu0ePFmjv0luIlZGTwojbZgg==
X-Received: by 2002:a4a:e499:: with SMTP id s25mr589507oov.46.1632758426210;
        Mon, 27 Sep 2021 09:00:26 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id r19sm4187743otg.37.2021.09.27.09.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 09:00:25 -0700 (PDT)
Received: (nullmailer pid 3382896 invoked by uid 1000);
        Mon, 27 Sep 2021 16:00:24 -0000
Date:   Mon, 27 Sep 2021 11:00:24 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-sunxi@lists.linux.dev,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [RESEND v2 2/3] dt-bindings: mfd: Convert X-Powers AXP binding
 to a schema
Message-ID: <YVHqmPROu2p9baDh@robh.at.kernel.org>
References: <20210924071614.868307-1-maxime@cerno.tech>
 <20210924071614.868307-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210924071614.868307-2-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Sep 2021 09:16:13 +0200, Maxime Ripard wrote:
> The X-Powers AXP PMICs are supported by Linux thanks to its device tree
> binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Add GPIO example
>   - Remove the limitation on regulator-ramp-delay
> ---
>  .../i2c/allwinner,sun6i-a31-p2wi.yaml         |   2 +-
>  .../devicetree/bindings/mfd/axp20x.txt        | 273 ------------
>  .../bindings/mfd/x-powers,axp152.yaml         | 400 ++++++++++++++++++
>  3 files changed, 401 insertions(+), 274 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/axp20x.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
