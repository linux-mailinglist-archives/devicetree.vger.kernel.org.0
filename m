Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CEF367EA93
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 17:15:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234068AbjA0QPk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 11:15:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234615AbjA0QPj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 11:15:39 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F30C7AE70
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:15:28 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso3844514wms.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pgZz+6PWFo4uW0VORVf3OBAL6wZ6DYjbjKUyaSSYmLM=;
        b=Ort+m9TbQelr2tInwYyQ8i8qHQ9blNIDw8TmQjGTYoR4bUs7fMU1NnbQrZhKPmY7OY
         bnGaPQLEplLrNuPt25RBJHdyb55D63iCHX2SOipQ5m2HVMHZFV1vsn+vdQxU3ZFuFOjv
         3ggvXdOihf0ZvuO7ZituWSGczgLzkhUcp4AdTYssg9RFpXJZg6WqnkyaHR7GzfOzDO6Z
         uZtGy2pVmhKEFQnUtBTDX8Rja8TwXTShtIEIWgM21CKC1YsVaY9gPdQ6wKAZFqgeiMoj
         pADxQ3X+LeP1plXK4RroYiQbxr473gHm9Q3suLR68ArUmJN5R61LknbGQP1KSdt6dNqo
         O8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pgZz+6PWFo4uW0VORVf3OBAL6wZ6DYjbjKUyaSSYmLM=;
        b=EvG2SPileJZpN2EI3qy+ONVDwTMDN1Mw7s50D0OqxRbNu8XEeyF4LABIVqNRpF/aEK
         HHyMpXvy9725L6XIogNdo8URugyKDw6YHZ2SpCqqifyasLZlA/34RZgWd9X5TevzjPC0
         lkQBtNJM/ZJJTywJtpkbTetrsf1vTqvFwPj5UTcDEat8uos5AVuOnGSQ+v+SwaHcq1yF
         zm9mcfMb7cY4aE5p+bnw8lPlyG5ZMIuJOLcq68UI2CGgWMrrUY+mEU1drKcnU72uyCHb
         jYFDSCAGHGRaAdySBsXf0PnGdY8+EiOFTm+lkB2kHe6YcZL1pcPI63GcW0jFilud8LtB
         EMsA==
X-Gm-Message-State: AO0yUKXqJYWqgd5DuRE/TmWixTwnReN0AFsoBsWj8qiWFU75Q9uNAvBT
        fj+12bVUTHuWvfqELvivcIDNyg==
X-Google-Smtp-Source: AK7set8XGssyTqlV8J4exzGzcFmE8vvc7miQvlQUvYrj/PoNPn4D2LcsEEXmO53TfG7v3RdzI+/L8Q==
X-Received: by 2002:a05:600c:4f4a:b0:3dc:16d4:a99f with SMTP id m10-20020a05600c4f4a00b003dc16d4a99fmr13556737wmq.8.1674836127152;
        Fri, 27 Jan 2023 08:15:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ip7-20020a05600ca68700b003dc433bb5e1sm427854wmb.9.2023.01.27.08.15.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:15:26 -0800 (PST)
Message-ID: <a3c3603f-7401-aeb2-4b58-86c3ca778c6c@linaro.org>
Date:   Fri, 27 Jan 2023 17:15:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480> <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
 <20230127075248.GL20713@T480> <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 17:11, Sean Anderson wrote:
>>>>>
>>>>>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
>>>>>  drivers/phy/freescale/Kconfig                 |   1 +
>>>>
>>>> The phy driver Kconfig change shouldn't be part of this patch.
>>>
>>> I put it here for bisectability, since this is the point where we need
>>> to enable it. But I can do this in a separate patch if you want.
>>
>> From DT ABI perspective, it's already broken anyway if you need to change
>> kernel and DT atomically.
> 
> AIUI new kernels must work with old device trees, but new device trees need not
> work with old kernels. So a change like this is fine, since the kernel won't
> touch the serdes if it isn't supplied.

You used the argument "bisectability". If the patchset is not
bisectable, the ABI is broken.

Best regards,
Krzysztof

