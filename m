Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 176A96CBD7B
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 13:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232764AbjC1LY5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 07:24:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232715AbjC1LY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 07:24:56 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 240227EC7
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:24:45 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id eh3so48098673edb.11
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680002683;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Txe7uJQPR2nDK1P+LQfymF0Vj2fh07HQjUTOq/VHeHo=;
        b=CrxI3ylcVubjMUKEXXu8bsXSYOe9+/zZ/uRtLBRgnrUEoB6OlARpwq8++0Ji4S+oIw
         vqrAzDfEY26cPWkYWG54ovQsJN6MMoPRgQzVS9a452iZ31S+kCX2korLcFCWGhPbcRoZ
         Kqxz2jzijcWu+a6rxsyRMbQ3YxaU48iqOH7/4amDr3++qjZic7oJ0LnsH4DGcRNM4uuN
         eLbZyua73hJ3jPeWcc9gxl74sHY0lm3CPY3Hyeh6YEGqcAxkckSpbORTLJP7IILD+/Gc
         UtbUmt5a9+m05K1+o2EtDWEXybefS+gLzcccO7YsBpt1ga4H9Rr4tTNm/qyPJzPrNGVh
         GfBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680002683;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Txe7uJQPR2nDK1P+LQfymF0Vj2fh07HQjUTOq/VHeHo=;
        b=mzZJGee9oD9EGu+n2r8XpvJ4rKANKmsgzslIxSyvyt8aWcd6x3wN5sWRsvvXmsVNKW
         ygfuOMAEV1+0+6gVWGF076ro8cf1PJVzrbzqv6R44tT1roIlde/wyCnr9W+n6dPXjSDl
         bdNxjRpShAtmRh/rmz4Lflf/DkNduACHuC6de67iW7ANmqM+FwLVeqAumpTopLWM1Y0d
         1ujlBjj7HE8e7VX8Yu09NYzaPxlkW4+L6TDN8oagk+7TobFAqZGwnb0aj2rwMMtn5e67
         7gNpc+T/yjDuyaxV97UlVh0/Ndnxjh6jI/6/bZdxARnT3Y6LPp0EhYbP7+t8kCI5pIxV
         /IVw==
X-Gm-Message-State: AAQBX9ezGflZ/AhB65YKq85HjpQ8HDpsZRLD5oqCDxf+pWUVfwxSyrUe
        tf7KzQH8CIIXGc4DuSLvD0wDQg==
X-Google-Smtp-Source: AKy350aeCXuSCaeyTE1+441Z2Q8lpW7oxRtm/f+dtXenGerUN/SITI91MceCYB10iQgW68qgO29f+g==
X-Received: by 2002:aa7:c846:0:b0:4fb:8d3c:3b86 with SMTP id g6-20020aa7c846000000b004fb8d3c3b86mr14403988edt.1.1680002683642;
        Tue, 28 Mar 2023 04:24:43 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id c24-20020a50d658000000b00501d5432f2fsm10880211edj.60.2023.03.28.04.24.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 04:24:43 -0700 (PDT)
Message-ID: <f4ffe354-5d92-bf74-6584-ad53018911eb@linaro.org>
Date:   Tue, 28 Mar 2023 13:24:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [Patch v7] dt-bindings: media: s5p-mfc: convert bindings to
 json-schema
Content-Language: en-US
To:     Aakarsh Jain <aakarsh.jain@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     m.szyprowski@samsung.com, andrzej.hajda@intel.com,
        mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
        ezequiel@vanguardiasur.com.ar, jernej.skrabec@gmail.com,
        benjamin.gaignard@collabora.com, krzysztof.kozlowski+dt@linaro.org,
        stanimir.varbanov@linaro.org, dillon.minfei@gmail.com,
        david.plowman@raspberrypi.com, mark.rutland@arm.com,
        robh+dt@kernel.org, krzk+dt@kernel.org, andi@etezian.org,
        alim.akhtar@samsung.com, aswani.reddy@samsung.com,
        pankaj.dubey@samsung.com
References: <CGME20230328110425epcas5p15549774de4c3a831d59cbe7e5a2c7961@epcas5p1.samsung.com>
 <20230328110419.46722-1-aakarsh.jain@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328110419.46722-1-aakarsh.jain@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 13:04, Aakarsh Jain wrote:
> Convert s5p-mfc bindings to DT schema format using json-schema.
> 
> Signed-off-by: Aakarsh Jain <aakarsh.jain@samsung.com>
> ---
> changes since v6:
> kept hw properties for Exynos3250 and Exynos4 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

