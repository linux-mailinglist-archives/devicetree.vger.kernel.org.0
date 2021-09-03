Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF25E400622
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:50:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348708AbhICTvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:51:40 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:33546 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239585AbhICTvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:51:39 -0400
Received: by mail-ot1-f45.google.com with SMTP id c42-20020a05683034aa00b0051f4b99c40cso425302otu.0
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:50:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CzoqrDzi77+fpWaE52x4dRN7j04FIxzbKfAchZse36o=;
        b=JpGSeZEFQC9Lms3+LtQrP1ZubMj6vpm49SMRBIdPK++ppE/jl4v6OX5qF8Yf8Jzs02
         exR5JYjgw98FBWIzEB4KvWhngWraBTDSUssd1eJEI1z8C1bZsunjoX9FT1NKgENVfpCO
         jmDihF+tR9W94DJauC8QqmlCi0o4f3S5UGd2d0SKNsgLiDoLJkWhl62W9kiBLaLyTrhY
         6KWWLVUeFuvB7sI4Cp4hrxpYGkxNnunwv0TDtDw2WLE2oFDQhsE7fo7aFBuh6eLAMiOP
         kOLyP+XL8F72nhu4MCpHe0RsklZe6jnb4GOzDirYBuah0R/cacznGbp5sqaDhK+h9vdk
         sDpg==
X-Gm-Message-State: AOAM530ncADzKq/Kkf0PTEdT36nJi8nG689UuxEFmezUqIV/D0CzC2Vy
        y6esAE8DcShZsd3mkhqodg==
X-Google-Smtp-Source: ABdhPJzF9ALNY/8kKyIa3efKmiSZbqp3+bzqK3NLN66558plLD3mqQqQBBoIDc4Edcg8oZMhbkBlqg==
X-Received: by 2002:a9d:1d0:: with SMTP id e74mr639665ote.41.1630698639057;
        Fri, 03 Sep 2021 12:50:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id d10sm32856ooj.24.2021.09.03.12.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 12:50:38 -0700 (PDT)
Received: (nullmailer pid 3346761 invoked by uid 1000);
        Fri, 03 Sep 2021 19:50:37 -0000
Date:   Fri, 3 Sep 2021 14:50:37 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
        Daniel Mack <zonque@gmail.com>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Evgeniy Polyakov <zbr@ioremap.net>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 38/52] dt-bindings: w1: Convert 1-Wire GPIO binding to
 a schema
Message-ID: <YTJ8jdmmBM/q82QT@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-39-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-39-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:38 +0200, Maxime Ripard wrote:
> Bitbanged 1-Wire buses are supported by Linux thanks to their device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Daniel Mack <zonque@gmail.com>
> Cc: Evgeniy Polyakov <zbr@ioremap.net>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Changed additionalproperties to make sure all the other items in the
>     schema are nodes
> ---
>  .../devicetree/bindings/w1/w1-gpio.txt        | 27 ------------
>  .../devicetree/bindings/w1/w1-gpio.yaml       | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.txt
>  create mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.yaml
> 

Applied, thanks!
