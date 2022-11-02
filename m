Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BD146165D0
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 16:14:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbiKBPO0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 11:14:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230012AbiKBPOZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 11:14:25 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97BD3D2CD
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 08:14:19 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id r18so16466567pgr.12
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 08:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BaRFwq/unHCPpO35rMNVysowvWByqjfa9IRqKS3kNFE=;
        b=cVY6eJN+1gXte9FHQ4h+lJGGAwY9Bzj+De4I6vGn4sgR2c78SYMgxw2wsIpd5KP+Fw
         4b5oD8byxHeVU5q3Vr32oFB1w0QVjjL/jVLk0gevxv3kgh7/h919o3UYhBFofPwKF6lc
         IaiD6Xzs/mO3V5IxNOcCFn09pN4eUGYK7YpcgzT8Xmm+E6ayTg1C2+JASxB9dJ9411qj
         ojzst8nAeuoTiyafz0Fbez8kCWXa/BrM9+lGB8slJJhumgkgQyoMfGJCGr7zUeDJpdNJ
         wNphOGbprj0EqO8/mHgUYdoEKV+5XTD2c4YuAHIUnpVLiqx0Z0rpIepHMENy5vZLcr89
         Bynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BaRFwq/unHCPpO35rMNVysowvWByqjfa9IRqKS3kNFE=;
        b=MQdVUBWhGxC4J60KMXFxjMs84Hnm5XJ3BpcQqqFpRVq0W8t9FUpnBzBO9TaeSpHySp
         JcvDDkPVPLL+j4uX7piG8oWKGz2LXA7L281bOt7QbJKBPiuFheySU4fQ05wjjcMsvWOo
         3c4/cSwSOUFMkBYkZobgLgxc74iyGBQ7FqClO1M53zfqBKMBOAEDuSbzkVpQWY/tvHwb
         AR1orO7e0yVonZLiau6gBZ1BDnCzKf3alXnWWqT9vbi+9JZDfUEMJLt4BacLU3ZeUzIc
         zz3NSbtYVmim/A2HlHHKnE8wexCAIgxyw0bjMmgZHnKn+tLcS5lgimaxu5Ujn8MppLTn
         Modw==
X-Gm-Message-State: ACrzQf3elXfTFGgDsrCwCVhFZeCavm+mgb1dfoLrf4hhGTMHPiffTOAW
        GWBfZrT70TIvZpnuA6nElRfF3XyMcFVpFBxxcoZcdxCIOOE=
X-Google-Smtp-Source: AMsMyM5c++58mJg6Fj39MwXHlnL6qJBS4f0332CHdhdif7HvK4LEVjIVod0Q2Md/RTcCOCLNWTeDPXB2Zydg5D3nTck=
X-Received: by 2002:a05:6a00:24c2:b0:52e:7181:a8a0 with SMTP id
 d2-20020a056a0024c200b0052e7181a8a0mr25739737pfv.57.1667402059116; Wed, 02
 Nov 2022 08:14:19 -0700 (PDT)
MIME-Version: 1.0
References: <20221017142007.5408-1-mengqi.zhang@mediatek.com> <20221017142007.5408-3-mengqi.zhang@mediatek.com>
In-Reply-To: <20221017142007.5408-3-mengqi.zhang@mediatek.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 2 Nov 2022 16:13:42 +0100
Message-ID: <CAPDyKFowa5mXVTU+ZcoSRp8daz=O=AJ1BdnH2roCG-hmB3Bz9Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bingdings: mmc: Mediatek: add ICE clock
To:     Mengqi Zhang <mengqi.zhang@mediatek.com>
Cc:     chaotian.jing@mediatek.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        wenbin.mei@mediatek.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Oct 2022 at 16:20, Mengqi Zhang <mengqi.zhang@mediatek.com> wrote:
>
> Document the binding for crypto clock of the Inline Crypto Engine
> of Mediatek SoCs.
>
> Signed-off-by: Mengqi Zhang <mengqi.zhang@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index d8e1e2e9adf2..f93d686e2911 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -57,6 +57,7 @@ properties:
>        - description: peripheral bus clock gate (required for MT8192).
>        - description: AXI bus clock gate (required for MT8192).
>        - description: AHB bus clock gate (required for MT8192).
> +      - description: crypto clock used for data encrypt/decrypt (optional).
>
>    clock-names:
>      minItems: 2
> @@ -69,6 +70,7 @@ properties:
>        - const: pclk_cg
>        - const: axi_cg
>        - const: ahb_cg
> +      - const: crypto

Looks like minItems/maxItems for clocks needs to be updated too.

>
>    interrupts:
>      description:
> --
> 2.25.1
>

Kind regards
Uffe
