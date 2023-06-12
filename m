Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C996B72BEE0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 12:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234310AbjFLK0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 06:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234703AbjFLKZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 06:25:47 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C2053368C
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 03:05:03 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9745baf7c13so609635666b.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 03:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686564238; x=1689156238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xDhYdRfw+H9eDbkeyM0u9Hp7SSuCMuRm9eON/ZgbuDk=;
        b=E9uGbaWuZaBCn6Xf0OItC32sYQh9LVD2k090dtF/aQReCbqHCcL/+9h9wKEY+yv9SV
         zXOVw7UTZPvqSBd4wtUQS5QwxMYX7+dYDuGljdj0lHO/qMfRjn6VkdrNpsPtTD+xrAOv
         sraQa+vuiGa27phqRQawPab77HZtl/K3EacRAEULB78Af2jLNy05OgA/CIXrCMEvW4C3
         l8LkFja5eDHVL8khL4r4bJkrzYuac57BQue3orGeX95avRsj96yko6vRx+3ZywPrGfgF
         MDdFw2+JjsORFI4G7J7vuxO8WRw92tQP7hKTbQkh/SjJe1A3I1cG1rAEAEHW9c78tg3z
         LpCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686564238; x=1689156238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xDhYdRfw+H9eDbkeyM0u9Hp7SSuCMuRm9eON/ZgbuDk=;
        b=d7R2dp3O4j5YlkSfpAQCoECvM8me+0VK3Zp9mRM9X0EqRR6BR0tY3cGGB6jD8OXuSm
         cFFR1sjyhGlZUXf+REnCc5ibc4r4Hr/awqZ3+VvJ18pv+UTvGjMRT6Og5JJm9odjC2ec
         HQo+DaFLsvFMIFGpKT4iM4T2cjfkbq1RP9rSdZaQiOCnb6PGr1/YgcMkgDpzemQLaXY3
         AeXDwOsEfcoYY6eBLhiEKtlID4T+OJQhEZ7bJpuWgbcrRM0WIqVtE0vHv6EPbrrwdzpO
         o5dG/tCIvCYmjspBu7y0iy46Lq9530Xo1ur3rMspcnxhatoJvTJ5M8UYyOolFthYDMwc
         i5ew==
X-Gm-Message-State: AC+VfDxsFXzZXVOplM4LfNdM/xtt3iiaNLUV/IIIkk7O8nUtJXDVuOdz
        EmRvLCRNTwwbsb2jIBxO7akgQw==
X-Google-Smtp-Source: ACHHUZ4LOTSs4UIZJLW3dFg+KyEBxIuTIuJZid/DofaZwV8aPAn/wWDASahUKO3Ww4EGF/hc5zOYNw==
X-Received: by 2002:a17:907:9728:b0:97d:f8db:601 with SMTP id jg40-20020a170907972800b0097df8db0601mr5935399ejc.62.1686564236878;
        Mon, 12 Jun 2023 03:03:56 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.153])
        by smtp.gmail.com with ESMTPSA id u9-20020a1709060b0900b0097db2824c98sm3473120ejg.151.2023.06.12.03.03.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 03:03:56 -0700 (PDT)
Message-ID: <b5c403ad-f8d2-5f00-e345-ef412a706544@linaro.org>
Date:   Mon, 12 Jun 2023 11:03:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 0/2] mtd: spi-nor: Support for another sst flash
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>, linux-mtd@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230609144324.850617-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/9/23 15:43, Miquel Raynal wrote:
> Hello Tudor,

Hi, Miquel!

> 
> Here are a couple of patches adding support for the sst26vf032b spi-nor,
> nothing specific here. I hope I ran all the required tests correctly,
> otherwise let me know.

The tests are fine, thanks. I think it's debatable whether we include
the output of the tests in the commit message or in the comments section
below the --- line, but I'm fine either way.

I had some comments for the patches, I'll let you read them.
Cheers,
ta
> 
> Cheers,
> Miquèl
> 
> Miquel Raynal (2):
>   dt-bindings: mtd: spi-nor: Document sst26vf0xxb flash series
>   mtd: spi-nor: Add support for sst26vf032b flash
> 
>  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 2 +-
>  drivers/mtd/spi-nor/sst.c                                | 4 ++++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
