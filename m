Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C5BF64BC5F
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 19:51:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235993AbiLMSvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 13:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235488AbiLMSvh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 13:51:37 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 221C125284
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:51:36 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id x28so6452489lfn.6
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4caiTUPwb5yRD+BikSwZkcJjgHseuGfEKaaNJStw97Q=;
        b=XLQoG/VIsczeHkAcemrUqyZ5KHS+OICYwdB81xqVKZ7g6TLTVA93aLg1O3oZYS9HaV
         jFJmPqyriz9pTo80a6U6d38WPKaq6Id03Z8kl7eA3Uev7QAxe0sGCJ5cOEGPSzOqBbcZ
         onIVqKSRivPaUMZRa6DtcNjzIdjAudhbtEXgBFNmEZGYGKMPG0weDXZZcPJP77dnIre3
         iHFromBBXkEzLBP+ld+3388d9tKiMHfPsWVSayXgGeLoOucKRdL7gill9MyE19edOrS4
         Fm4o8Lqu0mQk30qYKiDKrRtSNFWcPKaEYvAxPmcAqdy2nXGA+jq3UFHuFvH7YnUtUI7g
         Usrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4caiTUPwb5yRD+BikSwZkcJjgHseuGfEKaaNJStw97Q=;
        b=zZflmC1zdvqmT5VXpIda2jBILfOMz1fAjamFOf+7GGCfv+If+3K/cMxSV3LhOm0i6/
         5wVsiB/z+sHNJKXpzxVUWb88Mbb6MpZkqtPz9l+dJ3be4ghCWhES7OcKRNCN/fAus2n4
         2lIYTaCrlQOG9BhJ0/j9u46oUoVD3v7qsdQfdQ4UA/GdpBgqXbVIXSs4xk8C2uXVNMmv
         Hn5iGzw0qoOaNEnHq8apb6qT/Y6SQs+BOnJ4Fs2sTO8VOceCERTazKMLgUk/CkA/HjrY
         T4qfnSpk4ePlh8TZd/rAWrrceD3HRnHDW2aYIJBqmFfeRLEfWo87MhvcCofdAIulExsm
         cxpQ==
X-Gm-Message-State: ANoB5plnzk15DgtkX8Hdt6T/AjMWfBlcqXZ+2//QdHiA5WGhxA0dh+r8
        3ONFP1WY7jJaSDNMzWBzn7vP6Q==
X-Google-Smtp-Source: AA0mqf6E4/sjsn22TId8xaneNkrZpb3Jps/q1fT2KrOG3UfeG50TKQCREt68tsCkvMaIyJX4z583NA==
X-Received: by 2002:a05:6512:b9d:b0:4b5:8237:5c12 with SMTP id b29-20020a0565120b9d00b004b582375c12mr10602415lfv.15.1670957494496;
        Tue, 13 Dec 2022 10:51:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j25-20020ac25519000000b004a6f66eed7fsm473142lfk.165.2022.12.13.10.51.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 10:51:34 -0800 (PST)
Message-ID: <acbdf493-eeef-4eb1-508e-c3cc1a31c886@linaro.org>
Date:   Tue, 13 Dec 2022 19:51:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/4] iio: accel: add the new entry in driver for
 FXLS8967AF
Content-Language: en-US
To:     Han Xu <han.xu@nxp.com>, Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Sean Nyekjaer <sean@geanix.com>,
        =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        Matti Vaittinen <mazziesaccount@gmail.com>,
        Haibo Chen <haibo.chen@nxp.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Clark Wang <xiaoning.wang@nxp.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev
References: <20221213171536.1880089-1-han.xu@nxp.com>
 <20221213171536.1880089-4-han.xu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213171536.1880089-4-han.xu@nxp.com>
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

On 13/12/2022 18:15, Han Xu wrote:
> Add this new device entry in the driver id table.
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> 
> ---
> changes in v2
> - change chip info orders

?? This is v1 attached here. There is also "iio: accel: add the new
entry in driver for fxls8967af"? This patchset cannot be applied, when
sent like this.

Best regards,
Krzysztof

