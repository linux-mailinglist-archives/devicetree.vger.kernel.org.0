Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C07BF273D09
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 10:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726646AbgIVIOD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 04:14:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726343AbgIVIOD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 04:14:03 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AB4CC061755
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 01:14:03 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id v14so1078161pjd.4
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 01:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=T1cj9VkdIJgXkMg+/v6IAVYJnoku85HQWsjHTLpyVlQ=;
        b=G2egJOWFosnbTeGsAFYUb7Upxgbe6pBCDyP1iW4ac2C4BcTf3Vmv4ViywS57Iaj1gL
         jWxQyUhuZoSF4akLcMzTwmVgD/jOR/YokVAr+A/RtfLhquhyjGBKjZ1bn1tP6Num212f
         u+UGqmXAw/phUWllpXCtOvvXq9kTtIhHQ9ZuS1nv+megxI0Wc6oFrfGcowoIpf7zbPWb
         nEPvivnbEWvkXCXMYVasQdhKznZdsGJRi8uYFYa0pvN5x6Mz20BYgI4vI0iQmyTNkTyr
         3/EbQZnB1xdiBvNMO49b5MHg+7pAvF4KHGyF9E3iSHmCZmTbTeY9Yug+vBr2/CfhbSMO
         Anpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=T1cj9VkdIJgXkMg+/v6IAVYJnoku85HQWsjHTLpyVlQ=;
        b=DtbQJuXtr1/TbvkqS7TZMi9DrwHN0IZ+xlay2bCyR163cnVOgtPca9jOHpxskkDh21
         JiO3UK/x1g69NkVxbn5CnLcN4oPXo4kdb4OOmgIO2K9rp4v8aMr0WDNIVV25mPaasgSM
         FRRp+piz5NEt5Ca5U2lBLSUDW+e1UfcV3JZI7gdp54/yZ+CwecwPpTQGpBmyRhJhAueV
         eC0OGkMessKPkTX12T9wWtKsw54gFkWB6HBVCPcS2gDNXnJwKjRe5FWVVU9dLjvtbiMe
         8VSbjf0omNavGnZDX5s4ozaFozsUCymPC5kv/gu3Urcr/Opx6dACQZuX5dbBCzMEP/hx
         66kg==
X-Gm-Message-State: AOAM5320NZ5VWw+4AGKIQRvCyMba7IKb5M9bn9qzWYyCdYbrYnwyO0z1
        xK8PWcQVefh0lkKqLkN0XHjP
X-Google-Smtp-Source: ABdhPJzx8TnfRd8ouLgt7AwymhKrUBqvN0fCsTin8oMrPID1j94OB3O00rxQWB/J2LL/CoHd2irHJA==
X-Received: by 2002:a17:90a:e815:: with SMTP id i21mr2726679pjy.97.1600762443072;
        Tue, 22 Sep 2020 01:14:03 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e1c:c062:1004:2ccf:6900:b97])
        by smtp.gmail.com with ESMTPSA id 18sm11877559pge.52.2020.09.22.01.13.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 22 Sep 2020 01:14:02 -0700 (PDT)
Date:   Tue, 22 Sep 2020 13:43:54 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Peter Korsgaard <peter@korsgaard.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: Add vendor prefix for RoseapplePi.org
Message-ID: <20200922081354.GJ29035@Mani-XPS-13-9360>
References: <cover.1598621459.git.cristian.ciocaltea@gmail.com>
 <7b2624c1e2aa4cb09869ff38676ef2681caa2f77.1598621459.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b2624c1e2aa4cb09869ff38676ef2681caa2f77.1598621459.git.cristian.ciocaltea@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 28, 2020 at 04:53:18PM +0300, Cristian Ciocaltea wrote:
> Add devicetree vendor prefix for RoseapplePi.org Foundation.
> Website: http://roseapplepi.org/
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>

Applied for v5.10!

Thanks,
Mani

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 63996ab03521..0b5bd97b4211 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -894,6 +894,8 @@ patternProperties:
>      description: Ronbo Electronics
>    "^roofull,.*":
>      description: Shenzhen Roofull Technology Co, Ltd
> +  "^roseapplepi,.*":
> +    description: RoseapplePi.org
>    "^samsung,.*":
>      description: Samsung Semiconductor
>    "^samtec,.*":
> -- 
> 2.28.0
> 
