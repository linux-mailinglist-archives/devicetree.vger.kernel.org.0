Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5A33ED42B
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 14:42:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbhHPMm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 08:42:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235346AbhHPMm1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 08:42:27 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44AD8C0612E7
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 05:40:46 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v4so16272920wro.12
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 05:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Ukr7B9EiB9xHyKvrhfZJEKeOrydFM2zfvt63YqfxSWs=;
        b=eiVse9Db73F/c79uWsAwzo2jsr82m/n0naPemqfWoqydqhshoviHl66SQ1UV1yhiNf
         OBy2VbcX1RajuDBITbr3zrtgce5UxnZ9TjnEF5B60R1d0f/CuEC8fSSPjzeXMT+cmGNB
         YPqh916TDioVGYhx0bxJeXJx5gA5OH1trKb1ccXIyBpUhovjWle/hIwgaisNzB4sh7l6
         HtcFJ0Js52h0cDuuTjzoKuk2LFWRMXwMQCoW/nvbkJ4XCQeM7QMflIQ2vyOPR0Kd9Rka
         3xg4sg5w+4nF1T7nRuVbLn660/QgZN57zeKkJHGHVYITfl0daFKywNutcB9WygTkYRgP
         xngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Ukr7B9EiB9xHyKvrhfZJEKeOrydFM2zfvt63YqfxSWs=;
        b=in/0bBoR8m12GKOjgzhBIieV6q4IGaIMTRsd2mTGyPFXvEH1cxYs+/jS5ajW4vp3lT
         /yP7ANOx9mZDEDfdLctSioP8ZF0exYnPVa14i/V9++rI4aHOZZjQhYJVg9+wDFsFJbeR
         FLWItkJIvBFdoJ39injq9xFpTMpK6KS5DsToG2PQQZqMprafGu8If8C4oAQ3k3Imulzy
         aNYbWf72rWj+X6kHdDOQ/7SttqewvI7w9fSsT5Iy5Zsq/7ND6W0LWodRtyKOBZ0vAW3t
         ifzKZpwKAgyd07O6X/OKVOY3quDtEDTTmhko+7+A1wNf1OcEbIvgGE7j/BYXnzheeBo7
         aJvg==
X-Gm-Message-State: AOAM532q9Z15t2g+HzlYMaJUO3jL3sLZr0ebcwtYce7ul/rsUqMYacyo
        NaclYxKfeDAS6BPGzLoYzUthSw==
X-Google-Smtp-Source: ABdhPJzsfi2OMPKeaMjEBxniZUDA0fS/+rzpoSqNSKr9Cr2Lc2dWr/Yw2kiGQ47Hl0kFuK+8DgJlmg==
X-Received: by 2002:adf:f047:: with SMTP id t7mr18323743wro.337.1629117644916;
        Mon, 16 Aug 2021 05:40:44 -0700 (PDT)
Received: from google.com ([2.31.167.59])
        by smtp.gmail.com with ESMTPSA id l7sm10894273wmj.9.2021.08.16.05.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 05:40:44 -0700 (PDT)
Date:   Mon, 16 Aug 2021 13:40:42 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/4] mfd: tps65086: Make interrupt line optional
Message-ID: <YRpcygtgJoDycLWf@google.com>
References: <20210727092554.1059305-1-kernel@esmil.dk>
 <20210727092554.1059305-3-kernel@esmil.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210727092554.1059305-3-kernel@esmil.dk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Jul 2021, Emil Renner Berthing wrote:

> The BeagleV Starlight v0.9 board[1] doesn't have the IRQB line routed to
> the SoC, but it is still useful to be able to reach the PMIC over I2C
> for the other functionality it provides such as GPIOs and regulator
> settings.
> 
> [1] https://github.com/beagleboard/beaglev-starlight
> 
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> Acked-by: Rob Herring <robh@kernel.org>
> Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> ---
>  .../devicetree/bindings/mfd/ti,tps65086.yaml  |  3 ---
>  drivers/mfd/tps65086.c                        | 21 ++++++++++---------
>  2 files changed, 11 insertions(+), 13 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
