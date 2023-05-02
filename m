Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9E346F3DF1
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 08:56:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233143AbjEBG4Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 02:56:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229703AbjEBG4P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 02:56:15 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 561B6127
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 23:56:13 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94f910ea993so555795066b.3
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 23:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683010572; x=1685602572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cMeCJ2NShm6ZTiGgtQikplDVEiDe0yEsVKtnVI5fXEE=;
        b=q9WE0AyGzTApjKx3qiV87GdaqHR5cnRO3AdffXtVLHO49Uh7SKpdJAgcBzbl2GJgsI
         f72CGRskjXXpnCHd3EHgsrdf6+bkSA1nH1QfkQcG7hrSCvTrXMfnb4LLb5OHpB8jMZm1
         3no+GGQGcRVt0mkBJDF/2vghjtOTZWn2aCkKuBo+yOmEGq9XZRhkQSEcCtl0QaUkDnUS
         Dmgir69KGGXDH8V3471CE5amtTfxQFzeKGaztSASAVwfuEvbMIm5Xken+vZP0XkSCsZz
         5NJtv71HMbECDCyMrcsfR8Hj2eLhGsuZ3vMlKKWbLtoiSn4bCj/XsZL2ySm64lQFAT1C
         eYEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683010572; x=1685602572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cMeCJ2NShm6ZTiGgtQikplDVEiDe0yEsVKtnVI5fXEE=;
        b=WLZB5xjBOqtm521wktqnc37ZPmcCosI2A+v52f6e5unh7FzyHR6yHXBcjxOe2ghDd9
         MGBkyCmO0LIHmcxqOlwoZMr26sO3ZZmjRCI6rTPTAMFVjq0lEEKkB7ktEt72IdcSri5+
         hVq8dc4lZRDDwiJ3lRifwo0Ggi+8FwsKRHRtULwwjc0hyrNAn1YFTnjF49aU1DCGPr6+
         SbJmB61Z+yOjfypnttG7oOyOCXVu0jlXBu39ctT7hjgRTVchXbLkdVw1mRUZXpSrBDWK
         xD0q2TJxW2aoPbpw3MNYL6SSljYP3odIOZ/VXYlVylPpPdd+Q4TaqUq+VTQqTIiL3NXv
         U/Gw==
X-Gm-Message-State: AC+VfDxJFTOjQCx+44eGM5TfdhtqHDTZxEru1XJQAplQTgC8uh1E1XT4
        ETX0DthxTyXDuukqCgrRExYJaA==
X-Google-Smtp-Source: ACHHUZ7IBiBQhS5PV1n6M6PW7tmCSaGkU8KxrDofJo7tM0O57AIR6ctpkhs4MFrt2pInzvRnNs4Ywg==
X-Received: by 2002:a17:907:d1a:b0:960:c5fe:a36a with SMTP id gn26-20020a1709070d1a00b00960c5fea36amr12193247ejc.61.1683010571796;
        Mon, 01 May 2023 23:56:11 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bafd:1283:b136:5f6a? ([2a02:810d:15c0:828:bafd:1283:b136:5f6a])
        by smtp.gmail.com with ESMTPSA id u10-20020a056402064a00b00506addaaab0sm13042728edx.32.2023.05.01.23.56.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 23:56:11 -0700 (PDT)
Message-ID: <43eefa39-8fdc-fe12-82f8-e01e4a384b3e@linaro.org>
Date:   Tue, 2 May 2023 08:56:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: Make -cells decimal
Content-Language: en-US
To:     Andrew Halaney <ahalaney@redhat.com>, linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230501212446.2570364-1-ahalaney@redhat.com>
 <20230501212446.2570364-3-ahalaney@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501212446.2570364-3-ahalaney@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2023 23:24, Andrew Halaney wrote:
> The property logically makes sense in decimal, and is the standard used
> elsewhere.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> ---
> 
> Changes since v3:
>     * Treat all of arm64/qcom at once (Krzysztof)
>     * Dropped Konrad's RB tag since the scope expanded
> Changes since v2:
>     * Collect tags
> Changes since v1:
>     * New patch (Konrad)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

