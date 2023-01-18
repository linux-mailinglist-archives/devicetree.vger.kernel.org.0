Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFF566721FF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 16:48:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbjARPsa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 10:48:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231530AbjARPqg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 10:46:36 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B6E83BD8D
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 07:46:34 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id j17so6475774wms.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 07:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+5JIxwYLdszz3QtNNn14zH3G7fOay6yeEWK2c2U4Apw=;
        b=GvKQjdx9H9NyRni27g+w3f02ZkRz/gMShcGghXCiF8mXUrmhI19CHpdiabajvKBHuI
         b8muNVsw9ZM/4lp5D2aRM1rLOPa2Ujs95U9Vzhub0VQaxOKKUATCn4wfKPq5SgfuxhIa
         wX1rHbMp2INsDs56pBjMWQvWPrWMty7+Cvxk5KlBtYwkFQKYwLNzWDwImxk8e5to0OVs
         YzWLZKxLPE1qREDcuf9Ql/DJ0F3RKa6+vgsTQ30HAB+yZoLAxPfTxOcaaskvTwkHEI0g
         Qlwb+ghaMZhsI3qQfJWtPVeQVBvH7DSDUzZfBR8k4pzaCkjJs1ypFcQONTK52w+vmse/
         DNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+5JIxwYLdszz3QtNNn14zH3G7fOay6yeEWK2c2U4Apw=;
        b=6ebi3ZhnhEgw1v3mUhMPmGdRt9eqHXMrw/s8p3ei7qY1eTR4M2zD9TYlBPrTcUKBgP
         x8qxEHqNwsqCpzvm415kN8ugAktNI2VlRled1glhqE3isSZ/6BH5JXBw4BkiNuULvg/k
         Wv1BoocaAMzppss/lryMMKOTY4Rxu4q5sZLfEWceIyI32IJr1Qez7XEOo9lFF6gVDyve
         ZPaUJowAoM5rx81ogulbKc/QocTM0G7PtVVvmpbV7Zv9Zmns0QP8/nvjMJsHsO2pjI4E
         UZaNUxpYOtPObRLFsBJmYJT2/g+g4pAA9M9yVmjzvV7jRybR7z9c1hG603T7Bcc9YPSO
         hmlg==
X-Gm-Message-State: AFqh2kob6MInr9Saqy/Wv9d/jKZKXv/iNImNfyZpo7WtuFfShU0UlE/f
        Wt9t+ADrIWN6C0nMRBYOXbeFfg==
X-Google-Smtp-Source: AMrXdXsi8lT14Wy6b9Ye83A/k0/x6hjIf5EUq5UIA/MVGjHWG+iux9sBuvphRRMwb25HsHdRFMabpg==
X-Received: by 2002:a05:600c:198a:b0:3d9:cb4c:af5a with SMTP id t10-20020a05600c198a00b003d9cb4caf5amr7424430wmq.33.1674056792976;
        Wed, 18 Jan 2023 07:46:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z12-20020adfd0cc000000b002bdff778d87sm8738509wrh.34.2023.01.18.07.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 07:46:31 -0800 (PST)
Message-ID: <d4314561-bdcd-5e93-d329-e755d5316476@linaro.org>
Date:   Wed, 18 Jan 2023 16:46:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 2/7] dt-bindings: net: snps,dwmac: Update the maxitems
 number of resets and reset-names
Content-Language: en-US
To:     Yanhong Wang <yanhong.wang@starfivetech.com>,
        linux-riscv@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>
References: <20230118061701.30047-1-yanhong.wang@starfivetech.com>
 <20230118061701.30047-3-yanhong.wang@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118061701.30047-3-yanhong.wang@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 07:16, Yanhong Wang wrote:
> Some boards(such as StarFive VisionFive v2) require more than one value
> which defined by resets property, so the original definition can not
> meet the requirements. In order to adapt to different requirements,
> adjust the maxitems number definition.
> 
> Signed-off-by: Yanhong Wang <yanhong.wang@starfivetech.com>
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index e26c3e76ebb7..baf2c5b9e92d 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -133,12 +133,9 @@ properties:
>          - ptp_ref
>  
>    resets:
> -    maxItems: 1
> -    description:
> -      MAC Reset signal.
> -
> -  reset-names:
> -    const: stmmaceth
> +    minItems: 1
> +    maxItems: 3
> +    additionalItems: true

NAK, because I told you twice to drop this one. So this is third time -
drop this line...

Best regards,
Krzysztof

