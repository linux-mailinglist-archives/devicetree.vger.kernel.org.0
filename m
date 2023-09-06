Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9C7B793C42
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 14:07:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240504AbjIFMHK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 08:07:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240511AbjIFMHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 08:07:09 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A3D1A4
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 05:07:03 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-52e828ad46bso2059722a12.1
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 05:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694002022; x=1694606822; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=65JkJjZQ3Sdd4Dn10RNUjdTHsNN1uCkPkOfypavHCHU=;
        b=foOvRL9oAxQpyMcOU+p3tUrKtDF0MdbjEjHisqOXY7zY+xJhxi+HK9lu82rAdMG+vC
         xCbUcyB0UNWzgMnkc7VwjdPa9QyQp/CFFiekP4GWCLODKcqdqQJpWqpQ3604lW/3V90g
         uFMOQl95nDvpB4R8/yty2pirZTFanYtweLRUEpNXdhziJ6HSrvzbP+DtTr5dC9SPqZBP
         o5EUXYM5TxnIOq3ZgUnFJwFXB98FjGMOBC+7fYSuCDy+smVq91vvjRmGDAaNSVnqP5de
         fXIGxJIsDcf23apKE5kxV0Zt5yIR0yGTL8KdrTtDlM0VXL6lN4dGbm0jlsijYxoHUrm7
         2Hzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694002022; x=1694606822;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=65JkJjZQ3Sdd4Dn10RNUjdTHsNN1uCkPkOfypavHCHU=;
        b=bD9MslX6otaeQ4ldKJgzNxVKppRTLFypXIvhIWVxnohjpUX2uz6OSFeYGx76VImDbf
         7oCW2Tq8N+4SW44FA433/V0HwIlc60Nw7NPLrmmlaeCf88F2F+P2yZC3+74ncmxrCsJp
         D08oZwwlOKwEgf78kQJKucXlwHXiknPI85KlgHtE9+EMWOKWkXPTRh/N7E9bI4DIX02E
         QPIIP5qatzPAODaq1GfGouxMYOz3HS+hAcJU+i2oZdaL4rrUfvB58d69soywT/aahat0
         y2H7JxGr/wmoiVmFAsIGBAcoFgF/dUgAZDdNCnltQ6+aterQNYn/ebLItwB5cCXkVZ5v
         G7vw==
X-Gm-Message-State: AOJu0YyISaU/ac8HsrjhbMiB5rEzyN1PeSBC5rkj2MQ+JXtLaUKrr1kt
        oFu/ofgbOkZH4bMBqZYef181Ng==
X-Google-Smtp-Source: AGHT+IGLvupBZ/tpbcpKSSLSxJCZntEJMSaablzhtWID6vj7KwQwbmjvX2UcrZd8TV8R5r4LuBZbdw==
X-Received: by 2002:a05:6402:1348:b0:52a:3ee9:a786 with SMTP id y8-20020a056402134800b0052a3ee9a786mr1936699edw.26.1694002022328;
        Wed, 06 Sep 2023 05:07:02 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id f5-20020a50ee85000000b0052595b17fd4sm8249928edr.26.2023.09.06.05.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 05:07:01 -0700 (PDT)
Message-ID: <3b9ff6a3-02ed-f8b6-cfe4-e3e7c2147f46@linaro.org>
Date:   Wed, 6 Sep 2023 14:07:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v3 1/2] dt-bindings: arm64: dts: mediatek: add mt8395-evk
 board
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>
References: <20230906114425.31187-1-macpaul.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230906114425.31187-1-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2023 13:44, Macpaul Lin wrote:
> 1. Add compatible for MT8395.
> 2. Add bindings for the MediaTek mt8395-evk board, also known
> as the "Genio 1200-EVK".
> 
> The MT8195 and MT8395 belong to the same SoC family,
> with only minor differences in their physical characteristics.
> They utilize unique efuse values for differentiation.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

