Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4635734386
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 22:35:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346446AbjFQUfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 16:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346455AbjFQUf2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 16:35:28 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A6D4172D
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 13:35:27 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-986864cfe5dso303960366b.1
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 13:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687034125; x=1689626125;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=adlDrTPzEegmM8kKoFP+1uNa9d2EBOUIJ6kOaUFDC8o=;
        b=MmsSWecYScl1Z4CBgj+PdYoPxynVHDccuAU5zyxkbT/6npgB4BEbPla7+AmVHqe67P
         gurJyKt58AHee2zmIiwR7vIMqCEJeWHqHuPzruDIZXPHcnymLGfnTuVNSrD3e+Ah4Jfo
         eLaeXHeDGzny7UmEqcNiAGjCFjnUcBEqVSYPBRcKjBv26t3/cH49D6okTsSRkV5NjULC
         4iPjMBt0zhaaukCovXloi88DTZCcNroZr0Tvg+a4aGhVrmzvTZhM4enhHaVRhHXzvQJ5
         J2ICZkkcwz7o99ToH1U0bmzP4r5gNdDlgxcOUL2YFhwxqWb+g6B1PObOPqvMYpEfGVFC
         KE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687034125; x=1689626125;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=adlDrTPzEegmM8kKoFP+1uNa9d2EBOUIJ6kOaUFDC8o=;
        b=XryxgF4H4DADoLbDsyXBLAl2hDc7FbS3Ad+jcj7yvia+4NAr4ZC3q0o+pDeJJVm7jE
         O84MJtWbjvRx23FoCdz7rwrd2/e/e373EIvRjepuyRcnqPkRCfou37Qeh8FAXHX98Z1K
         BdTiM5OqrL7QMqsPBtlg637QME+0L6dP1eDknO63u4ZOpJ0R88pPZWegTrfOImhNAIHQ
         N8Lg8mQAUY2E+3bQOXiSaoVeuSlx6Ft1n9X72IkBIeWhSF2n2sAQKkle6QllNy2VpmoW
         nPXVsPvanBTt/MTDKNiLGKXjy5mSQtEQTztGVk/5WTSM5zYtZoxWB4x/j1pTfgHJxw62
         HpSg==
X-Gm-Message-State: AC+VfDwgX7vnrow1fwoRiV/tY16WMvIh0rjRcs/a7iETNah7oZXqR3L9
        tAdYJIlvXgYZe6nzGJuY2pa0cA==
X-Google-Smtp-Source: ACHHUZ58dkvrB8dYMz8btetiN6tKfvDjYmtdQlofAz2nrYz0tg/5zEj1tNhm11Jq5QOKZr1vvS1sGQ==
X-Received: by 2002:a17:907:84b:b0:94e:4285:390c with SMTP id ww11-20020a170907084b00b0094e4285390cmr4810155ejb.10.1687034125475;
        Sat, 17 Jun 2023 13:35:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lv16-20020a170906bc9000b00965a52d2bf6sm12352099ejb.88.2023.06.17.13.35.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 13:35:25 -0700 (PDT)
Message-ID: <eac7cce5-6218-bf14-f2fa-800d09cb2a00@linaro.org>
Date:   Sat, 17 Jun 2023 22:35:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 3/4] dt-bindings: arm: Add SolidRun LX2162A SoM &
 Clearfog Board
Content-Language: en-US
To:     Josua Mayer <josua@solid-run.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Marek Vasut <marex@denx.de>,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Andreas Kemnade <andreas@kemnade.info>,
        Li Yang <leoyang.li@nxp.com>
References: <20230617134009.23042-1-josua@solid-run.com>
 <20230617134009.23042-4-josua@solid-run.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230617134009.23042-4-josua@solid-run.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2023 15:40, Josua Mayer wrote:
> SolidRun now have 2 product lines around NXP Layerscape SoC:
> - LX2160A COM Express 7
> - LX2162A System on Module
> 
> LX2162 is a smaller package and reduced feature set to LX2160A;
> LX2162 SoM is also a smaller form factor and reduced feature set to CEX.
> 
> Since both product lines are physically incompatible,
> the existing group "SolidRun LX2160A based Boards" has been renamed to
> include "CEX" in its name, meaning products based on LX2160A COM Express
> Module, following this pattern:
> "solidrun,<board>", "solidrun,lx2160a-cex", "fsl,lx2160a"
> 
> Add DT compatible for both SolidRun LX2162A SoM, and LX2162 Clearfog
> boards to a new group based on LX2162A SoM, following this pattern:
> "solidrun,<board>", "solidrun,lx2162a-som", "fsl,lx2160a"
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
> V1 -> V2: fixed to not break existing boards
> V1 -> V2: explained new board / som DT binding in commit message
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

