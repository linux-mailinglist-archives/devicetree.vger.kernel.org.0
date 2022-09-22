Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C391A5E5BAB
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 08:52:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230047AbiIVGwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 02:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230045AbiIVGwh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 02:52:37 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76F59B6D3C
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:52:36 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id c7so9775926ljm.12
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HpPp0BHUrPNweVTZtr7NErbLRKsWdneVoqjGlBiJPh8=;
        b=NKMnWZgS5BSvCK945ZAajPqZeW1VEAPF/K92kxSO4ojFqEyhY8uY9CH+GHuAXdXtOd
         SfSN5wRHjrXBzsEv2ctbxRIk+0qiV8ELcEryUMxTeLdWAxOYJhtm4pVh4nX611N262zw
         btTtSVEQlc5bzd8yrbHKYbpE+5XChRGCVaGtbwozWlmXAF70qot5gRQS8AhJ+KwdGUtV
         BAv7WxehOAK1Go0BWI1ZwmbfAD66AxqIxc5g/1txVRCAqFK/Ar1RKkdYZig5/oV8jbjz
         S0NAZ5x8Uk5mvit51bkHuua9/6uHPIy150GK6No/16fjALgvzhVK1961Gf4rf4YawyYC
         SiZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HpPp0BHUrPNweVTZtr7NErbLRKsWdneVoqjGlBiJPh8=;
        b=InIziveJO7JobpfcUsE8M2tJoWm5HKhTz0St7O7E5SmRIM0F1lZKCkRpuVsxGp3NyD
         DoguqIwwP/A4FK+qJct6gTkdV4OKIX8UsvpfEdSn0WgNPUtPPzdlWxdZsDNglmu9Pg3h
         lHVi+8s/xbZ4tlH/UuCmUib5EDiE4hKBKA4PXWItF9TpbK66PvbtvKQH+vtfX/MADK9H
         VVwkYfup81Rm9ESOte0OFFXTHJ+N7xxDadzJH84/Mwa3CGdhgImjnra2AAJnQ59DEgwz
         TjrziV27zaHdHdQFYrms+Ydi3AOaAjUuPWYy8uF7ivdvHf3qDywppZahuRex1t8Gddpp
         o9GQ==
X-Gm-Message-State: ACrzQf0ezQKy7AE0VDruV1iqEjRN6QjZifnLVHdiJFGP3wSf3wjW9DrB
        CIKI6yO/2tQfNsyv4YrP4l2wNg==
X-Google-Smtp-Source: AMsMyM78If/cBNQ1SnC+v6xychOd6uY7sVFoQMHHASjrPCwbCyMRcKsSoHMRnkbuxCvoylYmkrHGyw==
X-Received: by 2002:a2e:7309:0:b0:26c:3db7:8fe2 with SMTP id o9-20020a2e7309000000b0026c3db78fe2mr525386ljc.387.1663829554770;
        Wed, 21 Sep 2022 23:52:34 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a7-20020ac25e67000000b00499b57032c1sm784269lfr.144.2022.09.21.23.52.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 23:52:34 -0700 (PDT)
Message-ID: <f84250e7-39fe-80d9-9e50-700f9752367a@linaro.org>
Date:   Thu, 22 Sep 2022 08:52:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v4 2/2] ARM: dts: aspeed: Add AMD DaytonaX BMC
Content-Language: en-US
To:     Konstantin Aladyshev <aladyshev22@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org
References: <20220920165404.14099-1-aladyshev22@gmail.com>
 <20220921210950.10568-1-aladyshev22@gmail.com>
 <20220921210950.10568-3-aladyshev22@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921210950.10568-3-aladyshev22@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 23:09, Konstantin Aladyshev wrote:
> Add initial version of device tree for the BMC in the AMD DaytonaX
> platform.
> 
> AMD DaytonaX platform is a customer reference board (CRB) with an
> Aspeed ast2500 BMC manufactured by AMD.
> 
> Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>
> ---
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts | 319 ++++++++++++++++++
>  2 files changed, 320 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

