Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F41F660044
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 13:31:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbjAFMbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 07:31:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232580AbjAFMbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 07:31:10 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6384B1A209
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 04:31:04 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id r2so1134682wrv.7
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 04:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wnHmo4gFW6DvtXlbr5SoB1hjQ5uDPFdjubw1Z5KtC2M=;
        b=SyOuejFSxAddEx+shYlQwcTE8G04Ie0QLwOcfTtk1fcSYKU57DghPuiddX16YGhce9
         Jf6rRZx65PFSuprnTaAP7wFSVsNjF2xgV/GPVW0om+uC/iFnTdtl71azqr/+L/FwGGfZ
         6lUcRJMtsyltsxpjCRoquGxTbXxpBdyebnizObey88eGiOhUU9bA2s9zhgE0QABSoe02
         XgrmrXQc4lWTQr4nj3YDqIOjYfmB3Hl/aIde/y2vlmEmy7wUPUhGQ2UPAdD4Taobk120
         hh+G39kDb9nYUgBX09M0kkJ1cbcV+HLFGge/242G8XwfsqQ5/HVnfhrExDt5F16026Xm
         EH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wnHmo4gFW6DvtXlbr5SoB1hjQ5uDPFdjubw1Z5KtC2M=;
        b=rBXu+7p27aZF+dNWIGnISMKFjEsw86+gkMpkUHv3xa7SmRos+JLnVdmfrZK3mgF2V+
         uoY6zIO+Vog1FQrmg5j94vMJIjZO/PqC3YsGYtX7i2W2OXSYoe9p9/HxmWHVevmTSt2f
         e4IMgF12my5F40o1jN2+/NNma0tjEj8xX8f5ziHvw2wAIsAlyJVGzLR9FqUpEPGgIpkp
         FhL2fxajtivNT8kErpEAovMB7HG6BkTedx6lwAobjSsn2/SXFUX4yso8rsKTQj9JroJB
         RcdoU4EDJUHRAE8njISzqraDcZncKK+V7CW9twIU8oxm/ks73d0FS4m2mvF24IAGI0Jp
         htfQ==
X-Gm-Message-State: AFqh2kr6ZT93mNBfHZFZqke7cIVMM42QLtm2Pkf+fF9VWaS+qlVQRsHd
        5h+FeXWVP8QkxyoMZRPuCYPTPw==
X-Google-Smtp-Source: AMrXdXt3yJJLsVYpxsoJeK59Bp5g4p+Gb5ffEsOTVk+TtXtTzeNSQgMnqWwvEuJxK7jQW4jwJ5cC3A==
X-Received: by 2002:a05:6000:810:b0:29f:9832:ff96 with SMTP id bt16-20020a056000081000b0029f9832ff96mr9277769wrb.2.1673008262985;
        Fri, 06 Jan 2023 04:31:02 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q11-20020adf9dcb000000b00268aae5fb5bsm1115915wre.3.2023.01.06.04.30.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 04:31:02 -0800 (PST)
Message-ID: <ba51e54c-8758-cbcb-bfdd-e8f2efbf905c@linaro.org>
Date:   Fri, 6 Jan 2023 13:30:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: mtk-wdt: Add reset-by-toprgu
 support
Content-Language: en-US
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-watchdog@vger.kernel.org
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20230106115326.15374-1-allen-kh.cheng@mediatek.com>
 <20230106115326.15374-2-allen-kh.cheng@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230106115326.15374-2-allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2023 12:53, Allen-KH Cheng wrote:
> In some applications, the mtk-wdt requires the toprgu (TOP Reset
> Generation Unit) to reset counter after wdt resets. Add optional
> mediatek,reset-by-toprgu property to enable it.
> 
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> ---
>  .../devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml        | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> index b3605608410c..bf06dcd0c12c 100644
> --- a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> @@ -52,6 +52,10 @@ properties:
>      description: Disable sending output reset signal
>      type: boolean
>  
> +  mediatek,reset-by-toprgu:
> +    description: Reset counter by toprgu

Do not copy the property name in description but actually describe it.

Also "toprgu" is a bit cryptic.

Best regards,
Krzysztof

