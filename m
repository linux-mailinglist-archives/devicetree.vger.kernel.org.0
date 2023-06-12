Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADDD272BF0B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 12:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234509AbjFLKat (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 06:30:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234749AbjFLKa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 06:30:28 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC91E42BB0
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 03:11:24 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f63a2e1c5fso4832310e87.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 03:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686564613; x=1689156613;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cd7PhI4uncnTBCRMKgoa7sypXa7kqhSnYna6vDQQeow=;
        b=GdctLD9H9VPmHPuJiUagySmf7YhAmbmGilRckwCHBqGuhYTXMbmJFY+2xxoaJORS6C
         /+paOPsYesK5nJPaYI1YzpK5aWVX5HeW6f9lTOpNGcqUqkmTAnxhIwcnQTCYdwn+IRwT
         mpZA+wY+UlzukquwnNDO7DdcRrYODDxW9l43zI7eDZlnLhkBZC5Outvp45EFIgrFalKF
         hu1V5fiAMh6IsyebRXp7Ftp9t4BUeTWWN4GtayDmVWMPFuJ5puLte7rqw6io3k4r/Pot
         UnEfoRsw5Gbf/Mj1rMwt2kvykf59j/lydDfgdhMpa82tqgmhvt0cgSjx4fBtjy+9eu4n
         zLdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686564613; x=1689156613;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cd7PhI4uncnTBCRMKgoa7sypXa7kqhSnYna6vDQQeow=;
        b=LzVt4MANhcOUFAvHgwF+MKSITtQCYVMDYNl9y/Fob9iTHq9AztK7QDEioUEJy1wwxe
         n12L8x++O94DgLGIFL5QOH4ZmGfN5C58IKLC/9HfNMN2qgxqJ55YcUO4uOayba7VOnuo
         iDEONGRW0b1KKZ+axISjaO+uIk1uAvIq/+PlM9AMz0rmJ8VrDBEbZpmw0iI8LZlvVmyx
         O8pYS2dRVPnIDf6RiZc9akKTPkpDnwZyuEyMTjRqfczWQWGzbLJTQ6plk5VNI8OnXs8P
         RQAUPWSNEJrRzhsUQ55yBqW7vDvLKMtwA3VdmlKZSb0Tz3TGF7z4pS4K1IGSXUo/QESP
         DkNA==
X-Gm-Message-State: AC+VfDwVVS6969IlYiEjdia2HgjHNiD3GfyVNTbpvhRuA6DcsjrGkz3X
        BLBr9EWo61sKDIh3rY2TYy1XO3LY5rP2qqqAIMbA4Q==
X-Google-Smtp-Source: ACHHUZ4Y0HfTQsMP/LWxD0BzuVSdyG9mh0VPmXlcP3jMPRUZkYIbvXzz/r2xBtIm3lJM4PEpSXNM6Q==
X-Received: by 2002:a17:906:7303:b0:96f:893:7f5 with SMTP id di3-20020a170906730300b0096f089307f5mr9512875ejc.26.1686564005582;
        Mon, 12 Jun 2023 03:00:05 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.153])
        by smtp.gmail.com with ESMTPSA id dk17-20020a170906f0d100b0097886843f75sm5035070ejb.177.2023.06.12.03.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 03:00:04 -0700 (PDT)
Message-ID: <d816499e-baab-6200-0780-17a8205b252e@linaro.org>
Date:   Mon, 12 Jun 2023 11:00:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: mtd: spi-nor: Document sst26vf0xxb flash
 series
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
 <20230609144324.850617-2-miquel.raynal@bootlin.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230609144324.850617-2-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
> Add compatibles for the sst26vf0{40,80,16,32,64}b flash devices.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> index 7149784a36ac..5a788a429b0d 100644
> --- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> +++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> @@ -25,7 +25,7 @@ properties:
>                (mxicy|macronix),mx25l(4005a|1606e|6405d|8005|12805d|25635e)|\
>                (mxicy|macronix),mx25u(4033|4035)|\
>                (spansion,)?s25fl(128s|256s1|512s|008k|064k|164k)|\
> -              (sst|microchip),sst25vf(016b|032b|040b)|\
> +              (sst|microchip),sst(25|26)vf(008|016|032|040|064)b|\

We don't add new compatibles to this list, one should instead use the
generic jedec,spi-nor compatible. Please drop this patch.

>                (sst,)?sst26wf016b|\
>                (sst,)?sst25wf(040b|080)|\
>                winbond,w25x(80|32)|\
