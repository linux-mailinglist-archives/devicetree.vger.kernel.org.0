Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DACA0512E05
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 10:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238117AbiD1ISL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 04:18:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343986AbiD1ISH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 04:18:07 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C25027C24B
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 01:14:53 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id k27so4607834edk.4
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 01:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7sCR5DX1ji5mpaJHkRF1LwUVBfUg54Tiue1jbz2GHmE=;
        b=yWPnV07PwtqjpFNx4B/iWowQlEnqGkz3cWC+tJAj2NyQYgheIg/UMx/0o6boJfDaxD
         uZAgDH+Iv1pm9sFnCKTRFJ/o3h6VtEwovNXWhZfsKker25csmOG7KAIDVRpaTclq45ic
         XgagJmAF/avSy2yDH+C2E8b158SLPNrVg2oZJilFaSbgfzhLJzH6Q6Q7dYEDvwazN3in
         eygfrzJA9UCoQ4BXV0tF6Vnzk+BdQaBD2UcrfBambPIw17/tOeAp3PQaOQeN8ye4y2jb
         nJcLOwkxZsu1cd0QvXgCxgtTJghwsaNcUivqILHC/VW3Y4DBl9NUl6qVeIQhtYVCTH2q
         FFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7sCR5DX1ji5mpaJHkRF1LwUVBfUg54Tiue1jbz2GHmE=;
        b=oofibqPdxnZ79etXvFJO9W3Y3ruNuRguEEO0aDVC6E3plTzg8ao6L9X+U7Q2FzOnqB
         CEeLeFxts07a/IO1t1PlaJwhrvwwbqId8uJPE0FbtoaBwZ24VvShdypcynut5KnqRCXj
         v18J9kyGcl2H0x/3i/0nHy9upa8LxpwUr9Zk8QfbKzkWdz1eaSNuQ53V5qVYsdkNID0Z
         XUBE+EQCryq+C++mBmNCxy2n03xID1marx+HRJmVsbGnyFebMiHM6pOjW83NPyIjyAEO
         1Wbe76YI8YPtX2p6jW4UwzX6+tusg3SjIWBw7Q6ZTZACLHJEF+psHBZKjtq+ycB99MaG
         18Rg==
X-Gm-Message-State: AOAM5324dMpSSU9EupcYNCBtXQ7FxhL03KSvgP8QT2TjiDlFlwN9S/cN
        9emCUFSaZkKUim8OjybGRgoaKQ==
X-Google-Smtp-Source: ABdhPJxiRLV/HKvAqWcQxnWXyLkNRBERVVl74Pc6h3mSxdH3dRF42MWaLcXuy0+shDo4/RWnOdo3pQ==
X-Received: by 2002:a05:6402:4396:b0:426:1bac:ec8e with SMTP id o22-20020a056402439600b004261bacec8emr6169477edc.127.1651133692353;
        Thu, 28 Apr 2022 01:14:52 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q7-20020a170906540700b006d5eca5c9cfsm8012426ejo.191.2022.04.28.01.14.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 01:14:51 -0700 (PDT)
Message-ID: <96fd3054-17b1-db42-9a44-a60485243807@linaro.org>
Date:   Thu, 28 Apr 2022 10:14:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 3/4] dt-bindings: mmc: Add Broadcom optional sdio_freq
 clock
Content-Language: en-US
To:     Kamal Dasu <kdasu.kdev@gmail.com>, ulf.hansson@linaro.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, alcooperx@gmail.com
Cc:     f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
        adrian.hunter@intel.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220427180853.35970-1-kdasu.kdev@gmail.com>
 <20220427180853.35970-4-kdasu.kdev@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427180853.35970-4-kdasu.kdev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 20:08, Kamal Dasu wrote:
> The 72116B0 has improved SDIO controllers that allow the max clock
> rate to be increased from a max of 100MHz to a max of 150MHz.
> Optional "sdio_freq" clock is used to drive the bus clock if present
> optional property "max-frequency" specifies a base clock frequency
> in Hz that overrides the base clock frequency in the CAPS registers.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  .../bindings/mmc/brcm,sdhci-brcmstb.yaml      | 24 +++++++++++++++----
>  1 file changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> index dccd5ad96981..bf716c0cf096 100644
> --- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> +++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> @@ -10,8 +10,6 @@ maintainers:
>    - Al Cooper <alcooperx@gmail.com>
>    - Florian Fainelli <f.fainelli@gmail.com>
>  
> -allOf:
> -  - $ref: mmc-controller.yaml#
You also leave here too many blank lines.


Best regards,
Krzysztof
