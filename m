Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 794E34F04B6
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 18:06:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357694AbiDBQIe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 12:08:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357690AbiDBQIc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 12:08:32 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B599125C86
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 09:06:39 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id dr20so11663366ejc.6
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 09:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2dLCpFjGJHcbliLHP8vYjYtyDcLFIAxcHG+FWPlYX0Y=;
        b=tBbneEJqkuWEmHvvIZ2sj5QjCxHGS/7MF+6hk0BfAE8Xwu14gShr3VDv9Mdxg+Nu0L
         PBWZp0jZXBL2NekdL4AVdzt5ZswjSTTAOmS2JJhNXmmwX1hKTWhiCpmf63LX/AQE+UtY
         y10dH21hYS4ZUw9S3dHRaGIpAN6S5pQeH3zOTfIl6Gj1aBMiyGH9Ud0wiDh7JBY+1zRz
         /0JANA/gvz/x7iDVE9OVEmHqb7f0/BIa815oh6GRJKVwguhCA+BrgGH6VYvwZ9p5VxbP
         8vqh+aIKx4jkPkQngehsTaqVvSG2klXmfuGhFtyp/dmQ0vCrIN08vKgGIrMEK2S2ZzVd
         1yWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2dLCpFjGJHcbliLHP8vYjYtyDcLFIAxcHG+FWPlYX0Y=;
        b=UxieH3taBOwU0wCij2AajOVAuWb9NdbyB18MCRE1W0HAnYwqmlkN4gdj5SMcQqAz/X
         hDgbBBt62M0mCahNO0TjlWP/XqzbS+zxhl1Yr6oFE2ge46u0Hu180KELdlDMs9uEnR2q
         yGyosAdol9UNvfvcPphNUY8KpCcH1toa0Wguu9T8UFvexWSfFnrQe4SpA/ourKQ8eZTx
         38DDIIhCDefPIrNE6Kr01gWxfaYVB2oWX5RhzIXWIh8s3gFf+6r42lzdoUxeFlmkD07F
         kB2aM9RI7zX6/7lhDcC/ooucZsPEbhvu89kXsOwj+USioTZYwdXeORbSy3OyUa3hNIMj
         rjqA==
X-Gm-Message-State: AOAM532BFux3vlgDgDZoWMg9FwjKI7jnX4WybgYmGB+zAvnmzboEU1AF
        YpyVqN7j6hw0kyqlhE8u4WBu9RU6SfP1udG4
X-Google-Smtp-Source: ABdhPJyjLMYxJ0JD5o8civ66zWl9Ru0vm3ZudlXy8sQnWNkm60+Uf6naquLmpxZS2J/JRuxzyTi5Aw==
X-Received: by 2002:a17:907:d8d:b0:6df:b214:392a with SMTP id go13-20020a1709070d8d00b006dfb214392amr4305563ejc.669.1648915597714;
        Sat, 02 Apr 2022 09:06:37 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id u25-20020a170906b11900b006e08588afedsm2209474ejy.132.2022.04.02.09.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 09:06:37 -0700 (PDT)
Message-ID: <871296de-76f6-c587-9000-ce38ad14f519@linaro.org>
Date:   Sat, 2 Apr 2022 18:06:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/9] dt-bindings: soc: apple: Add ANS NVMe
Content-Language: en-US
To:     Sven Peter <sven@svenpeter.dev>, Rob Herring <robh+dt@kernel.org>
Cc:     Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Arnd Bergmann <arnd@arndb.de>, Keith Busch <kbusch@kernel.org>,
        "axboe@fb.com" <axboe@fb.com>, "hch@lst.de" <hch@lst.de>,
        "sagi@grimberg.me" <sagi@grimberg.me>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-nvme@lists.infradead.org
References: <20220321165049.35985-1-sven@svenpeter.dev>
 <20220321165049.35985-3-sven@svenpeter.dev>
 <40f7c074-198a-5ce0-02b3-e6042975e228@kernel.org>
 <692ae417-f0c6-4932-95f3-2a0984df5ad0@www.fastmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <692ae417-f0c6-4932-95f3-2a0984df5ad0@www.fastmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/04/2022 15:05, Sven Peter wrote:
> Hi,
> 
> thanks for the review!
> 
> On Wed, Mar 23, 2022, at 12:14, Krzysztof Kozlowski wrote:
>> On 21/03/2022 17:50, Sven Peter wrote:
>>> Apple SoCs such as the M1 come with an embedded NVMe coprocessor called
>>> ANS2.
>>>
>>> Signed-off-by: Sven Peter <sven@svenpeter.dev>
>>> ---
>>>  .../bindings/soc/apple/apple,nvme-ans.yaml    | 75 +++++++++++++++++++
>>>  1 file changed, 75 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/soc/apple/apple,nvme-ans.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/apple/apple,nvme-ans.yaml b/Documentation/devicetree/bindings/soc/apple/apple,nvme-ans.yaml
>>> new file mode 100644
>>> index 000000000000..e1f4c1c572aa
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/apple/apple,nvme-ans.yaml
>>> @@ -0,0 +1,75 @@
>>> +# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/soc/apple/apple,nvme-ans.yaml#
>>
>> Do not drop all code in soc/apple, but please use respective subsystems.
>> Apple is not a subsystem, is not special.
>>
> 
> Sure, the code is already inside drivers/nvme/host but I'll also create
> Documentation/devicetree/bindings/nvme and put the bindings in there as
> well.

Yes, please. We have also Documentation/devicetree/bindings/nvmem/ but
it seems its entirely different stuff.


Best regards,
Krzysztof
