Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A9CD71898F
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 20:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjEaSse (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 14:48:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229711AbjEaSsd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 14:48:33 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AF39101
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:48:32 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-96f7377c86aso1061136466b.1
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685558911; x=1688150911;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L7yEMD4GtmJf8xmNQ6AyKy2NUsZaRYPN954fFPpAVdQ=;
        b=uLO5bJfHtCz18Y+0BzM7MuqN7+sdRnrBH42OfGzDWPgEKIEYSX3aOdpnUB1dzc9dgv
         Sz6IRmTamCz+INjMaEJ/mc3on3GZwZx/awulr9uirMBHkDUutugWPnxfVXRUTidI5sQo
         ilaDuMIMEvlQVc22Rza4j3+gT3m8tHm0dwVXFKRXHm4lUQuzGS1lvUq9FKJNYgfZ6qdl
         MwI3uWaLSTCUkXxdlSex+hFWg/7xfLBuIzK60kAUvVMLyAHA9/2VAsBw3MIM0qAzymtZ
         z0x+LYAZVa/n/JhliUGItmigSZFYJVFD0+ZvZFWfPEbHCxYaEFi8c2L52T+SNz45WX9w
         mDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685558911; x=1688150911;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L7yEMD4GtmJf8xmNQ6AyKy2NUsZaRYPN954fFPpAVdQ=;
        b=OPZpkvcoN9x8UW9yv36cVTBXwY9HneSzWT0gaLZKzPKTIuuPzz++yfFQ3yh1lnJXPP
         9WRU0saNySA+acrjUl00zh+xvsIDa72pP3Pcn6I3LZ48rZXbxtoeOVvOnXelskubehCl
         nq5NeLNVknUkz5Cui56nd6dB9vvGZ6B/vHleW2hc+tkEPsPIFAURWtWrYC2rvCtI+mRH
         3sM0mqHU7SB7iHzDW48HWlthYO20qSPqmUwxaJxye1TeyTbfoypNUDVVWRaP7xBO1sgh
         McTE4YV3pmDSMftd46Gs/5wrogHuiUW5fPT+R+9sWOH/VUc+iYeymc7KCqUBqHHDfQCn
         QZ2Q==
X-Gm-Message-State: AC+VfDwzZoOshvNUszeTWyaJpvi7gEB1GjZeJaCREt1ZKIIUq+jB8/iV
        L9Tnw0cKwMBXclaexybl99WqHA==
X-Google-Smtp-Source: ACHHUZ7kXXRkM9Lide71GGUhJF0GEqPo8MixcjJda7Fkd7PvNdc6tC0I7G7bOSvefWO6B0AWdxnRXA==
X-Received: by 2002:a17:907:724d:b0:953:517a:8f1a with SMTP id ds13-20020a170907724d00b00953517a8f1amr7218867ejc.58.1685558910653;
        Wed, 31 May 2023 11:48:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id h26-20020a1709063b5a00b00968242f8c37sm9252653ejf.50.2023.05.31.11.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 11:48:30 -0700 (PDT)
Message-ID: <d35fdc37-a793-3109-1474-065dffb03069@linaro.org>
Date:   Wed, 31 May 2023 20:48:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 03/11] dt-bindings: stm32: add st,stm32mp25-syscfg
 compatible for syscon
Content-Language: en-US
To:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20230529162034.20481-1-alexandre.torgue@foss.st.com>
 <20230529162034.20481-4-alexandre.torgue@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230529162034.20481-4-alexandre.torgue@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/05/2023 18:20, Alexandre Torgue wrote:
> From: Patrick Delaunay <patrick.delaunay@foss.st.com>
> 
> Add the new syscon compatible for STM32MP25 syscfg = "st,stm32mp25-syscfg".
> 
> Signed-off-by: Patrick Delaunay <patrick.delaunay@foss.st.com>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
> index ad8e51aa01b0..9ed5b121cea9 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
> @@ -16,6 +16,7 @@ properties:
>        - items:
>            - enum:
>                - st,stm32mp157-syscfg
> +              - st,stm32mp25-syscfg

You should rather keep some (alphabetical?) order.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

