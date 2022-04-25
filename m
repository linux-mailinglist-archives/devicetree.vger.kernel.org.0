Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72EA850E8B4
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239209AbiDYSwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:52:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244638AbiDYSwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:52:31 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11EC4111CB4
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:49:25 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id l7so31452189ejn.2
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=83hu77dgmAdgOlmu6Sz8NpPU54JO4fW9HRIvIUjVaz4=;
        b=QP3o+fHSOMrRf40mzyQrQUCqiB0DMBCJz7V49S2SDp/tc2/AlG+yOb/+Esp+KWOxHL
         Hpd2VguxluR47JPQ7RUFjqWjp/g46bH0bAvwx6tea3mKXa1M97jR4AagwTKTLN4UH9US
         oexyug+MYU33h2mlCaUkcRz2Vkk1Zer9seA6uomrtdnVNL8epo2381tJFdfmQG9jCMi5
         bfAzJlaVM1CNzAup4ELb1Ig7i7aUD5ox7Vi9SC3khNWG+XjdB6du+U4k4Wma2+0/SX/Q
         rqNDwH1ZUAVdlN/TYUZnT/JUFn3aoGcu8o+AUoI8ADGEKu5Si8gUCIU079DUbDpAAIJl
         d/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=83hu77dgmAdgOlmu6Sz8NpPU54JO4fW9HRIvIUjVaz4=;
        b=O8VW875Db21N8EqK6X+z8f/BsQc5kEb/tfJkJgonz5bpF+jCQ9mB9yBV7r4PQIg0ZJ
         2Q2xctEC57Er41EERJuVsaW/a2Gdr7JNERpfx6WAJeWn6qPZoWDwhC0yHHLERI1xruDY
         rr49N0LPD0bsAo8wPzAFRjoIk2rQTrG5mU0ZNV7tghMx1BFezkRgvMN6c6B25PBSJmOC
         gH0QwD1m2ExFKbMQT8HfZOyDTM1jUNXa7dlwJl7OCTvbeWOzkBboh6Fie8Sqj/sHIHzh
         W48YDIuLTj9cPgqlpUYzHTBCpX52Yjwkdi8iY5qUV3o7iZUhuWdv5VOjz1L9nctH4Alq
         qylQ==
X-Gm-Message-State: AOAM5325jFFykdynuqUAzWz8+H2kXgLlxAvcd06CTgGc4REmJYkHDyRr
        9XcfISzqk2Ydhk8jtSt68AKxqQ==
X-Google-Smtp-Source: ABdhPJyQ7KfkySdz2j3okSsEM8q3uVin74vtr55i0ci5U16Z53odwYJ/cgDVkR+3Ym2GAk7d/IyFFA==
X-Received: by 2002:a17:906:a2c5:b0:6e7:f44d:ed7d with SMTP id by5-20020a170906a2c500b006e7f44ded7dmr17731309ejb.329.1650912563700;
        Mon, 25 Apr 2022 11:49:23 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b16-20020a170906709000b006f3a8aac0eesm277773ejk.0.2022.04.25.11.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:49:23 -0700 (PDT)
Message-ID: <3139ef34-322b-9afe-e5c8-ae0f1b7f1848@linaro.org>
Date:   Mon, 25 Apr 2022 20:49:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 6/7] dt-bindings: clock: qcom: ipq8074: add PPE crypto
 clock
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, absahu@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220425182249.2753690-1-robimarko@gmail.com>
 <20220425182249.2753690-6-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425182249.2753690-6-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 20:22, Robert Marko wrote:
> Add binding for the PPE crypto clock in IPQ8074.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
