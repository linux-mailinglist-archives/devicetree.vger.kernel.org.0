Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4F1F6425B4
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 10:23:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231124AbiLEJXB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 04:23:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231146AbiLEJWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 04:22:53 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 140A76414
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 01:22:52 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id x6so12799800lji.10
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 01:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ifApAlZTQFbWg5ohlrPWCvJNXEFvsjQ5YMa0cqLSe/Q=;
        b=SMRaKuNVOMEMtKb9Ghp1P5LbxZ2NAL0PdCBOihZKAP3eyoOLXSa4aR9S/qbj0z3r8T
         T7cFDebZRT0b0vN/E23WFhNOKpi64lihKYO1rHt/APkYNJNso3Kv+0uO7VQv2WnYHLMW
         Z5Y6PuivtqO8N3JMa7TwdqZ9/H9rF41rYI+a8pkXjIIAqFUvA5wuLFpg85oxro8jtEws
         F9HU6sZnpuzQhmH3r5cRvhb7H43hB4aW1q3oeeElxjSDF+HvJ+5yhTJxms9NbPLGa7hm
         9lh89zB/V6Zy1S9+pqOFmgOe9hSVr566UMQTgYe4xuB7GgAaFYcaqhGTdZxUvKQFx6tu
         jemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ifApAlZTQFbWg5ohlrPWCvJNXEFvsjQ5YMa0cqLSe/Q=;
        b=cBAC1uvT9eHNZLZHAorghb+CLE8playhAAWXQokcIrByrXbK1GAvLvOFUZwHNOuSg8
         +CvXOl8VltaP6Vg4jlI3AfXUIT+f49aCm4r0jYonBAhkCowTEos3gTLUX+/aKaMobjWR
         rvIA03FdC6iq1lzDpI7WD3us9uuNcX/GIWTFRMy8Srtoe4kT5MKLNOg91Siqi3W0fxE/
         gLxZrBneSRPmHEw8x6ULLraC5fDtesWiM+68+26iUxGihb1WkY0P8FrfAhJhgy2mNUkp
         PZkLa1dZesCJDg9aUM/91+9ZdX5rPh1RcTqBRJsSMdozmEgAFVGE0ipsJhrwCI+Lqt33
         3RyQ==
X-Gm-Message-State: ANoB5pmnsQyMLgkUVsONctIi2MyO/ER5kGXEfFfpWy2B3Lrs7bxWOobv
        mOk8zmrESZ4xfOcyKOg2kIR/tA==
X-Google-Smtp-Source: AA0mqf5ubdilEPhhSGVBVAmanSy+eKOOTQiyr5re3MOtJ+WUJkcNhxnD/whPCuSsjcoLuGGPaa2jmA==
X-Received: by 2002:a05:651c:2211:b0:26c:66c1:87f9 with SMTP id y17-20020a05651c221100b0026c66c187f9mr20482455ljq.47.1670232170396;
        Mon, 05 Dec 2022 01:22:50 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k1-20020ac257c1000000b004b55075f813sm1304683lfo.227.2022.12.05.01.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 01:22:50 -0800 (PST)
Message-ID: <6ba5f4c6-d725-0bee-9fb2-eddfae5760ca@linaro.org>
Date:   Mon, 5 Dec 2022 10:22:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 9/9] dt-bindings: mtd: ecc-mtk: Add compatible for
 MT7986
Content-Language: en-US
To:     Xiangsheng Hou <xiangsheng.hou@mediatek.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Chuanhong Guo <gch981213@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, benliang.zhao@mediatek.com,
        bin.zhang@mediatek.com
References: <20221205065756.26875-1-xiangsheng.hou@mediatek.com>
 <20221205065756.26875-10-xiangsheng.hou@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221205065756.26875-10-xiangsheng.hou@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/12/2022 07:57, Xiangsheng Hou wrote:
> Add dt-bindings documentation of ECC for MediaTek MT7986 SoC
> platform.
> 

Now your subject prefix does not match file. Filename is
"mediatek,nand-ecc-engine." so use it instead of "ecc-mtk".


Best regards,
Krzysztof

