Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7985255AC94
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 22:30:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbiFYUaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 16:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233337AbiFYUaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 16:30:19 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 468B511475
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 13:30:18 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id z7so7835944edm.13
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 13:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PHG9vYe2+hEIeP66IB+CeZnBwWHvaVXCoSe7QCvQNhU=;
        b=xSpJ6XbSd0A7dLt1FY+JUOG/cm/CKtjXEIFSby2R4jI0UjMkpOlGppnN29cACTsGaw
         sz19dgQdZqYcm6kexLNZDhBNGKeuw4IHI/mdiCemWqY8omrh/akAvMFtoPlmlzMrNmKT
         97cxcHtvQ4E6UKwbkCZ1K47JD+i3agmvrw125GPneZ74GXXGpbPMP7EYqX5Oxunrdm8U
         tluliXhTH7TD0ISez1OaWMau5YiJPZkqmV/4p1aTDn6VuxtNhIi9rmdTAqRxEhI72+sC
         EK4fB9yl74Cv04yEn+jkwAv7k77qr4IxDosmiV4Jv13kSaoK58EafOZNH2XqKcleWkks
         09hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PHG9vYe2+hEIeP66IB+CeZnBwWHvaVXCoSe7QCvQNhU=;
        b=GxLkNPcYD4yxvYyKdkZX1SLtLegVZDLD7mbO2wgvpz/xTYuEOwgtqNUfo5clglY9/L
         c7C0OS+7cuyZTXo1bMmyG/939wSjkTzBmMEgvejzPXmSiUeL/QdTTehyHcu/gjht4T0v
         LHodNJn4c9RbbrCgvs91EtlCJYZuUDD+VDyeY8mgYMFtKTzFCWg94pEI9olhFaVE6Krx
         xKQXy3o72XgMF+e9ut1hCEPn0rkWxKOdyMnP/pxQZn85Eg+gOs0RwzGCmXwu5MJWcORx
         BbVsH5NjUygmaKebNVVzsxztg3amUr4fj4UXHAChPR+xbWEiSeO3Di8YeOPGI1vIOsa8
         +3AQ==
X-Gm-Message-State: AJIora88wkK8AjRvNwUr4t25t+G3G0Tz7qR3dj2G11xaS2Tip9y4x/4Q
        lLuYliRcka43sF+Zoz/vqylITg==
X-Google-Smtp-Source: AGRyM1u2IoPVRmbzjGQPCytqxD5DC+9n1JnhWsNu7nFxeSHqqkgpsfArHMNCP7TFUZFu4aG1BuusKA==
X-Received: by 2002:a50:fc15:0:b0:435:7897:e8ab with SMTP id i21-20020a50fc15000000b004357897e8abmr6969427edr.17.1656189016908;
        Sat, 25 Jun 2022 13:30:16 -0700 (PDT)
Received: from [192.168.0.239] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id oz20-20020a170906cd1400b006f3ef214dc7sm2960987ejb.45.2022.06.25.13.30.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jun 2022 13:30:16 -0700 (PDT)
Message-ID: <1c3d3e0a-5598-be8d-fc48-04529e7fecb0@linaro.org>
Date:   Sat, 25 Jun 2022 22:30:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 3/7] dt-bindings: reset: Add bindings for MT6795 Helio
 X10 reset controllers
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
        y.oudjana@protonmail.com, jason-jh.lin@mediatek.com,
        ck.hu@mediatek.com, fparent@baylibre.com, rex-bc.chen@mediatek.com,
        tinghan.shen@mediatek.com, chun-jie.chen@mediatek.com,
        weiyi.lu@mediatek.com, ikjn@chromium.org, miles.chen@mediatek.com,
        sam.shih@mediatek.com, wenst@chromium.org,
        bgolaszewski@baylibre.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, paul.bouchara@somainline.org,
        kernel@collabora.com, Rob Herring <robh@kernel.org>
References: <20220624093525.243077-1-angelogioacchino.delregno@collabora.com>
 <20220624093525.243077-4-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220624093525.243077-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/06/2022 11:35, AngeloGioacchino Del Regno wrote:
> Add the reset controller bindings for MT6795.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  include/dt-bindings/reset/mt6795-resets.h | 50 +++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 include/dt-bindings/reset/mt6795-resets.h
> 
> diff --git a/include/dt-bindings/reset/mt6795-resets.h b/include/dt-bindings/reset/mt6795-resets.h
> new file mode 100644
> index 000000000000..0a6514884eae
> --- /dev/null
> +++ b/include/dt-bindings/reset/mt6795-resets.h

Like bindings, so vendor prefix is needed.

Best regards,
Krzysztof
