Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F36FE581486
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 15:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239070AbiGZNwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 09:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239077AbiGZNwg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 09:52:36 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EEDB24F0E
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:52:34 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id p11so17916905lfu.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VdNg6q8J723SMFE6ZQQCYGOqGdURmHAHReIWq/4Rgig=;
        b=JolIlpkNt6o+ueX2zNM4yFRAmbfGHxnWWJYVj9v1pnBP2RFRWhl2zgHU25XzZjNTEv
         5nejim9DXOWzS3ZH9IVYQ9PpA+gvATiFY5IYPsqJ4T9xJD/xkJ48z2th0GFus9wHHBvS
         dveyJnOVmOE+SAdMdJqlVrjYTOtHnPnCYXfNPcIARwfB5Mi3RQJLqoZXMdmM5ZGYfzqC
         SaiC+5zzgT9A6iLfVWB5leeqTFGOHjTRwO8Yt2x15X1ltMnhOv8FY/jc74JWrQxNUlV5
         /Pc8RMTIecxSYNGUfsJQI7/GgrDj2QFuzgAZVvJ7e34TlH2sPf+4vL4/hybr2HaosOiF
         5dTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VdNg6q8J723SMFE6ZQQCYGOqGdURmHAHReIWq/4Rgig=;
        b=SbqT0tgJ9shUnevPfz77tJLoD6xkxH/KMcgoGZSJRPkOtLIJK++G7vFil4CKYVqnI8
         lHFSH8UF47VKJjP7mUWdAIqSSuiDn6f45W7iJWG5QCBQeTkHw4wIC/P4FwAVKpC4GLly
         UhVAAYREQmsWqxme5Ww4ni+o5+MBN2/l9WQzxUMkBrwGWD+mEJiyGwKtnYp4ozqlfo7H
         bWqrqVTaWDj+Gn3P3EnDKyP31gKn/cflZE9EEU5zEBY5ToQOldGg8I4RLfB5TerQ/Pvy
         s44a7rO3FALGVoQNW2+EgaqM8shqEEsByc7J3bRA++eMpKjuprwgJK5sbIYJ9+U12psz
         A1Ww==
X-Gm-Message-State: AJIora/uMVmEHzk6hk1yrW/ktdRWyW7aAdiAobhcyQlpqhy0mDAaCNHd
        AraBQ7K1mxVOe/PlXy/nuV3cEA==
X-Google-Smtp-Source: AGRyM1s2WMBqRGRZp41IF+YOjNpKC+v+Zf7LpX2yW4k/kj+aGW2kuOAEu62/r0B7/iM+9y/jmL9emg==
X-Received: by 2002:a05:6512:239a:b0:48a:77e0:f5b0 with SMTP id c26-20020a056512239a00b0048a77e0f5b0mr6066222lfv.656.1658843552500;
        Tue, 26 Jul 2022 06:52:32 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id i4-20020a2ea364000000b0025dec0c29bcsm2700088ljn.26.2022.07.26.06.52.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 06:52:31 -0700 (PDT)
Message-ID: <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
Date:   Tue, 26 Jul 2022 15:52:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
 <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
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

On 26/07/2022 15:44, Jagan Teki wrote:
> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 23/07/2022 22:43, Jagan Teki wrote:
>>> Add power-domain header for RV1126 SoC from description in TRM.
>>>
>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>> ---
>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
>>>  1 file changed, 34 insertions(+)
>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
>>>
>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
>>> new file mode 100644
>>> index 000000000000..f15930ff06f7
>>> --- /dev/null
>>> +++ b/include/dt-bindings/power/rv1126-power.h
>>> @@ -0,0 +1,34 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>
>> Dual license and a blank line,  please.
> 
> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> the issue with it?

The headers are part of bindings and all bindings should be dual
licensed, so they can be used in other projects.

Of course if copyright holder does not agree to release it on BSD, then
it would be fine as exception. Also would be fine from us not to accept
such bindings. :)

Best regards,
Krzysztof
