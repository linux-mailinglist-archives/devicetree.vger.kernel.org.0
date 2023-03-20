Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F20A96C0AE4
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 07:51:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjCTGvu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 02:51:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230000AbjCTGvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 02:51:49 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A21C313521
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 23:51:47 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id w9so42612612edc.3
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 23:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679295106;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nwbSUlA3zxhSUQTAKIITpjLxnW9LRkO1uNXODCdYZpY=;
        b=TJUA4HSk2vyI9uvLAda9IAbvHowKju3Ud7/DXFgBBR80st2dGVOk45Uwl5Va9IOjjd
         60Fg7d1RElyizsQ7Xn8CQklSl/L7xdryMA13aiw8RDTjzDX0hBYwH94vyMo23ak4WxP8
         qrO44K9jkavktz5l8YFgl0F+8dzybddaQiU37RcymS7bGAS7CH+nNfXLIr8U8tkJ4z04
         QcbV7SHE0kqpFcAGpc3spwEFft8EwdSMVPXUbP8tCx1pxHcgrnzvrRukgGz40vAG+EyK
         82GfMoREnRGKvHqRodNjc5PZe71AseLswOVGwKILOdkEYvI9gLONMieIHRKOmpreWKqK
         dYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679295106;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nwbSUlA3zxhSUQTAKIITpjLxnW9LRkO1uNXODCdYZpY=;
        b=JtK7SC0DnqCfehnvhkgUMIQ6pynWrads7opplxgjfoPzPch1XZQa/hQfBOgYU+TEXm
         xuLxUUIR4GCbcksdyWQrIWzqnOiN0+/BC+Q/0EADJY5YXdRnfiqSkHOKdPWpwxGI+Vsf
         4QHcC1nDlA199Pt00E3F270hq2P4TXzTt1Xp/M8p1xFObi5menV5Wf/afF9sX68H3PVi
         DEaC1oiU6BVGEpLXS3egCiO+tDo9KOv0oE4/OqSE3W4QO9sd0G2Ky8q/PVvAkIe08aGz
         KIaB8Htxh3ZPdh+zvQ48YIOmzJ5mtNEgN8W0lCm1TaB5f10BJaHxFyS6toD1MU2nI6uF
         EX9g==
X-Gm-Message-State: AO0yUKU5HFMQAecJZpotqiFh9wSZJSR6ui8Fxd2RzMzUstn6KmkBYzfA
        z0KUCSZbnEbjUOK75Lp7iYbKKA==
X-Google-Smtp-Source: AK7set8Sjm75w1NkHTe1vkKDO/DxHYYy69GkFCJ6+mezWU4SeCxP3PBNqIc3uz5JtTX1pbrqswwBjg==
X-Received: by 2002:a17:906:cedd:b0:932:4cbf:5bcc with SMTP id si29-20020a170906cedd00b009324cbf5bccmr7853610ejb.37.1679295106132;
        Sun, 19 Mar 2023 23:51:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4428:8354:afb6:2992? ([2a02:810d:15c0:828:4428:8354:afb6:2992])
        by smtp.gmail.com with ESMTPSA id g1-20020a1709061c8100b0092669fb4ba1sm3983391ejh.130.2023.03.19.23.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 23:51:44 -0700 (PDT)
Message-ID: <170bc10c-143a-86d8-91b6-7841584b8f0a@linaro.org>
Date:   Mon, 20 Mar 2023 07:51:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 3/4] dt-bindings: arm: sunxi: document MangoPi MQ-R
 board names
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        =?UTF-8?B?QW5kcsOhcyBTemVtesO2?= <szemzo.andras@gmail.com>,
        Icenowy Zheng <uwu@icenowy.me>,
        Fabien Poussin <fabien.poussin@gmail.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        Belisko Marek <marek.belisko@gmail.com>
References: <20230320005249.13403-1-andre.przywara@arm.com>
 <20230320005249.13403-4-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230320005249.13403-4-andre.przywara@arm.com>
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

On 20/03/2023 01:52, Andre Przywara wrote:
> The MangoPi MQ-R board is a small development board, using Allwinner
> SoCs with co-packaged DRAM. There are versions with a RISC-V core and
> ones with two Arm Cortex-A7 cores.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

