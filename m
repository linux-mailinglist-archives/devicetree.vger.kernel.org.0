Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 095A827C10D
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 11:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727841AbgI2J0W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 05:26:22 -0400
Received: from mail-ej1-f68.google.com ([209.85.218.68]:45495 "EHLO
        mail-ej1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727769AbgI2J0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 05:26:22 -0400
Received: by mail-ej1-f68.google.com with SMTP id i26so13968983ejb.12
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:26:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7zQaJl566g1kZzvz6iNW1U2FVHGGmoGoMhrQM+swRcA=;
        b=UP8C6XKL9s08LSqM4fVV6bQlQpMufJzEliDldVx6sRUHTZIzXsLjSNgpItT0XZUlhK
         thS+mLUQwxJjARYd7hVfKUS5zc5gIVSMuRH0ueG6LFHV0aEeGm65FHdaVSzU+rwp4fpG
         wzn/mLUrzvseSvdQPMzGReVA/JocBL51N5sE0RQ87uC6UkN1Yx3LK+TegGU+9IQNwU7S
         LJdFAhGzm9t6TrK8RR58D4k/dWLEd2UAxyDYSd5ME0l8I5dMoDYxOtmRIj5KRKP/FyVA
         lwD8+WKjWIqrJXof0LXNrgkTFws5lDpk+hAu7EM86J0cu0NA6239XOtJXTnoYfpo/BtC
         ULfw==
X-Gm-Message-State: AOAM530NOtTAoSlOCv/WWcyDRDGD8lNH7ivJkVtnpW6dNGVeGDThO2OH
        VqF0Eea7sXgreX818HuIHi7/F+6mrdxMcw==
X-Google-Smtp-Source: ABdhPJye9l9cG0Zl7nac8vJjPb9EgLU4CbHELa9A9jc4jLBRxWH2pG3KRxe9dLuaOmLuyAJSJBdNsg==
X-Received: by 2002:a17:906:1fc8:: with SMTP id e8mr776284ejt.280.1601371580366;
        Tue, 29 Sep 2020 02:26:20 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id u13sm4830798ejn.82.2020.09.29.02.26.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Sep 2020 02:26:19 -0700 (PDT)
Date:   Tue, 29 Sep 2020 11:26:11 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: freescale: Add pmu support on imx8mp
Message-ID: <20200929092611.GA10330@kozik-lap>
References: <20200929091523.2775950-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200929091523.2775950-1-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 29, 2020 at 05:15:22PM +0800, Jacky Bai wrote:
> Add PMU node to enable pmu support on imx8mp.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
> Change in V2:
> - Update the compatible string to ca53 specific
> - Correct the GIC_CPU_MASK num to 4 as only have 4xA53 cores
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
