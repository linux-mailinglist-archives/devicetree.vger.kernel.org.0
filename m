Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B63F5E8AE1
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:31:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233593AbiIXJbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233588AbiIXJbm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:31:42 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33EA3E6DCC
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:31:41 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id a2so3707967lfb.6
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=5rscM5XvwmdOxNPQZNzAl1dOmorwIbTtRyq4vefSzdw=;
        b=I3AXROfcmn/zW+lyqq6w9e4NE06ugN5ta6kw5Egi/4FmWZhRw2eXUCNhvji1qW9OlM
         4RmWMYhNR1k8xR1lC5LDSpX8ufC/IRbVWjiM1YnuP0tR76YmcspCDvUYxEDXwMOmQ7Tf
         UsyLtgJ6+4BxtqZ3cCHUoc+cNd3jtBwnriOiSSXOsdffHjMSgvIaE92NvIs9UYCo3bkx
         1BQJnMhQpPx/vwKkQ6WJpJS550uhzZd6iSxqpGWG5wIMD8QG01NVNbRSgN9uEuGKJcKu
         OcheYCC/A1mSdiN1AxztvLckKQpEG97jnKtLHzbFgpourCCbt3D5Ue1RJjmlVX/PMxw7
         IjOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=5rscM5XvwmdOxNPQZNzAl1dOmorwIbTtRyq4vefSzdw=;
        b=GIZf1C/A8hr+kM2m3ue12+BOPQF+tnmuaORxNkFToc/uBd+0SJT5qR0IZBnwk0/IOi
         czMPqfODRW9D0y4qDgkFQ1j7fWJ/cfjT4/0GcX1NnhKERD6bur9T2A7Z/lLyO0UgNbY6
         /htlQy6FGvxl7IGzEX/KvD1B+EdOzKvjZtN/GeIyVcdZ6sgKthZia2NboIFDhxNcPVRy
         CTJulfEATcxhDoj50H/70Lakcenx6VfR16/sPIpZouxoMi9hkL4eEm2ahrjER6AbSRpz
         dD7dAW3f/EJd2UwVpWTQ8OdDuDzzDZCv0iuUfYjh542ah1ydLwyE0TTIS/fNdS2zjc6y
         lS2w==
X-Gm-Message-State: ACrzQf1bV9irp17Uoe94miPL3+Px5H9X1FYLISqlraANlTpbL73RtxeT
        CqidCMhCWLlJ0+Zj+SJAQmcYqQ==
X-Google-Smtp-Source: AMsMyM4EC6wd5/bWnZTp6EeunB8JP70YVzB6TjbOfM1WCR3eV2z1G7Yauc1c1cLEz2Zz6asjx+JFIQ==
X-Received: by 2002:a05:6512:1191:b0:49f:220:b7d with SMTP id g17-20020a056512119100b0049f02200b7dmr4397551lfr.244.1664011899570;
        Sat, 24 Sep 2022 02:31:39 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a27-20020ac25e7b000000b004a03d5c2140sm948248lfr.136.2022.09.24.02.31.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 02:31:39 -0700 (PDT)
Message-ID: <1e7a38e7-0202-7a2a-6a41-4d4312fb76a9@linaro.org>
Date:   Sat, 24 Sep 2022 11:31:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 6/9] arm64: dts: qcom: sdm630: change DSI PHY node name to
 generic one
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
        freedreno@lists.freedesktop.org
References: <20220924090108.166934-1-dmitry.baryshkov@linaro.org>
 <20220924090108.166934-7-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220924090108.166934-7-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 11:01, Dmitry Baryshkov wrote:
> Change DSI PHY node names from custom 'dsi-phy' to the generic 'phy'.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 +-


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

