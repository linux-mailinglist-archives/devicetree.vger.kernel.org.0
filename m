Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9CB342398C
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 10:16:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237743AbhJFISP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 04:18:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237638AbhJFISL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 04:18:11 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A756C061749
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 01:16:19 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id t2so6177839wrb.8
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 01:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=fjDmuyYAWKr6P0pHvHeSBdlK7NcMQQHBMjktw4KR7vQ=;
        b=jQMvHZjWS0R5XwZgjHVcw7A7P4hFwMl7vqQ4+7/Swxq47RIW+Bh3XsNzGXDO0i3tkg
         Dhw2gQMr/r9wHINiT61mQDrKwzb4kzSWgZOT+6+PFMrOSrhI9jUTZG7eOyndTzFViQai
         7MNJ3wo4END4u03ruEJnkV9R1kQ881Cyd1mhdUadoxvzR577dpjUNwEG8SgAt7Ont5db
         J2e6HYCbIOoAsjVNZTDU1b1AU9gkwja12zwn9OuVZDXFDpNWOayXN5Lgn5DfhJx9IPvC
         Nx2sdFzNz+zDy0Y3pFkM3NAaLsillgFZuwlEfVFI+ECx7c7/1n5MAIT3Lq33OCtfrynj
         rdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=fjDmuyYAWKr6P0pHvHeSBdlK7NcMQQHBMjktw4KR7vQ=;
        b=V65J4JDBKEwPuxvOg3mLsTzZn2KrRxvzkuwqbwppxX50pUg1dtvHEXZMybjm6hTKgR
         bC9Iozm25YS9D5I7TJ2wjaE2sltPl2Gg38IoYGCB/gxErbl2iXV880YM1d+BzibWRw/F
         Y8sLgRHIiE2EmAqtk3mlfO91m/sPRDPy2b4OF0ck0IgCN/Ps5r1w5aF5LthswW6ndKNL
         HLKi4bDjpSXxHXQeohMPP7xKsKNSxl7Ipz/QaSaZWZ059Q+0kerp31nPK/2eLKIYyszs
         Jyc7uzSci8MQJIFZeRlVm7XhbOgBicRiUEiwO9Higrh5SYgFlE87dbKQNOtEYVnkuTAg
         Pozw==
X-Gm-Message-State: AOAM533+/H4Wyttnxd3yNSW8FFLXNJdU692yXZ+hmhRI+v3rhyzuhxUZ
        7VCrNFZUlDtKkx09HhHQj7fA9Q==
X-Google-Smtp-Source: ABdhPJzjDLj6FScTVYD6Zlb3qdP4c1FYA3YbxNKNKe2OIHiYE8aCXN+5NJMerGwz6p4itGts3kOMkA==
X-Received: by 2002:a1c:c908:: with SMTP id f8mr5344011wmb.142.1633508177687;
        Wed, 06 Oct 2021 01:16:17 -0700 (PDT)
Received: from google.com ([95.148.6.175])
        by smtp.gmail.com with ESMTPSA id p3sm4474052wmp.43.2021.10.06.01.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 01:16:17 -0700 (PDT)
Date:   Wed, 6 Oct 2021 09:16:15 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [RESEND v2 2/3] dt-bindings: mfd: Convert X-Powers AXP binding
 to a schema
Message-ID: <YV1bT16AzinR5jQM@google.com>
References: <20210924071614.868307-1-maxime@cerno.tech>
 <20210924071614.868307-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210924071614.868307-2-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Sep 2021, Maxime Ripard wrote:

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

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
