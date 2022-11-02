Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A03A3616951
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 17:39:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231873AbiKBQjy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 12:39:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230427AbiKBQje (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 12:39:34 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E314432074
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 09:34:01 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id cg5so2898070qtb.12
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 09:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QDxuOmZwLuYcD+cc4tzL4paE9YkxJAoVZjE1yHXXoiI=;
        b=NbqOXxFZzBhGaS+tdTOH/lJMlHvuSFxwd6lNdC0Xod4th3g0Aeb3bgcfTL0XO0nStC
         lXGpjUwpO/xGNqutsOjxsR4/MDogFW9xR/a+Ye5TRyl/W3gPX7helPafFAKKK3WCbb/3
         BosxAGetdMEVi2nOzvBLefpIAcwUp/yDRnZjjdsb8O9145FHuGP2xdJQmduy0odmO9Za
         i0vC1gdgJNEArnsAPq00UERiyuRzJHK2SsLwGpxA3koqRcA2xzX2VPSrFEbefbnn7TBH
         9VxcbmYF5S/pP2oOWkByIN351P5lEpNJowB4cNFqkXPsTa3WaUUWoFI7QQ+onoD/kTLf
         1CgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QDxuOmZwLuYcD+cc4tzL4paE9YkxJAoVZjE1yHXXoiI=;
        b=eAVQYoNjEv4TPd/9Mj5B3vIJRqqjGB9gY28v2cPfOM73Ul8wyqy2hlqvpiq1PsmT8i
         1/2+nq8xX0omG3VTO7VbeGhxLsTqPBUvbQPPeGd5GwuFVR7NrJ8S8MTnbJjoGbKhvaZF
         Uole2ImEWXEmHMb9Kim0jpZFnwTtnG3BM8woVy9/StcJEw1J6pxPAOu3Z9XvHSSu+o2L
         Y+NL7WV/kTtWwWVYUhtlKpJVay3M+e8V7zg211i4cdtnmmkh/RVVIEQobnTRa2hZI/qX
         +18seeDdZXV2DO13B0mwFEMCvV/k9+brLjkd02NBYcTx6uZZVLUhPgIZiM18ubybkqeP
         2HuQ==
X-Gm-Message-State: ACrzQf0VJ7k60R5/jAIOsEJde1TIt3aK6E379Yhlx26tbcw82d7RyMPI
        Xiin/SMEkJu7Fkij/PxFg3HbA9ut0I0D1Q==
X-Google-Smtp-Source: AMsMyM68vZkJx0W7eXxAb94Zjjlvos7EBZ6NwidNbQyyCFcbALsnrufsb1zE1n6gEKo+ZMNkGGyMBw==
X-Received: by 2002:ac8:5e4a:0:b0:3a5:1fc:3a04 with SMTP id i10-20020ac85e4a000000b003a501fc3a04mr20165429qtx.132.1667406841054;
        Wed, 02 Nov 2022 09:34:01 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bp6-20020a05620a458600b006cf9084f7d0sm8726229qkb.4.2022.11.02.09.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 09:34:00 -0700 (PDT)
Message-ID: <30ce6ed4-cbea-7b82-cca5-8920fc1eddad@linaro.org>
Date:   Wed, 2 Nov 2022 12:33:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v6 1/2] dt-bindings: it6505: add properties to restrict
 output bandwidth
Content-Language: en-US
To:     allen.chen@ite.com.tw
Cc:     treapking@chromium.org, Jau-Chih.Tseng@ite.com.tw,
        Hermes.Wu@ite.com.tw, Kenneth.Hung@ite.com.tw,
        andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221027030155.59238-1-allen.chen@ite.com.tw>
 <20221027030155.59238-2-allen.chen@ite.com.tw>
 <d6f14e09-0c24-e19a-0951-bb3ca2219e79@linaro.org>
 <18659f5a5b2c4fd7b76731836aeb713d@ite.com.tw>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <18659f5a5b2c4fd7b76731836aeb713d@ite.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/11/2022 02:54, allen.chen@ite.com.tw wrote:
> On 26/10/2022 23:01, allen wrote:
>> From: allen chen <allen.chen@ite.com.tw>
>>
>> Add properties to restrict dp output data-lanes and clock.
> 
> This is a friendly reminder during the review process.
> 
> It seems my previous comments were not fully addressed. Maybe my feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all requested changes or keep discussing them.
> 
> Thank you.
> 
> ==> I am sorry I didn't find the missing advice you said. Could you explain it again?
> 
> Rob asked - Commit msg should explain reason for breaking users.

And where is the reason? I saw only one sentence "Add properties to
restrict dp output data-lanes and clock."

Best regards,
Krzysztof

