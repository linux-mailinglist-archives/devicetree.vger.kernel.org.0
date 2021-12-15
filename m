Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C53A475C7D
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:00:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244302AbhLOP66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 10:58:58 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:41877 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232587AbhLOP65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 10:58:57 -0500
Received: by mail-oi1-f175.google.com with SMTP id u74so32228786oie.8
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:58:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CwKo5i0Vq8YF7oR5vfyMGYoH3etlu6Rpd8MQ1BR3vBk=;
        b=hI7PEzkfrpdx2hWjS9nojs51ibYPevELYF3BNjybSRDtbBxZOcJmoXKU/lr6oi4OQq
         Jx+idj9BAxLZrTZglTW/qQH/GhM8wigL/BDo9vxJcfh6/HrkEWFKGQdiii86kgk8jPhy
         uPdlwiuvTgr8L5IZlAQlGVa7fKOgUWLFV5JePQa5m9mkQvnk4h0w5AeTb1b5KqnEPKiz
         NHAdnq5Ssity+/mYnSJMKL2jw25B37QHq3AZZLu3jlN86WkZzl9zVNGiLNSxT3EGk/KF
         zUR0jFnkxtvWgfD1NWizRqEtH7dUPhRqX1b0PGEnCACV6f251vXr6EL79/s74AAT8PEY
         ZrHg==
X-Gm-Message-State: AOAM532xS133hDt02t/Cn5R2eBfi9camcRPxbIdNd2NSY5cFJok+rLhX
        VQFqM/pCcWBK62nmoWsSEQQy3o4Wvw==
X-Google-Smtp-Source: ABdhPJz1lQkwPOFlTqTKhp/Jn0ioAW3AYh2h05iZh0wN9H3lh85EORZ5mp1iOpftZtQ7Yg3XRX/30w==
X-Received: by 2002:aca:2115:: with SMTP id 21mr374267oiz.25.1639583937058;
        Wed, 15 Dec 2021 07:58:57 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id j5sm502652ots.68.2021.12.15.07.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 07:58:56 -0800 (PST)
Received: (nullmailer pid 1390102 invoked by uid 1000);
        Wed, 15 Dec 2021 15:58:55 -0000
Date:   Wed, 15 Dec 2021 09:58:55 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: audio-graph-port: enable both
 flag/phandle for bitclock/frame-master
Message-ID: <YboQv+lsHZBhrpfN@robh.at.kernel.org>
References: <20211208064852.507977-1-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208064852.507977-1-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 08, 2021 at 03:48:52PM +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> snd_soc_daifmt_parse_clock_provider_raw() is handling both
> bitclock/frame-master, and is supporting both flag/phandle.
> Current DT is assuming it is flag style.
> This patch allows both case.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml      | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 43e7f86e3b23..7d0248be08c5 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -42,10 +42,15 @@ patternProperties:
>          $ref: /schemas/types.yaml#/definitions/flag
>        frame-master:
>          description: Indicates dai-link frame master.
> -        $ref: /schemas/types.yaml#/definitions/phandle
> +        anyOf:

Does oneOf work? It can't be both at the same time, but the schemas 
could possibly need some further constraints.

> +          - $ref: /schemas/types.yaml#/definitions/flag
> +          - $ref: /schemas/types.yaml#/definitions/phandle
>        bitclock-master:
>          description: Indicates dai-link bit clock master
> -        $ref: /schemas/types.yaml#/definitions/phandle
> +        anyOf:
> +          - $ref: /schemas/types.yaml#/definitions/flag
> +          - $ref: /schemas/types.yaml#/definitions/phandle
> +
>        dai-format:
>          description: audio format.
>          items:
> -- 
> 2.25.1
> 
> 
