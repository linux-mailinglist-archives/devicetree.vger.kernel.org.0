Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2586248BA9
	for <lists+devicetree@lfdr.de>; Tue, 18 Aug 2020 18:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726715AbgHRQbv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Aug 2020 12:31:51 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:46688 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726482AbgHRQbt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Aug 2020 12:31:49 -0400
Received: by mail-io1-f65.google.com with SMTP id a5so21691016ioa.13
        for <devicetree@vger.kernel.org>; Tue, 18 Aug 2020 09:31:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jAiOq68aDen9Q1Mx8UTb2YqOvhTFkcozUpaYYQsgA14=;
        b=OxjW2hBMCaBXoUx1kulJev8QvsYIa5BqCF4apNjKA07MYdJqviVCHvR3+u7TX6IvdS
         8/gVJF2RxO2sBi2NAHipjiz3uPNgJFTkWsm9i5LEbLsUdr9Sj75I/04+OoWLTaImoBBA
         /kNd+DpH+F5mK7dJLqZfrW4+bro6NQoqJ57NqRVId+htIMBAn+FT7QFwplvVufHyNfDx
         DzIHW2t648/vQuV3IIqGxRCdXg70fjw2e3GQu770d1Ne2CGwuUoL+sP+0OKyCftpLe5j
         RJV9fMoTozMScRIDiKwgJjFm+urOPZBwsmTKU5d1B7ov2FSfYkc/P8CfY0H/3L/Bd9i8
         rpMQ==
X-Gm-Message-State: AOAM530sU2pi0gN12aNPX9m5z98ebKSKP33ounSA8AbHDFUvBJ9f3+/v
        gzjN+eC1rdRpQmFW/vUTRQ==
X-Google-Smtp-Source: ABdhPJxiNJbHvNpULFQtGNx42cULOJrAIezeAMCg8L+ngONKbgbVgcmPJxScZ5VL6tAwErFsf9DW4w==
X-Received: by 2002:a05:6602:1405:: with SMTP id t5mr9591521iov.72.1597768308668;
        Tue, 18 Aug 2020 09:31:48 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id w9sm11108907iop.2.2020.08.18.09.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 09:31:48 -0700 (PDT)
Received: (nullmailer pid 3580634 invoked by uid 1000);
        Tue, 18 Aug 2020 16:31:47 -0000
Date:   Tue, 18 Aug 2020 10:31:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, shawnguo@kernel.org
Subject: Re: [PATCH] dt-bindings: Use Shawn Guo's preferred e-mail for i.MX
 bindings
Message-ID: <20200818163147.GA3580529@bogus>
References: <20200818111245.17047-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200818111245.17047-1-festevam@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 18 Aug 2020 08:12:45 -0300, Fabio Estevam wrote:
> Use Shawn Guo's kernel.org address for the i.MX related bindings
> as per the MAINTAINERS entries.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  Documentation/devicetree/bindings/clock/imx23-clock.yaml   | 2 +-
>  Documentation/devicetree/bindings/clock/imx28-clock.yaml   | 2 +-
>  Documentation/devicetree/bindings/gpio/gpio-mxs.yaml       | 2 +-
>  Documentation/devicetree/bindings/i2c/i2c-mxs.yaml         | 2 +-
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml   | 2 +-
>  Documentation/devicetree/bindings/mmc/mxs-mmc.yaml         | 2 +-
>  Documentation/devicetree/bindings/pwm/mxs-pwm.yaml         | 2 +-
>  Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml    | 2 +-
>  Documentation/devicetree/bindings/thermal/imx-thermal.yaml | 2 +-
>  9 files changed, 9 insertions(+), 9 deletions(-)
> 

Applied, thanks!
