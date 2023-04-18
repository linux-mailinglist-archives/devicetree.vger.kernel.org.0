Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38B166E6AF9
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 19:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbjDRR3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 13:29:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbjDRR3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 13:29:02 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 751D026BC
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 10:29:00 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a5so18651022ejb.6
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 10:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681838939; x=1684430939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j1wiR09yWJSIDNVVbIUkBjSe4GYAxrvXyIzrFZ0S/2s=;
        b=DQ8c8RpJDuNpMTcK6oa4OrWmMeZkKjHR4atMVV5AwE7bAddXZlw9Xrr+pD1ff5x6Zw
         9noBnbIwVGONmMIpycQIcLzh0nkkAAlaed4kAKedDqfxiHQz8Bj125hqLXmBGUD8691Z
         kl84fmSZiZIfJ7c54my5nYUeeiR4PLF2ZP9dXbhtGXcODtElTt13ShAQF0SJ5Y97oLgY
         WDT5E8mTxH5k5qC9T/7ijOZKnEK/s69cxNEO00S7wI3YcfwLHULRtN4rJ7L3bXQnq8qS
         djIWjlBV8B9EgKZzNn/vGIuRCkMNMSdvPCuXMtIvT1jx87w7P8HCNNDyY+Kory7rGyMK
         t4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681838939; x=1684430939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j1wiR09yWJSIDNVVbIUkBjSe4GYAxrvXyIzrFZ0S/2s=;
        b=BawAOLsoRh5DCX0p8RtAk1ipz5sL7U499xDSJ+fOhEIjKuKJdUVUiQtwRmNQ13ZtCS
         7oQmtAduZ6MzRFnrUZ0vLibLl5Pu6Ym737j6OxJU+hpkL1fQAU0eGSgP41c7jr0dp32H
         B7XftfJrBDQe9XxZ6XjLFwdV/1cACT4K7heKyNyVxiRRJ2aREQmDSSpcfvoFAlDcxD6m
         8NK3nP/fDVsm8JAfbCeYUzpAi47IeoZOTfAvZMJhI835tAK9kXEtYkN0SVefPo4LPUG1
         kL0AhH9NaVm6nC4afj0g2DuyXdcDFLWUfAcf/U2B9FXB4hjGKsinAt13o0xWtR/B9IVE
         ZOpw==
X-Gm-Message-State: AAQBX9cYiu8HMRZSkm6fdc1IA4xf9dJ9NTxw78ykz5Df4HZB4FMfdMrS
        T5PUY7Fyhi+OuX0figAiNE5cqQ==
X-Google-Smtp-Source: AKy350a7ZMnwKrvXukHpiO5c+poP9gMiHBS3W3x7LLSR6QP3sqvewAE5G4jo3Ti3GtMyBs4wKhPkrg==
X-Received: by 2002:a17:906:2b0c:b0:94f:3980:bf91 with SMTP id a12-20020a1709062b0c00b0094f3980bf91mr10317366ejg.19.1681838938946;
        Tue, 18 Apr 2023 10:28:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id j19-20020a50ed13000000b00504ecc4fa96sm7165712eds.95.2023.04.18.10.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 10:28:58 -0700 (PDT)
Message-ID: <1c629ae3-31e7-7536-435b-378c943ab61a@linaro.org>
Date:   Tue, 18 Apr 2023 19:28:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v1 0/2] clocking-wizard: Added support for versal clocking
 wizard
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org
Cc:     git@amd.com, linux-clk@vger.kernel.org, robh+dt@kernel.org,
        sboyd@kernel.org, mturquette@baylibre.com,
        krzysztof.kozlowski+dt@linaro.org, michal.simek@xilinx.com
References: <20230418102855.6791-1-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418102855.6791-1-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 12:28, Shubhrajyoti Datta wrote:
> 
> Add Versal clocking wizard IP driver support
> 
> The Versal clocking wizard is clock circuits customized to cater to
> clocking requirements. It provides configurable number of outputs.
> Adds Versal clocking wizard support to the current clocking wizard driver.
> 
> Datasheet link: https://docs.xilinx.com/r/en-US/pg321-clocking-wizard

This is not really v1. Please link previous submissions and keep changelog.

Best regards,
Krzysztof

