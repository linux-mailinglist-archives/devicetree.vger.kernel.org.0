Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B6366101B7
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 21:34:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236648AbiJ0TeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 15:34:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236639AbiJ0TeF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 15:34:05 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35BF75B9DA
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 12:34:05 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id w10so2336077qvr.3
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 12:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=whi0qWR88uiXiB/0dQGhTPjfXFvAyXhTlTvNAGW28dI=;
        b=K1U8hhv7zRlATdxEIGQF5BaF12mIraxogSOGmBdejcqQhI117u5m54+mucRWd9hYqy
         GaIzNSGhrp8xYsPyoLyabGysMnEyiigik1H7kRdSIradELalhMyythTuK+zIuOE9yzDO
         1agBzq87gtoY4x+MpwV2VjsWtZ7HtEaAibiJfdP5oFavpf8JW0vjoqM9p3bpq6QqGKo/
         ynfTupWdJNe53S1cbKOgUbCZrQd5NT96PxOdo+/bF+5kx+S5aFW+ifoDauCkbihh2fSo
         waRvu8ywkKnrSEwxvLZFqPUPytQm6d42ranu9LcTcV7rTnzOydBWXhdWEh+/fBuZfn14
         SwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=whi0qWR88uiXiB/0dQGhTPjfXFvAyXhTlTvNAGW28dI=;
        b=Z4X9/zx6LhpoN7ZN7KFPj1cv5AgHO+WCuxv81VmpT9rBRFJE1EWHeru1TZyFyQckR2
         yJn+ZzyFw6mhKU50M0nB3BdMmveGwWVwNC9UVvEJtPQA+/jBS1PMxMFGUkfuOfJl5fv3
         0Z1P1aHTko5G0Xu4B8Q9EvpsU8zgqU6FOENEVYWm+6/lYa2s6Bo7x8PGS0u8dmU+IEAW
         k37nBUytmz+09f9r0GKTC3cYw0S8qN+0ivrowU1H6ZioqRE/Vz0bSCyDrDGzSlgKFq+q
         8JlctY2x3qqO8wQC/w9OIxMhjBbBrYSIw1/DKj5qC0cJPPLjEepkdcz7iw9ZOxF7RiVO
         AGUQ==
X-Gm-Message-State: ACrzQf35N5T59nqduE61YQMliO3BlHkKM8F9vbnGeHqXODVoN+zewn74
        zfXy5FSDF4yCGw7ecCnpagWCGg==
X-Google-Smtp-Source: AMsMyM7zS/da+sbofhtFO8oC+F1BcHz9Dyj8aECEUtrU0MbNt58kjE4qeZcBCSmuSNHCLdAPmVgkAA==
X-Received: by 2002:ad4:5dc6:0:b0:4bb:798f:5272 with SMTP id m6-20020ad45dc6000000b004bb798f5272mr17365216qvh.131.1666899244393;
        Thu, 27 Oct 2022 12:34:04 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id u15-20020a05620a454f00b006ce2c3c48ebsm1598765qkp.77.2022.10.27.12.34.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 12:34:03 -0700 (PDT)
Message-ID: <46704959-ec70-9409-c894-ea08b15135e2@linaro.org>
Date:   Thu, 27 Oct 2022 15:34:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 6/9] ARM: dts: nspire: Fix uart node to conform with DT
 binding
Content-Language: en-US
To:     Andrew Davis <afd@ti.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Daniel Tang <dt.tangr@gmail.com>,
        Fabian Vogt <fabian@ritter-vogt.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221027181337.8651-1-afd@ti.com>
 <20221027181337.8651-7-afd@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027181337.8651-7-afd@ti.com>
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

On 27/10/2022 14:13, Andrew Davis wrote:
> This node does not follow the DT binding schema, correct this.
> The arm,pl011 binding requires the first clock to be named "uartclk".
> Should result in no functional change.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

