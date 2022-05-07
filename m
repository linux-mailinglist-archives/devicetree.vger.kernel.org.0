Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B678051E890
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 18:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241566AbiEGQnq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 May 2022 12:43:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233705AbiEGQnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 May 2022 12:43:46 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23183DFB2
        for <devicetree@vger.kernel.org>; Sat,  7 May 2022 09:39:59 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id ba17so11825624edb.5
        for <devicetree@vger.kernel.org>; Sat, 07 May 2022 09:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3RaGIEkFZ5kFwejARghyQPxVuZ6S7Es2HKyT9T6H500=;
        b=YLKyP/rkyLr+K3S4ZkNTbwsnDF2Ff/J+boIRAnUamlOR2kdpNTDMQtFlkHoBq9EgyS
         pPSTkaUV9V7WR7HDlaF3L/mfGFFg7QA6/+sDXBAGmJVVSSbWSh58LuM6PG3qP4OKD2cc
         R7JdVp9wgYg5pXt/U7laVLErBwUsH0dVHJjHFLlROiZNzUwAEtz2UkOWhgU8SqqbKfS1
         GWKBl9FVONvZvHkEciMakLRyIcMIoJ83ric8Yq0XGaCG2WtmeQcfytbSxhlMGpFm4n2m
         BAiud96OpVjSmDTridqoaeW+q0kCAhGsJVv85eEFWk8pt7kVKcImUfiAsTQAHUuxyMyp
         0hCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3RaGIEkFZ5kFwejARghyQPxVuZ6S7Es2HKyT9T6H500=;
        b=Yua4GGsPFYHl3KABfKU+iHarmDcntXHuOe2LBCJ2vfUFy6iTKtDPutzVVa+ByL7wJR
         52AY7tWXmoEzzuTluF8TiN9d+gjTWWEgV0yjZ17XTqEfA2wwfwojIwbgLnI853w+AAKB
         mlpF/Frh4upPXlGDe4tiyyzAlqLGeVA3V/hX42Q7T1SUFEmGzuvhRsbGHdktcNz65g3Y
         xnHG0//w2roqrvno4sRFN6I/xfkqFp19XuSVcB0Dyzsm/oRGX+LM1w/dszEthlv6eXwx
         R3XiMtoZeT1mGNYJjvrzy3MssaDm9jRyeXjlQ511a5L3nA6VWZCAt/kt8a9JewclKJVr
         3M0w==
X-Gm-Message-State: AOAM531Iz60sjHIy4tkX0e/E1amf95QogaI2ugiSsLZghCgkuC2P0XSa
        ztgFDIhEJefBzjJS6/QjUmcQcw==
X-Google-Smtp-Source: ABdhPJx1RGLQG0UVi15O4+i+wscoev2RL4M9r98bpjBTUzTyGjI1J06DBXH7U2oKxPUQTe61zYtEVA==
X-Received: by 2002:a05:6402:2318:b0:413:7645:fa51 with SMTP id l24-20020a056402231800b004137645fa51mr9263748eda.201.1651941597740;
        Sat, 07 May 2022 09:39:57 -0700 (PDT)
Received: from [192.168.0.233] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id hy5-20020a1709068a6500b006f3ef214ddcsm3124802ejc.66.2022.05.07.09.39.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 09:39:57 -0700 (PDT)
Message-ID: <0403bb46-689b-fcbc-e23c-d0bd3d5024b9@linaro.org>
Date:   Sat, 7 May 2022 18:39:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 04/11] dt-bindings: sound: add Arm PL041 AACI DT schema
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org
References: <20220506140533.3566431-1-andre.przywara@arm.com>
 <20220506140533.3566431-5-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220506140533.3566431-5-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2022 16:05, Andre Przywara wrote:
> The Arm PrimeCell Advanced Audio CODEC Interface (AACI aka PL041) is
> a peripheral that provides communication with an audio CODEC.
> 
> Add a simple DT schema binding for it, so that DTs can be validated
> automatically.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
