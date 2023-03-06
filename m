Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE1C76AB8E4
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 09:57:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229874AbjCFI5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 03:57:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbjCFI5P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 03:57:15 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF7CA1F5EE
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 00:57:13 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id u9so35441809edd.2
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 00:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678093032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vNo+uuSekh3H7ze6n9zNYBHA+NkH+zV6npVC4VhhfNY=;
        b=dRWmz5HJXEbQsrxAVOqk7G0LiPKXDbLwoUQJy4TAJIwlDpPercz/1a34Arggibw+ZP
         rkti8UfsyNWoRMhfCedTthBDlwHYui8IHxo0a3ky9rnL1hyGt9DZXfxTePOo3hyVbT7A
         rCXvmkAoiqjtr7Ey4h/KXMgYascCITt9UPH66doEH1YJylLPLh6WC7+MTRJzNthnDJb5
         GS5WfvhEp9lPW0DiiPbr+93GAI9UzUF6hFDv1gypZ3j/b/aKkqHJVWjn4nd1av8OzvE9
         uo2Mm7+uxu8BCTrxGvxJXlsZW5fqugyvnDhX2JgYJrIkc91HthZFJOx4QwKVZtGgYo4G
         f2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678093032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vNo+uuSekh3H7ze6n9zNYBHA+NkH+zV6npVC4VhhfNY=;
        b=adRvYUzkh+QQxBiaF0un4Z9lDRawKVta/xPfV2e5MxN4FfveUHEIEAbN7DCnNNi6R1
         rAD5tSz8kBo8dMTJto9dTD/FFhga1OrIKeraru0Ux1KHF2L09hSDZd/SuOQZvkkZmTJc
         Y6LuzM7/SYJzO9/51uA+F98wAmtqH3zskh2YRkIkopspJ/6FPYl2F7DQkQy1zYngDbPX
         Jlc7qO6wYaCkpe2QaLDZGCaq4l2DLk78v54QdGH5kPtbIpZZH2tYm6SdplQ6kwhPmbUc
         CJKiJR7A2wdsM5P2Kb2QRakozL6Vf4tM6rZud24kxOi1Z+LmsNSeOkVMzSvfsaPX16bf
         vu+A==
X-Gm-Message-State: AO0yUKXwE9muVCtELHDJllt6+vUyDszShdwHiC/BFLrTL4dB5PaN3pGg
        OJcWHEZf3kLihZ5zgx60vVBoYw==
X-Google-Smtp-Source: AK7set9E+9VfxFOl+4OpZLwOQ28HVvZerDzF2iisocUdWkDK+qdGEmtp6f6b2ZsGD8X10GG5v9YNrA==
X-Received: by 2002:aa7:c585:0:b0:4bf:38dc:d78 with SMTP id g5-20020aa7c585000000b004bf38dc0d78mr10444081edq.21.1678093032310;
        Mon, 06 Mar 2023 00:57:12 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:d85d:5a4b:9830:fcfe? ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id hy26-20020a1709068a7a00b008d92897cc29sm4271074ejc.37.2023.03.06.00.57.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 00:57:11 -0800 (PST)
Message-ID: <e105eff0-816e-b9e8-b47a-5c85731c9ba0@linaro.org>
Date:   Mon, 6 Mar 2023 09:57:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 2/2] dt-bindings: display: msm: sm6115-mdss: Fix DSI
 compatible
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230304-topic-dsi_fixup-v3-0-b8565944d0e6@linaro.org>
 <20230304-topic-dsi_fixup-v3-2-b8565944d0e6@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230304-topic-dsi_fixup-v3-2-b8565944d0e6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2023 16:55, Konrad Dybcio wrote:
> Since the DSI autodetection is bound to work correctly on 6115 now,
> switch to using the correct per-SoC + generic fallback compatible
> combo.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml         | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
> index 2491cb100b33..605b1f654d78 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6115-mdss.yaml
> @@ -40,7 +40,13 @@ patternProperties:
>      type: object
>      properties:
>        compatible:
> -        const: qcom,dsi-ctrl-6g-qcm2290
> +        oneOf:
> +          - items:
> +              - const: qcom,sm6115-dsi-ctrl
> +              - const: qcom,mdss-dsi-ctrl

Does it actually work? You did not define qcom,sm6115-dsi-ctrl in
dsi-controller-main?

> +          - description: Old binding, please don't use
> +            deprecated: true
> +            const: qcom,dsi-ctrl-6g-qcm2290
>  
>    "^phy@[0-9a-f]+$":
>      type: object
> 

Best regards,
Krzysztof

