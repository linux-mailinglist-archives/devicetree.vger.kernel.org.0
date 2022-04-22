Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 708B850BD80
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 18:49:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1449842AbiDVQvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 12:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1449838AbiDVQvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 12:51:54 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A8A45F8C9
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 09:48:59 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id e189so9631359oia.8
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 09:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ukFSZ0c+ZlmfrRD+7vq2cqrIQ4lRoIzajrLlyX5Lu4g=;
        b=Ko7IVhOybo3oW8GcTV9klMNb4wS2aNSv/IHABXacdZBm3j4YlxTS2QOM/md2P+JrvV
         ewg3rUtGygI5ryu1EbC/tGsL0N4knwtpTLjshcEpoi/NUxjr4gsUNZjFomkuzd8ZoL5E
         NN7nCFWZnnqIsSIRlSYwS0XRoajXMtgdQzI+M7u4Th7Ecd4tRFbRoNDtWDGMt5duxNVK
         xcvD6tPp3n1ENZnD9JkBuSBqbALvyiQlWEakZhSi5gwEdsIh2st1t8gr2E2G0i90qUxR
         dztWeqcPeFDEp1NPENXcWBFN165vrqWOIYzw5GU4jsRB1q/XhgSjgv9kIShTtLCBENca
         QkPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ukFSZ0c+ZlmfrRD+7vq2cqrIQ4lRoIzajrLlyX5Lu4g=;
        b=p5erdafE/EZVL02Ctj8AbB0dhbbkxWF6zszpQuClMOUGKNCHgI+0uYYdnSCwQSSSzn
         p0/pte2SfAWv523pI11OMIrmKn8XB32gAF/2n2+UprcGTyNiWA3sQc/Pa6ijEiZxMH+8
         lf44/4yueKozZ9Up/6ODWXNQc6XHrPQlQWoj8fAXmFHCTE12Re0h9bW9E+BEWL7fEFq2
         lFPn06V2kca5T+m65+rTmG+3V4Zl2rg0i3sUel8oiZ+Xf5cvRT8kTdW9FMLnKZ6Gx4kL
         3mnBgeGEwVZxc66Ub1QWLjDFXak8JGHGyRQx7gnoJBvQ8jV3T0/WNRvdrgb6mSnSFiRb
         n+1w==
X-Gm-Message-State: AOAM533g8s3fFuf+tVhX2KX9czlzIYLn7/C+DEJcyZis3mQ2IGZO1gCk
        zPi4lbd/PgDvREY+8bZ2KUeowg==
X-Google-Smtp-Source: ABdhPJzZq1ctYQzQcwS6nlBbCYuC0/Mqp0MY5N3po+2Ix7V/5FCCzS9mfLS1toZrRPv+JdwbyI9pGQ==
X-Received: by 2002:a05:6808:2189:b0:322:e874:e8f2 with SMTP id be9-20020a056808218900b00322e874e8f2mr2731537oib.289.1650646138946;
        Fri, 22 Apr 2022 09:48:58 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm910651otu.73.2022.04.22.09.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 09:48:58 -0700 (PDT)
Date:   Fri, 22 Apr 2022 13:48:52 -0300
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To:     Christopher Obbard <chris.obbard@collabora.com>
Cc:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Alex Bee <knaerzche@gmail.com>,
        Elaine Zhang <zhangqing@rock-chips.com>,
        linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Message-ID: <YmLcdCridA6AKd51@eze-laptop>
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-2-chris.obbard@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220422133803.989256-2-chris.obbard@collabora.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 22, 2022 at 02:38:01PM +0100, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 089f11d21b25..23f9687d862c 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -19,6 +19,7 @@ properties:
>        - const: rockchip,rk3399-vdec
>        - items:
>            - const: rockchip,rk3228-vdec
> +          - const: rockchip,rk3328-vdec
>            - const: rockchip,rk3399-vdec
>  
>    reg:
> -- 
> 2.34.1
> 
