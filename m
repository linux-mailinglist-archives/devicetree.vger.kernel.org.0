Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7D0C6E35C4
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 09:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230222AbjDPHfS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 03:35:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjDPHfR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 03:35:17 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 936B4189
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 00:35:15 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id c9so17478128ejz.1
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 00:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681630514; x=1684222514;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=icX7XcjgtMlnWNSDhGEw7WdKTxxAhEbhQfNXI8m76Y4=;
        b=vibBW6PQ+EaKqIBQq71PKTlnKp7fV//esgy33nWyejQ/ATRzkiffQiOb2/z+ONu4RK
         aNHP625triaHRYsSwC+Xf4dArh93XLlIA4k/h+yPKWplI06VgpR5KhV/G94NSbwjOwhL
         eYXntEANg/HhqtGjivvBviTfXdGPqNROivoz0btR4spOhwDuhGEFFF+wweIrJSU75Dpd
         sSMpwKQ4Jm+bfQ/8tP/JvAlaiktHtc4rqsCVb9yUlFhCG1uXfnqyOI6bYPljbzdeWmWf
         G7bWuv+w401tSV6xvPE5rn3mnmZZUONlcn7JfQxgD4vRkwVN99SSsAIzPXHrAf39Hwvg
         J09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681630514; x=1684222514;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=icX7XcjgtMlnWNSDhGEw7WdKTxxAhEbhQfNXI8m76Y4=;
        b=edzIa8aAdzOPxLMVMjOXDZL4uIS45NCzbaABj8E5Oj4hQsBtsWrxNNQUZYAX4F9+iL
         wlujk5hnb0/9Jpwpe1X8LE0wXcYn3hmtF4mfuPOM+E2VJvK/j8Jl4dmxtNaRYUe5pHiq
         bXu2CFEp/M3zyDiKP34NHh1P+gA9JhgSYk94B8vyzhDC/ogMlG+6bpWR82EQz9kdw7Yt
         hllzSn7pPvhFJM7p2gnFIe0/DnPPDzog4AdOKPQMCGD14VYRrQS7cqS3AXDO+ck40ws+
         T/bLkmAGlLqxazj3igvFVXEOpjZXtvmb2dRNaO2bahN8JXn7gQg6jt6fL5DwOBWiWxBh
         oyIw==
X-Gm-Message-State: AAQBX9cf0QOjhMTV7uBJj++wkllRQfxPiDGZSCA7zoeSs8czvWRTF7e1
        7MzLCCAIgi46u8mq0LTF34diUg==
X-Google-Smtp-Source: AKy350Z6hU3qEZx11q55aIR3AL3dSOwTSbZgHQbm6OzEf9c10TYRQsseybowILHqI6LzRHRJnZR1ww==
X-Received: by 2002:a17:906:3e1b:b0:94d:69e0:6098 with SMTP id k27-20020a1709063e1b00b0094d69e06098mr4514622eji.45.1681630514005;
        Sun, 16 Apr 2023 00:35:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:29dd:ded4:3ccc:83db? ([2a02:810d:15c0:828:29dd:ded4:3ccc:83db])
        by smtp.gmail.com with ESMTPSA id hu17-20020a170907a09100b0094ee4fc2840sm3141869ejc.45.2023.04.16.00.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 00:35:13 -0700 (PDT)
Message-ID: <92d0f4c7-ed53-5d84-3955-08d1ab8bbd98@linaro.org>
Date:   Sun, 16 Apr 2023 09:35:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] ASoC: dt-bindings: wm8753: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        daniel.baluta@nxp.com, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        linux-kernel@vger.kernel.org, patches@opensource.cirrus.com,
        robh+dt@kernel.org
References: <5d629ff3-c5ae-bd00-e70d-8c0d58365ce3@linaro.org>
 <20230415201246.1200683-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230415201246.1200683-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/04/2023 22:12, Saalim Quadri wrote:
>> You choose unusual bindings to convert to DT schema. It is fine but
>> honestly, less useful, with limited impact. This is an old, 12 year old
>> binding without users. Maybe it would be even removed by now...
>> I suggest converting ones which have a real impact - have users in DTS.
>> Otherwise you will be putting quite a lot of effort for no real gains...
>> because what is the difference between this binding being TXT and DT schema?
> 
> I am converting these bindings as part of my GSoC project where I need to convert
> as many files as possible during the given tenure, I am slowly trying to read files
> in other subsystems too and will push patches for other subsystems too.
> Is it fine?

In general it is fine. I wonder if we can change the goal of GSoC? I am
surprised that such goal was chosen in the first place. Converting old,
unused bindings to DT schema is okay, but it would be much better to do
this for the bindings which are actually used.

Because I still wonder - what is the difference between this binding
being TXT and DT schema?

> 
> About the part where you suggested to convert the txt into a single YAML, shall I

The bindings were incomplete, so after adding missing pieces they could
stay probably as separate bindings.

> continue working on them? As I can see Mark merged the previous 2 patches to linux-next



Best regards,
Krzysztof

