Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7369A581199
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 13:07:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231335AbiGZLHB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 07:07:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238634AbiGZLG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 07:06:59 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B6B42FFEF
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:06:58 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id p21so8456225ljh.12
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zAMpgOS2lr1LXnhXlbQh8za1p9HO0yPvanq1eA0zF/g=;
        b=nTi2GH1ev08gwo97goa6kDB4AaWAxGvQ03SPrw56R8vZtg/6B+q4fD1VHjElTqTwWN
         5DYhEE1E7W0BHem3EQI3nwVHtFHWqu+U2KFQirDQU/ol1ZdD24avHTchFRCZHXtKZ6WM
         PemITjc5Kw5PS+UjfzV1Tht72XanctOsI4gJkj4JW8sMceTU1uAFxYVpeRl4qN0ojpKU
         39lwzdq4SOlZEsMOM25NYmCbOsxgiLlEl1j3kS8DhmpvxStfQFv2ofXUK2fsJpe6OSV8
         C7PqaXoSZ/0gOVSxpFGlwosWPFUwxp/XXrKGGsWhPuKUoqlRb9+uxvcA4ktAMr598GaB
         2uxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zAMpgOS2lr1LXnhXlbQh8za1p9HO0yPvanq1eA0zF/g=;
        b=ryV5amZEj5tlD4ljoa8+KgMaNNVPZezIR5YMOKqHsTiNdwGWFZnz52fL2AulA43JeK
         8oAeVLQxKoGAlriWV9BZnpCENFNeyQ81YxA3dTsVRwdR1SwfxUy2+/ifWYECpt3jvJ6b
         tVlI7GbEnDS6j29EbngGLaEAVT+ClFxBT2pSPB/gkuHV3146CswsqVFc0e2nlEiIeIP8
         ztjn+wuJGZ1A+XwfbbLG+GYK7jsU9bfs+3MksQPcvIYWRtotgG0qfEwZnlV9T+h5LkI8
         jNbI9jy9ZL2el+Yyllw3uPyoGEmccK37ZDwMPfX+7WGI0s4w9MXfo5kIeBxzWZL5rPeE
         QaBA==
X-Gm-Message-State: AJIora8g8HHVQubKlakCDLKZvPawdvqSGqGK+aR/eIdrqAOewSG1xcYl
        sMBXC1nZUwUOQ5381rTjo0TfKw==
X-Google-Smtp-Source: AGRyM1u3gsqLP0aFTL9bDO5R09Q0SHs/0DLRxW88EitNVh4ZKCbKJQfCPlrBsGhe+yLQ+F2m83ETbQ==
X-Received: by 2002:a2e:9b14:0:b0:25e:62:aad1 with SMTP id u20-20020a2e9b14000000b0025e0062aad1mr4129278lji.77.1658833616833;
        Tue, 26 Jul 2022 04:06:56 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id d12-20020a056512368c00b00488e50527e0sm1437310lfs.112.2022.07.26.04.06.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 04:06:56 -0700 (PDT)
Message-ID: <0c7688d6-b222-530a-3c61-0b081b43d090@linaro.org>
Date:   Tue, 26 Jul 2022 13:06:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document
 RZ/G2UL USBPHY Control bindings
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        "linux-renesas-soc@vger.kernel.org" 
        <linux-renesas-soc@vger.kernel.org>
References: <20220423134601.141975-1-biju.das.jz@bp.renesas.com>
 <fd372f05-e811-a6c5-31ae-c80df44c9ae4@linaro.org>
 <OS0PR01MB5922C5F56F72744C1D7641AD86949@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <OS0PR01MB5922C5F56F72744C1D7641AD86949@OS0PR01MB5922.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 13:04, Biju Das wrote:
> Hi All,
> 
> Gentle ping.
> 
> Are we happy with this patch?

Why do you ping me or Rob? If you want to ping, be specific to avoid
wasting time of other people.


>>
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

So what do you need more here?


Best regards,
Krzysztof
