Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40B8A60E3BE
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 16:51:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233965AbiJZOvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 10:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233445AbiJZOvM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 10:51:12 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EF137E814
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:51:12 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id h24so10026321qta.7
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0hva1foFrg4UuynYENfZjPsHhhI5SWAEl5ulETHYurM=;
        b=XC32+REtK7XMnBGAJOz6my8KQnH8XwzZIpBz/EF3R7R72XY4kBiCositUwuY/4E2ru
         Z7M9yzD/fH4hiuIsFt5HvvYVcJioKOIrmukOEk82s9bF2L4Yb1VZVaQsXRqAtb7yLzXW
         EL7G7vCRsjrxOWJvURY5BecGL7eO2y8m+rHmnlJjBgsbtdX4EjtrMHCCVtRQTU+3YkwH
         +3YTzOvvbDVzhCWvBACYAqz2pqf9bHkZ1vtyh/jEiCbMmF+ogWJerCVeMzxYKTtq8FFE
         AQZ8u9V+99aJ2N9/xEvO9aNofzjb/OKW1/KVrSP5iPvBpQ1DHk1S3K0MDYk/akZZ8LEI
         DrZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0hva1foFrg4UuynYENfZjPsHhhI5SWAEl5ulETHYurM=;
        b=yVhqenfMAjCeuXbvRuYWTc5M0hvP43zTHoibs9N3WVkv5DKEYEEgIuNxkiE98bJB3m
         2Ok1FRFod4qIrolC19ApF9V/g0S5ZgQHVXWaB3hdoa72q3y407B21tZ0s2oRgTgosn8r
         GJ2CQjwT0yT9kHFVJkuPg/xifdJ3Wi/3QOCe9V1bm5cuBJpZMLJ2+DTR1Pcyg4c7/sDm
         NIRBcrh4PrM1uIa6NKpMX0gD9jyW37rLRkzxXOBbbBQi1nnYM5e05dmuAyDqP7oXvl3e
         WZFr/4Lz3ez9AD1KmMduXiapu/tbzEiYCe3taI/kKHhJWphHzuP958KLbTGd7XiSpbZV
         pc+w==
X-Gm-Message-State: ACrzQf1a5QrQ/54iTGibt0aX2HxZHWRF2wK1P2D+7ZVyDDv8XwGgeKlU
        eytiN+/pulrjbhJL9veZduuRCA==
X-Google-Smtp-Source: AMsMyM606Yymwn1vyo/THsRRiBvagUrAx2MJFtn8L38IpAMBivLhYEk6qt+oDIkMU7nS88/imN/evg==
X-Received: by 2002:ac8:588b:0:b0:39d:13b5:1b63 with SMTP id t11-20020ac8588b000000b0039d13b51b63mr26811583qta.670.1666795871291;
        Wed, 26 Oct 2022 07:51:11 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id dt47-20020a05620a47af00b006b953a7929csm796294qkb.73.2022.10.26.07.51.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:51:10 -0700 (PDT)
Message-ID: <0482a4bd-e159-abc6-a641-46e1853506c4@linaro.org>
Date:   Wed, 26 Oct 2022 10:51:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: add compatible strings for
 Lctech Pi
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, soc@kernel.org,
        Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
References: <20221025145909.2837939-1-andre.przywara@arm.com>
 <20221025145909.2837939-3-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221025145909.2837939-3-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/10/2022 10:59, Andre Przywara wrote:
> The Lctech Pi F1C200s is a small development board using the Allwinner
> F1C200s SoC.
> 
> Add the compatible string list to the bindings documentation.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

