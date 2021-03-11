Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31A8533721C
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 13:11:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232892AbhCKMKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 07:10:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232999AbhCKMKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 07:10:41 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9558BC061574
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 04:10:40 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id m22so39343741lfg.5
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 04:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=6WQ2Uh7ZOAQINzgbxJVZJPF3m1HcFUAUJ1TDlBBkKGU=;
        b=fnSJ5ej86s4V4r9U4SJ8ZESf0GGr65kdYnTpHxuPvMrZZM2a8V7V8kD2aUbI3WlWSE
         reBjdpVpvYvbknHvJIFv8YxJrtq2wBbCPEGbE61oj9MnZMTYnH4DPRZ9mnDioh9apkLt
         hohpS3IUsqUtQctDHBV2zGBWr+JRFRHABGIFSypEjaAzpjEcPwJxGTRmqlMOKCnYBbvY
         2XqRn7UYfirpUEB31r/3YfejMEQrjxmkDbGAY8MTRzOdC+9fXQ3k6vExf31FhyTkXkrM
         26t3E60ybFd1ZvpkAL975586gUuhFeSQykQvlMnTZecz7cCbTie0KWbYwHe+S9QS3bsq
         mccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=6WQ2Uh7ZOAQINzgbxJVZJPF3m1HcFUAUJ1TDlBBkKGU=;
        b=cg9BZ+9jNQMpoCrOgci8aa0wH/BvgTqH5fcQRKSw/FSbXZM8vF/HZ6mOQGOfs09tXe
         wjC1AsXh03JTltoNYKTguu/GgyvX8/QTdjfbGHAsbRmmix2twk68s0rxB9i+YOKpNaO3
         TxCB7r5QENOFNnUD2hqTEoIpF2d+ZHkv1BJCnkZUme3N4JFfxSGUZoTOpd83qssYuVsL
         jspa1mMjSUGV1VZyt7wxmdrxludtW0tyPbqvPCtYEfuI/aAtbjzQJ73HkqB+HvB1ex2I
         eXJajyD3UK0zx7J9f3mSiexDsxVVWK24wGHa8FAIZL+hr2CHeYNFBMZXPuGCFJAu6GdC
         uKwA==
X-Gm-Message-State: AOAM530LVNMCGimJvljj0NzkkhrtQchEkY67EeYwSfKSvZPqv+Uv7wwk
        S1kmqTjy/pwPAanxd7WEGXmX+w==
X-Google-Smtp-Source: ABdhPJz6SebrF7Fq9Ak8nU8uXD4GLzklZ6aTnlCi+eN90s+eykOW6giy7THR+Lp1cpEjQOJB/9DgJQ==
X-Received: by 2002:a19:8048:: with SMTP id b69mr2196729lfd.458.1615464639071;
        Thu, 11 Mar 2021 04:10:39 -0800 (PST)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id j2sm782133lfe.47.2021.03.11.04.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 04:10:38 -0800 (PST)
Date:   Thu, 11 Mar 2021 13:10:37 +0100
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        devicetree@vger.kernel.org
Cc:     linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2] dt-bindings: timer: renesas,cmt: Document R8A77961
Message-ID: <YEoIvYLcPbzS6VMC@oden.dyn.berto.se>
References: <20210211143344.352588-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210211143344.352588-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Gentle ping.

On 2021-02-11 15:33:44 +0100, Niklas Söderlund wrote:
> Add missing bindings for M3-W+.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/timer/renesas,cmt.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> index 428db3a21bb9c384..d16b5a243ed48eef 100644
> --- a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> +++ b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
> @@ -74,6 +74,7 @@ properties:
>                - renesas,r8a774e1-cmt0     # 32-bit CMT0 on RZ/G2H
>                - renesas,r8a7795-cmt0      # 32-bit CMT0 on R-Car H3
>                - renesas,r8a7796-cmt0      # 32-bit CMT0 on R-Car M3-W
> +              - renesas,r8a77961-cmt0     # 32-bit CMT0 on R-Car M3-W+
>                - renesas,r8a77965-cmt0     # 32-bit CMT0 on R-Car M3-N
>                - renesas,r8a77970-cmt0     # 32-bit CMT0 on R-Car V3M
>                - renesas,r8a77980-cmt0     # 32-bit CMT0 on R-Car V3H
> @@ -89,6 +90,7 @@ properties:
>                - renesas,r8a774e1-cmt1     # 48-bit CMT on RZ/G2H
>                - renesas,r8a7795-cmt1      # 48-bit CMT on R-Car H3
>                - renesas,r8a7796-cmt1      # 48-bit CMT on R-Car M3-W
> +              - renesas,r8a77961-cmt1     # 48-bit CMT on R-Car M3-W+
>                - renesas,r8a77965-cmt1     # 48-bit CMT on R-Car M3-N
>                - renesas,r8a77970-cmt1     # 48-bit CMT on R-Car V3M
>                - renesas,r8a77980-cmt1     # 48-bit CMT on R-Car V3H
> -- 
> 2.30.0
> 

-- 
Regards,
Niklas Söderlund
