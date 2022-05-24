Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE15D5326E2
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 11:55:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232017AbiEXJxY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 05:53:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232183AbiEXJxX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 05:53:23 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A6F612B9
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 02:53:21 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id v8so27995604lfd.8
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 02:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=f3EaAl5YGKF2nwF2lKP9920mWbceFLAyXVzRrf1riF4=;
        b=qwBgfbWmJ9JO/NgcfvPrVh7ad1QWFamF+e+B5pOruIZiFpe8i1j29cDKqxSyNDtwuc
         dCACEEqZrA1t/50tI9dLJSXuvzcJAp6HKn2mdr/1aHSg75me98KAHY2XEko0pI/6ls8Q
         UTAFzkLewsrgTD64NlNPSfGlFs8Ow3ezNBCoFI7kefPrYNfGnahzmoG/5rwGyqLiWJHO
         rnQYvkH7qPc3DofvTAGVhjUyQ8KD3QyWv/YoLDOvY19wC305TWSeyT/SDZIAmqKEgoNZ
         leh4jRMT59ev6gAtfo7GFtcmWnGlDH/chAsuaI0bb5xRcybKJlq8zokwGkJSrjIa65lt
         2kgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=f3EaAl5YGKF2nwF2lKP9920mWbceFLAyXVzRrf1riF4=;
        b=BO2+QBidthta/WgUzdF3ZqXJFBbDUKNYTL2npe922BcNdw5+82xQH1N2z1JWlxOtw6
         mydcE9bky0uQ47VWpuaD2nN/dCe/8d+wqni9CelGGMQub12v8YuroPJRjL8L5euEXkUy
         aV7FtOmAbZ1SFvIIMYNbJvEFolOYXva4hpbaxzyUFb7kWx6UYKKsOG/bRXoXp3aKzsFz
         P4Yedt49V98W77W5Dn/yCv/QqH2PRswgdqyetWFufh6yvaoxG8BxeBC4Sarau4Rc5CAI
         TAMjsM7Zc6oAZ82cP1J+XpmG2if1JpFQPeVx23eG0E8G62XM1yRpxKowRUiSYk0FddXD
         8N5A==
X-Gm-Message-State: AOAM5301TJT1pxhbcE7cZ9Ji78qHydllnzgLHQsdtrrJgzDqXGHlSDPh
        576enw+yFho4JYHVfSz4BGT0GA==
X-Google-Smtp-Source: ABdhPJx1PniuT5qa9mQZG/emNiS0626VVTzY6C2GFS7u3+z9a2qzGnnM6NLsqhcyXb+NByXjxm/3GA==
X-Received: by 2002:a19:e050:0:b0:477:b0ae:1312 with SMTP id g16-20020a19e050000000b00477b0ae1312mr18329856lfj.357.1653386000033;
        Tue, 24 May 2022 02:53:20 -0700 (PDT)
Received: from [172.20.68.48] ([91.221.145.6])
        by smtp.gmail.com with ESMTPSA id o10-20020ac2434a000000b0047255d211b4sm2442218lfl.227.2022.05.24.02.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 02:53:19 -0700 (PDT)
Message-ID: <dd67a453-b75b-d092-f999-3faf05ef8160@linaro.org>
Date:   Tue, 24 May 2022 11:53:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH -next] ARM: dts: aspeed: nuvia: rename vendor nuvia to
 qcom
Content-Language: en-US
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20220523175640.60155-1-quic_jaehyoo@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220523175640.60155-1-quic_jaehyoo@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2022 19:56, Jae Hyun Yoo wrote:
> Nuvia has been acquired by Qualcomm and the vendor name 'nuvia' will
> not be used anymore so rename aspeed-bmc-nuvia-dc-scm.dts to
> aspeed-bmc-qcom-dc-scm-v1.dts and change 'nuvia' to 'qcom' as its vendor
> name in the file.

And all users of this DTB now have to update their bootloaders, scripts,
installation methods. We did not rename FSL or Marvell boards, so
neither should be renamed this one.

> 
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> ---
>  arch/arm/boot/dts/Makefile                                    | 2 +-
>  ...eed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>  rename arch/arm/boot/dts/{aspeed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} (97%)
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 03f5b3a15415..2a3c95387613 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1584,7 +1584,6 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-lenovo-hr630.dtb \
>  	aspeed-bmc-lenovo-hr855xg2.dtb \
>  	aspeed-bmc-microsoft-olympus.dtb \
> -	aspeed-bmc-nuvia-dc-scm.dtb \
>  	aspeed-bmc-opp-lanyang.dtb \
>  	aspeed-bmc-opp-mihawk.dtb \
>  	aspeed-bmc-opp-mowgli.dtb \
> @@ -1597,6 +1596,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-opp-witherspoon.dtb \
>  	aspeed-bmc-opp-zaius.dtb \
>  	aspeed-bmc-portwell-neptune.dtb \
> +	aspeed-bmc-qcom-dc-scm-v1.dtb \
>  	aspeed-bmc-quanta-q71l.dtb \
>  	aspeed-bmc-quanta-s6q.dtb \
>  	aspeed-bmc-supermicro-x11spi.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
> similarity index 97%
> rename from arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> rename to arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
> index f4a97cfb0f23..259ef3f54c5c 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
> @@ -6,8 +6,8 @@
>  #include "aspeed-g6.dtsi"
>  
>  / {
> -	model = "Nuvia DC-SCM BMC";
> -	compatible = "nuvia,dc-scm-bmc", "aspeed,ast2600";
> +	model = "Qualcomm DC-SCM V1 BMC";
> +	compatible = "qcom,dc-scm-v1-bmc", "aspeed,ast2600";


You need also change bindings.


Best regards,
Krzysztof
