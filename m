Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D400642569
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 10:08:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230240AbiLEJIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 04:08:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230156AbiLEJH2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 04:07:28 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E558193C1
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 01:05:54 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id q7so12748630ljp.9
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 01:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GqNU7BdzxXArJ1hxutAZbvizBnSeo/vOF+Ym8qXlYBw=;
        b=ml1UTgwnXNIPc0W8ib4GfMRsHG60XL9gSKPj/qRbbV6GJkzlUj1At0dMUzoOFb60iW
         tb6annGiyDBjRt7m54+FeXCJAG1k6zyZpV4PZGuHxYm7VptGQ4HE5z/sdf0nd4XNnbM5
         mqZTLznBvYZ9IvNHoVEltgkurJq2dZTDmC3DBg6SerflSf29uDbJtRwzM6t2VzZKZeKH
         W3Hdrx+z2zDRhEmNvWjcF8C5cjMzT8oFOD2s9Yr7hkx7NoDA25fDHiauNl77Q6m3BHlu
         /XzYeQvCP1vLSSqEuf2R0EKAZk20F6w17K7jjdophOvRCEg7i+u82iAK96sKUi78Hro0
         PT2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GqNU7BdzxXArJ1hxutAZbvizBnSeo/vOF+Ym8qXlYBw=;
        b=eumy1w0AiJPZtcka9URfWgWH4TVBxkPEcVF0E8T75YRUqclU+5VS/DeDOM+lURCuNg
         EZLmjICYiNp9C01tr2U965X7HSQHMu8wKYRHSgZbzR03BZ9lPn8mCMgPXKIbPghwkl7y
         oQIXoT9wdsWVweR7F4AxkdaXaHEWtlwLJT4CQyOrtHPiKUiCxsxuIDb+FZT6vVlfNBcC
         c2rgiZHKdwER34GlAW16Vc6lHUSm+drPmIfuVrztbn5X0oZdtnKQfffsQlgQ7Pv6Z3Pm
         oRq3R2J5dR5Rfmykr7XlTtVp2USweeo9G3Agv6nUlW9O66P46LGeSLoF4o46vZte2PZ7
         voJQ==
X-Gm-Message-State: ANoB5pmO0ja9QCw4wUkyfhY9SnRWRrFtcMgQiD/c1r6/M/kF1yb8n/I3
        EXpAb1KFzEXzqm7Hdb7VxO7yiw==
X-Google-Smtp-Source: AA0mqf70Cu3Bsc7Sg6w1pGgBN0DBMF+g70wtdk9SSpETzjM7LJKRxqb71DhL1ffyntt/+W0ANkRx6A==
X-Received: by 2002:a2e:a881:0:b0:26f:a855:c415 with SMTP id m1-20020a2ea881000000b0026fa855c415mr12377855ljq.443.1670231152713;
        Mon, 05 Dec 2022 01:05:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id g22-20020a2eb5d6000000b00267232d0652sm1322528ljn.46.2022.12.05.01.05.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 01:05:52 -0800 (PST)
Message-ID: <3e141d37-497b-e9dd-44af-22ec57881b04@linaro.org>
Date:   Mon, 5 Dec 2022 10:05:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 5/9] dt-bindings: spi: mtk-snfi: Add compatible for
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
 <20221205065756.26875-6-xiangsheng.hou@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221205065756.26875-6-xiangsheng.hou@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/12/2022 07:57, Xiangsheng Hou wrote:
> 1. Add dt-bindings documentation of SPI NAND controller
> for MediaTek MT7986 SoC platform.
> 2. Add optional nfi_hclk property which needed for MT7986.
> 
> Signed-off-by: Xiangsheng Hou <xiangsheng.hou@mediatek.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

