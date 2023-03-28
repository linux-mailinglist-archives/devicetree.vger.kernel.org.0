Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAA5A6CB9F5
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 10:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230445AbjC1I6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 04:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjC1I6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 04:58:40 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C3D1421C
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 01:58:39 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id ek18so46553377edb.6
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 01:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679993918;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kpvilR/XMH01vCvH1yrllb4SROq3hX6QXJn5vfFvDPQ=;
        b=ivg7HcYSurzEcIJRyhtiqosZF0S7xNoMozSq8GQm95XA21gcNFA49bqhGKjvUkbUXH
         fPx0/XcFg9c5k5qK0KQD/Hb2Kft+M+FGVCZRg3lVSDzjfXWs09vQH0QTBUrUTGqNnnoH
         IN/42FTPss2XbI60ljcHBqsSZxOyhhh9M05y07K0zmryARMdhOx9BNHaGNOdLzYDfDhL
         3FiGIpxqxXcI2eOLqFzb5LGiTw2jX8B2cGgvhvR5JWTqpGezbapiwH4Aa7GglKygYT1l
         pXJ4q/fkgony3UAyTUUzv1omdqizfg8kpw+Fmj5ET9Dv2BQ9EvGT0dqI8MXccYrG3pK4
         /WdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679993918;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kpvilR/XMH01vCvH1yrllb4SROq3hX6QXJn5vfFvDPQ=;
        b=0saEFqDgaf/v/T1KzM3VgqlFueyiVC/M+SRAYO8yZ/QRM3Q9v5sY4sZeuOTqemDMuh
         6s2RKd16CwL3g5VNWzU2xeeZeklIaKTLY9rxzbs0fULUBpZXL1w+yy49qWqmfRE6ebIc
         biRxOGmcNgSIj9a3eKcVEYI1zJ32eLCuMn7/TtMOLgbxHKkHDlQSU9eooVDUZJISPv5g
         yfDsm94mwEf0X6SM3zpBIO/dmWl1F7WB1e3++N5J3S2Uo+yfrmJTIGVafD96oY72vx4/
         gYfhn0xBlqymtrqOIcBrH/Lx+V3Yt7XdfNTu5yk27UjEIJ4W9DXW5452+5eZdiSn5Dm9
         30Dw==
X-Gm-Message-State: AAQBX9cBO2yT2AezAZQ4vdWOWTD3YCky1vNOOwJabKGfxAGrbn126DQQ
        ab8COGbIhoJWREV1AastIf47TA==
X-Google-Smtp-Source: AKy350YCad6dmgcHiPby31nO1lCTaRrcmAnP6WSKHPXvnSI4p36XgIeKIaKsXzZVY6YOXxvI+VZyEg==
X-Received: by 2002:a17:906:2f96:b0:932:8cd:1021 with SMTP id w22-20020a1709062f9600b0093208cd1021mr14701563eji.33.1679993917953;
        Tue, 28 Mar 2023 01:58:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id gy24-20020a170906f25800b00930445428acsm15283740ejb.14.2023.03.28.01.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 01:58:37 -0700 (PDT)
Message-ID: <0824738d-d431-bb4a-16d8-e4e4064969c5@linaro.org>
Date:   Tue, 28 Mar 2023 10:58:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4] ASoC: dt-bindings: alc5632: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        daniel.baluta@nxp.com, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org, leon@leon.nu
References: <9490b5ef-3068-fcbb-0105-baf3839c21df@linaro.org>
 <20230328083347.54958-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328083347.54958-1-danascape@gmail.com>
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

On 28/03/2023 10:33, Saalim Quadri wrote:
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC.  It might happen, that command when run on an older
>> kernel, gives you outdated entries.  Therefore please be sure you base
>> your patches on recent Linux kernel.
> 
> Apologies but, this is the output of get_maintainers.pl, is there something that I missed?
> 
> I am currently working no 6.3-rc3 as my base kernel.
> 
>> saalim@pavilion:~/workspace/linux$ scripts/get_maintainer.pl Documentation/devicetree/bindings/sound/alc5632.txt

It's not the correct way to run it. It should not even work at all -
there is no alc5632.txt file, so I really doubt you run it exactly like
this. Anyway:

git format-patch -1 -5
scripts/get_maintainer.pl v5-*

and you will get a bit different results.

Best regards,
Krzysztof

