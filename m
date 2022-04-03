Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D13E44F0AAF
	for <lists+devicetree@lfdr.de>; Sun,  3 Apr 2022 17:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359181AbiDCPkc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Apr 2022 11:40:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232259AbiDCPkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Apr 2022 11:40:31 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73ABC2727
        for <devicetree@vger.kernel.org>; Sun,  3 Apr 2022 08:38:36 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id r13so10918568wrr.9
        for <devicetree@vger.kernel.org>; Sun, 03 Apr 2022 08:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sEXxi1oey9g2W1h5KyCkUsYbDt35qHocHgmTe1tpXso=;
        b=JcpLNe9/pudDEVRHxP+QM8uFpur6LRnLKIvN74+hO6fHL1sIymSzFuSaQyxNjmwYv2
         s08Q71x4QJOW7Nh/1LbUf3OIY+3t8DFVw3/w/m14RKBsVEjJ8N737SMA2WP2SfEVwxyZ
         PtGiXUoDTa+sVdEwFlcPzAYunvHinNAb1BuxiifJ/b3ac3Lsunq+Nn/6a661aRBmNlRw
         N/7oCshyxl+lICX2Tf3oMNRyPrdhwhKCzAOmpahP1FkeCt+QwPTz0gJzgNnMXsS9XUX/
         0w6UuhpvnLqRjGUYqWZebaQs7UBuhnEB0uCU0WAmpuwMVW6WYOc1qY9Wrjb2WbFz069y
         A/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sEXxi1oey9g2W1h5KyCkUsYbDt35qHocHgmTe1tpXso=;
        b=URAtljicBNv80UBrv+2uIKTSrYpYKQjHRm91u+AaNMI2wN4lih+gjPnKN8/fbbefLt
         BheW5m9GiEeGidBTO/b/74tyHWI91rdWwsvH5ZGCbV2mZZElHjcGUIYkxKw/gYgiscuh
         EUBX9PDkIR/jgzkkh3qiCEsDJYPuzJLDeXirNRy/44ZbXv047klE6LAanpXA6iPrhsQy
         4qYxpXkJypEfZZM+u2ObEp2JkJzp2UMCVYpn4vI8YVp0seTZT/lJGroiLn7i2TlG9cKm
         IU2DtrFC5hMp75Rp+nUn9qnB0zDYDGcBcXgnMByTcjwQG6+k11IjafXFQdcZgLvAzZes
         W61g==
X-Gm-Message-State: AOAM530Sbd1dxsE6A+xa7mv/6MVcjkEJ5HKdEGh8jLP1CyUpJjrJCUga
        7emB+6472ekzKUNPdnREo91zbw==
X-Google-Smtp-Source: ABdhPJzjTyPm0Buqxb9GeLrcApRwPGIC65Z+MHoPlQL+zDOwSv6J3ZSmjdbYZuXDAfLM93+fdC300w==
X-Received: by 2002:a5d:64c4:0:b0:206:10a0:4034 with SMTP id f4-20020a5d64c4000000b0020610a04034mr1155255wri.104.1649000315078;
        Sun, 03 Apr 2022 08:38:35 -0700 (PDT)
Received: from [192.168.0.172] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id r4-20020a05600c35c400b0038cbd8c41e9sm14788866wmq.12.2022.04.03.08.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Apr 2022 08:38:34 -0700 (PDT)
Message-ID: <d2815bca-22c2-691c-1fc0-07fe87a401f2@linaro.org>
Date:   Sun, 3 Apr 2022 17:38:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH resend 3/4] dt-bindings: spi: add binding doc for
 spi-mtk-snfi
Content-Language: en-US
To:     Chuanhong Guo <gch981213@gmail.com>, linux-spi@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Cai Huoqing <cai.huoqing@linux.dev>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Colin Ian King <colin.king@intel.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Pratyush Yadav <p.yadav@ti.com>, Yu Kuai <yukuai3@huawei.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:NAND FLASH SUBSYSTEM" <linux-mtd@lists.infradead.org>
References: <20220403131453.1269229-1-gch981213@gmail.com>
 <20220403131453.1269229-4-gch981213@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220403131453.1269229-4-gch981213@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/04/2022 15:14, Chuanhong Guo wrote:
> Add device-tree binding documentation for Mediatek SPI-NAND Flash
> Interface.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

I responded to you first version.

Best regards,
Krzysztof
