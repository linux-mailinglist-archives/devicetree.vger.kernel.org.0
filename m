Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EFC9534A7B
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 08:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbiEZGuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 02:50:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346298AbiEZGt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 02:49:59 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AF7C34BB0
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 23:49:58 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id f9so1330666ejc.0
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 23:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=XCAsRM09jtriElzMaRXuyR7jPV9coelWngvvW7T8czY=;
        b=RF4TBlKa0wU1x9vOdBMDQyXMIY377I+Z1SajP3zYMcFdP1S2VH9yvLApP7Y/saeZUc
         sris9Jl4q0e0rx/D2u7UPeQeP5OvlxCIV1Bwlu9k+lPkJE7J0mlaLOrbiVnGel1ubSJ8
         ZJs6WAfJ0xsVmeq9zY9jPDIDdxI/4P9UcRWzF0WPiEKAKk0MXIy4SOpXRuvlY8MCNX/F
         tp5lfjCGirbOhmsJSP5FxrCXnqZSReWK08l/bj4FmUdl8MNrlKi8Joz9XlWc7mwsWz0V
         TSwf1aBB2fVxHsWSIMk1+LYieExHkCFx5XxnDV0LpsOj7j3GPVGGVEMPY2KtTlyd2EDb
         7uhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XCAsRM09jtriElzMaRXuyR7jPV9coelWngvvW7T8czY=;
        b=KSrb13vUMyiKCvYjGMFTzUrG57E/lp1aLbhs4s9WF4LfOPHcJamsFTM4fT+LhRFoH2
         dDBlyByoicDOJwBaGJLevFRI1X4JqhyQga5+XGw/ghSQfc6pST/DK38rLt1nNOLAHOR0
         yIo2pTWiqd98yH4DxTyES1VHXVqOvB+9BdP0ZJH4E90SPLrnkrcAKbd2d1rXRqQFMUVP
         W9Z78j452P7KnULAPO4EiPu9QHnf3zxQXRkmkWUru/X0TlvmfOchSX870NvMYtCFADi0
         a3K+Mq0ImKbS/tAxSMD3kO2cUhKnVbWmWs0BsgZkz6ubcsFgW3HeE6JL+H9Llg5WNg+v
         CN6Q==
X-Gm-Message-State: AOAM533WSdO10IKVBSl079AxQ9amlYoF/6hny5kUbUQG4Z1kmff+29s6
        bDd/mhgFNLz/KmXGkcZzKNiX9Q==
X-Google-Smtp-Source: ABdhPJxifC25NIFivkw6AmYBXme8eX26Os49kwiNPDiGsKfQ4HhZ4LKX6LyalI1DvkFoShknZ2u+LQ==
X-Received: by 2002:a17:907:3da1:b0:6fe:aab4:e7db with SMTP id he33-20020a1709073da100b006feaab4e7dbmr26406892ejc.1.1653547797043;
        Wed, 25 May 2022 23:49:57 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t15-20020a50d70f000000b0042617ba63a0sm391552edi.42.2022.05.25.23.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 23:49:56 -0700 (PDT)
Message-ID: <7e34f80b-d9e9-28ac-5a09-ba2c8875f4b1@linaro.org>
Date:   Thu, 26 May 2022 08:49:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] spi: dt-bindings: Fix unevaluatedProperties warnings in
 examples
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20220526014141.2872567-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220526014141.2872567-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/05/2022 03:41, Rob Herring wrote:
> The 'unevaluatedProperties' schema checks is not fully working and doesn't
> catch some cases where there's a $ref to another schema. A fix is pending,
> but results in new warnings in examples.
> 
> 'spi-max-frequency' is supposed to be a per SPI peripheral device property,
> not a SPI controller property, so drop it.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
