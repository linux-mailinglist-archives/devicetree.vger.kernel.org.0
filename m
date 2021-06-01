Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FB6A39770E
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234498AbhFAPsi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:48:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234420AbhFAPsh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:48:37 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E1EAC061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:46:55 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id n2so14920456wrm.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=exFIxZuOrD7Plr1Np3AS/tQawGwgEP79Gok5C1va520=;
        b=Sjx9YHyswPIyxritg2eQKQLwWxgZcxEjPBd1aoPRJx2iVjp8I4s7B2xEcC0qChfNs6
         8oXfF7L7nZ2PrCZTD2bsNk1ohhgRp5nEv/rIS6rN3kvm9S21t+YfU3gplobwvWxIpCrW
         kfH4ajPSDEkTfn2ozzy6+7muVP9uK0diLv4k7hYHKLfvJ41av+52MQ4P+J4PASOO7pJG
         h5BuNxJ9aoiljsBK7yFfV4KnnhHOvqHSHzs2+9wa9uv23ryXn24sO5zvwnCf0aT1Og0z
         ALzEwl+zrozYTSRE/AySTHxZ0oWTkA+TeMfMbxkMOyQHY4M7K+WGL4eQ6HCgRBaIysiA
         gSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=exFIxZuOrD7Plr1Np3AS/tQawGwgEP79Gok5C1va520=;
        b=KskcdNR7CiYep2H9d92FVXmuo/PuJKNV3AAnaX5jPi5SLUrvdtW0gDs3JtgKdFs//F
         EkdFv+YJVL/NptN2UgS21AjHz7u1UEXoIy3w5TNeHH+7Jm6T5fZH0e1xB5eu26CxVJxQ
         XAuJozByNw+6KuB9jAyRhdN6K518eq2RY4aCGNaFhc3jhfxwHgUhjrEaVLQXfvTbvGrU
         vIwwRCBiIvCOLnmycwSCST8CK/u6JTYuIkAWUAovQPmCXPcVAKEw5wJl8PRPZcbrJLcz
         AdsADsvzkBTooUJsFWIhF7Nz60g1VyOC9Zj1NVw87lPBUg8RGAOslmkRqSDrZPKa6TX8
         gE/g==
X-Gm-Message-State: AOAM531TDjaqbyV1hwYalfwTPqsJVy5DlQQ17IyupoCfJSCgkqoCKDzT
        FM/uDnSlEC+4Ik8AKfApb4BaHUfBwBtmWg==
X-Google-Smtp-Source: ABdhPJxF67vbMP6BSXVX7i7BEayuWA1qe+1M9Gi9KHneZ4+6CHVCj6+4FxBdy6cgFyCIxJV3874yLQ==
X-Received: by 2002:a5d:4a4b:: with SMTP id v11mr14929357wrs.246.1622562414194;
        Tue, 01 Jun 2021 08:46:54 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id u8sm2738305wmq.29.2021.06.01.08.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 08:46:53 -0700 (PDT)
Date:   Tue, 1 Jun 2021 16:46:51 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Alex Bee <knaerzche@gmail.com>
Cc:     Ezequiel Garcia <ezequiel@collabora.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/12] dt-bindings: mfd: syscon: add Rockchip
 RK3036/RK3228 qos compatibles
Message-ID: <20210601154651.GE2159518@dell>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-2-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210527154455.358869-2-knaerzche@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 27 May 2021, Alex Bee wrote:

> Document Rockchip RK3036/RK3228 qos compatibles
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
> 
>  Changes in v2:
>  - collect Reviewed tag
> 
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
