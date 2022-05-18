Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85E4252BD4F
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 16:18:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237371AbiERMsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 08:48:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237470AbiERMr3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 08:47:29 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F24A3BF9C
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:46:38 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id s28so2428539wrb.7
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TqvCPF23Ms20FFQ5TlXnBSrzpH8LW6nALjmeWYnhReo=;
        b=DSgUV6ToeN1MSryHL/tltBh6f9mKpkryoPaBlsNHGYMCXLXqkxMktmfdStBq02SZGa
         oygT1vN282zL0iPelZlIx5NuwBLtndPSzLExgCVdiKR89shaWf9sYVBtBvuUp1DqknXJ
         pPajFqfQ96pLqv2TyZ+uEt2IeEKCnKNftr4ufmHYLT5KnUauabiHJ2cHa4w//+GrkOtG
         H88+SZdtpUi/TiR+iopdyL9D2JPRurqfmRI19Xd9otkcGO8QFoc/eqerdmvdRVnf51LJ
         NLgAPIiwXBMKYt7sL6EsK3bd9V2M1JCWOcp4aJbbPCahjwhXCxohuIk0yUrl+2V4bVUV
         VJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TqvCPF23Ms20FFQ5TlXnBSrzpH8LW6nALjmeWYnhReo=;
        b=O3JGxV01lnVqqSTlQluYgCCDsj/XNLRSc/HgGlco0r03hX+klmE+w1/OVCKFmq9Mtq
         55sf75LSgO3ieAXopXo9h7+1ylxULkWEZwpudsjRl2VEix3WS/CRdY9zxVVLjKHTgEtG
         NfJy5UVwQIxFfGsRgpwO/j2oW8vWfIdV0QSU6tZhQ2RWgdrnz5BpoqfFZORHmsW1RePx
         K8NrYiYvSOXIEGjuvmoFp0tJDWQsHdpmBuMzONhm4JJwd+aDv/E2sGtgs67u1iYovvyw
         W9l+Im2p0Vz3+VW0Jh9YySd4fa3/30JgA26aRY8s9D4OM4ALxC8WcGwEdQ7NoLNr72Nm
         ye4Q==
X-Gm-Message-State: AOAM530MBHDQPhGf2N3H/dpDVEOhoDZDR9ZwgbKyn9HauPZMA9gULHwH
        loNyEU+L43f9Lb9EQpM9p1sEVw==
X-Google-Smtp-Source: ABdhPJw9hqTJXrzAyDQDtMUJVh8D+qdxxxXPxX90fAkVu57sAotRgHnTkS6DQrnAhMKsrAUyaL74OA==
X-Received: by 2002:a05:6000:786:b0:20d:6048:71bd with SMTP id bu6-20020a056000078600b0020d604871bdmr7847076wrb.358.1652877996745;
        Wed, 18 May 2022 05:46:36 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ed2f:f020:713a:278c:9b87:86fe? ([2a01:e34:ed2f:f020:713a:278c:9b87:86fe])
        by smtp.googlemail.com with ESMTPSA id f1-20020a1cc901000000b00395b809dfd3sm1676759wmb.12.2022.05.18.05.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 05:46:35 -0700 (PDT)
Message-ID: <916c968b-773d-197d-4e22-2fcca805ceba@linaro.org>
Date:   Wed, 18 May 2022 14:46:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v9 1/2] dt-bindings: thermal: k3-j72xx: Add VTM bindings
 documentation
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Keerthy <j-keerthy@ti.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rui.zhang@intel.com,
        amitk@kernel.org, kristo@kernel.org
Cc:     rafael@kernel.org, linux-pm@vger.kernel.org, vigneshr@ti.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220517172920.10857-1-j-keerthy@ti.com>
 <20220517172920.10857-2-j-keerthy@ti.com>
 <783127cf-79cf-90f2-4200-30db56a1fd7c@linaro.org>
 <9417e665-c1d4-e82c-5c55-a2c5860cc453@linaro.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <9417e665-c1d4-e82c-5c55-a2c5860cc453@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2022 14:42, Krzysztof Kozlowski wrote:
> On 18/05/2022 10:27, Daniel Lezcano wrote:
>>
>> Hi Krzysztof,
>>
>> I would like to pick this series, does the DT bindings have your blessing ?
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks!


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
