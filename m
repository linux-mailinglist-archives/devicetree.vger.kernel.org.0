Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E73140060A
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:44:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235044AbhICTpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:45:55 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:42665 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231599AbhICTpz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:45:55 -0400
Received: by mail-oi1-f171.google.com with SMTP id bi4so480797oib.9
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:44:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Eh8U3x6VQsm4PGEY26TnsoysqoVbVg3ODBo7Cj9FWqc=;
        b=n43Svy9Gzs8stl3jAE70/ZrkQaiAp+RFLNZY3mcl1B1UnaFvCMBfjNmxPjMZZqNb53
         MzOkne+AcSnPr1kspUeL6qydFNxwC7i0yE0XtW8X1OkqTy3u4gKgbxNhr+tWTRa/TYP8
         hQIQnJDHHcyVMdhm5Vk6FaSJ03geuYWCfG0bHmzne3EmwsVLrLYqPCR4SCKqSwa2Cc8J
         ulradJOpOxBs7eD8XrPkFk4xt4GUzu5gJzgvJB4m1ULMKTn0vDRpDeJu3CDYaywzIl7f
         7zYydtyv0vrQv2/RWq7weZ1X/bHRF1h1kptTr2s51Fk9PBukMHLrs6cLC7HhLlVJzMwo
         q3ww==
X-Gm-Message-State: AOAM532AFJk2XDwQ2pmmXYotOtM7tGBSsvRzurnAkUMeKxZkSI2KmKHx
        edMlAF13Rubwx2G83fDAcA==
X-Google-Smtp-Source: ABdhPJzJWr/YXpDHbBT4ntLtOwIPotL2PLVnHiqtCMqyjpePFb4EmsZdi9AJf3HaOHFqR+t3mE/hKQ==
X-Received: by 2002:aca:a80a:: with SMTP id r10mr311602oie.119.1630698294630;
        Fri, 03 Sep 2021 12:44:54 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id y138sm59971oie.22.2021.09.03.12.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 12:44:54 -0700 (PDT)
Received: (nullmailer pid 3338893 invoked by uid 1000);
        Fri, 03 Sep 2021 19:44:53 -0000
Date:   Fri, 3 Sep 2021 14:44:53 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, linux-sunxi@googlegroups.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 29/52] dt-bindings: mfd: Convert X-Powers AXP binding
 to a schema
Message-ID: <YTJ7Nf9s1fr3kJny@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-30-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-30-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:29 +0200, Maxime Ripard wrote:
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

Note that the gpio child schema needs to be applied with this one.
