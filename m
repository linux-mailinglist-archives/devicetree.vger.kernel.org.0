Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC13A2A0D4E
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 19:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726061AbgJ3SXn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 14:23:43 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:38748 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725844AbgJ3SXm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 14:23:42 -0400
Received: by mail-oi1-f196.google.com with SMTP id 9so7577893oir.5
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 11:23:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2inLjJbsAMkvoGMY+1AnyOCvk2aTurr24HiDc4FcZ/8=;
        b=KEbTENSXczUNVwMk88LrRS3HwpiWz/xRyNp2oqancj7qsIhAyMw+4fCA+2MKXnj41P
         7T6tMWMCo3h0F+2/hGAKJRMEFdqWHi4uvi7AFewRq4hxYVwj/YsBKDtHJ6Y2zXQRdpdh
         qfHrdERWLE9U1r7jUFSbLgUunHfQMX0teRFJPSadg1LTDDbGDUQOMMZbjO834f0x6/91
         0dmhor/m/ECObkTctBAN8tNolb4jLj1YAfUCWKojfz8XufH/a+xrROhpnx5AuGsXAHy0
         /MtZibLzGXQ6bmnyO8iNxVFvQUtsmK217QCcEuNY8+k9NedPs9mPsEV9sVKvW1M4135d
         ES3g==
X-Gm-Message-State: AOAM530Ga1GHmHTJy3lEVJ4fS96972hFtJC4UBQZooGu7XoaFqL23dbw
        +yAbGfoII+HsYFocYVOi8w==
X-Google-Smtp-Source: ABdhPJzaDb2ohyIsfJyr5ytEjd3zNgm/t/ARqTbOLtJdwTgoAzDkMIVKjnk/1oZSlSF1bY7JMwpWCA==
X-Received: by 2002:aca:4f55:: with SMTP id d82mr2532939oib.172.1604082221243;
        Fri, 30 Oct 2020 11:23:41 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 104sm1553996otu.81.2020.10.30.11.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 11:23:40 -0700 (PDT)
Received: (nullmailer pid 4098973 invoked by uid 1000);
        Fri, 30 Oct 2020 18:23:39 -0000
Date:   Fri, 30 Oct 2020 13:23:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     broonie@kernel.org, matthias.bgg@gmail.com, tiwai@suse.com,
        tzungbi@google.com, alsa-devel@alsa-project.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com
Subject: Re: [PATCH 2/2] dt-bindings: mediatek: mt8192: add ul-delay-ms
 property
Message-ID: <20201030182339.GA4069524@bogus>
References: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603521686-13036-3-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1603521686-13036-3-git-send-email-jiaxin.yu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 24, 2020 at 02:41:26PM +0800, Jiaxin Yu wrote:
> We can choose to drop any length of data from the beginning according
> accroding 'ul-delay-ms'.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/sound/mt6359.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt6359.yaml b/Documentation/devicetree/bindings/sound/mt6359.yaml
> index a54f466f769d4..fd2d02c97fe7c 100644
> --- a/Documentation/devicetree/bindings/sound/mt6359.yaml
> +++ b/Documentation/devicetree/bindings/sound/mt6359.yaml
> @@ -49,6 +49,11 @@ properties:
>      description: |
>        Specifies the type of mic type connected to adc2
>  
> +  mediatek,ul-delay-ms:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Skip first time data at the beginning of DMIC recording

What does 'ul' mean? Nothing tells me this is DMIC related in the name 
and 'ul' is not used anywhere in the description.

> +
>  additionalProperties: false
>  
>  examples:
> @@ -56,6 +61,7 @@ examples:
>      mt6359codec: mt6359codec {
>        mediatek,dmic-mode = <0>;
>        mediatek,mic-type-0 = <2>;
> +      mediatek,ul-delay-ms = <50>;
>      };
>  
>  ...
> -- 
> 2.18.0
