Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 724D06CA12D
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 12:22:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233600AbjC0KWS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 06:22:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233616AbjC0KWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 06:22:10 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 763BE5FE8
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:22:08 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id i13so10688759lfe.9
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679912526;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xJlIsfoTYjsZ6GqEn0YXkCelW0/G1Ux6mbNEFEOUwXQ=;
        b=W9H4AzXgPK1GXam44qBCWJnDLzwiWFbKLQV+HEAdgmkgmkgTsOokQKUoOev1DAn4aM
         ohqy1ufIr4O25ITK+4KjaXSB/mKpUXVoqOr6QVHcefj/Lt6EPk/QADOVVkeQ0ttOOfCJ
         te6VQx693yAxbp0dJ5xkiaXEdvnMydXv1I98cjvJxrA/RqAaV4lhHfN5x7zsQhk++rtw
         YVVsX/uwwjmpYvxhl3EHO6a6YersmRncJ6kHsZsvg22+eKQ0fAJLPjqP2bNidSUc3Y/l
         OZAXy2+2IM6Cnz53HXewePIuEY6UABDJQWXtPA1V0wWnKa2eBNKQRR2Z/EmNP0aSe8iN
         rf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679912526;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xJlIsfoTYjsZ6GqEn0YXkCelW0/G1Ux6mbNEFEOUwXQ=;
        b=kS6L+Yyz2b6HKnhtgyg9e/CLN3I2og5y27lt2gIgW82kSRUekw4gZtsh7gD0r0Nz17
         hrpZFczNNpoty00vJ/9pDiTVFwoJ3VPq78sCl6//JTQKeLthUr+Bzu7Xqr6AjumcVeqB
         NJX3Dw+G9ZVh0FR90HoN+g/zuolISo3L26kqVgjY4Qv0wlifwaggAm3kJi1/F+QgROL9
         mpySyaeVIh3HzZ8vob4pP+N62F00fCAYRnYXmEWJO5vNV5w0Ua56SdrnBjH8lURI0rdt
         uteSiwfYgQS0hvHrr0tVhEdCRd6L9imoC/Iex/Lu9LqFz/YDhZP4I6T5VxuSQ7wLGvo1
         yt1w==
X-Gm-Message-State: AAQBX9cKb3DotXvhy7c7llVvN22Kzcts8A2Aon4oZ0M/cwiYnvJ5fmQF
        Vcuj7Ojj58thuT0ZFMSelp4JacpvOOtQF6IF1Dq/X9tn
X-Google-Smtp-Source: AKy350Z0Jupm5iA4/JrEES0lolDFIVw5iJo2iljcqwNzZKMsNa1r/CwSrn8GiQyWJoMsAYMXooWM4Q==
X-Received: by 2002:a19:7404:0:b0:4e8:3fc7:9483 with SMTP id v4-20020a197404000000b004e83fc79483mr3419046lfe.23.1679912526443;
        Mon, 27 Mar 2023 03:22:06 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w3-20020ac24423000000b004e977970721sm4378102lfl.219.2023.03.27.03.22.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:22:06 -0700 (PDT)
Message-ID: <5cf3568e-e378-cf38-6350-21e787866cee@linaro.org>
Date:   Mon, 27 Mar 2023 13:22:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 08/11] arm64: dts: qcom: sc7180-trogdor-lazor: correct
 panel compatible
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org>
 <20230326155753.92007-8-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230326155753.92007-8-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 26/03/2023 18:57, Krzysztof Kozlowski wrote:
> innolux,n116bca-ea1 is not exactly compatible witg innolux,n116bge, as
> they have their own driver data.  Bindings do not allow fallback:
> 
>    sc7180-trogdor-lazor-limozeen-nots-r4.dtb: panel: compatible: ['innolux,n116bca-ea1', 'innolux,n116bge'] is too long
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r5.dts     | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

