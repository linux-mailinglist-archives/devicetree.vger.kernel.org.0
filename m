Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 932D8400489
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:09:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233659AbhICSJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:09:52 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:45003 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231747AbhICSJw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:09:52 -0400
Received: by mail-oi1-f176.google.com with SMTP id c79so179934oib.11;
        Fri, 03 Sep 2021 11:08:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=srO9UaaeJEIBVm76BO48MHy8X7hxZhuBH0la7EXFH5c=;
        b=SFrbS9vX1D2vpLD6sauei5D6J8pRmtsTkqeY1HDA0oS+z2hZu2nNpOvdz9B32whRzP
         YGWKfNXeZ8Zakb+zbpij9sLjdXVdiG/lJ5gIbdf2jGUjX3IuPJ8JjzWrei1U0DKl1JHA
         lDHL+FXDBuj6+TiYbI2/Gb4s63Tc0f2vPdpqE7Mg3e6YEGHj3WtEjhiOA9tz6MguYNhT
         WC1k4It+wHP9ZTngIb/oDGkdkADcQNLQwcfI+DDymJzHg/sH97HA9l0mAeMoCbZqIWBi
         hiSraFi3LB1uDOUWHE9d0hvtdiV1U3FK3c8wuTdLPVTMsJ/72oeq987CWGqcNBti8eJr
         KjMQ==
X-Gm-Message-State: AOAM533HghGd5Lt5unpSfac0k3S8lI3TeTSEofx0oJuY6A1r1UU0d2Od
        RT3UwpnpQyQ98xBYh1HlYQ==
X-Google-Smtp-Source: ABdhPJwhO+JPq7lEV8o68mpYUYKiRsDQl/O4kspL4I6C+YPKdK8KJO0ZSt2X5mKrGti7KZ79aWE0oA==
X-Received: by 2002:aca:eb0f:: with SMTP id j15mr81990oih.7.1630692531947;
        Fri, 03 Sep 2021 11:08:51 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id v77sm16933oie.5.2021.09.03.11.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 11:08:51 -0700 (PDT)
Received: (nullmailer pid 3196194 invoked by uid 1000);
        Fri, 03 Sep 2021 18:08:50 -0000
Date:   Fri, 3 Sep 2021 13:08:50 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 05/52] dt-bindings: Convert Reserved Memory binding to
 a schema
Message-ID: <YTJkshhMXjmYsQl9@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-6-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-6-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:05 +0200, Maxime Ripard wrote:
> The Reserved Memory mechanism is supported by Linux thanks to its device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Mailing List <devicetree-spec@vger.kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Fixed the license
>   - Added a mention that the file has moved
>   - Added a documentation for memory-region
>   - Split the reserved-memory binding in two: one for the generic part
>     and one for shared-dma-pool
> ---
>  .../reserved-memory/memory-region.yaml        |  40 ++++
>  .../reserved-memory/reserved-memory.txt       | 172 +-----------------
>  .../reserved-memory/reserved-memory.yaml      |  96 ++++++++++
>  .../reserved-memory/shared-dma-pool.yaml      |  87 +++++++++
>  4 files changed, 224 insertions(+), 171 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
> 

I reworked the commit msg and a couple of nits, and applied, thanks!
