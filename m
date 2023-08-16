Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7234177E1B8
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 14:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244429AbjHPMe5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 08:34:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244739AbjHPMey (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 08:34:54 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30B271FF9
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 05:34:52 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fe85fd3d27so10738152e87.0
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 05:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692189290; x=1692794090;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yruZKqzLaC+4643Ot4X60prS0Wm0q5EyxySlt1tCThc=;
        b=EY6fQH/mKR7ECTcxYzttcyuzzjs50D7QSork2aIfeBdRu6iYloEudaLTEOl1HxTbbk
         Ht+CJtxx61RMaEakWl0vWkXOg6VcpCgQ16N2oi+WYGcs8RzUqx1xAuVV3QP2jcfs7c5o
         cLOVgpKIh8Lz1iPhQ9hA7pXIcFnCeFjS4xR46NEMMpu3/PYnKAj5/0j/hSOBCZKglrZE
         csUOEkq8P9Yc2GGk2RnGZKuoNGiX8gxYVQmUuJ6JxfcoNeQyIyEdeJ7ShPMU7OdUG+bC
         AcnsUaRVOD/Tw3/e+hc8RJbJqHFLwrULWXWlRIQb072hpFhOTxmnGhNoZiVsdE18wM0E
         dtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692189290; x=1692794090;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yruZKqzLaC+4643Ot4X60prS0Wm0q5EyxySlt1tCThc=;
        b=JvWPyQhakJEoNBSj10Hu4edhdIgUNz1Y0qNX3EJE89PaYms6eVXE1W9IbbY5AQXvdU
         l438fmajGsfmkJhrai0hfSJBhVry78heiNxWaTKdOyk3Y6//Amsi+cI7H1eDY9W+Wobu
         /Qx1oo+YkuoWiVX0/1+dsmS3GhotBaOQii2Bt7IZIiYREVzqj2neRXIgi11kGdA/VPhe
         FnpQ1nJZU/HlySvHYuAL2QcVeCEoqbqjaQ1MHVFqepoo2bN8mMqiO3qfuqHanhK/Kzs/
         YivMjlyDlvb7GVHFrKQNm7rMWGwQu8buKmVOHhLCBQ7lF6K+Jl3+19hXeRDw80BDLIuT
         svgQ==
X-Gm-Message-State: AOJu0Yy6Xoaq9SIt6Pwcl8hNG6254F6SJZeRuzmmWH0r/A+NNGPd0NRu
        uN5Pfvayk25rLCZGW+Xv5clZeA==
X-Google-Smtp-Source: AGHT+IGM+5Kgz2X4N//QD5CWhAuTE4i7Xl3eqvW0P418kkgaL1X4lO0nnZhIcEgVQ6CPLn/Wvn2sLA==
X-Received: by 2002:a19:384a:0:b0:4fb:911b:4e19 with SMTP id d10-20020a19384a000000b004fb911b4e19mr1154375lfj.35.1692189290401;
        Wed, 16 Aug 2023 05:34:50 -0700 (PDT)
Received: from [192.168.0.107] ([79.115.63.44])
        by smtp.gmail.com with ESMTPSA id y18-20020aa7ccd2000000b005227e53cec2sm8278663edt.50.2023.08.16.05.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Aug 2023 05:34:49 -0700 (PDT)
Message-ID: <0011a25a-e096-73ac-9800-9d8e35efdc8b@linaro.org>
Date:   Wed, 16 Aug 2023 13:34:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2,1/2] mtd: spi-nor: giga: gd25lq64c: Disable quad mode
 according to bus width
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>
Cc:     Hsin-Yi Wang <hsinyi@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        "Miquel Raynal )" <miquel.raynal@bootlin.com>,
        "Richard Weinberger )" <richard@nod.at>,
        "Vignesh Raghavendra )" <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20230816104245.2676965-1-hsinyi@chromium.org>
 <6702bac712daab13698b9bb9ad81d49e@walle.cc>
 <5911201a-f703-abbd-3c7b-769f70df08a8@linaro.org>
 <80ec748f37f40ae5c3c3c5d1602681b3@walle.cc>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <80ec748f37f40ae5c3c3c5d1602681b3@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/16/23 13:22, Michael Walle wrote:
> Hi,
> 
>>> like a fundamental problem and that commit 39d1e3340c73 ("mtd: spi-nor:
>>> Fix clearing of QE bit on lock()/unlock()") is broken in that regard.
>>
>> what's wrong with the mentioned commit?
> 
>         } else if (nor->params->quad_enable) {
>                 /*
>                  * If the Status Register 2 Read command (35h) is not
>                  * supported, we should at least be sure we don't
>                  * change the value of the SR2 Quad Enable bit.
>                  *
>                  * We can safely assume that when the Quad Enable method is
>                  * set, the value of the QE bit is one, as a consequence of the
>                  * nor->params->quad_enable() call.
>                  *
>                  * We can safely assume that the Quad Enable bit is present in
>                  * the Status Register 2 at BIT(1). According to the JESD216
>                  * revB standard, BFPT DWORDS[15], bits 22:20, the 16-bit
>                  * Write Status (01h) command is available just for the cases
>                  * in which the QE bit is described in SR2 at BIT(1).
>                  */
>                 sr_cr[1] = SR2_QUAD_EN_BIT1;
>         } else {
>                 sr_cr[1] = 0;
>         }
> 
> "We can safely assume that when the Quad Enable method..". We cannot, if we
> don't have 4 I/O lines. The quad_enable is just the op how to do it, but not
> *if* can do it. It seems to be missing the same check as the
> spi_nor_quad_enable(). But I'm not sure if it's that simple.
> 

I see. Then extending the if condition should do the trick, as
spi_nor_write_16bit_sr_and_check() is called after setup. Something
like:

if (spi_nor_get_protocol_width(nor->read_proto) == 4 &&
    spi_nor_get_protocol_width(nor->write_proto) == 4 &&
    nor->params->quad_enable)

Is this what Hsin-Yi is hitting?
