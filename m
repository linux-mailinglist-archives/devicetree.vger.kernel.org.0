Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ECC96961FD
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 12:09:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232835AbjBNLJA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 06:09:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232869AbjBNLId (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 06:08:33 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0244628D26
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:07:41 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id s13-20020a05600c45cd00b003ddca7a2bcbso5888073wmo.3
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=82toVAhxT6C/f6FDR+FJ+bR/ZLTWxq3zIs8/EsV1UnU=;
        b=K2NfUwd8vbSgKKPWQqgzyTRM/7v1Y321KoLTZEwzlAT4fmmmTKBxuehUlkvqvb1Yrt
         qakmsTlkyIsoI6tez2qgW97WKZsbtFiGLR6a2nTF3x3fxdKKKkrjNz6Pj7MwKHJcT9uE
         iH/vuoQruLuAK+tf7yvYLQN+7KFfqD6gDag2aMGEGNZdmVxjJT46PR8hCHPDBD1/g/Si
         AFhsBrsXkVSajUrabPPT+xsyHfCGEjuL+K/pOgBJfNrh1tshFCp4XpRjqe9znCDnF0kW
         PywjGiTUswtjY9W/FTk23Xs5aLTPG6qggtscXlqchNvKjN2F9Tsm09yUQdM88T4kAhsr
         pAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=82toVAhxT6C/f6FDR+FJ+bR/ZLTWxq3zIs8/EsV1UnU=;
        b=V3wnOIBBX4U69XX6yBJ0XJuvwh4EGe6ZYWzwc57pQVIr6Sx+vczWomPSgUT3EXVm4o
         P/0n6XewN02egCHXtiQMYmez1VOJW6gFUzu3xoV9Jj0EMxwui89d+BRtTNd1pLqFRm9w
         YGhOOHxGy9krxbnD3FmvUxxbrepU0ZJPF5guqb1m06Jvr+8tYfd8j0wKbaFFvwCo0es6
         GbusAoKqPQhz2AD1Z54/HJoN1yuSCohU42LnmygAiRhnBizoong0JQNPu96yYRIzvnIh
         mZhDrUUs/E8MJay/i/y/8TrKuQUJoLgTdBadqrlStDvX6Use4AoTpN1pFXNTREvdRRR1
         bWig==
X-Gm-Message-State: AO0yUKVJAlWWrjtxekmQ+yps3aLhe1mqlf7mufLDhztV+QmdWk1GseOD
        3g8IJblf4UPz127gtSKcCIkX2g==
X-Google-Smtp-Source: AK7set+3ZSit6NXnQ+GPXLgIWshYe5YK51/9Z7MUcQUkIr0yT0puTCcVgig2M9L3L62WhZcAQ4cysw==
X-Received: by 2002:a1c:f30b:0:b0:3df:f9e6:2c5c with SMTP id q11-20020a1cf30b000000b003dff9e62c5cmr1622531wmq.38.1676372840771;
        Tue, 14 Feb 2023 03:07:20 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y6-20020a05600c364600b003df7b40f99fsm19128073wmq.11.2023.02.14.03.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Feb 2023 03:07:20 -0800 (PST)
Message-ID: <39d7dcad-5c4f-7743-e957-37e55a41e1af@linaro.org>
Date:   Tue, 14 Feb 2023 12:07:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 10/16] dt-bindings: pinctrl: apple,pinctrl: Add
 apple,t8112-pinctrl compatible
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>
Cc:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
References: <20230202-asahi-t8112-dt-v2-0-22926a283d92@jannau.net>
 <20230202-asahi-t8112-dt-v2-10-22926a283d92@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202-asahi-t8112-dt-v2-10-22926a283d92@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 12:03, Janne Grunau wrote:
> This new SoC uses the same pinctrl hardware, so just add a new per-SoC
> compatible.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

