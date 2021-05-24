Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30E0738E878
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 16:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233056AbhEXONo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 10:13:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233074AbhEXONe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 10:13:34 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82755C06138C
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 07:12:05 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id c10so19853077lfm.0
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 07:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=EqzKZy8iG5YtODeoQ+7arxZWeDSaRjeQIJ9lF+wQUvM=;
        b=mceq3hTDdifAJiqp7ulPjiCJ3NEgeMnoBdVCNB9C7MFH36BifBM8EsuhWPsqrv2pus
         de/9fBoSLzgB1hBeDCZK/eQGGsY6G6mx5a09cAnG5je608TnYffFYCGw/733trTGJYGT
         wVRzdDUViH96KyDBLHT8Z/S35/uZ7T4IlauGZeYjXw81oPiv4UkuOCAbkQXAHL8MAnBh
         /4X3ziVwd14FomNlrrXUXkx5PNPcsGxI/STW2Nx3yWxG4ZQ9KFOASEyPOr2hN4N0GxXk
         EK5H8QwSQxixy1DNJtQWThxVRBcuv901Xj8abXpnsbJtxPSYxKftHPKJXVuS5OAnOA4B
         cABA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=EqzKZy8iG5YtODeoQ+7arxZWeDSaRjeQIJ9lF+wQUvM=;
        b=qwf5llHUFjD1snf1qyqEZ+lMG6eFShAp9+A5hYy3dCMRIyDBOVuxjBmuRktG2pDflk
         uKEZAN7i/9opLfnochiaVm26bM6QJSxZdkN63O8fjg3oab5IJFWFx1htG9RdYj7d8q0u
         MD6cdbIxJOFmLth37NLwcIq9qhKttfhao/xZJ2KR+/WcvqEn3KIpmF0KF6f92WL70fTJ
         SpYclnvZY6mOv/qacM3aZClRFKl8dT4vYi4/Zz3BUtnmany1ivYpCtXFwf/9FaY0A3jf
         nu0WR6CoSjbout3L6ysJciTax5lr3VWeVWZXfcEdmSZBCvtWnGYkWTGOGRMdLBmOXekj
         sO/A==
X-Gm-Message-State: AOAM531cJRbl39cZ+0YGlckHjOYww/ettYFQ+LH4cLcf2Xi9kktJDnAX
        T5ylKd++yz9ByrBWc3MjAmFLAzrGSGXB6RJkhRxOIg==
X-Google-Smtp-Source: ABdhPJxPgWa+XQ/7Yg9tLBVcQQ7nzCQ0v/2otc+UDqjvNgiP2uxY0CceWIfPJOWFC9pJWYvoJbCIy35NX/VyVkYlof8=
X-Received: by 2002:a19:c511:: with SMTP id w17mr11003208lfe.113.1621865523890;
 Mon, 24 May 2021 07:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210516230551.12469-1-afaerber@suse.de> <20210516230551.12469-7-afaerber@suse.de>
In-Reply-To: <20210516230551.12469-7-afaerber@suse.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 24 May 2021 16:10:30 +0200
Message-ID: <CAPDyKFpfL8uSK5Vk-=FjN+D0Sz3TWn28kWjF0g8cmftu_moZfg@mail.gmail.com>
Subject: Re: [PATCH 6/9] dt-bindings: mmc: rockchip-dw-mshc: Add Rockchip RK1808
To:     =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 May 2021 at 01:06, Andreas F=C3=A4rber <afaerber@suse.de> wrote:
>
> Add a compatible string for Rockchip RK1808 SoC.
>
> Signed-off-by: Andreas F=C3=A4rber <afaerber@suse.de>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml =
b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index eaa3b0ef24f6..54fb59820d2b 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -30,6 +30,7 @@ properties:
>        - items:
>            - enum:
>                - rockchip,px30-dw-mshc
> +              - rockchip,rk1808-dw-mshc
>                - rockchip,rk3036-dw-mshc
>                - rockchip,rk3228-dw-mshc
>                - rockchip,rk3308-dw-mshc
> --
> 2.31.1
>
