Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91169538E10
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 11:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245314AbiEaJ4Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 05:56:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237035AbiEaJ4Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 05:56:24 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E656A15A2B
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 02:56:22 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id rq11so25568263ejc.4
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 02:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IjUcMygO4GTAkhw44QoQ4UMULc/veIYWgYx1C+Vi5DI=;
        b=DrO53+KoaAbpjvnulJ4LTgaRPx/eeEbBZXLaOoN2g5+l9BDpVsZsXr/R2ddAmikqpp
         l2GtpHPLgkG7swp63Ht0PeK5wwPj2mg+o+W5LKEizccre+g6h9zzkscRUqJa8hNuWZVJ
         U+GBvers5NHvax767zsSt1O1Vacx7rkQ7znGZXrjB3vuTPa4h5A9VvKkb25f/SvxlklE
         LoQtSII7rAllU0bWi66hlmw+xYOqF1WJRS5pbC/f7/qyGx10Mi4CSKaRUxco5qaZ8r6p
         /F20RUaKv2ZafTD57+WfBP3EA3felTPvkpHjczoHvPNL3HdFAXzm549kjdpUm8cfye9S
         pBzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IjUcMygO4GTAkhw44QoQ4UMULc/veIYWgYx1C+Vi5DI=;
        b=7Vo2iv4cdwbO2U1Ekwzsq8maDuX8oFzydiFEZU3n8swTR9e/V01Zkbc9yLGVlMaTYb
         +TXD45+uIpkTPadAuTQ9vW7k4JNFpVOMRXv5CSl3uHgCFgyEmCglR2N1eiSp58pMIdxU
         4Cgq19q6v/KTygcKYSV+MHhp8WqNm9cUUXv1F6bwsoe4+21PMm8y3B5ZXwjmEs8qVCzA
         ev0cPOAVcKC4vNNA8apthtzxkqx2eLBcccRqg75At9R30j+17DWBPF2wYJlo/heU8FXY
         ZchIv6N7BztSl2Xumv0Wej435AVGaFB3C9ZKGaf/eYjjMpG/pHBa0eOTXRRWCem3CIcr
         i0ww==
X-Gm-Message-State: AOAM531pVP5wQWBUxEHe/q7lMgxf8tKGFk7mCd9p5n8Zzzd9gAMIevKg
        gkYupyNJX5H4XPck9opMiyPvnQ==
X-Google-Smtp-Source: ABdhPJwByf9S4EVKSk87YILqPFVu3WlNurAiBi0GrfnAmMVvKxUAQqaXetU6Xqd1cWv6fejDbS9ddA==
X-Received: by 2002:a17:906:6bd3:b0:6fe:8c20:f218 with SMTP id t19-20020a1709066bd300b006fe8c20f218mr52262411ejs.32.1653990981278;
        Tue, 31 May 2022 02:56:21 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ay21-20020a170906d29500b006feba4ef020sm4728945ejb.180.2022.05.31.02.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 02:56:20 -0700 (PDT)
Message-ID: <e92618c0-056c-5854-9bb3-5fba90a82d96@linaro.org>
Date:   Tue, 31 May 2022 11:56:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/6] phy: samsung-ufs: move cdr offset to drvdata
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        avri.altman@wdc.com, bvanassche@acm.org,
        martin.petersen@oracle.com, chanho61.park@samsung.com,
        pankaj.dubey@samsung.com, linux-fsd@tesla.com,
        Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012341epcas5p19b15b4916b210687ab6b46d6da0b2273@epcas5p1.samsung.com>
 <20220531012220.80563-3-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-3-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 03:22, Alim Akhtar wrote:
> Move CDR lock offset to drv data so that it can
> be extended for other SoCs which are having CDR
> lock at different register offset.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/phy/samsung/phy-exynos7-ufs.c      | 3 +++
>  drivers/phy/samsung/phy-exynosautov9-ufs.c | 2 ++
>  drivers/phy/samsung/phy-samsung-ufs.c      | 3 ++-
>  drivers/phy/samsung/phy-samsung-ufs.h      | 2 +-
>  4 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-exynos7-ufs.c b/drivers/phy/samsung/phy-exynos7-ufs.c
> index 7c9008e163db..d1a37273cb1f 100644
> --- a/drivers/phy/samsung/phy-exynos7-ufs.c
> +++ b/drivers/phy/samsung/phy-exynos7-ufs.c
> @@ -11,6 +11,8 @@
>  #define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
>  #define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN	BIT(0)
>  
> +#define PHY_CDR_LOCK_STATUS    0x5e

This should be now renamed to match other defines here, so
EXYNOS7_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS


Best regards,
Krzysztof
