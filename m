Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91AB769436A
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 11:49:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbjBMKtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 05:49:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230423AbjBMKsl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 05:48:41 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E84AF15C8D
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 02:48:19 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id a2so11681305wrd.6
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 02:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p3TD34vPQZyiidhF1zkU6GCwiTZaGYr8zPWkji6mfAo=;
        b=tIoLRNPjIuHeQWvUCCLKuYJfO5Q6G7tv8ssA+oxX00bP4qd5RCVEohrG4QZPbWnjw9
         7d/t4l9LHtIwGIT7M1R8xPn1Z1fRBZpzQ2I0hC3+X743PQ1Z1Go3vmfJpMXkBVDvRphi
         Dkt2q2WhhM1vvIGkb9kXD6jhv4F6QGMi8Unw7PXgPEo0J/U5OyNXTGIfIihh3Tf0ycDf
         nfd6JQzPW2LTrs8BZ8kiQqcAvygoRqqAoPInVXvDXUicVStg4QbBc2eWgHd4lhguV2Zh
         s8pC//RNGd8Ax8vVVT2m2b3sXWnpmpw79ZdzL078/54szk8a7xmORmhZLwILyQNwFjUa
         8Caw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p3TD34vPQZyiidhF1zkU6GCwiTZaGYr8zPWkji6mfAo=;
        b=An7omq/8lFsvYvNzW7cGyKAfxXu+d4M1hSYe/LAdqdpkvmQ3dVq7SDQdRuJUaOE+MH
         4wJ9DioLz4L9SzgEifCFs/H3Gi1uY8J4nzzBGk2/D74n0BnQu4h3cqI42HwHvNaYlFkV
         kmMF5EHuH8BvUBiDK0lsNwcWT9ua/M8NTgPN/3m/Eq844+ajOeDz9sgxOJBpPMdxKEs1
         awBd0MJQeOUa0RF6WmCD/fygJTii5tI60dOQ0fAsWNEGIeW2IKtQsA4DDloXl4tNZ9oW
         vWIka3aHp9NWDvLL8tA7ffxhWKgqi357B0M6+CFrr5WZ1JJe/m3n2dlm+jCMFHPbkZ2k
         m6zg==
X-Gm-Message-State: AO0yUKXpz6ByaxXCPug8r/RX8WE3Dph1bGmFicKdF4+EgKf3Rv9kpfHa
        BRIuEGgtejVyxayHSJ0NW9a6nw==
X-Google-Smtp-Source: AK7set9JoeUT6UsF53tPOHgWzJ42AN1vOeyM1T1JG78R13UMithB6CVkZkXgY5gsq8Ll9FVc0eDF0g==
X-Received: by 2002:adf:d0c2:0:b0:2bf:e443:ea70 with SMTP id z2-20020adfd0c2000000b002bfe443ea70mr20501532wrh.1.1676285296828;
        Mon, 13 Feb 2023 02:48:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l19-20020a05600c2cd300b003dfefe115b9sm14931286wmc.0.2023.02.13.02.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 02:48:16 -0800 (PST)
Message-ID: <0c54d39b-59e1-2e58-21b4-405851211d03@linaro.org>
Date:   Mon, 13 Feb 2023 11:48:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: net: dsa: mediatek,mt7530: improve binding
 description
Content-Language: en-US
To:     arinc9.unal@gmail.com, Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, erkin.bozoglu@xeront.com
References: <20230212131258.47551-1-arinc.unal@arinc9.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230212131258.47551-1-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/02/2023 14:12, arinc9.unal@gmail.com wrote:
> From: Arınç ÜNAL <arinc.unal@arinc9.com>
> 
> Fix inaccurate information about PHY muxing, and merge standalone and
> multi-chip module MT7530 configuration methods.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

