Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4566E6FDE27
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 14:58:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236727AbjEJM6n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 08:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236568AbjEJM6m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 08:58:42 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9509449EB
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 05:58:39 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-96598a7c5e0so1149933666b.3
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 05:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683723518; x=1686315518;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vmcXN0ccSVxAxS0zjPv6/vv6s8isNnq9Busu1K85PKk=;
        b=WMugUjoI9rBvsnp5MHys4Hnmx1tFC8HDetB7UneVEMfANJ7O/X6kK87h36BUbMBUP7
         G7AG+TcvqoxlJvhpXb/KsTcUam+6nN7D0AO5A+qAzV32MAg0wCzwNv0SCp5Kc6yCYiEB
         FcZDLk06rzwIp0/cSo7IK7D9qiJO/cJiy/eNkLSHfl0OXSYPk2KKBqoS5ZdgI1gs9Wb8
         2zODctKRtxf09YaQ3bM8LfsZLMhdsZ6Do8Y4EShj2+7WkKFEpiFU7JTIG8he7s97BLXj
         lkHjy34TaMSHXLUIJJ4SgwmwXjSTs7s2zVmec65vJkSfw8RoNxDjescvvr1M8HPZrHVj
         DwGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683723518; x=1686315518;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vmcXN0ccSVxAxS0zjPv6/vv6s8isNnq9Busu1K85PKk=;
        b=TUHL4wNQKiL06oIiepe+qTStvdsqtTB5Da4Pq4X452Ty6BXs4yN12wsYTYjcy4d3++
         MV1iZuiO36JPpJMHVL6l9N5SA/2x8Z1I4MKxSCdruI1S8cSu43FN6AAeiwWSs5TlF7EW
         61MX097m83LBgaLVMpPh9tlqDFa0OFM//1JufWRsEyA2lPMhXVpr6Plgu8dGbay7cazz
         TeXKvaPp/+NsIVLa3R+0F1HqhQFrLjOyxKJ4rpWH7/IinsvU7Ru5Mg8s7ZF5Pc32IdS4
         g+ewkemEhIwZadARxSl3BueGOFB3R8LNZuLkPDIe66LOvrOjXLorqyx04CkyvkHDNm8y
         +fxw==
X-Gm-Message-State: AC+VfDyBCtdhHBYIT7hdwI7+LFU+m5RUf6bNFLUk6t3bsNB8tiL/bC9O
        yAeS+k5dh3xbCaGv627ZOsL0Ig==
X-Google-Smtp-Source: ACHHUZ7vlv2Xw5dbqTo7wtIW3Zl1dFVXIBT0zpqZpvnZwwLdMKuyidvYQtGJ5rtz/FXm54ONFcPV0A==
X-Received: by 2002:a17:906:ee86:b0:962:46d7:c8fc with SMTP id wt6-20020a170906ee8600b0096246d7c8fcmr16606796ejb.21.1683723517977;
        Wed, 10 May 2023 05:58:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id h8-20020a1709060f4800b009600ce4fb53sm2627574ejj.37.2023.05.10.05.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 05:58:37 -0700 (PDT)
Message-ID: <1da7fcc4-0419-e70b-afff-c010ba89e00e@linaro.org>
Date:   Wed, 10 May 2023 14:58:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 1/3] arm64: dts: Add device tree for the Emtop SOM
 IMX8MM
Content-Language: en-US
To:     Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230510083231.3692247-1-himanshu.bhavani@siliconsignals.io>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510083231.3692247-1-himanshu.bhavani@siliconsignals.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 10:32, Himanshu Bhavani wrote:
> Add a device tree file describing the Emtop SOM IMX8MM
> 
> Signed-off-by: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
> ---

(...)

> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL				0x400001c3
> +			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA				0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicirq {

grp suffix

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

Best regards,
Krzysztof

