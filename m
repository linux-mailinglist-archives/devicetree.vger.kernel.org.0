Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DE02698EA1
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 09:26:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbjBPI0W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 03:26:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbjBPI0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 03:26:21 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE91CFF19
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 00:26:19 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a3so3334572ejb.3
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 00:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1y/DnoDY4cr2inx1d0abfCvpq1Au8g3KdiOb6gVRGSQ=;
        b=CyM4dCoyshPvP3LOw00Xa4BGVZWnr+NUtMvw5cLRyATZ/fRXs0P5/2jwITogiDGzM5
         NeI3Y1q6sYe57oCVGKp1QB0LFAWAaQYkYffh5ProcDWN/mk2J3Mq751a0DF2PFtvJwlD
         uij3HTYmSsaivZFc5uX4D6Q15uSDL9iyp8ZzX+8lCt6DEqj6TyKVTHvdQOtPPKYWNMkR
         epXtJLDaNKBtHJAYP3aFliVa3ICoCSOrmTV+2Ykuyk2XNpQgXZRXJ3NGF6owZ2y2UGpD
         2CulBf7sxzRXUhzi8T3Tffu02H6Pu/CaoxZ3TFmIXXgi1lEDoPeucdhC5bbWJK+loEC3
         eyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1y/DnoDY4cr2inx1d0abfCvpq1Au8g3KdiOb6gVRGSQ=;
        b=STrgZkMqVbmZj7nRTWSwgW0zT2/ue9vehqjiYDTlK4dVf9cIx1T5IXCSg9KC2QsUHV
         W0fRv4XS2ZT5c1FZcFxfQIATfb748nGSP5qPtVPzpYOSD0lC+6Yg6q0Q8myhsVQhJI3H
         c+vqb2d6t1sAyU/kve4t9+mUhFlcFJnoOt9YwLViRZaRAMRVkD/efkDlq2V/zbZytNRv
         JGahkfCMpTEMGV8VZ8LFJL/QhsiqImAW/wIdvmM9KZgx88jIhClpn//gG1eZNQOToD5t
         xhTxqeXOe5UqyKXt+aBa/w7Yfxvv2/RK+Do42mbftuVJyGy0sp+D4ojciABrWr9vgcwH
         qByA==
X-Gm-Message-State: AO0yUKUwpWL5sN+v9pvWXf4t/HU0chj/ued9gGjw3EXGvPQMtEXpsq77
        qtYMqEmQOp3ycWhykN40ZaLeKw==
X-Google-Smtp-Source: AK7set/Bsd/yL07K9LlnPqeF1yzA0J6rARMafhYQk/XahfBz22ROq0FZQJFbJxehhd0xJWCffI4Exg==
X-Received: by 2002:a17:906:1d07:b0:8b1:3a8d:6fc5 with SMTP id n7-20020a1709061d0700b008b13a8d6fc5mr5878631ejh.25.1676535978458;
        Thu, 16 Feb 2023 00:26:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ce25-20020a170906b25900b008b05b21e8aesm492276ejb.172.2023.02.16.00.26.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 00:26:17 -0800 (PST)
Message-ID: <425f637c-34a3-4203-2b1b-c4e459da72c2@linaro.org>
Date:   Thu, 16 Feb 2023 09:26:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/2] arm64: dts: imx8dxl-evk: Fix eqos phy reset gpio
Content-Language: en-US
To:     Andrew Halaney <ahalaney@redhat.com>, devicetree@vger.kernel.org
Cc:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, alexandre.torgue@foss.st.com,
        peppe.cavallaro@st.com, joabreu@synopsys.com, mripard@kernel.org,
        shenwei.wang@nxp.com, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230214171505.224602-1-ahalaney@redhat.com>
 <20230214171505.224602-2-ahalaney@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230214171505.224602-2-ahalaney@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 18:15, Andrew Halaney wrote:
> The deprecated property is named snps,reset-gpio, but this devicetree
> used snps,reset-gpios instead which results in the reset not being used
> and the following make dtbs_check error:
> 
>     ./arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: ethernet@5b050000: 'snps,reset-gpio' is a dependency of 'snps,reset-delays-us'
>         From schema: ./Documentation/devicetree/bindings/net/snps,dwmac.yaml
> 
> Use the preferred method of defining the reset gpio in the phy node
> itself. Note that this drops the 10 us pre-delay, but prior this wasn't
> used at all and a pre-delay doesn't make much sense in this context so
> it should be fine.
> 
> Fixes: 8dd495d12374 ("arm64: dts: freescale: add support for i.MX8DXL EVK board")
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

