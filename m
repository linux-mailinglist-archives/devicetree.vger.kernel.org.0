Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63DA93F6512
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 19:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234720AbhHXRKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 13:10:21 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:33574 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238891AbhHXRHn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 13:07:43 -0400
Received: by mail-ot1-f49.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so48022797oti.0
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 10:06:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lQJSsrqSi2z80AMSAprMtS7aiLQvJxPvOWMi6DLohc0=;
        b=FmmsWBscE/DMXqQbwK0hdSYHTD3+y3P0K5/qq6ortxZ+ajEcI65deswovRbOccVN7z
         XjWT9P3iZkYA+Zm443bJ2ap3/K9ez2bWRoF+87M9i8JwLc3VNzMYpKXO0vsWbq1yPlKR
         PDQMTPOQ68GSv84ORtXV37tGKZHJbzRdYycCZc+vweslREiVCSCEkyf3IhwRrIRjqs4Q
         ZNWL3CIFLlU0lrRNTwjnVOMameDfKvLrMFtDceNH84p5FewcmFh18v0e8LQurvw837BQ
         VN5nA+iyZNMQg7kOpLuHJR1Ayq2xau5lfDJ3u9vPVngC+lFYTeF90WK7rZWJ6gVlhEi2
         1ahQ==
X-Gm-Message-State: AOAM530yNZ5nQn0pUvsAVLOAfwzWj0YKPrX7onk/Jh/MiXkoMNfta5am
        4ed2m5NhW5zmg3xlkcwg7w==
X-Google-Smtp-Source: ABdhPJzzoMH76+kiVkBOXNphyYPJfIc8lwIVxJVfGst2OQHQ8IMCcKTLo4/f/HzRUxdkiLxHMF2X7g==
X-Received: by 2002:a05:6830:43a0:: with SMTP id s32mr9194779otv.284.1629824817845;
        Tue, 24 Aug 2021 10:06:57 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bj27sm1125418oib.58.2021.08.24.10.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 10:06:57 -0700 (PDT)
Received: (nullmailer pid 638811 invoked by uid 1000);
        Tue, 24 Aug 2021 17:06:55 -0000
Date:   Tue, 24 Aug 2021 12:06:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     broonie@kernel.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v2 10/15] ASoC: dt-bindings: rockchip: i2s: Document
 property for playback/capture
Message-ID: <YSUnL4xISXIPLdRv@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796682-4170-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629796682-4170-5-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 24, 2021 at 05:17:57PM +0800, Sugar Zhang wrote:
> This patch documents property for playback-only and capture-only.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> index 9f9cc48..005b6e6 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> +++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> @@ -81,6 +81,16 @@ properties:
>      description:
>        Max playback channels, if not set, 8 channels default.
>  
> +  rockchip,capture-only:
> +    type: boolean
> +    description:
> +      Specify that the controller has capture only capability.
> +
> +  rockchip,playback-only:
> +    type: boolean
> +    description:
> +      Specify that the controller has playback only capability.

In the Rockchip TDM-I2S binding[1], these were dropped. Perhaps comment 
there why they are needed.

Rob

[1] https://lore.kernel.org/lkml/20210820182731.29370-1-frattaroli.nicolas@gmail.com/
