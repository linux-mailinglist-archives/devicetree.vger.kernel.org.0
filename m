Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17C11601D7B
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 01:19:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbiJQXTG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 19:19:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229955AbiJQXS5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 19:18:57 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 521CF7647E
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:18:56 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id cr19so5473722qtb.0
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nYU7rTPEAVr7UlRz4w03Ayml7YL1jUyGF3byhuRRvcs=;
        b=N/46Q5RwjQTqnog6bmlw2V4H3LpprGsTgg68C61aMj0UR/vmWGaFQ4JBUyl4cIf1gt
         WdflYP9bGL4pK5pcHKsanG3JoJih0v4S9wxut6fbFtYJXgtbbqvByifHJS2oitFI8eI1
         VgL1rCMOrhFpmYV+Usr/rmBlBAZU13yJbdcs4glD4AA+XMZxuJCv71UGcLAcVOjwaa7B
         pSSmGi+1JD8mwfGsxtfAXorb/YW/sD/9q+JRnbTZ1IO3qS1zrFHyDoZK0fD5sgVy4DYD
         cqN43xB0gU9Q7pehT8dtzG9m3VQzikvaMq5NhOdMElZBqHF5koY1YpFGbcMlQfgr+NC3
         RV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nYU7rTPEAVr7UlRz4w03Ayml7YL1jUyGF3byhuRRvcs=;
        b=wplLi69AjchJ4jFu2Qqu/o+QbP91BsPcIwV8JdiuONi5k72OUy/o06nudAMWvl9ma9
         UH1sQpdpcKjMmPWbPrNn/K9nYljxSGc+VpXqKcK6pLKBFVJjNTCaOrt0IYaIhNj73EO9
         Qijk86N+jMO522FuZ6L9bDLfJ/7xCVbe2Tgs8yRK4qXQ6tL3VC12b0ldYLj+jKzVEGKU
         lNyyXhSymlPhL3GZR1sEU8bqTbj7aOsuzBHy6ENNkmp7KdK4bsU5NUVHDEr+O9hQeeq9
         cAb4wecSa/JxuY0Ed95rcAm7246iXhgWu9BqZwU62+kgMS3Jsbr0i6WbMPIdD2M69Lj9
         l61g==
X-Gm-Message-State: ACrzQf2EsZYhaT91JxHic+0KZ8EuwDcsCMuFYA/NcVNBV+ThhKW4nVn2
        QXbiJyzHcRCv7T/9c3Kda5Torg==
X-Google-Smtp-Source: AMsMyM5uqSN7bCCTATnjHa8VHcXIxddF4l7lWQafZPLG9+d8YOV+tchG77U5kW837e8BVocCL0fVkQ==
X-Received: by 2002:a05:622a:184:b0:39c:ca1f:cd65 with SMTP id s4-20020a05622a018400b0039cca1fcd65mr925qtw.565.1666048735505;
        Mon, 17 Oct 2022 16:18:55 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id x30-20020a05620a0b5e00b006cfc9846594sm843642qkg.93.2022.10.17.16.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 16:18:54 -0700 (PDT)
Message-ID: <64038fda-e1b4-44dc-e0fc-3deffd63e074@linaro.org>
Date:   Mon, 17 Oct 2022 19:18:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v6] dt-bindings: qcom: document preferred compatible
 naming
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Alex Elder <elder@linaro.org>,
        Robert Foss <robert.foss@linaro.org>
References: <20220928152501.490840-1-krzysztof.kozlowski@linaro.org>
 <20221017224046.yxgpkhlqv4cykwc3@builder.lan>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017224046.yxgpkhlqv4cykwc3@builder.lan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/10/2022 18:40, Bjorn Andersson wrote:
> On Wed, Sep 28, 2022 at 05:25:01PM +0200, Krzysztof Kozlowski wrote:
>> Compatibles can come in two formats.  Either "vendor,ip-soc" or
>> "vendor,soc-ip".  Qualcomm bindings were mixing both of usages, so add a
>> DT schema file documenting preferred policy and enforcing it for all new
>> compatibles, except few existing patterns.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Reviewed-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> 

Thanks Bjorn.

I was hoping you will pick it up through Qualcomm SoC tree.

Best regards,
Krzysztof

