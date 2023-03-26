Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 472406C9726
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 19:23:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231904AbjCZRXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 13:23:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230379AbjCZRXE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 13:23:04 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4597349C8
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 10:23:03 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id h8so26703492ede.8
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 10:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679851382;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c//xVZOdC41tPmentwWhVn74VlOQ2hi6ybonN1NbtRc=;
        b=P5oihEOZTfjDDQazKlVVdjx4zRYICuik+HNXkq4KfUiIgmkyUjzcSoq0RbOFrpL2kJ
         iRgdkV0/sORCmsUTedpMqaSxA9bVoLczQdGYO+nPWqxkVTzGXT84f5fSZEyaZEk1kZFx
         Me+/6H7Ip+mRTV3HjXzqObHBOY+N+apq+aKDp9bSIyYOW0JGFmWpVpscbYAl8xUBxVKI
         14yALPGawyV0I6TRVY7j/2WyIrBpgrDKxXLv3qnJBrG1Ji9Xqv5SZ3bDaitbm9h5Y9Y+
         LzJlK15aj7VBFKzRnKexRbl8xDnBq1JzDNt1Cb1QbddBEIxbPN5RTaBUSRT2gIA7LB4i
         66bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679851382;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c//xVZOdC41tPmentwWhVn74VlOQ2hi6ybonN1NbtRc=;
        b=rxlbjaVxyl5edMO7xdgBgPa4d8uQSxXjN7EvHh2Qbwc/l67S7MqiJJ2w1V6EpKm04T
         C0kdqT78+8s8SXBK/Je0T3Pxmn5WzeMb1/VorBf8sIeGlPfS52KkZvdoyJFxovcIDOR9
         zTU9wZsnioUKE+JsgJG5vccZTXb0PbIsYKCSh7ArP7PjeVdvDxORssfHqfzgCZn4O6qg
         uEmwA/RyOoME9Fh0rSyahTCIM7rbarCV/A+LOLxrCP0KDx+hhhlp5P1hjgbZ4fPufTTV
         XgsoKE/0swZIYhgA5SPX4GrzFuStIYl7Tz6TyMDL8bGKiaFC/W1S6iGNu/52AJ0XcY7V
         tpcw==
X-Gm-Message-State: AAQBX9cTU7T4NZePcbiYagkemJUbOXgbIrnCP3TCXgCMw9SrnZ1Mj4UJ
        +5ztlylC3N5sDqzpCSeMZ1CVYg==
X-Google-Smtp-Source: AKy350ZkwalKYzOBxeo21t+SzzcLhWq4fDH4NUP1+KX7mCHqW39g5Wrdbos4r+2xR6xaXE5O8wC5oA==
X-Received: by 2002:aa7:ccc7:0:b0:4fc:709f:7ab0 with SMTP id y7-20020aa7ccc7000000b004fc709f7ab0mr10239236edt.0.1679851381850;
        Sun, 26 Mar 2023 10:23:01 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:eca3:3b8f:823b:2669? ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id e25-20020a50d4d9000000b004c10b4f9ebesm13699097edj.15.2023.03.26.10.23.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 10:23:01 -0700 (PDT)
Message-ID: <717bfba9-1d70-ef09-9193-853a57117926@linaro.org>
Date:   Sun, 26 Mar 2023 19:23:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
To:     Shane Francis <bigbeeshane@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com>
 <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
 <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
 <CABnpCuAWm7jh19JKukOquPnZCwHoJispgDPGJzjYy6T_BZSnbg@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnpCuAWm7jh19JKukOquPnZCwHoJispgDPGJzjYy6T_BZSnbg@mail.gmail.com>
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

On 26/03/2023 18:59, Shane Francis wrote:
> Hi Krzysztof
> 
> 
>> So mention this in the commit msg.
> 
>> Then commit msg should also mention it.
> 
> Sorry for not expanding on this more in the initial commit message, I will
> expand on this in the next patch set.
> 
> However I think in general for most modern platforms it can be assumed
> that replacing the bootloader is not always something that is achievable
> for one reason or another

Bootloader also does not use mainline DTS, so where is exactly the problem?

Best regards,
Krzysztof

