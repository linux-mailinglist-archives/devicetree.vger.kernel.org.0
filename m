Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 251E8525E2C
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 11:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358383AbiEMJK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 05:10:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378767AbiEMJK0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 05:10:26 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C30816ABE9
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 02:10:25 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 129so4452544wmz.0
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 02:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BrOxhRUoooC0kH9tEPV399N3JU8sJpv2KsNk4UVb2w4=;
        b=UGSwCrkguUB5SuYsjxnvBojDwnjb2CltVr/L7IlZZ0ptUmLxjMOidyA6cfuhQyO2xE
         B3DzWfJyXnrOEiI6PRDwFreXQIAMcoHx52owWqjvRpcc0PYMcxqGY2T5n9I1XBGXWRs+
         o4fPluGHc3/YD2+QKJ8XrdNr9TD+Gj46NJRBxmjAJ8zM8BXd2BMQ/6R6xiE3lJ2FNjTO
         Sxb3/Tp56b07Sk/Lze/zS8Vl7NgmsekqmMQH0FhH+Lm5ZXsl3UWYXVtNAqJ1c8ns1XJa
         IR9ErR3Sjgs2cyAgnBgANv8+mrch+slFAMTzA/ZkulK/DipcfhTsCRtcMwigTFbjsODn
         fVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BrOxhRUoooC0kH9tEPV399N3JU8sJpv2KsNk4UVb2w4=;
        b=mrWgkvIsRZavLQAKyJHJUHrCRCpRN8Wxq+YOkVnO2uTzyxivyCjKDJi6sFd7gHeSd4
         lcpyj0h5mnanE+JuUDm/UZgpQqyIi6XIz3eamYhyVnVjVQQEa9vn4Jv5Ox22pH6PUyZ2
         Nd0iN3tyItW1Bk+er2AbYjLRKsld4y6pmXMJUzC9L6Lbt98V54ad2NjT8zca0nWg80PE
         JnAHY4YAZBygo23mS3JYSaFU/v6cy34nZOciokr0t8uE/aLlCI8AjZuGz8ywqe38g5un
         XVHCR2XPV1JgyWLklfgXXYfuvKBVqO3hCufPwaeC6bD07WxQck7A5z2AI+uBD53GlBzL
         yCyA==
X-Gm-Message-State: AOAM533xlg6vUaHJVOHt5lu6U8yhLca59uHLlfH0Tn5ai+MDNNfivciT
        oDM/GGdsB76eg0hMH9lHeCSG8w==
X-Google-Smtp-Source: ABdhPJzhMGwirlKWbw2hEK5KLaTvopEtq9k6u9Y/vd9AS6/zhw1siqA75kPP7+4s1kJQP8T3LgB9Gw==
X-Received: by 2002:a05:600c:19c8:b0:394:7cb0:717b with SMTP id u8-20020a05600c19c800b003947cb0717bmr3679904wmq.136.1652433023780;
        Fri, 13 May 2022 02:10:23 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id x14-20020a1c7c0e000000b003942a244f3fsm4694210wmc.24.2022.05.13.02.10.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 02:10:23 -0700 (PDT)
Message-ID: <69c4df5e-6a6f-f74d-349c-bb16e523208c@linaro.org>
Date:   Fri, 13 May 2022 11:10:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 05/16] arm64: dts: mediatek: asurada: Add system-wide
 power supplies
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
References: <20220512205602.158273-1-nfraprado@collabora.com>
 <20220512205602.158273-6-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512205602.158273-6-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 22:55, Nícolas F. R. A. Prado wrote:
> Add system-wide power supplies present on all of the boards in the
> Asurada family.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Tested-by: Chen-Yu Tsai <wenst@chromium.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
