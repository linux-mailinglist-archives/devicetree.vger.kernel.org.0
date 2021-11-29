Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C994A46264F
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 23:48:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235183AbhK2Wuh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 17:50:37 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:40783 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235237AbhK2Wt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 17:49:58 -0500
Received: by mail-ot1-f46.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so27617047otj.7
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 14:46:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vlaUIuTpfkQHFZYUbKS4f3lFAsn1jJAs7KRU7cm0X2I=;
        b=Ejy1H7Oir3xOu/r6GKUCQa5vUXNY8MG/PkCMp8mH89uOgavJUkznKBzWW2oZE3dpSK
         3bfJFw+l2hVAPFuP2QDVUOvOOehZsBVIIEKkHyO92D7UppS+sIFReTLVDoyO+BVW1oav
         x/YLcPCUuJda+UGUSTEmgWpkU4eTrhircuj22iCGnPtyE/N87SJzqhChjGRuLvj9XRAK
         t/B2yeNzk7T7Csur9mPNsw7xNf1xdP+pPw5m9za2gd8buqahdRwitEGHXLnAmcecrNNA
         Z8M16xG69gIegl27b/fBz33mqazGf33wOND6MDc9TgPvsrGf2yFBvQx1UFgf+uxAl3V4
         EklQ==
X-Gm-Message-State: AOAM530zVVWR/SCcolX2j2RNrQAi20ohQeMLbJK6Q+NZfXzDRVNaZnXq
        TGKRVj1qnrCRJ+Mn05Ulbl5Fh12YEA==
X-Google-Smtp-Source: ABdhPJwjYUv7TStIwEgfVKtax+pxEAr4orFhSvEl5ThKh76p2DPoQYSgbkr5OqmDg1XgSEO47zntGA==
X-Received: by 2002:a05:6830:1e25:: with SMTP id t5mr48290837otr.291.1638225999927;
        Mon, 29 Nov 2021 14:46:39 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q44sm2927209otv.80.2021.11.29.14.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 14:46:39 -0800 (PST)
Received: (nullmailer pid 750903 invoked by uid 1000);
        Mon, 29 Nov 2021 22:46:38 -0000
Date:   Mon, 29 Nov 2021 16:46:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 04/12] drm/rockchip: dw_hdmi: add regulator support
Message-ID: <YaVYTmvCQcs892Bh@robh.at.kernel.org>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211117143347.314294-5-s.hauer@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 03:33:39PM +0100, Sascha Hauer wrote:
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> for the HDMI port. add support for these to the driver for boards which
> have them supplied by switchable regulators.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip,dw-hdmi.yaml    |  6 ++

Bindings should be a separate patch. Include this as part of adding 
RK3568 support to the binding.

>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   | 58 ++++++++++++++++++-
>  2 files changed, 61 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 53fa42479d5b7..293b2cfbf739f 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -28,6 +28,12 @@ properties:
>    reg-io-width:
>      const: 4
>  
> +  avdd-0v9-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.
> +
> +  avdd-1v8-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.

0.9V ???

> +
>    clocks:
>      minItems: 2
>      items:
