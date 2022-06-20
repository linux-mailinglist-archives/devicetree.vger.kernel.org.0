Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16DF755160A
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 12:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240960AbiFTKji (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 06:39:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240983AbiFTKjd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 06:39:33 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2C35140A4
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 03:39:27 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id fu3so20225398ejc.7
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 03:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Wu7OjQauT8VsAEcCNOR8tTiMvlUSYPeipgtsHwYY4Vg=;
        b=m8op4FixOAAlfFZ7egA7dw9XYWx1MedsRDNb/RiDDswivswf1dRO3JJr8j/dB6U8b0
         wG1V5eA/LYFuOiUxauvTX1kFoE58uC+7lIApV24t1QqUfrlEdBkeiYdRYVgO8VVV5B3m
         jPlzFxqwsU7KOcgnyBRxDPuMzMxryRAXpnoBnH906aLguQ16CafUqTcdhR8ML9FBGAsq
         Q3XTgGHED3qelMs+zISNTJBb66zeIDaCzP4HIuMXZM+Sya3peej5uQ8Sc35IWTB8xPqo
         eFNjunF8X1gBRtP5rVsjNvLSjMAkbL6VLJFinF/mlNcaldTExFi/tx1RsW2mxCD2Fic4
         GftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Wu7OjQauT8VsAEcCNOR8tTiMvlUSYPeipgtsHwYY4Vg=;
        b=O9ekd9OgdwrFmAj72ws4JryP/OFyFluPKVh0H+FJrqzNwqNRit5Aga5KtoZUw2nUtN
         1XNQdpltAum2bVzKnFwM60LyK70lDa72hZF+1E9aIjyK+bxy6C7HGEUKj4KAugAkHxjC
         hNLHUCmnnKXVMjp8aaPWPI37s/Qkn2ynyKG66F/C+r0NpTIO2I6DMQemdmXw40RBX7yQ
         8hZsMcbPk6AZv3dTVLaug4u+/NoG2EiHXnVc4KlH6kzkAAkFjPOX3WHurqCCvNFHlQaj
         SR50l8TsbvvogstwTsP/8KvTbqpyZDp8v1EbRLpUFcw+MyQ6wHVRbz6zmJYT1OsgI4WO
         ZGjA==
X-Gm-Message-State: AJIora94s4U+zAOouf5qWkc/1NE+NiF0Gdr1U3ZnnRKU5TNLx7BbV5+H
        IzqSpjDtg2mwnH/pSZPSANBnKA==
X-Google-Smtp-Source: AGRyM1sOCeciJIgUmFsu++sl3HilovcjqIj6UVBWntWzocHHiukB6fjy1Eq8qCfxMertj/cHx6/Q/w==
X-Received: by 2002:a17:907:7f8b:b0:721:9c02:37f1 with SMTP id qk11-20020a1709077f8b00b007219c0237f1mr9006305ejc.211.1655721566494;
        Mon, 20 Jun 2022 03:39:26 -0700 (PDT)
Received: from [192.168.0.209] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c18-20020a05640227d200b0042617ba6396sm10335480ede.32.2022.06.20.03.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 03:39:25 -0700 (PDT)
Message-ID: <6e9f17a7-677e-e4b6-54ae-77ad07bf5204@linaro.org>
Date:   Mon, 20 Jun 2022 12:39:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add prefix for
 Mixel, Inc.
Content-Language: en-US
To:     Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com
References: <20220620034533.4108170-1-victor.liu@nxp.com>
 <20220620034533.4108170-2-victor.liu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620034533.4108170-2-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2022 05:45, Liu Ying wrote:
> Add a vendor prefix entry for Mixel, Inc. (https://www.mixel.com).
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
