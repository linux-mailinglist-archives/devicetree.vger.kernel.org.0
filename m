Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86D15B01DB
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230225AbiIGKYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:24:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbiIGKYs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:24:48 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30710D43
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:24:36 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id b19so15395040ljf.8
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=sjy4Jxxxofr/CNtkGo5BunwXXx20LZ0tjJE5uoNvdEQ=;
        b=OGIExj4MjF/TqRB81wkACNnrGKX0bsArf1wuHu+JuLcWpZFBEH/FUO3li6w7en8MOc
         BLUuPzWcKWHu0qkvn4tyyDD35IMJCiPA7kKPIJK/exdObqV1PKYINtL6jklXYs+e6dXj
         F7o1U4W5BNFBcwAv+6CnfLHtMwchNpTO7HnZ87n+zxPlDjZf3x7Ik2H8iWNpXE4+7hmg
         Z7aY3wk5FxM2z9e+KwbcGpO5nUaxq0kXVWtnC3vuSoEEzfC3GF5dDBe6LEvvKCxH/28x
         tQqe4FM+4AdMY5NY0TA5lHOQNZN+Ssm8LnTdaSKmCeGKektk437RS3cB6F/hiOs8LzRd
         igag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sjy4Jxxxofr/CNtkGo5BunwXXx20LZ0tjJE5uoNvdEQ=;
        b=qs1sO+d8TQ9Nh02W+0TCJfvNEEOipHRn1P6rzSnldYUNoEquCgXbqrr2/Z3dg6ZK2Q
         zsDwWHvPM/OJ9jkDiiH69omqV1tEGIKliGWurcM2RidsKQr7DQbN84FJqmAi+t0gXJhX
         limp4ZfppG7TGE7pIAQci9vo2g0xSljZH4+C12OcurJUMT2GapE24iFj04NVFhK48iM8
         NogvFGkaRHDbeAMGYnYu/FEqVrigZvGiCIHI5C7faTgVl2m9o5UQFWC6qU1Do6kCncN8
         sGdLtgl9VCrXVMLug8fYrCCM8BFQs9f73mgmD0cF0BvnzLMjVlmnmd1sNRZkIJzgAY8C
         kURw==
X-Gm-Message-State: ACgBeo3ElmNOb8nqCUMmhJ7rGuCqpkfc9IISBlaul/RAS4W7k+xK7vDz
        nEunrEA4fLFzya5XKPmRGbYrrQ==
X-Google-Smtp-Source: AA6agR7LrS6Wpr0G0GMNseZ4mqfHBTC8LHNpanhfuhXUqUCYOVOmftOUiwx4o+SwlUSvSCvYDrDtOQ==
X-Received: by 2002:a05:651c:1542:b0:249:5d86:3164 with SMTP id y2-20020a05651c154200b002495d863164mr784613ljp.500.1662546274641;
        Wed, 07 Sep 2022 03:24:34 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q17-20020ac25111000000b004946c3cf53fsm2375739lfb.59.2022.09.07.03.24.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 03:24:33 -0700 (PDT)
Message-ID: <115bb541-57d1-23fa-d365-4e239f933d1b@linaro.org>
Date:   Wed, 7 Sep 2022 12:24:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v12] dt-bindings: misc: fastrpc convert bindings to yaml
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-remoteproc@vger.kernel.org, David Heidelberg <david@ixit.cz>
References: <20220907074301.3996021-1-abel.vesa@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907074301.3996021-1-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 09:43, Abel Vesa wrote:
> Convert Qualcomm FastRPC bindings to yaml format, so that we could validate
> dt-entries correctly and any future additions can go into yaml format.
> 
> Use compute-cb@ subnodes instead of just cb@. Add qcom,glink-channels and
> qcom,smd-channels missing properties to make sure dtbs_check doesn't fail
> right off the bat. Correct the name of the parent node in the example from
> smd-edge to glink-edge.
> 
> Since now the qcom,fastrpc bindings document is yaml, update the
> reference to it in qcom,glink-edge and also use $ref.
> 
> Also update the MAINTAINERS file to point to the yaml version.
> 
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
