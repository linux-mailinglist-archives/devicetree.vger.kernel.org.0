Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E065609456
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 17:22:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230167AbiJWPWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 11:22:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230070AbiJWPWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 11:22:30 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F36B66D9F1
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 08:22:29 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id bb5so4435749qtb.11
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 08:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mINfRrv10YbsHL8f7bHkN2lhU+cugNCUGw70BIJKqT0=;
        b=EnDn8SmtuqPY0xKqaq/JpfPrX/R4fSxphhQYEK/soFXMmAzvSfBxnDEr0TQhK1MYRP
         9hB0eGS+m3v8et/fK+QpqNuSvNvZht7zNaORiTRsTxJqXOu5MQBMODnWqhMmd8EKosMV
         yiAgEt4uHzto37QjLzy89yU1pDem07xc04L9ubWCxsfNFecswCUymuh/7X7ASVmyH3Lp
         AtWZXcrHWOqrUlm6LHkoiEzaHR0Z3n4umTQGvJA6oUsC81AoiRx46d8eDBpVccUTHik6
         MTAusWduOdBB0DurFycHzFJ5A4znUCwHOyEJnq2C5HbP2V9JIElqqJdoyGOS1SL/37+K
         TY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mINfRrv10YbsHL8f7bHkN2lhU+cugNCUGw70BIJKqT0=;
        b=hLPCgGaoYRHuZ1LO1V/RjC3E258NkpNR2j97Au9H50+f/jgpY5zmsghJCTUKKOQtoj
         6EL9u0n6z2Kz8WnVcuLjqi0yEyzYfr4t+byLwxUdtglXuACwLP/RmBDr1RUdpTlQLtkS
         Nzr6mS9JrQ+zNp+LGqYUhMwKtO+dauenGyddYFPi+dz4QO46imziy8v1txHF9n7uCZXp
         shzHswBAIRa8pKKexCKu99h94LQUvE0saAjWUe8ak/P8jP7FlYsTEH4/JCQVe3kagIgu
         6UoNCRhep/EBiHCtDK3fKSjL8sW+61XoA4CStOVvgj6Tolr5oDTizA+RlTUDiXWOz5+x
         6+Lw==
X-Gm-Message-State: ACrzQf1U32O7oyHHecrqve0PHikC5H/eVr3CIWgIxMGQsPIA1w9qwua6
        DyFYh3LJvW01SK0vPx331QatY/GUIFN2hg==
X-Google-Smtp-Source: AMsMyM5E5rQJzhPoo3LiOFHGgRAsT1+TNl2VLLZN+mbvskNNOzafo8Z7l0Kw1RdnqciMhhFUkufK6Q==
X-Received: by 2002:ac8:5808:0:b0:39d:d5cc:5fca with SMTP id g8-20020ac85808000000b0039dd5cc5fcamr10805578qtg.12.1666538549165;
        Sun, 23 Oct 2022 08:22:29 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id t6-20020a05620a450600b006e8f8ca8287sm13275457qkp.120.2022.10.23.08.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Oct 2022 08:22:28 -0700 (PDT)
Message-ID: <8f9d6060-a280-8300-d6ef-d9fe40d4669a@linaro.org>
Date:   Sun, 23 Oct 2022 11:22:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 4/5] dt-bindings: ingenic,x1000-cgu: Add audio clocks
To:     Aidan MacDonald <aidanmacdonald.0x0@gmail.com>,
        paul@crapouillou.net, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     zhouyu@wanyeetech.com, linux-mips@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221023145653.177234-1-aidanmacdonald.0x0@gmail.com>
 <20221023145653.177234-5-aidanmacdonald.0x0@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221023145653.177234-5-aidanmacdonald.0x0@gmail.com>
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

On 23/10/2022 10:56, Aidan MacDonald wrote:
> Add bindings for audio-related clocks on the Ingenic X1000 SoC.
> 
> Signed-off-by: Aidan MacDonald <aidanmacdonald.0x0@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

