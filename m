Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1800571947F
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 09:41:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231478AbjFAHk7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 03:40:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231933AbjFAHi6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 03:38:58 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D869E46
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 00:36:02 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-96fa4a6a79bso60799566b.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 00:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685604960; x=1688196960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uUJ2ScGwbr1nbCs+8+HHMHQfNtxE4ka03AMKgZpnNas=;
        b=Ao7hdccX36sLyfv15BeHhHBCDnim8s7UtC86fBmF2jiAhQdJv4sLOtSD5PxF54BICI
         BvK+7xZ0xyqOyuBMydnjdjiTpS2CP/C7HTIDkleM9VGZ6zuu2UCSIkCXxhLYyJ5+oRQq
         T4ITtTs83rKFz+a9OzQ1WumEapjTuUNgUpqIHhVIQ06yYGzZHuOJ9qrnT4fEtjDANYDe
         V1E8wCY+BCnTEThlhUi7Fw4Z78ZALzs1rrESogSis+dW2NyLwlwKHlAEHDS8/r+ttLVb
         LzWAJOZ9Ek511BCSlLsyU+nJTaElVpOG0zvVhdFDeZuab5uyIjErUuwFNw7EI5+6iszI
         Zukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685604960; x=1688196960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uUJ2ScGwbr1nbCs+8+HHMHQfNtxE4ka03AMKgZpnNas=;
        b=Yrqtqmnk7kOD/XnV27JY8gBQ1dcSvwucPp+lg1jsB1huBTsa7/643B54MhSI35GSg1
         /e+pKu4Wa3ePkMlWY0t8gO/vni+Zr9WEsRAdfHNp83BDUMFhDrQw91l7/cgPvyZ0hts0
         C7K2+jZm/+GhKf67RUAQ3YsPdcaspo/6M2JwUoir4dwRG7WDyBB1N9ZnyW5BmIo5HNUF
         XMx1VXUj2sk5C1EsAYostJtAMrLSEOEz2cAFwGG6/9f6WNatlok+/6IZtzTI+vi8b+86
         Mwe4JJ8K7TrwiGKWBK2eRg84COv+51Uc3MpoBOk/zN3P02ITMny31+JHLKJ1KMJnX7cD
         aMag==
X-Gm-Message-State: AC+VfDylLgmXWocplWDPwxXr/dAblxossYwx6IeCbPEk/cdC2puZny5J
        WK5fgjejRnXM03krvhuoUPeNXtlguqt4NVv2lCQ=
X-Google-Smtp-Source: ACHHUZ7HMkRr4dDRuo5jOel+AfYs1E5PksGIh0CLtKGbi3pd+hKU7tozjGKdyBzBOMe1rUNq5ByPcw==
X-Received: by 2002:a17:907:9690:b0:96a:ee54:9f20 with SMTP id hd16-20020a170907969000b0096aee549f20mr8479579ejc.37.1685604960652;
        Thu, 01 Jun 2023 00:36:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id s7-20020a170906c30700b0094f410225c7sm10076421ejz.169.2023.06.01.00.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 00:36:00 -0700 (PDT)
Message-ID: <ca57abfe-714c-3a09-10f3-aa6072622f6f@linaro.org>
Date:   Thu, 1 Jun 2023 09:35:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] dt-bindings: samsung,mipi-dsim: Use port-base
 reference
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20230531224407.1611952-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531224407.1611952-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2023 00:44, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Use port-base reference for port@1.
> 
> This fixes the following schema warning:
> 
> imx8mp-dhcom-pdk3.dtb: dsi@32e60000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
> From schema: Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> 
> Fixes: 1f0d40d88f7a ("dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to yaml")
> 

No line breaks between tags (in general, no need to resend)

> Signed-off-by: Fabio Estevam <festevam@denx.de>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

