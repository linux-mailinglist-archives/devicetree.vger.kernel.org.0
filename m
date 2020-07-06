Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B226C215FAA
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2020 21:50:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726867AbgGFTum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jul 2020 15:50:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726799AbgGFTul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jul 2020 15:50:41 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E7FEC061794
        for <devicetree@vger.kernel.org>; Mon,  6 Jul 2020 12:50:41 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id k17so10552788lfg.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2020 12:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NCyDxdA9jbr8iFhSed0FBGtcvm2XFbja7uTb50VYerI=;
        b=HsJWl1n6nz2NaVWTq/rj8cNLUuuf9ZutpSP2XhGHlIQ/D6yK7Apt0pFdMGWj8h2ev7
         aXh5HYYGJIdKjPy2kTov6EuhdwlhJuWvT6m9FbbUnDuEyj2uav/MOmOhfb1Km5Jjh1DX
         1VKyRRtPQfALLXobl9TIEbN5u8+7E8uY28oTN3ZMzGXcFLknH0G0vj9yB19PBq6Gtnst
         lGB2pZiGQjz3GUCxRU3ZskiDMsaRMJhXawZPT71qryXLX+jkjpIYuffuFRis7D3smRO+
         DePhXslskO2xsRfyNJIE8M/eTr6QYljBZf9HvE/RORYRzFXYrL9giS1QlewU29CM5LIL
         PHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NCyDxdA9jbr8iFhSed0FBGtcvm2XFbja7uTb50VYerI=;
        b=XO6uhEKrp0ygqGVtNPiJgbhMgSCYkf6XOTXK7a51otVm8aiBnNEzueP5Mrh36cVDag
         IF97+QD8+Rj6yrwHQAKuvkEb71UyY81k1VzQlEbLC3xZwl5rWK0tiwrDRGjHYZyf4IKD
         4/J7IgUXSsKCzWXkB1eD3RVuQmqH+WoF4lQwc0IiTl5m+fBLlFy7NTRLIji5vRT6X+mX
         6TJQK53k61635DE6FVcb+71+eBv1XAp9mtJFRRpQLS3oC3cjPHtT0Q52+PrztUwufS5Y
         8XtZqTrAc9nrKdOn+IldwsAiR/7eUUaUGGiEYJ4BHkrNBElir2qyH4WAPDCSONjOuNTQ
         NC7Q==
X-Gm-Message-State: AOAM533AoWukT2S1dfrohdFHnJGKh6Bo86daMU0mJBkAqFMY+h/48sXV
        u2UMiA6VFvQ3yef6UQZchzuZRQ==
X-Google-Smtp-Source: ABdhPJxTjEEO35HzKrr2LIMwiPAI7yzu1DxL0zTecG7kI1hmtz7d2aU29lCEeEJ/RJbUqXJULxrfqg==
X-Received: by 2002:a19:7407:: with SMTP id v7mr29481882lfe.4.1594065039708;
        Mon, 06 Jul 2020 12:50:39 -0700 (PDT)
Received: from [192.168.1.211] ([188.162.64.1])
        by smtp.gmail.com with ESMTPSA id m15sm10604335ljp.45.2020.07.06.12.50.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 12:50:38 -0700 (PDT)
Subject: Re: [RESEND PATCH v2 00/13] Enable GPU for SM8150 and SM8250
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Deepak Katragadda <dkatraga@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>, Vinod Koul <vkoul@kernel.org>
References: <20200629211725.2592-1-jonathan@marek.ca>
 <011a1f99-46bb-12f2-ee07-8cd14d891947@linaro.org>
Message-ID: <25c2015a-8a3b-4f21-cf75-0fbe729cf216@linaro.org>
Date:   Mon, 6 Jul 2020 22:50:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <011a1f99-46bb-12f2-ee07-8cd14d891947@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/07/2020 18:03, Dmitry Baryshkov wrote:
> On 30/06/2020 00:17, Jonathan Marek wrote:
>> This series adds the missing clock drivers and dts nodes to enable
>> the GPU on both SM8150 and SM8250.
>>
>> Note an extra patch [1] is still required for GPU to work on SM8250.
>>
>> Changes in V2:
>> * Added "clk: qcom: gcc: fix sm8150 GPU and NPU clocks" to fix the 
>> newly added
>>    SM8150 GPU gcc clocks
>> * Added "Fixes:" tag to "clk: qcom: clk-alpha-pll: remove 
>> unused/incorrect PLL_CAL_VAL"
>> * Added yaml schemas to gpucc dt-bindings patches
>> * Added "clk: qcom: add common gdsc_gx_do_nothing_enable for gpucc 
>> drivers" and changed
>>    gpucc patches to use it.
>> * Removed CLK_IS_CRITICAL from gpu_cc_ahb_clk
>> * Added missing rpmh regulator level for sm8250 GPU clock levels
>> * Use sm8150/sm8250 iommu compatibles in dts
>> * Add gcc_gpu_gpll0_clk_src/gcc_gpu_gpll0_div_clk_src to gpucc clocks 
>> in dts
>>
>> [1] https://gist.github.com/flto/784f1aca761ebf2fe6c105719a4a04ca
> 
> With your patches applied:
> 
> [   56.751977] msm msm: [drm:adreno_request_fw] loaded qcom/a650_sqe.fw 
> from new location
> [   56.760166] msm msm: [drm:adreno_request_fw] loaded qcom/a650_gmu.bin 
> from new location
> [   56.768485] arm-smmu 3da0000.iommu: genpd_runtime_resume()
> [   56.774196] PM: gpu_cx_gdsc: Power-on latency exceeded, new value 
> 49531 ns
> [   56.781730] arm-smmu 3da0000.iommu: resume latency exceeded, 462604 ns
> [   56.799559] platform 3d6a000.gmu: [drm:a6xx_gmu_resume] *ERROR* GMU 
> firmware initialization timed out
> [   56.809260] arm-smmu 3da0000.iommu: genpd_runtime_suspend()
> [   56.813062] msm msm: [drm:adreno_load_gpu] *ERROR* Couldn't power up 
> the GPU: -110


Confirmed to be a firmware issue. With older firmware proposed patches 
work fine. A patch to support newer firmware releases will be submitted 
separately.


-- 
With best wishes
Dmitry
