Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50FF63F4F98
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 19:36:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231652AbhHWRhC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 13:37:02 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:33668 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231616AbhHWRhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 13:37:01 -0400
Received: by mail-ot1-f53.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so38470823oti.0
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 10:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0uu/qRmiaveg5OXmKGJu7wUbjS4DkO9J3oLG/+RhLjo=;
        b=TxhOrNlnQAC/rY3rhe2ypdmdE1bgWXSAIf4RAZtg6tAm5RiQlRGn9Kn9bB4Gvjt0oj
         U2pt9qAAY0bh4YwxWykwffGn5L1qfa80DE1CZN2GHR7RmU14PI/WGK+IQdni8mYJ6tVL
         sxKiM90PvzJxPgwnMFn7OWl0SrgS3gpzB30G9RnmPAkkbBuklFY0+FtzkGhZohUk6Bid
         uTVuy46ry0lFnIz2cAfXXIV4YtR1dKkEdO8NauEqiMpJJfUyfGzRa79xIoZMU8nQ4c2p
         cs6kb1zWmtyBucPJe8cSvRm3altXYqZPBBv1XZOxkcClA6RnT1FRSrmjZ5xRt5G/3hJS
         D9zw==
X-Gm-Message-State: AOAM531aGib/9qTN8Gyq+OFMIGhKgYvjvKTRIeQdQ87XJf6RxlRZ9+b2
        ONTbyc5d1yHVMsDIO9An8w==
X-Google-Smtp-Source: ABdhPJzxNu7vQjCCQQ+lFTIt44LyottIgRBnx8/87Z4bi0rH3Du9CTiqIdTchQRYLX9R+i2P7dkMCw==
X-Received: by 2002:a9d:7dd4:: with SMTP id k20mr27971832otn.68.1629740178875;
        Mon, 23 Aug 2021 10:36:18 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id i9sm3895014otp.18.2021.08.23.10.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 10:36:18 -0700 (PDT)
Received: (nullmailer pid 2390403 invoked by uid 1000);
        Mon, 23 Aug 2021 17:36:17 -0000
Date:   Mon, 23 Aug 2021 12:36:17 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     broonie@kernel.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH 15/15] ASoC: dt-bindings: rockchip: i2s: Document
 property 'clk-trcm'
Message-ID: <YSPckWacS4kk270r@robh.at.kernel.org>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 23, 2021 at 06:55:32PM +0800, Sugar Zhang wrote:
> This patch documents property 'rockchip,clk-trcm' which is used
> to specify the lrck.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Change-Id: I648142c57c568bbed209f2b9188b1f539a3285b2

Drop this.

> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> index 11e911a..8d9dfed 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> +++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> @@ -72,6 +72,15 @@ properties:
>    resets:
>      maxItems: 2
>  
> +  rockchip,clk-trcm:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +    description:
> +      tx and rx lrck/bclk common use.
> +      0: both tx_lrck/bclk and rx_lrck/bclk are used
> +      1: only tx_lrck/bclk is used
> +      2: only rx_lrck/bclk is used

Sounds like constraints. Make a schema.

> +
>    rockchip,capture-channels:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      default: 2
> -- 
> 2.7.4
> 
> 
> 
> 
