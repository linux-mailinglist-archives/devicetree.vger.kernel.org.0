Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD096FA1D7
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 10:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233698AbjEHICa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 04:02:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233704AbjEHICK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 04:02:10 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96E6F234AC
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 01:01:00 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50bcc565280so6399186a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 01:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683532855; x=1686124855;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H79Zgrm4wbuSOOrJMryaltEQAo3fM+yI7ifmyX2Kujw=;
        b=rcpf8AJ4UNXprSsaIGtdQQKlApX92vPblCB/QvczxGY+vlEj0TrXd7USNO/C05jUYn
         puJVIE9IIdYzGAldLs/6K7A0D6/7DfRA1Kw/NKj5D2AHJR5nYy9rOh5NpuheSgM4/KwS
         g4EowCVCzCUhk/aUbLr9jCDxcK84hlDToICYFMxgFex99fSH69ae/QcN7bdp21VgPej9
         eCJ3tqMOZI1fyRAseqy4XTMwj8BzhcRxw6sYprEd0Cxm6dIXHBDYZT7YF1gOQ6Ky79KN
         Tq+2LHeDCjkgQusAR7TQrKkxZ/VKWVKiOhmDjDnkfWuf22gDJbzT3O3rDnMrb1S/kRdE
         gPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683532855; x=1686124855;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H79Zgrm4wbuSOOrJMryaltEQAo3fM+yI7ifmyX2Kujw=;
        b=Ti2xMjODurNbc25vhK6Y79yiRPqsWE7hatjoyDsm8f+mutcHZUiRvVtmB0L4bDCm80
         1lLPCxKizoxqgzQmvrjdl60cme7vAsAbx3oh6OFjdiRypO5+nFUBdREdWNYsQxWpnbRW
         FPhPW0XP8XxF2v1QBXZh5aXVRkxZcRSLCBbJFbfcEfKggLnoTqiYMWMebPuAO3u1bihq
         9efyf+N2tFM819GZXsydmOaOzMfFen/RQvNu184YylTLNnuKLit6bFBFOjH/QWHnaDU4
         Dmu1w6lbaGG0an+4kAz9vN76EDyYgi+WYGl+KcrUn3WNqEPifcioty2qSqz7iyN2iTak
         v+PA==
X-Gm-Message-State: AC+VfDx6rHV+keNU8SfQ24nQ7P4rMJgY0pgR+FPAK/NLW+TZOzKmFTMp
        YYwH7MeYr2itlDD0TLJdxjYndw==
X-Google-Smtp-Source: ACHHUZ57I31OJMvWDGmpRxPGO4eTDHZQ2yjiOy105SO676F7ZJgK1ga8xgvFa7bVs9qUXmjrjZR0Rw==
X-Received: by 2002:a05:6402:1806:b0:50d:8979:5722 with SMTP id g6-20020a056402180600b0050d89795722mr5939669edy.39.1683532854806;
        Mon, 08 May 2023 01:00:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id i15-20020a50fc0f000000b0050bd19ec39bsm5812756edr.83.2023.05.08.01.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 01:00:54 -0700 (PDT)
Message-ID: <dda6eef1-ecce-a98e-605f-b9640827c6fd@linaro.org>
Date:   Mon, 8 May 2023 10:00:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v4 1/2] gnss: ubx: customize serial device open to set
 U-Blox Zed-F9P baud
Content-Language: en-US
To:     alison@she-devel.com, johan@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, achaiken@aurora.tech
References: <20230508011159.263322-1-alison@she-devel.com>
 <20230508011159.263322-2-alison@she-devel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508011159.263322-2-alison@she-devel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 03:11, alison@she-devel.com wrote:
> From: Alison Chaiken <achaiken@aurora.tech>
> 
> Add support for setting the baud rate of U-Blox Zed-F9P GNSS devices.
> Provide functions that support writing of arbitrary configuration
> messages to the device plus one that specifically configures the baud
> rate.  Override the default gnss_serial_open() with a new method that
> writes the configuration message to the GNSS if the devicetree declares
> it to be a Zed F9P and requests a non-default baud.  Add a boolean flag
> to the ubx_data private data of the GNSS driver in order to track
> whether the configuration message has already been written.  Set the Zed
> F9P to its default port speed if the devicetree does not specify a
> value.
> 
> Signed-off-by: Alison Chaiken <achaiken@aurora.tech>
> ---
> 
> V5 -> V4 Compile out the changes if CONFIG_OF is not set.

Judging by the number of kernel test robot failures, I am not sure if
you tested the patch.

Anyway, don't add more #ifdefs, that's not a correct approach. Depending
on the case, you either remove if entirely or add __maybe_unused. Why
did you need to add the #ifdefs?



Best regards,
Krzysztof

