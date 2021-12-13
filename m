Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB6FF472C58
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 13:35:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235068AbhLMMfo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 07:35:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231733AbhLMMfo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 07:35:44 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09DF2C06173F
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:35:44 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id o19-20020a1c7513000000b0033a93202467so11466336wmc.2
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NrWrAIpe9pazUTQmEvEFnlsq/023oiBWdv/1eOA6n3M=;
        b=MQCEDJBkg3Ajjpv5LYNOqOuZLyedRNoejBeFXa5x14PbGoTrrXzqvnsX17CG2Hb6lG
         MTwIFVwJoy27YGmhJ04sMR7gc1xX5bAA8PPEM4+YrWm2zLMgBdiLGI468k8fzgGMjq1X
         HOK21Ua7FAxgylS8IM2MJYHZfBitWQs3JOFJH0TCe0tWBLVbB4Zqy1xQi34MFTCT3Mqz
         TqQA6XqOPutIzc+KaEB+fAL8Von7GUuEdxEmK1RWLkOBiBrO3mxc7UcWE93NeUnADyep
         K6m6awe/wldz8gwib4qZ6PRPoa2+TKGANOMQGh+Onrxp+X33rok56sRCy7rHEjpLPhNm
         Eakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NrWrAIpe9pazUTQmEvEFnlsq/023oiBWdv/1eOA6n3M=;
        b=4AWcs3U3Q+faFPKnkNaEPRlEUzX9oUUOZGjA/i5UVVYQpJzMJWiPCDi7dO55mbTz9f
         2dj3k80ylMABI4h1rz0SjN1ajL3i81NYiUTRv/fEN0LRlLwc4Oh8MmqApWStBKRXj3Q3
         m3RDb/pFt8wj2r9eo8gHe1qg/wKdmXZKN8KeAo+IJgsbrR3OqMprGSgVcOL3Mz8bmL5e
         F3L3MT0e3BxTfOGfXpD+KXhqGPOvUnwNqNxj6IX6Pe97v6cO9Hr0iD6Tnnu4N4zO4xsx
         BhpzdD8U5tWz4zAgGR4HgiVHbXUplAAYUWzYkzQrXcwX99mwwnDxOh3UnrfJwPfpPHGr
         lShg==
X-Gm-Message-State: AOAM531Ebji7yd7cEv8VXsXYvqOAFqw4r/0UfEP1T/naf1CKFyvQNxN0
        mA0YZpf1iOOAVpxEPOa+69Z2+w==
X-Google-Smtp-Source: ABdhPJx0AXHwveAoTUXAXQKi0oi8oGYQ7n7A1Y9V9fOzQY0WMPHI2NB1pIAmtMURkWklpfKXbmFu9Q==
X-Received: by 2002:a05:600c:1083:: with SMTP id e3mr36980938wmd.167.1639398942534;
        Mon, 13 Dec 2021 04:35:42 -0800 (PST)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id u13sm8260902wmq.14.2021.12.13.04.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Dec 2021 04:35:42 -0800 (PST)
Subject: Re: [PATCH v2 5/8] dt-bindings: misc: add property to support
 non-secure DSP
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     robh+dt@kernel.org, gregkh@linuxfoundation.org,
        devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        jeyr@codeaurora.org, bkumar@qti.qualcomm.com,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org
References: <20211209120626.26373-1-srinivas.kandagatla@linaro.org>
 <20211209120626.26373-6-srinivas.kandagatla@linaro.org>
 <YbcnEp5+4y5qXC60@gerhold.net>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <ac2e9f8f-ea52-5676-baaa-9439e8b35d8f@linaro.org>
Date:   Mon, 13 Dec 2021 12:35:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YbcnEp5+4y5qXC60@gerhold.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13/12/2021 10:57, Stephan Gerhold wrote:
> On Thu, Dec 09, 2021 at 12:06:23PM +0000, Srinivas Kandagatla wrote:
>> From: Jeya R <jeyr@codeaurora.org>
>>
>> Add property to set DSP domain as non-secure.
>>
>> ADSP/MDSP/SDSP are by default secured, where as CDSP can be either be
>> secured/unsecured.
> 
> Wouldn't it be easier to avoid the negation and add a "qcom,secure-domain"
> property instead? Given PATCH 8/8 ("arm64: dts: qcom: add non-secure
> domain property to fastrpc nodes") it looks like you are intentionally
> breaking DT compatibility here, but this patch does not justify why this
> is necessary.

By default all ADSP/MDSP/SDSP are secured, so this property is only 
required for something that is not default. Only case that is 
configurable is the CDSP case where in by adding this flag we should be 
able to load an unsigned process to dsp using unsecured node.

Having said that, TBH When we first added the fastrpc patchset we did 
not take care of this security feature properly :-)

 From security point of view, its better to keep the default as secured 
rather than unsecured in DT too.

With this DTS patch older dts should continue to work.

--srini

> 
> Thanks,
> Stephan
> 
