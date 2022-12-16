Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CB4A64EA61
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:28:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbiLPL2B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:28:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbiLPL2A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:28:00 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE33C4D5F7
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:27:58 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 1so3033457lfz.4
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UE4rMve6f7bgNohNKn2Fai0VMvgANkyryiVWX/JiBgk=;
        b=OllRyuo3RXF98LhdAVQOwWKLen6xuzRFME9OV90u1YA0L8LKGKdU6SJN+DfoX8Isu5
         ocHH6YULIN8hs64VmQuD+FvVqFy8fC5sQIkg1vrvl+h8IzyXfz/8QxTBFgQ1/KCksIsV
         Bzzu8plShnZLNz7PUkimeiHmJiI1XTGA1mAoZGQXB/Qy+fdC0auWKduWqyqw4gmYiIEg
         t8iqWAEqpYlhqh5XmdkJ/xBAwb7lHZUoqEB3BU8QZV7BSFL7aJ/V4cxACkuupUkJTuTO
         snFVT/zMpVxOrNcA0QuygLpCAnYrmcWZeklEF8pnfT5y7aAPUkr6w6SNQqZ6C/72tzeB
         7oFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UE4rMve6f7bgNohNKn2Fai0VMvgANkyryiVWX/JiBgk=;
        b=ideVAO3ohMn2/b9L3tu0UwGk2vVRfX3xXOVMKHC6zVfvjxqWM6yZn3KHhbnIWt+vCC
         tOYrFP1pEvEO/pr/wDfQreijMzdLTzPJ5s4YtFNSbWuWiSj1VYMU0jc1SLCZywgPyG/Q
         f3g/yfmZ3tF3QBXdjNduqnWxMvKBUMARU1QWev7FjrPivbznTzf4iTle6xKdfLLKGBP4
         5MbaBZTfXLeDj/1yDKvsTHFdg6C2GjySF27qDUmcoDFTjhJFdXL1ljbXH3cZ82YvsQL0
         A+r9tHCW90NYKRyUyCmJZA8gb0y8k9WZXfF8rTk6lHmpaRltXbPN3wGK17g8yQuGlPQg
         VZ3g==
X-Gm-Message-State: ANoB5pkOWFBo47TiRnqmdt+V4n8rxwGH1MIl6KRZF4bodCB6tc9Ig03H
        lK4AA9FmMRbBniEcldofesNlGg==
X-Google-Smtp-Source: AA0mqf6srW0HORHOPMTnducFzWNFttxAwLgU1LqbLc9j31zyhw41c0FmSKS1S7SBKP7TREePcc+ajA==
X-Received: by 2002:a05:6512:118e:b0:4b6:bc3c:f457 with SMTP id g14-20020a056512118e00b004b6bc3cf457mr9127054lfr.34.1671190077157;
        Fri, 16 Dec 2022 03:27:57 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t5-20020a195f05000000b004b5b8332e95sm196207lfb.65.2022.12.16.03.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:27:56 -0800 (PST)
Message-ID: <375e9b40-5b85-0c6f-0af0-501cb3d527bf@linaro.org>
Date:   Fri, 16 Dec 2022 12:27:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/4] dt-bindings: arm: Split i.MX8M Mini Toradex Verdin
 based boards
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
References: <20221215232137.144256-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221215232137.144256-1-marex@denx.de>
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

On 16/12/2022 00:21, Marek Vasut wrote:
> The Toradex Verdin based boards have compatible string in the form:
> "vendor,custom-board", "toradex,som", "fsl,soc"
> Split the binding entry so this triplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

