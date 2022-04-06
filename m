Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 419484F5C86
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 13:40:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235663AbiDFLeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 07:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiDFLcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 07:32:25 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 748F456FD2D
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 01:20:49 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id yy13so2696849ejb.2
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 01:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nwwNMDaP5Yh8K0WaZWOfIjXkdwXbq5VOVV+PO+4zCEI=;
        b=t7z1bs+kTqbj1INwRe1vMtQ6NKc9uAcZwKH60yfxmMmMEUv5b2KMB9WrLTjgP48JEr
         yJSUf9ilQz0NsSCbqfCtGk3S5Y6RMpHcFgypLxDLY4xXto8of3uXP8OhAa2JlUVZd+z+
         STDLjB7eUkYmPVJ/dKPcvWdoR2MzbknsovOOYDkfvdgAXybQnXF7QXhp3uK8KBx6bBwN
         yW0SOxMHKO46Pqx08IvSKm5rFKwocFHce2EocdmglFWZsyYKaiCGogjwQ7jlTLu39I0y
         0RSfqUSdfO6qX/snMr/HH0+KQ9C2V+oUnfDIFX94aNbg6t6wQ+loyiy7hOx/mqPT+n1d
         WwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nwwNMDaP5Yh8K0WaZWOfIjXkdwXbq5VOVV+PO+4zCEI=;
        b=kx29A0kMdolYQy3FpNKMyTPP70v1x6MpSk+nWOr64y2IM2puKV81NJOSzD9j4yXx26
         NRlZx4tl0828PCJ7TlwFZ5HktTCjFV94yaWE/cxwtEZdcyuXaSqkrtVm2vDgP+Lqzdad
         83OLtpeenXa92rMX06nrzO75ZGJV0zfHBfTmsX5OjgA8u5q4045+DUQt5jLRqYrq9BYx
         WE6C6Q0tGL/+RIxpE0jXgU8tmjgUP+klrxViAROcOEhMZRqt8bzBe/tPLisaSajr9rvT
         AqfhFRN53VBhuLi71S58zRLR7dw/K90Ff9Bx9Kf4pOYqQMWHNfuoiYI14kjoI4qWznL9
         IMZQ==
X-Gm-Message-State: AOAM531igB7krsY4j6EtdHN46PHvafrxGDNwsmod3fJEDmt330j/a+H/
        DOk0ygBgnK3yuAejBFlyiewENA==
X-Google-Smtp-Source: ABdhPJwXpHbNbl+9gjYwq/xSxgHmjmznGjTieI5zwK9DQvHmBWZLhxJmk6snQcc/KpO8olUy4KkMhg==
X-Received: by 2002:a17:906:7304:b0:6da:9243:865 with SMTP id di4-20020a170906730400b006da92430865mr7135579ejc.665.1649233248063;
        Wed, 06 Apr 2022 01:20:48 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id dm11-20020a170907948b00b006cf488e72e3sm6347202ejc.25.2022.04.06.01.20.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 01:20:47 -0700 (PDT)
Message-ID: <4bafe244-6a3d-d0ec-59d3-3f3f00e71caf@linaro.org>
Date:   Wed, 6 Apr 2022 10:20:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 05/14] dt-bindings: arm: mediatek: document the pcie
 mirror node on MT7622
Content-Language: en-US
To:     Felix Fietkau <nbd@nbd.name>, netdev@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Lorenzo Bianconi <lorenzo@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220405195755.10817-1-nbd@nbd.name>
 <20220405195755.10817-6-nbd@nbd.name>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220405195755.10817-6-nbd@nbd.name>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2022 21:57, Felix Fietkau wrote:
> From: Lorenzo Bianconi <lorenzo@kernel.org>
> 
> This patch adds the pcie mirror document bindings for MT7622 SoC.
> The feature is used for intercepting PCIe MMIO access for the WED core
> Add related info in mediatek-net bindings.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ---
>  .../mediatek/mediatek,mt7622-pcie-mirror.yaml | 42 +++++++++++++++++++

Eh, I wanted to ask to not put it inside arm/, but judging by your usage
- you did not create drivers for both of these (WED and PCIe mirror).

You only need them to expose address spaces via syscon.

This actually looks hacky. Either WED and PCIe mirror are part of
network driver, then add the address spaces via "reg". If they are not,
but instead they are separate blocks, why you don't have drivers for them?


Best regards,
Krzysztof
