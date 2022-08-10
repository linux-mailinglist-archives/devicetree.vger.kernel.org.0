Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C294458ED41
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 15:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232665AbiHJNaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 09:30:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232742AbiHJN3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 09:29:50 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19B383AE66
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:29:39 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id by6so7702023ljb.11
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=M2+lgkUGbiFpPnZJdDr1e6oVq21WQvDGuoGeryWgspw=;
        b=v76915Wzkkb1kBO16clztnFIfDJ0uvr0SKRaKC9YqQTf4IG6gm5Esg0V2n7qpgVjKc
         53nyQ/6SBOQYXM3S0uiFmZeMkhhjD6qU654x8jiVbC7Nt8ucqIjFzFVtA7w/z4nbWDSd
         JE45An8wat3l9WvALCFihINHrujCNJ2Gupi30v++JCi+M0GNMhSuSUzliUhhyTEUFtjw
         CXxs2tmiy6RbEfe/gpI/6HUrNlz157WV0BTEOTQcnt7A92mZJh2au/0Mgi1w61PS5QAu
         T6Q51PpTF4bAyyS/dXsa0CkH3HhfdugGRaM1OelRmPstyyYWe/Gc9WoJ+KTJRXSuvIgK
         S12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=M2+lgkUGbiFpPnZJdDr1e6oVq21WQvDGuoGeryWgspw=;
        b=ZZfblP7hAz4pgTya4AJGcfAowqIR47vQdjxeKvREDmkCjyf9xPQIJufeE106viX46u
         V3pJGreHJqHmko6+9VC/oYhaOBkK6F+lhZDMtWXhdcouGsGaAwetHHyTfk5HhaLRp7WB
         vg7Wplv5VfE8hIdcNMHJCIWeb6MN90gjXBLXIvfoXW5Vpxyu1TKsICYQEMoXfm8YD+7i
         zkAjKob8KaIdZ6W2s/08R0cbDbOQvyDrJrYkQlo4Dgp6TkoHoVFlE3X+mS0W+KlkhB0F
         RVuOyx80PwQFfUTnbRARqVKXG/cBIwRcGY8MaM+Fy/Ipr2IgRrQE7Gb2JnHctNK2isS/
         J+rg==
X-Gm-Message-State: ACgBeo02NVzGVItTRLCS3ufJvfAuOhaKwmuyr2SmVmNvJ6zB/68WxKtf
        wXrFcJbtcFXh4qCASQ9pkhM4XQ==
X-Google-Smtp-Source: AA6agR56rpbkPS2VaMru/xs//Y04YuIV0S7fJ48JvFSxZ8tdGKn2VGteZCIB89deq4DtpaBko9t+5g==
X-Received: by 2002:a2e:a28e:0:b0:25e:734f:38fa with SMTP id k14-20020a2ea28e000000b0025e734f38famr8723830lja.446.1660138177491;
        Wed, 10 Aug 2022 06:29:37 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id d8-20020a19f248000000b0048a934168c0sm349958lfk.35.2022.08.10.06.29.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 06:29:37 -0700 (PDT)
Message-ID: <dd173944-80d3-e13f-c405-f076401bf6c7@linaro.org>
Date:   Wed, 10 Aug 2022 16:29:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] riscv: dts: microchip: add qspi compatible fallback
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
Cc:     nagasuresh.relli@microchip.com,
        valentina.fernandezalanis@microchip.com, broonie@kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20220810085914.801170-1-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810085914.801170-1-conor.dooley@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/08/2022 11:59, Conor Dooley wrote:
> The "hard" QSPI peripheral on PolarFire SoC is derived from version 2
> of the FPGA IP core. The original binding had no fallback etc, so this
> device tree is valid as is. There was also no functional driver for the
> QSPI IP, so no device with a devicetree from a previous mainline
> release will regress.
> 
> Link: https://lore.kernel.org/linux-spi/7c9f0d96-2882-964a-cd1f-916ddb3f0410@linaro.org/
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> See the link for binding discussion. I'll apply this at some point once


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
