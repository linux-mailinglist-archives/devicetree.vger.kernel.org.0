Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D5364EC9D
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 15:08:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230355AbiLPOIH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 09:08:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229892AbiLPOIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 09:08:05 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15B6A23381
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 06:08:04 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id m29so3399052lfo.11
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 06:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E7rnlHGI8UN0z1G/4uZqIH5FqitWJ4bCQ8PKnzhEumA=;
        b=no9qkEjyPsSwHJ8KWezcBHzFRemjLu2fgQlmmct3Pj5Kw7Mp5cqsq49NkdHb61et4G
         ItQk8HCzJfJCY8+nVduYvzMm3uZUxcAv9LH7LQGt1JYz6WPbBxhhHPOHBP2a6MKv/XzK
         Yamy9iMPIrwf5PLaMLvHpP1JnJ8TYfEF2UZuhrCwHFs8QEVyZ2ES90VOHfK8oJoI5U0d
         0e7cSaJsMs3O9Yk0Q8/eunFUHibgHeSl66FQbzwVMAQ2NUbT3k2CK9sU58DzfCH4HgDZ
         I3S+Rw6LDMbVB2MSGGcthhOxKemJO6hBSmqCy4zt8pvz37roHiCZXKTo7SqoiBO0iW9n
         tFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E7rnlHGI8UN0z1G/4uZqIH5FqitWJ4bCQ8PKnzhEumA=;
        b=R985PhVrJhgv8T/BpqDRPCljHhCBhn5SQiiDeOv5sFJwtILgXUbQVXDWy+zZYetIv4
         bEZA4DDk8z5CgBT3CbFvod9SdQz4msVPW67OeuHHX4E5jFMHw+meoWueWCrUUUy25z+Q
         Anm1b8UhWxuINH3Ax43dRrYBN29GbpL8vmwd1+hSmcuHAjBmgIvmHqR6DvtgIQ0gBdsB
         VJ7cpjEuV1sOHO7bICcvKFwOMSlJks4M4l3wutmvmAPBnBZJHSYXLEv802j6i1zcK2Kw
         TJVYikmiikrfqHbCuu/YIPhFyDVTQ/cYIwFK4rHxv6Jy346B37BW6HdU/VvYzib0zmdt
         tqMQ==
X-Gm-Message-State: ANoB5pkqcANWOz9rbR/zX9w70HBLJjp8pY+duUf+oZ11vFFT+TrDcAlV
        pRmZqq/DoLAsCuKT9qWrhBpyvg==
X-Google-Smtp-Source: AA0mqf4V28jx/U9NcnEY+r7qKoPQzTh7qAeK4cMVSE/XoxtGZ3WdPx2eHidPvXyk3Pi92ZkuYMZBxw==
X-Received: by 2002:a05:6512:3c82:b0:4b5:5bc1:16da with SMTP id h2-20020a0565123c8200b004b55bc116damr11657584lfv.39.1671199682494;
        Fri, 16 Dec 2022 06:08:02 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p10-20020a2eba0a000000b0026fc79fd67dsm163265lja.74.2022.12.16.06.08.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 06:08:02 -0800 (PST)
Message-ID: <22a055a9-a14b-e8b7-84e2-b091a05a3ba4@linaro.org>
Date:   Fri, 16 Dec 2022 15:08:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v16 2/3] dt-bindings: edac: nuvoton: Add document for NPCM
 memory controller
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Marvin Lin <milkfafa@gmail.com>, linux-edac@vger.kernel.org,
        rric@kernel.org, james.morse@arm.com, tony.luck@intel.com,
        mchehab@kernel.org, bp@alien8.de, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     openbmc@lists.ozlabs.org, benjaminfair@google.com,
        yuenn@google.com, venture@google.com, KWLIU@nuvoton.com,
        YSCHU@nuvoton.com, avifishman70@gmail.com, tmaimon77@gmail.com,
        tali.perry1@gmail.com, ctcchien@nuvoton.com, kflin@nuvoton.com,
        Rob Herring <robh@kernel.org>
References: <20221216073141.3289309-1-milkfafa@gmail.com>
 <20221216073141.3289309-3-milkfafa@gmail.com>
 <525fd984-0b67-8e11-d13c-7c4ee1853c4e@linaro.org>
In-Reply-To: <525fd984-0b67-8e11-d13c-7c4ee1853c4e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 15:05, Krzysztof Kozlowski wrote:
> On 16/12/2022 08:31, Marvin Lin wrote:
>> Add dt-bindings document for Nuvoton NPCM memory controller.
>>
>> Signed-off-by: Marvin Lin <milkfafa@gmail.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> So this is a 16th version but through this entire year you never Cced
> the maintainers... You did not send a single version to the memory
> controller maintainers.
> 
> I don't know why it is so big problem to use scripts/get_maintainers.pl.

Although maybe the reason for this is that it was being put in edac
directory... eh...

Best regards,
Krzysztof

