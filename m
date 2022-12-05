Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9617A6424C5
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 09:37:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231801AbiLEIhs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 03:37:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232086AbiLEIhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 03:37:46 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB2764C9
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 00:37:43 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id o7-20020a05600c510700b003cffc0b3374so9402152wms.0
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 00:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GI9jswp1GRA+uH9qwalop7yEM48OSV6515KeCGEoZvU=;
        b=bdiaE6hrJkK9cKFM8to2VhCp+pqCzvtUGrDl7NTDX9trA5gd2PdcY21SbsISLScUJs
         d94RqBX1SJJocD94Fge1AzxMUQAaS2qDHbDizjESm4E0UL+0tf2I5OtE4TAw3EIMJCie
         pTgRmxWI3TDzU6+1Io1u4ecIZ1cWPwd0kk1oImc3GMmyU1gh8UA3YBUWUFkxDhcvhrfj
         d9m5QEpvpuaBqTmOt48UobDqHQpbR6vNEiRQ+c1NJEZHlxBQzDJIKjNcBLxRRds6/4ft
         a6VuNO621fMvgXqYcWM2k4yfcQ8z6qrpjRgNdjwiqtjVA7Y58UiSBAjIot5EHZJb72Dr
         kpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GI9jswp1GRA+uH9qwalop7yEM48OSV6515KeCGEoZvU=;
        b=TRx7hQWAV29lcycRmQ74x9whUc4sClxZQhWYiJGElZKtullRxO+pgXeGbIWEBukd5l
         ptHIRjtui8LNm/S6ofxfQcvxKgaBTANu78hNEHTJZ08ri+ECwyH26V45qvovkTsxgYVo
         qPM1/aBmYmhc/dCNK7PFJv6FEF5s2pSgBhCgB2KUlBi6taHTKJPy4tng7ea1xWhlA4Sj
         9spykS48HGZvwiZD38ptcdiuc/ZEZ9qqw9Er1sXdPfgG94Nf8SD5K8bU/u8k8itTwdB4
         QCU6erQKyQwCQqe1ZKMv/7r/hC9mRAYL1sryxHnglq/FkOkIEojSbx/b9w7cy9Jmf2a0
         GZJg==
X-Gm-Message-State: ANoB5pmSt6yC2JqcPG5M486iGHrCdKZ9/8V5TnEzk2oL9NdBHxDSMYI3
        /CC7prWPRpps7V/YI8+cTuObqQ==
X-Google-Smtp-Source: AA0mqf5VYojR3lq7hf3aCZQy8ydm7vK1TnRD+CW9y6cx6eB3j7k/GJWpwk5khg2iV5guVZchw1gSug==
X-Received: by 2002:a05:600c:1e8d:b0:3d0:2c5c:e483 with SMTP id be13-20020a05600c1e8d00b003d02c5ce483mr43647708wmb.141.1670229462265;
        Mon, 05 Dec 2022 00:37:42 -0800 (PST)
Received: from [192.168.7.93] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id u14-20020a05600c19ce00b003cfd42821dasm18505854wmq.3.2022.12.05.00.37.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 00:37:41 -0800 (PST)
Message-ID: <76433338-6930-24c7-0b11-b00196dd7559@linaro.org>
Date:   Mon, 5 Dec 2022 09:37:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 0/6] soc: qcom: add support for the I2C Master Hub
Content-Language: en-US
To:     Wolfram Sang <wsa@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v3-0-f6a20dc9996e@linaro.org>
 <Y4kvcXTdwImZpaU1@shikoro> <Y42sdXiCIpj2iaag@ninjato>
Organization: Linaro Developer Services
In-Reply-To: <Y42sdXiCIpj2iaag@ninjato>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/12/2022 09:31, Wolfram Sang wrote:
> On Thu, Dec 01, 2022 at 11:49:21PM +0100, Wolfram Sang wrote:
>> On Tue, Nov 29, 2022 at 03:47:00PM +0100, Neil Armstrong wrote:
>>> The I2C Master Hub is a stripped down version of the GENI Serial Engine
>>> QUP Wrapper Controller but only supporting I2C serial engines without
>>> DMA support.
>>>
>>> The I2C Master Hub only supports a variant of the I2C serial engine with:
>>> - a separate "core" clock
>>> - no DMA support
>>> - non discoverable fixed FIFO size
>>>
>>> Since DMA isn't supported, the wrapper doesn't need the Master AHB clock
>>> and the iommus property neither.
>>>
>>> This patchset adds the bindings changes to the QUPv3 wrapper and I2C serial
>>> element bindings to reflect the different resources requirements.
>>>
>>> In order to reuse the QUPv3 wrapper and I2C serial element driver support,
>>> the I2C Master Hub requirements are expressed in new desc structs passed
>>> as device match data.
>>
>> Is everyone fine if I take all this via the I2C tree?
> 
> I did this now.
> 
> All applied to for-next, thanks!
> 

Thanks !

Neil
