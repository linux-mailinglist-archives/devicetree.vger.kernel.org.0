Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B44E5F33A6
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:34:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiJCQeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:34:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbiJCQeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:34:21 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5653B360B0
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:34:20 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id u16-20020a05600c211000b003b5152ebf09so9366217wml.5
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=qG4WMVC2GOPeuFA3uv9SImVoFd5RFWwZ9NVNPkz9lHA=;
        b=J9PsI8bg+7YED6kBVrOY6eDDHbooOlBNQQvL+09kdp+2RVwjE+SoS/J61LTM1/vMW2
         2XuSEceDCDHeNWVDYqAIU2ooFQJaHaxatVWobjRGAwSEuFG/vqEChBGh0TYjgEPuS5A0
         sHs7+2KXEAN7mu1vdqx1n1htJP2qhWtS03pTb+SqDo4LT8H8Pdb61N6Tskf6Ezcr8JCB
         GQogtfkYjG5lvEGhCXfqk0v2NvM+1A9dfIuPXOG8wsdGfA1W0jXNJFB3YyAWtZt4kDXe
         dH2amlWdqMKMMx3f7zsD2XA7Iol6cBSZo9TM1mC25u1fZPwVnit0jKv86sSqSAqPHWRe
         7jEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=qG4WMVC2GOPeuFA3uv9SImVoFd5RFWwZ9NVNPkz9lHA=;
        b=pu3DDYM7rSGLk5pSK4iaaACWmmQaeYRFnwgk4pn0dupKgRMQA2HlFKNn8Ql+hsstSa
         TbFc7wR83rPjpEMyIRUoIsdkGVZmE0PTz/OMoknGDJ7rpz3QHCmD/9TZd9AJoxy8Wpdx
         +u8Acv3NnPnIF7O6ukc+50WxXwSQMPeziZV6ecyxXEKSKmLqsUStVeVULcwT3jNSEut4
         /GvhychKI2LeZYveAUq1K+lbTnEmqpKyADx6kLGPRvs1WjzWBnrkeeM9JDRsmQKQXetr
         G01klVmzMzsIVdge6wdenmau3PUqtGdh7AshW0CCBxORih+i4C52pgLByluXGg9+Y8wz
         hf8A==
X-Gm-Message-State: ACrzQf0wz2jAFTpZSNWo7AZSpAOdEzbMLenEM0z2Ab2XrBGcUribP6ae
        xz7Ifv2ciGGh2nFyWj99JVB3Rg==
X-Google-Smtp-Source: AMsMyM7iFWEI/w97g5rJonmbHn1vj9xqp9W9iqnFFZbGSZzOsjfhQj2gW2nSXXLCawQ/gVyoah63bQ==
X-Received: by 2002:a05:600c:354c:b0:3b4:a328:1412 with SMTP id i12-20020a05600c354c00b003b4a3281412mr7163932wmq.145.1664814858958;
        Mon, 03 Oct 2022 09:34:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id l18-20020a05600c2cd200b003a63a3b55c3sm18083145wmc.14.2022.10.03.09.34.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:34:18 -0700 (PDT)
Message-ID: <159774f4-0067-e3ce-4ba2-bb30f6d73055@linaro.org>
Date:   Mon, 3 Oct 2022 18:34:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 05/23] ARM: dts: qcom: apq8064-ifc6410: pull SDCC pwrseq
 node up one level
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-6-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-6-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> There are no need to add additional simple-bus nodes just to populate
> a single pwrseq device. Pull it up one level into /. While we are at it
> also fix node name replacing underscore with dash.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-apq8064-ifc6410.dts | 18 +++++++-----------
>   1 file changed, 7 insertions(+), 11 deletions(-)

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
