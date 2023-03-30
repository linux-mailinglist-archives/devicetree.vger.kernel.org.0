Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E11586CFCB9
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:30:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbjC3Hae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:30:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbjC3Hab (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:30:31 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88FD240DC
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:30:30 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id s13so10264573wmr.4
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680161429;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=R9Sq3GghZPSalrYUSlYEg5rtJO5siyHm45G17IspFvU=;
        b=W8hTUnm3FJqGZsNDUkrS7U0/MDDiEvivsCWPAiKAiGV6gTQygCCgMMJLJBLIxNu/72
         mTWPrPQ0wSDPuqljkL60qnzNbV5cQI3W+uAaNjGeB58RVX1W+dyedU45zyjhDkxZK2Em
         357vQSWIr0qJJaK3kSgE4akGJozICx3gYJTYrcoRlzBXsTrKP/3HsTOpoCjxzbxsBiam
         pqTDwlWbQ17o1Xr/xaNJnFpImqaW3wRTz50MvER4tnEkH/mlu8FSo0LuhLDgRA2FBPiA
         7X5sr37GoSALrAtRLsWzv7GYCeNqzNmF8vPkYq3zuhM4KxbUjUpFAN0OHXZdSBJEg/Ro
         jZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680161429;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R9Sq3GghZPSalrYUSlYEg5rtJO5siyHm45G17IspFvU=;
        b=cwuNUFIVkuZ4q3Q9wp8jP5NnFy38+ezCbf9sFpKu2kXxWFR07p7WCbtzR/jQSRH1AB
         mXCV2td9H3YHxRkGZ7G0k9mrPprpqbmsN1ZHAICtRrsHjCzcjPhB6NMZxPhr02ANCUv/
         L4MI19JnrFM5SdOSzRRKV93wuaLmJaJeyWkBDKvFJwPUHHQ3C62S21d1g6U+dXMYU7yP
         /FALmiIhwGZ4OUvjzC4A+ishOL9lW9oiV6r3o5I/Sv41e5zA83C3V2QXL9VLjqaJp2lk
         OpOHoQ7qAs4EilYheBo54WBdC86wfmV5ZwE6BRibVXD1WGkwIHxSvFEUVlaU2G17ZF0i
         M02Q==
X-Gm-Message-State: AO0yUKXBqXAeVD/xT51NviLob+YpQnBwm9DJMXT7/NAehgAvaqB8paIq
        xT+L5wAlUI+rKmwf4NyYOiZVnA==
X-Google-Smtp-Source: AK7set/990zYxsUocwt1yD0MUSMosyecq1clA1R/FSRQa9PAXq4liR6KvZqs+/7FvnAVteYWRkrvFA==
X-Received: by 2002:a1c:7406:0:b0:3ed:320a:3721 with SMTP id p6-20020a1c7406000000b003ed320a3721mr17989911wmc.22.1680161428900;
        Thu, 30 Mar 2023 00:30:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:fe8e:8291:fc25:6c8f? ([2a01:e0a:982:cbb0:fe8e:8291:fc25:6c8f])
        by smtp.gmail.com with ESMTPSA id n2-20020a05600c4f8200b003ef5e5f93f5sm5068457wmq.19.2023.03.30.00.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 00:30:28 -0700 (PDT)
Message-ID: <45c5597b-628e-f1ee-cd48-9ce5291765ee@linaro.org>
Date:   Thu, 30 Mar 2023 09:30:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: serial: Drop unneeded quotes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Hammer Hsieh <hammerh0314@gmail.com>
Cc:     linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230327170137.4104272-1-robh@kernel.org>
Organization: Linaro Developer Services
In-Reply-To: <20230327170137.4104272-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 27/03/2023 19:01, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>   .../devicetree/bindings/serial/amlogic,meson-uart.yaml        | 4 ++--

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

>   .../devicetree/bindings/serial/qcom,serial-geni-qcom.yaml     | 4 ++--
>   Documentation/devicetree/bindings/serial/renesas,em-uart.yaml | 4 ++--
>   Documentation/devicetree/bindings/serial/renesas,hscif.yaml   | 4 ++--
>   Documentation/devicetree/bindings/serial/renesas,sci.yaml     | 4 ++--
>   Documentation/devicetree/bindings/serial/renesas,scif.yaml    | 4 ++--
>   Documentation/devicetree/bindings/serial/renesas,scifa.yaml   | 4 ++--
>   Documentation/devicetree/bindings/serial/renesas,scifb.yaml   | 4 ++--
>   Documentation/devicetree/bindings/serial/serial.yaml          | 4 ++--
>   Documentation/devicetree/bindings/serial/sprd-uart.yaml       | 4 ++--
>   .../devicetree/bindings/serial/sunplus,sp7021-uart.yaml       | 4 ++--
>   11 files changed, 22 insertions(+), 22 deletions(-)
> 

<snip>

