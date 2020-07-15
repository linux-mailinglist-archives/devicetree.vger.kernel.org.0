Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2B5D221784
	for <lists+devicetree@lfdr.de>; Thu, 16 Jul 2020 00:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726660AbgGOWIi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 18:08:38 -0400
Received: from mail-il1-f175.google.com ([209.85.166.175]:40610 "EHLO
        mail-il1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbgGOWIi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 18:08:38 -0400
Received: by mail-il1-f175.google.com with SMTP id e18so3365756ilr.7
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 15:08:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=knDsMsUZzPuBI6zceRTXu+uSnKypwnx7mg8vtlqsklw=;
        b=B9uJtbY+cYYbpi/ZOwUyjkiu+Vufvcns5NIC9WNg+d4L07GF3zXOtapSEkM0I4k95O
         H6licgeZTpJJAtjpHe2+YezidWNOY6dztkGEhJ6mwUCTZTJe7XkI920J22lbkirNqBG9
         X2LaS0TvOCokKnV9EEf0AmjlwC7XolsIdcvrvHdQtvZC5Q6DiwmzGPIErWXLNFxOqmBr
         JiU3KCWndthb4CSNDd5LD5D1XFtQvLTgHp6Qdoj5EKkPnjtClDJrc9ZrA5Y/XMlMlDhJ
         gfcwDrxuQogx3D9dLPWqO45qv1Zn+/zGRlXHtqwQidiKhlxutovg8XL423p83ZC7iBjf
         NhDg==
X-Gm-Message-State: AOAM5334YzVEEXdlYU1i+W0z+zbZNDHV2mu6eX22Tl/o8raAe2NFFG+t
        YRU00PcudLbJxip1BooR9ky3PA38Z9s6
X-Google-Smtp-Source: ABdhPJxv9iOiymvbjYstJARTL1KA2eV7g35/XZk4+qyrmqGJVA5nmI9zX1z0p6c3HPJmTe5ujfJNJA==
X-Received: by 2002:a05:6e02:1086:: with SMTP id r6mr1535402ilj.158.1594850917930;
        Wed, 15 Jul 2020 15:08:37 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id t5sm1893525iov.53.2020.07.15.15.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 15:08:37 -0700 (PDT)
Received: (nullmailer pid 902712 invoked by uid 1000);
        Wed, 15 Jul 2020 22:08:36 -0000
Date:   Wed, 15 Jul 2020 16:08:36 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     alsa-devel@alsa-project.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH][resend] ASoC: dt-bindings: renesas, fsi: use
 patternProperties for FSI-A/B
Message-ID: <20200715220836.GA902680@bogus>
References: <87o8osxlow.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o8osxlow.wl-kuninori.morimoto.gx@renesas.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 07 Jul 2020 08:34:40 +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> FSI has FSI-A and FSI-B, and has fsia-xxx/fsib-xxx properties.
> This patch uses patternProperties, and reduce verbose settings.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
> 
> - 2weeks passed, but nothing happen
> 
>  .../bindings/sound/renesas,fsi.yaml           | 19 ++++---------------
>  1 file changed, 4 insertions(+), 15 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
