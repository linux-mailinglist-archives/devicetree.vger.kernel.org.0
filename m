Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7F336C2AAD
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 07:47:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230369AbjCUGre (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 02:47:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230135AbjCUGre (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 02:47:34 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12E9019C40
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 23:47:31 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id i5so8798488eda.0
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 23:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679381249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vud8OdanTIVE8CKcTMVQ4gPfhnpd++tLAO321wwmVqE=;
        b=WU4xX6kjc3o/CIHowPEa/CpBbEe85Iy5kyudkFpNiMq8oQuLVFC0LR45eT7xOc1nPn
         B+CPR33JLOvMNdVhWOaAqIBhWBs6eY9zkPEwPKYJDaNnfiaskWZAzwagHGG55FUuWdfk
         LLq4YteSf4JjlnoFe2v3Q4DxhOqnmlUM+sJzI6xp0FoIsld4WOCuhQrLucf4o/W1gUfQ
         QUX/RuxPad5JQzpuT0JHaT/Y1qhiGNQOqiZ44ivhz2fI+8byWRgZRA35vqHeOWQHnE9r
         Por4lmFx6lu6DhXzZCMkhvxHhCN6KhHYida25CxBS8IUeAv7WjbxOo7seBcmFsV9T1PI
         RrZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679381249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vud8OdanTIVE8CKcTMVQ4gPfhnpd++tLAO321wwmVqE=;
        b=XPwis5YuKxpeOwr+hHaye3lZvx5DL/eKJfj4DnXSlROf7vdTO1Cdi/oByFAzNw27uX
         ByL8eNouN8QQ2smVTwvcgxXCOM00ObkBQi8CaXJMhMKlwDRteKMNtPtqBoC9rSZUcoSG
         0LbZmEshbmlBhm2KTCjxl/ldxdCJG8Uk72XhYpuR8Kz6N7PeLonZHjRd/hlcMLqcPHi4
         obeYPCV63zWUBxNbGxRrMc4nGMX0WR8rCcZ+g3p+XtE8UnIRt4yAuKF5lVYwFg9NGoDr
         1i7M51NkJAMpEWjH2FJGT7M/1kJwToYWAkkr8bn5UDvvAts5UL2Z+/2OR09TGYzTGd3i
         9ozg==
X-Gm-Message-State: AO0yUKWYZzi5fzaUfTRVl4zvS/XploYSc5iQwQGG8qnFpWXB7U1LrnhX
        TTBjCBz0QuNRJO2xUPhVg9qtfQ==
X-Google-Smtp-Source: AK7set/mHtnHjY2cm9ymS5lUjnyMD7P05cMdzN8twXG3Yom40qNsZwuqvW6/nCj/jJdo9I6WMLGfsw==
X-Received: by 2002:a17:906:848e:b0:931:88e8:d470 with SMTP id m14-20020a170906848e00b0093188e8d470mr1907064ejx.23.1679381249526;
        Mon, 20 Mar 2023 23:47:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id b7-20020a1709063f8700b008eddbd46d7esm5375770ejj.31.2023.03.20.23.47.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 23:47:29 -0700 (PDT)
Message-ID: <88368e85-3d1b-63b2-1f31-3a41df1632c9@linaro.org>
Date:   Tue, 21 Mar 2023 07:47:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH net-next v2 03/12] dt-bindings: net: qcom,ethqos: Convert
 bindings to yaml
Content-Language: en-US
To:     Andrew Halaney <ahalaney@redhat.com>, linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        bhupesh.sharma@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, peppe.cavallaro@st.com,
        alexandre.torgue@foss.st.com, joabreu@synopsys.com,
        mcoquelin.stm32@gmail.com, richardcochran@gmail.com,
        linux@armlinux.org.uk, veekhee@apple.com,
        tee.min.tan@linux.intel.com, mohammad.athari.ismail@intel.com,
        jonathanh@nvidia.com, ruppala@nvidia.com, bmasney@redhat.com,
        andrey.konovalov@linaro.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, ncai@quicinc.com,
        jsuraj@qti.qualcomm.com, hisunil@quicinc.com, echanude@redhat.com
References: <20230320221617.236323-1-ahalaney@redhat.com>
 <20230320221617.236323-4-ahalaney@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230320221617.236323-4-ahalaney@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/03/2023 23:16, Andrew Halaney wrote:
> From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> 
> Convert Qualcomm ETHQOS Ethernet devicetree binding to YAML.
> In doing so add a new property for iommus since newer platforms support
> using one, and without such make dtbs_check fails on them.
> 
> While at it, also update the MAINTAINERS file to point to the yaml
> version of the bindings.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> [halaney: Remove duplicated properties, add MAINTAINERS and iommus]
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> ---
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

