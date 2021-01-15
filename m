Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2517F2F700F
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 02:38:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731560AbhAOBh6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 20:37:58 -0500
Received: from mail-oo1-f53.google.com ([209.85.161.53]:42295 "EHLO
        mail-oo1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731543AbhAOBh5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 20:37:57 -0500
Received: by mail-oo1-f53.google.com with SMTP id x203so1842641ooa.9
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 17:37:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=B1Ff7qOZtqWbaa6dcje7anpfbO79/6GxsJBsubA8V5I=;
        b=b0VfuSNCA54a33QY8k9REhCNVPMA5fwlsjZn0sn2Bg024u+0an60xf2T+QxcIa88zq
         51cu8Xcyk9VhLD/w8q6N7id8Qz0irNjbPnm15oylO9aoqt57HRkOOP6CmRsDOT2dFvA4
         P/6A+KztqZEUhhBQOfsWB4axwC8lCWUGoZDokBwlH1VcH66g1blRxigYUjwFnvTh0+s4
         /yUhbyU+/okZVzMTuL24vSfme2z+iQ4NWhrehk2mnPiANdrPAWh0KQH9pMzLz+dnzLIJ
         WKwMDH3sHAat9HxXRMYytHdfVlaKfuoNQ5oHudHSICtwdX6YgisszhEy5B8Z94+KH2Or
         Z8HQ==
X-Gm-Message-State: AOAM530vUmGfCKlKEYYzNA1tIYStVV8k5GoQKMSNtaW0b9jxW5loBOmZ
        /UDBr9O+0F27qCmtb4ZeKIuRccySAg==
X-Google-Smtp-Source: ABdhPJyFyDaKkERDpwPSUR6Vf+aiqUbqUP/NduqcejiSp69R8O67GudiyrmAmf8aNGzobnyk3efNjg==
X-Received: by 2002:a4a:b244:: with SMTP id i4mr6606670ooo.5.1610674636623;
        Thu, 14 Jan 2021 17:37:16 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s204sm1405643oib.42.2021.01.14.17.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 17:37:15 -0800 (PST)
Received: (nullmailer pid 4067861 invoked by uid 1000);
        Fri, 15 Jan 2021 01:37:14 -0000
Date:   Thu, 14 Jan 2021 19:37:14 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Alistair Francis <alistair@alistair23.me>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 05/19] dt-bindings: bluetooth: realtek: Switch to
 unevaluatedProperties
Message-ID: <20210115013714.GA3798333@robh.at.kernel.org>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-5-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210114113538.1233933-5-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 14, 2021 at 12:35:24PM +0100, Maxime Ripard wrote:
> additionalProperties prevent any property not explicitly defined in the
> binding to be used. Yet, some serial properties like max-speed are valid
> and validated through the serial/serial.yaml binding.
> 
> Let's change additionalProperties to unevaluatedProperties to avoid
> spurious warnings.
> 
> Cc: Alistair Francis <alistair@alistair23.me>
> Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> index 4f485df69ac3..f4d4969d87f4 100644
> --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -37,7 +37,7 @@ properties:
>  required:
>    - compatible
>  
> -additionalProperties: false
> +unevaluatedProperties: false

This would still fail because the serial schema is applied to the parent 
and this schema is applied to the child node. It's a common problem for 
how we've done bus schemas. We'd need to split them into 2 schemas and 
reference the child schema here. I'd rather not do that here because 
then we'd apply the schema twice assuming we keep bus schemas also 
applying the child schemas (which is good at least until we have schemas 
for *all* possible child devices).

We've handled this in other cases by just doing 'max-speed: true' here.

Rob
