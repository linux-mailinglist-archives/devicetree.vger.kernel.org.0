Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 654BC655A39
	for <lists+devicetree@lfdr.de>; Sat, 24 Dec 2022 14:19:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230445AbiLXNTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Dec 2022 08:19:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbiLXNTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Dec 2022 08:19:03 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67093DF8F
        for <devicetree@vger.kernel.org>; Sat, 24 Dec 2022 05:19:01 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id bf43so10388928lfb.6
        for <devicetree@vger.kernel.org>; Sat, 24 Dec 2022 05:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l964Sz7PrS9bd/FwgahSBxYZ+/O1sM00ru1BQtUwYy8=;
        b=NFKISZG/4i4oQz8EFFmQS9FFmD+qNf7DPMInWvW155471LReeh7n37d2a8yuaou3Db
         yj5817LkRVASVLKC1Mbnz2GzF+vVeIfLw1EE6skJSb/zLXGyGpJFEEP9cFF+KU0ba6CO
         UmfGwAgykU6hLAv8RnUVIVUeKQWyeIe3TrLCpflWUlKOOyll8z1pbelaFz9aIDJZAgWV
         xuf/x9Z7PJB7M9Tsed+M7ZKmAzNtj9hZWr5CoAy6W6m5Y+WFe+sQJLtafFt9TTjfsxn7
         ia7FHU2rLbT9jdV/MqizUIGdT9vjz6xyaf1WJeEGhJgZaZ9b9GROWhd4nwuVvGqz8zrH
         s7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l964Sz7PrS9bd/FwgahSBxYZ+/O1sM00ru1BQtUwYy8=;
        b=ymsapAOpa+xWZISH6q2/pCMjKKkwxOFerLyeY5rfe3lsqPhcvv4qBZFgWYGidasTuZ
         1BmxSWxo54n6ytFr1/bAjCKQ312kHaiHgypoYckUcLA3MIFvBj86bh7HsaFJ2bLWNFx1
         5UvQtE2XQAYjNzYxXdpgOUoaOWJM6sOD306U+to/O4f335BMDTmC2S+Av4xnJfoLEBHN
         gBsIwnpImm1X+5/4C4hT1aNHS0KXfDK9Vg0kgJyxCCWjr+mBZEepjtWmFXFpDctpxNkm
         r8rKRiZ2INk1fFHXT+67xybWCSwT9s73lTMM8TwA+j1FwMgxXTVicbUyCu9fWMUHyyzS
         vlXQ==
X-Gm-Message-State: AFqh2kqjE4qRxpHL+OMWxcIz6dbyIfHTWIEXyl1TjDWrGEgXIEokg6UY
        zaS1f5ybUis4/4cSHIQLA3PvDw==
X-Google-Smtp-Source: AMrXdXvD4flfN9Rdg5Kmm7mAde8jIetmVIvRx+e1lChO9BX8AOwzwl8AB+HpaSOvkDcxgk/hYyGrDQ==
X-Received: by 2002:ac2:490f:0:b0:4b6:eca8:f6ca with SMTP id n15-20020ac2490f000000b004b6eca8f6camr3238637lfi.67.1671887939762;
        Sat, 24 Dec 2022 05:18:59 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h13-20020a05651211cd00b004a2511b8224sm926090lfr.103.2022.12.24.05.18.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 05:18:59 -0800 (PST)
Message-ID: <9d97247a-a921-bc7e-94f5-dcc583842a42@linaro.org>
Date:   Sat, 24 Dec 2022 14:18:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1 2/3] ASoC: dt-bindings: nau8822: add nuvoton,spk-btl
 property to dtschema
Content-Language: en-US
To:     Francesco Dolcini <francesco@dolcini.it>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com, David Lin <CTLIN0@nuvoton.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>
References: <20221223170404.210603-1-francesco@dolcini.it>
 <20221223170404.210603-3-francesco@dolcini.it>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221223170404.210603-3-francesco@dolcini.it>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/12/2022 18:04, Francesco Dolcini wrote:
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> 
> Add nuvoton,spk-btl to configure the two loudspeaker outputs
> as Bridge Tied Load
> 
> Cc: David Lin <CTLIN0@nuvoton.com>
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

