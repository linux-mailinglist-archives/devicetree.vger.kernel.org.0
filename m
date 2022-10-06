Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76A245F621C
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 09:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbiJFHxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 03:53:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230292AbiJFHxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 03:53:30 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A73B8FD6C
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 00:53:29 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id p5so1253086ljc.13
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 00:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=gbl2sqAncpllKGuOCbPF4knZ+D81ldDQn9qCCcipX7g=;
        b=KJikq2u4YaMAiclDPOqBu7az8d5be3+5ghPcv1oUClRdCp8sawmrjfcQNiVxvJJO0S
         I/Io/7dkU86k8naUE/KMJZyoeV8W3QWHUFhzFcaPkbYEWjV/r7PsLE2+DiCuVt9S9Tmq
         zotrYr7KXIO+tZ6DZcTIP6kICfHlNfSQTSzh1RG1Ai1pfq6d+/WpFlQpHQLek6iujPz4
         yIes+husiLc21yJjNMqgchyGvXpweIFAXxmAD0GONQEqIhs57xjpFH8CxFExds15GCtW
         BRyXo5uNphwlw/DfRBS90yHJd4iilCdxlLMKIhB++iTwiI8IhL1Id1uR/n3JRV6pbV8/
         Ua9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=gbl2sqAncpllKGuOCbPF4knZ+D81ldDQn9qCCcipX7g=;
        b=aEjboRNOS3ogdBXRhsbAObxMToiCsBTr7XoyupLS11At5U5PjqZ2XwrcwG9vn9486b
         daWP3NqjOOIg586r9D3//vKiZzYQ9GtUvisLD0zMXrhdpIsABZUCeHtFhdM6VZa0PLV7
         KkYMsXJKJUtbvDARM/CbsOMcZorAiAS9G1yI/kof30pZiKFYI9vFSrPsfLaU6ydr9tat
         fvrEetBQ657I2wKqGMJhIaPEPzqB0P2Z1kFHm2RmEIN7BgkK4YQ1ubrcLROJrR9XVKKj
         MPPS+mnN0vxswoaa2wvG0xNVhBgTlArfoAob1gyiOgMXx/kIMEQGcXtE+6GaUV/KBQu1
         GG2A==
X-Gm-Message-State: ACrzQf04vWx0Jo3sYOodY2P/DFu+4Wqme5tJfHGxZ8qFg811wohMHkBZ
        aAWURP7khX+eugqZwLuI9z3VzQ==
X-Google-Smtp-Source: AMsMyM63+lsKjqS9rbt0n60RV+mLp4etB8Di6xPlg3WpquQtq7M5ay9DT1wK45eOy53hn25eJwctwA==
X-Received: by 2002:a05:651c:158e:b0:26b:46a6:bf63 with SMTP id h14-20020a05651c158e00b0026b46a6bf63mr1155856ljq.21.1665042807390;
        Thu, 06 Oct 2022 00:53:27 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o20-20020a056512231400b0049f54c5f2a4sm2600306lfu.229.2022.10.06.00.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Oct 2022 00:53:26 -0700 (PDT)
Message-ID: <6bca0fd0-395e-0fae-f500-d9c78a5dc719@linaro.org>
Date:   Thu, 6 Oct 2022 09:53:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] dt-bindings: leds: mt6370: Fix MT6370 LED indicator DT
 warning
Content-Language: en-US
To:     ChiaEn Wu <peterwu.pub@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, pavel@ucw.cz,
        matthias.bgg@gmail.com
Cc:     chiaen_wu@richtek.com, cy_huang@richtek.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <435f6888ebc20c5abae63eb9cb3a055b60db2ed1.1665050503.git.chiaen_wu@richtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <435f6888ebc20c5abae63eb9cb3a055b60db2ed1.1665050503.git.chiaen_wu@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/10/2022 05:16, ChiaEn Wu wrote:
> From: ChiaEn Wu <chiaen_wu@richtek.com>
> 
> Add '$ref' and 'unevaluatedProperties: false' in 'multi-led', and remove
> unused 'allOf' property.
> 
> Fixes: 440c57dabb45 ("dt-bindings: leds: mt6370: Add MediaTek MT6370 current sink type LED indicator")
> Signed-off-by: ChiaEn Wu <chiaen_wu@richtek.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

