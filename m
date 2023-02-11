Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F8E669327C
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 17:33:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229817AbjBKQd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 11:33:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229819AbjBKQdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 11:33:55 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 363EA2686C
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 08:33:46 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id u21so7909526edv.3
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 08:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kx45aI5MoVIFzyTEpOI8RmqbIW54Ij/B0GNnIHLTWaw=;
        b=kAaF12q22GV2jAoFjuxVc17Gxngk9KuA+fuJLgUig0gx6gaMam6BGZ/y+YEyJXVsZ7
         3JjwpZ6rWvQHNyYKtwu1jqja7at/grXLDb94AnRpQxkNV4zcvtv+CbxBulm7HOkYq8Q0
         jotvUZMyTdSNuNfEXcpGguJl4hskq0IW6OwIZ5y0z3W9kuLXOAvomteqlY7ktbFJIdj+
         hdsW08RswAcprTxFBlw9o8EH348n7jr6kdzlGCRUEdEPjn+An593IInWDdamVa4NWHSY
         P6UNYgQOQhIVZ1VSlpALVF375IDml2rWhP8jdbH1Wk43wMHcNjYG6dgNYLIM8XTTVm83
         CwiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kx45aI5MoVIFzyTEpOI8RmqbIW54Ij/B0GNnIHLTWaw=;
        b=UyQbo7jCGnhR8+VXzH+fjhyxcJBu/yP7bOJc0w74nTG2Y3IbAHsgBmtze5oisllWjv
         SFjIqd2QFsNfHoPW55sl29WPYNjSqBKqqwj2q7QntUzXzQsjNAW4DV9pbYvNTFUeAVk2
         L1FMDCcNglThnlIUVajAJIRsjBT2W0H1p44xcgasx+IYp+0jJR7U3/XNCtmt+pbsCgxa
         QE28hJHKjpP2H1j7RC35qzgE7yxWDn5Ir3kj321Akh61UECYqe8J/GWyv9iJpabB9Edg
         bynh603Vzqe7G8dwOn1Izzjt3cqXzdDkN2E8tDFR56TNJ8/ax8vQfOzFnzJk/Ri8tJ6U
         HXzA==
X-Gm-Message-State: AO0yUKWY8d8u/30butOK00cs4NMTLTB5Zjt708pqhV2V6sNJmEgk6YDJ
        Wq9i/kOau94Dv5yT+wR3tvH4SQ==
X-Google-Smtp-Source: AK7set8IQyTpkJ45KUL+RTTH5sucoHYIkehu7H0vxwYZf81qJBhyEoHmznfYTYPaQr9hV4vDMxGgFA==
X-Received: by 2002:a05:6402:268a:b0:4a3:43c1:843f with SMTP id w10-20020a056402268a00b004a343c1843fmr2391061edd.19.1676133224840;
        Sat, 11 Feb 2023 08:33:44 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id k7-20020a17090666c700b0088e5f3e1faesm4041134ejp.36.2023.02.11.08.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Feb 2023 08:33:44 -0800 (PST)
Message-ID: <869e0a8e-f960-afe3-2048-d0a2f2b59588@linaro.org>
Date:   Sat, 11 Feb 2023 18:33:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 03/10] dt-bindings: display/msm: Add SM6350 DPU & MDSS
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230211122656.1479141-1-konrad.dybcio@linaro.org>
 <20230211122656.1479141-4-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230211122656.1479141-4-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2023 14:26, Konrad Dybcio wrote:
> Document 6350 DPU and MDSS.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   .../bindings/display/msm/qcom,sm6350-dpu.yaml |  94 ++++++++
>   .../display/msm/qcom,sm6350-mdss.yaml         | 213 ++++++++++++++++++
>   2 files changed, 307 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm6350-dpu.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml


Could you please split mdss to a separate patch?

-- 
With best wishes
Dmitry

