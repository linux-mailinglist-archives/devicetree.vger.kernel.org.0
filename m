Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 123376F82F9
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 14:32:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232109AbjEEMcI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 08:32:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231932AbjEEMcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 08:32:07 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BD2311B56
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 05:32:06 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50b37f3e664so2961337a12.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 05:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683289924; x=1685881924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9rulx3XpcK9ZcqvOFoebZzjIkj2vjyGTAItP7Et3Jpo=;
        b=f9/YRf0G4/yHQA9ZrPCOWjJqvRiajxaWoiwNciSx6p83h9gDVJZmc0Mg9paKCxoEat
         2GBzkeC62lEeOcBlDfYIlVdZp03mH5G/V/VOBO06tc7tYJRiD+lpVPZ743PcMmfnwe7L
         l8T9JB0O98fG0DIAvChWSRky5kU1FRWfVGHADRltw9EXCx3aKMAEB+a72uOIzgwHBpED
         uynhb9/EUUIo7Hamw33RUz3ewDkYzE2ViGkIaNAt44ab10ZwzlH/1zY4LTrDfFYw9w97
         FIYsgQyTVl+R4eryXvPsJi/iHOTZQyQ3euLmOAUsJ6G3Jilk6kz4sL+kR8AY5JLURmh5
         uhiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683289924; x=1685881924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rulx3XpcK9ZcqvOFoebZzjIkj2vjyGTAItP7Et3Jpo=;
        b=eg8pqfJg8Lzpe9y5dWFLOW8HOTHIPOuS9zx1UnubDiKPNUmp8sqj3J3NBIfC3Lmijc
         AeMfV3ckct/io6gr/mg6Qw/u94h5Uc98c/et/ms0opSNBiWGJOjEnPXXUm+olY9m299r
         0x/OVizGzKhc6iOg/BjDqwmm57oqKsqPnOFRum3nYmyWsVi6DfaPwjpsip8IDZvRvwap
         3Jf+LeaWYWeA2ZzxlUzUk3OZrh/p5XA5F8J/YHhe4pJmy9ysM3nuRRbXQ7+0Nao7zhLs
         t+eKKAARf4MFgSh9NfFvJF/GKeQlEPuiueF+YodQK0xmVgQek1WCbjWNBYFwqywaEjTv
         bAZg==
X-Gm-Message-State: AC+VfDxyZfwQ+eLE/sO+bw3oAsXrABDwSD25GCd5zQYcdbKoDwofpqVn
        mpB0AMXfTziSvzQcudrLqwr7ow==
X-Google-Smtp-Source: ACHHUZ6+yw8cSVm0sZNFJUhlsJz5DdajKxKExEbzpGhkKfl9sghrff69dynFdSFmqx6pBWAoOyA7WQ==
X-Received: by 2002:a05:6402:1255:b0:50c:646:cafd with SMTP id l21-20020a056402125500b0050c0646cafdmr1206373edw.7.1683289924710;
        Fri, 05 May 2023 05:32:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id w6-20020aa7d286000000b0050be0b14672sm2898604edq.3.2023.05.05.05.32.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 05:32:04 -0700 (PDT)
Message-ID: <b8a0a43f-a118-b3ac-01e9-703162e617f1@linaro.org>
Date:   Fri, 5 May 2023 14:32:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/2] dt-bindings: reset: mt8188: add thermal reset control
 bit
Content-Language: en-US
To:     Runyang Chen <runyang.chen@mediatek.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Runyang Chen <runyang.chen@mediatek.corp-partner.google.com>
References: <20230505120108.26603-1-runyang.chen@mediatek.com>
 <20230505120108.26603-2-runyang.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230505120108.26603-2-runyang.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 14:01, Runyang Chen wrote:
> To support reset of infra_ao, add the index of infra_ao reset of thermal
> for MT8188.
> 
> Signed-off-by: Runyang Chen <runyang.chen@mediatek.corp-partner.google.com>

Your SoB does not march author.


Best regards,
Krzysztof

