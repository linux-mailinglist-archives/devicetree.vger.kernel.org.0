Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC4F25E5BDE
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:09:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbiIVHJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:09:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbiIVHJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:09:25 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C84B2B72B8
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:09:23 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id x27so13257952lfu.0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=fdU+qDCTMkdaeX40r7uWCv0WDwyM9etWaQkDLtVaVfs=;
        b=TkgfNylJjd2tfS6/kfgtNpZVv4Fy3kaOFE4217Qe+Zl5cNQu40IU3b0TSIcdVqeFXM
         SgB8gYfezZrNjuUJ30Re1W5vbssWaRTkzt4wP8MkjK14QN4q20jXtSapVoAgytU5NfAH
         MD0GcafHVBHbTTob+vuBsX5Kg8TJ+6u6M4cgWnHubNQFnLEmmIfWuXqqQ9mZzjyRS6Ua
         0xAw1pGjMUiFVnOOYkTNdXGcGLKFW9DjZtSBmpF3+BDLKKYOwEBCEJfeqVV6iP8NFzLy
         9zHQkOfQXi+Og+bL/Af0YGEZGNfPC6y2NF/ofQeIfMklMKVSAqF5BXGo1Anq7Cd1dlEo
         79Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=fdU+qDCTMkdaeX40r7uWCv0WDwyM9etWaQkDLtVaVfs=;
        b=EE2jN++FPIF9Rx9JEt6Buybu4e/b6uDAO+HRcdg3rtRVZ3EKeEiqnpx8CkVJYof1Qx
         rLGM+IUdXh2Hpl9ZHIMOkRlAkUPv3r6xWRjXLLIEQy4wMogVdiyjuXzlIHX3HU+Q1ZhC
         4ZZAOa/I3P/jq1q7e8LMb//z/niWZ98+pwlRCaIFEp5uspZmhPYsP6fqObiSdPeexrRD
         S3TaHpfjCVtZKtjZdTMhyNTv3DNOTFthiBQPMwW2BHKWNBVMVHHDfd148kfM+hgvpnLP
         NfYCfl49Mu6Tqkt9xwNHJP7rhLodZRHEKGgOCe7JTtDKbaxjg75fZ7q7hIXXIzPbNrOp
         sY3A==
X-Gm-Message-State: ACrzQf318d+noycmVhjLk1NRDdrMm85uf5f/0AK3nTyhcamiU9kFSabW
        iG40+GzGSUQJta1FGUV+ofa48A==
X-Google-Smtp-Source: AMsMyM6adfYIDSbUrcA3oF6/gUwPhD5O7dg+pyUfeWfeKT8MgY0ktd0AJOEolKnX0oQ29zf/8cfjFg==
X-Received: by 2002:a05:6512:6c8:b0:49a:1765:335d with SMTP id u8-20020a05651206c800b0049a1765335dmr666411lff.29.1663830562050;
        Thu, 22 Sep 2022 00:09:22 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b15-20020a19644f000000b00499fe9ce5f2sm788699lfj.175.2022.09.22.00.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:09:21 -0700 (PDT)
Message-ID: <4eec5b31-1c8f-062a-75fb-6cd1ce780d14@linaro.org>
Date:   Thu, 22 Sep 2022 09:09:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v7 11/12] dt-bindings: display/msm: add missing device
 nodes to mdss-* schemas
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
References: <20220915133742.115218-1-dmitry.baryshkov@linaro.org>
 <20220915133742.115218-12-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220915133742.115218-12-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2022 15:37, Dmitry Baryshkov wrote:
> Add missing device nodes (DSI, PHYs, DP/eDP) to the existing MDSS
> schemas.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../display/msm/qcom,msm8998-mdss.yaml        | 12 +++++++++
>  .../display/msm/qcom,qcm2290-mdss.yaml        |  6 +++++
>  .../display/msm/qcom,sc7180-mdss.yaml         | 18 +++++++++++++
>  .../display/msm/qcom,sc7280-mdss.yaml         | 26 +++++++++++++++++++
>  .../display/msm/qcom,sdm845-mdss.yaml         | 12 +++++++++
>  5 files changed, 74 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml
> index c2550cfb797e..f749821725b1 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,msm8998-mdss.yaml
> @@ -43,6 +43,18 @@ patternProperties:
>        compatible:
>          const: qcom,msm8998-dpu
>  
> +  "^dsi@[0-9a-f]+$":
> +    type: object
> +    properties:
> +      compatible:
> +        const: qcom,mdss-dsi-ctrl
> +
> +  "^phy@[0-9a-f]+$":
> +    type: object
> +    properties:
> +      compatible:
> +        const: qcom,dsi-phy-10nm-8998
> +
>  unevaluatedProperties: false

Your example should also include them (unless it's removed on purpose?).

Best regards,
Krzysztof

