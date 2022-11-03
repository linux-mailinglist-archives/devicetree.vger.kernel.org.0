Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96657617E76
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 14:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231406AbiKCNzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 09:55:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiKCNz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 09:55:26 -0400
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99D5014022
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 06:55:25 -0700 (PDT)
Received: by mail-qk1-x72b.google.com with SMTP id k4so1126208qkj.8
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 06:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ps3t5wXmmSYRLIg6eSjlLfAFdozURGJiV8dwVVvSvEo=;
        b=UBCXnS20ODkJ2tDwhi5BFxdfGdq0lhtSR/1ZwEVdHynlbKpUNcOl8Z5u+RCl6hStKP
         w3qfWRNntjKdCUvCmzB+5qqcGkFCMaTWlJ+AjB4d5O26IlfZCYEmmvEgHEZsvhMApTlg
         PCHbO1FmNjofiPOHwDPuj9ul4NC/8dHp7WHn9xh4lveJVUBWanjJD3KYmXUjssyAkrHK
         Uz0jirJTBGLTe9aa130Q43U7E41j1Hdypff9ttaAn45BzifDHAyiuDvkA56sus0hw3yW
         HHxP2m3aC7cub64uOO81axj8Iq6MPWHh86CPpgCHzLunK9tXO2u3QedjvgyZEltNP3Kr
         MPTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ps3t5wXmmSYRLIg6eSjlLfAFdozURGJiV8dwVVvSvEo=;
        b=2lCbd9tu570NnjhJKITFK0qTGrBcz5ZkBTHu8pRsK0wPiwBhAxVXOEr4d4M2nb1RtJ
         BVYlZmu0a9b2xtVA02WUFjP6Ed89XsOp+yzGKKLHCYN7+W0zzqKukWuOXOvNoFRs+DSh
         IiewPIGnVf3jQMVv3Pm5nU6DvdDmvlB8ZDcYcXMufrgX+yLMM/i/Tkyt47sQKdKn/deO
         yIkl0cYHT09NY+3Vb6aeKKw0tLWKvHPOKesd39HcEYxB1JiYTvKtbb6pWN0UZis0VgZx
         pqv+u1+in7/eJteuY9WxO4X3eckjX/xEgOoqQyVb7dbkO97c04DJLM9gc42OKW/JrJTn
         I7Qg==
X-Gm-Message-State: ACrzQf3niO+7Mc9em55TQFvqXQw98TgEJtsmZgxG6NOE/CWPbQNUBJYI
        /iqD4LSkMsupr93tOs2xuQiQPA==
X-Google-Smtp-Source: AMsMyM5k1jIVAn/p0gCDO/YZQnlIIc4Ym/SFRKp4A4V2UyA7iyopQKFC1lu7cMeAc/TlJUCibWs49g==
X-Received: by 2002:a05:620a:5319:b0:6fa:4c1b:f054 with SMTP id oo25-20020a05620a531900b006fa4c1bf054mr10412129qkn.15.1667483724769;
        Thu, 03 Nov 2022 06:55:24 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id y27-20020a37f61b000000b006fa5815b88dsm778033qkj.88.2022.11.03.06.55.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 06:55:23 -0700 (PDT)
Message-ID: <09959cb2-e8e4-f407-a436-1280322fed21@linaro.org>
Date:   Thu, 3 Nov 2022 09:55:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] dt-bindings: nvmem: snvs-lpgpr: Fix i.MX8M compatible
 strings
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Anson Huang <Anson.Huang@nxp.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org
References: <20221102222543.153026-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102222543.153026-1-marex@denx.de>
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

On 02/11/2022 18:25, Marek Vasut wrote:
> The compatible strings for "fsl,imx8m*-snvs-lpgpr" always contain
> the fallback "fsl,imx7d-snvs-lpgpr" compatible in DTs too, since
> the fallback compatible is what the driver matches on, this way:
>   compatible = "fsl,imx8mm-snvs-lpgpr", "fsl,imx7d-snvs-lpgpr"
> The older "fsl,imx7d-snvs-lpgpr" and "fsl,imx6*-snvs-lpgpr" used
> only that single compatible string.
> 
> Document both options in the binding document.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

