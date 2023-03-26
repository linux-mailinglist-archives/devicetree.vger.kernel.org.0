Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2E396C95D3
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 16:51:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232019AbjCZOv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 10:51:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231782AbjCZOv4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 10:51:56 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B63BB5
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:51:24 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id h8so25824235ede.8
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679842282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+s3tOPmxxPboBBurR7XBfM3D4IM5gZJk5nXyQfbhXWA=;
        b=VV3VHfKT0tKRtfSuq1Rx1WDEMfmt5m3GN3pbM2oW15Tzukx2Knbj3499bEBkXsDUtQ
         BDkXYusPEcYPXotjc9VSlPx1av9BzbaQEA75cQbM0yscfHxXEzgL6B5MBnKShiDFQUGi
         XrqNzDv+6co7pGe8VcvBlLmCPL+Cdx47NkKoApuxP5A0xDjyc8zeSgnXlM3ghWa0XUZY
         t6RiwIcfUUKZUjJEXmMDFTdwuStKfeql+CPO7C04H84jMcNPUibsO9v9xvk7ikdLvaHu
         apHmzANpy5+e2gsL/C1z4af7ZA67JAPvjP4A/7g4apuPvRWxqBm/6Ay5GEeWNFaiBNR7
         MzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679842282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+s3tOPmxxPboBBurR7XBfM3D4IM5gZJk5nXyQfbhXWA=;
        b=boq8++LYFUzooiY2Y5BlF9RlXBZKFakAEbpTHPfvm4vM/1EVgO+ptgbBIiMfRYDpt0
         6OwqZmkvFVMDjsZQNK3YxA5OocTCxfxGFy1mSC7fpFwWYRPuC5LsMKsUxkCzQN4d6Vtt
         7lunnYBOLwg8vUyok5PwUsgoiFSYPC0hiA1EkljXBgBHXsmh5p/npxoAtMFVJpR71UH+
         /gKxtybY0dObzfGtd+Oioi23eg0NhM9nRfMLtjz9er9kNE3rq3ksqvUVBdood3ZLvOdY
         ZdgbP10jJckgRe96hQLgvVO3I6IBzEGK6yvjjKT0RKzv2tQUIqZmbFZxS76wdDn69CoE
         db9Q==
X-Gm-Message-State: AAQBX9c+f0Nl4P7NW/UJB9hee7MCC010obn0F8+kSOTLofW0EIc1G6cw
        ERj2rHtGKhjY66OvWBL6ozYRe/Jq2TRA9E3w+3w=
X-Google-Smtp-Source: AKy350bvB8YDMFh/w+j6qkDcaEMKOOIcdpCW4jkZGkTENqR/6Jo2c1CXyvQbB5dL7I1kRbH4gI7eAA==
X-Received: by 2002:a17:906:5010:b0:92a:77dd:f6f with SMTP id s16-20020a170906501000b0092a77dd0f6fmr9990766ejj.73.1679842282329;
        Sun, 26 Mar 2023 07:51:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:eca3:3b8f:823b:2669? ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id hf8-20020a1709072c4800b0092b65c54379sm13035392ejc.104.2023.03.26.07.51.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 07:51:21 -0700 (PDT)
Message-ID: <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
Date:   Sun, 26 Mar 2023 16:51:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
Content-Language: en-US
To:     Shane Francis <bigbeeshane@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com>
 <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 14:02, Shane Francis wrote:
>> Please wrap commit message according to > > Linux coding style /
> submission
> 
> Will do, I haven't submitted patches for a while totally forgot the
> wrapping guidelines
> 
>> Unfortunately the reason is not good enough > for ABI break. Replace
>> vendor boot uboots with open-source one or > just correct them (it's still
>> U-Boot so even for vendor one you have the source).
> 
> Replacing uboot is fine for this case, however I can foresee that can cause
> issues further down the line.
> 
> 
> 1. No uboot source from the vendor, we all know no everyone respects code
> licencing
> 
> 2. Secure environments (like android tables), this chipset will likely end
> up in android tablets that have the secure boot chain enable. These will be
> unable to replace uboot even if source is available.

So mention this in the commit msg.

> 
> As this SoC is new to the Linux kernel (not even useable for much it's
> current state) would it not be better to aling on this so vendor and
> mainline DTS "agree" now rather than possibly have to address is in the
> future ?

Then commit msg should also mention it.



Best regards,
Krzysztof

