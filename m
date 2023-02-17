Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3045B69A7A8
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 10:00:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjBQJAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 04:00:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229679AbjBQJAf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 04:00:35 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EEE360A49
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 01:00:31 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id l11so2164735edb.11
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 01:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ekNOF1bkOZQJm/qVwvKNIt0dSpLOM3/k1DSdulZe8LY=;
        b=u0R7xCkg647d+PdFtOjae2NNauQmSugx0nA2CnibFYJNb2TqRH6QZUxXuPoW5E5otf
         5x0s6r74XqEw2i+BBZpbvEUD4m8tp3h0qZvZ5cSSKfpQnnaN/Q7Uo3IuuRs+Uo4NTXm2
         sBXp8os91H2PSM7ZiKznGecqPLNTZwVOxTSeOdo3bHJlL1eb4l2+ds3nqHt5UjBKiYQu
         dkL4a/Hj84gZjPHoMjW3gax2UOBzw6ME+5HKDVsqezuk2EF9oJAkCIPjky7SdhwrCbbp
         dKFCpCwcljp/4D2fSuabF0pHcEChhlQr/Mudc4RVN7+XHddW94cgrRCtjdy8QqiLALLo
         1N1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ekNOF1bkOZQJm/qVwvKNIt0dSpLOM3/k1DSdulZe8LY=;
        b=5Yk+5cA1ptI5+WEeNjXtTGYNH67Ec7CaP0NVefWDDfyOG8mxWcKJfeR1d6TDdDy64D
         R+XUb4YDti1YsuY7QINYtR5QyYOevhufPd2gkYecos8Wi/u3z+XABr3PlFA99eMkQ02h
         YZGzXag2r9Q5KYvW/TEBAsF7sMpXnHPINUZfO9V5FTCu4U4ZXDjStIxDzbwqZrKkavDp
         hFaWCo2i26MrTsCfRouUIsfGlaVKC9E5qzR9WtR2F1CB686+YcH3oUttVUuPDLRc8zVe
         uQpfmySUu1pUyrrI0G37JFMNkXsegThGRkp9QbZ72VhuTU+ESZ088bVaG4EmW9VmT3QT
         faJQ==
X-Gm-Message-State: AO0yUKWGyduKDhLiykaTF+MYgyp9Ht29idkMoWzjW17ECjTpqDtZ76j5
        6ZPX53aPeAz9by+UDM+VfkNXQw==
X-Google-Smtp-Source: AK7set/ELRtrQY+LPmu6Ny5BmCpwfAgT22qZ3hPf7KIQmiUV5HJahas5slRjT0KhbQCmxe6/O4yovw==
X-Received: by 2002:a17:906:f28b:b0:870:b950:18d4 with SMTP id gu11-20020a170906f28b00b00870b95018d4mr34213ejb.5.1676624429688;
        Fri, 17 Feb 2023 01:00:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id gx10-20020a170906f1ca00b007ad69e9d34dsm1877582ejb.54.2023.02.17.01.00.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 01:00:29 -0800 (PST)
Message-ID: <943daa4a-8101-d5fa-b38e-97aded3e3b4c@linaro.org>
Date:   Fri, 17 Feb 2023 10:00:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: display: msm: sm6115-mdss: Fix DSI
 compatible
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230216131426.3996378-1-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230216131426.3996378-1-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 14:14, Konrad Dybcio wrote:
> Since the DSI autodetection is bound to work correctly on 6115 now,
> switch to using the correct per-SoC + generic fallback compatible
> combo.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Depends on (and should have been a part of):
> 
> https://lore.kernel.org/linux-arm-msm/20230213121012.1768296-1-konrad.dybcio@linaro.org/
>  .../devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml     | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
> index 2491cb100b33..146d3e36d1c9 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
> @@ -40,7 +40,9 @@ patternProperties:
>      type: object
>      properties:
>        compatible:
> -        const: qcom,dsi-ctrl-6g-qcm2290
> +        items:
> +          - const: qcom,sm6115-dsi-ctrl
> +          - const: qcom,mdss-dsi-ctrl

You should rather keep old compatible as deprecated (so oneOf with two
options - items and const with deprecated).

Best regards,
Krzysztof

