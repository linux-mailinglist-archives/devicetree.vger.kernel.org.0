Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EAE364D7F6
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 09:44:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbiLOIoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 03:44:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiLOIoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 03:44:18 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33F113B9D2
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:44:16 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id s25so9251207lji.2
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4JgPf0I2trJtnvNFuGdGdS8w+r7WydweU0Qz8JdEMA0=;
        b=ratcEzdwnRNxqbOyPGnzq69AYEfXQ8t9SXTM6HxsbihGIKLxrP7OVd5+LXOrkdFsu8
         nZJgaQeH4GkwB67T4HjAKbzkRhRuVPRK+oA9FjkuVNUWbW45BAvN65LZaKTUOULvO5Ef
         xK9r/zLDvt3UuNZCWw3yE9wLWVM1GI9Cd0vAYwJSHG6U0bdnfGWcQZGCocOLBO40hmew
         7yhtj3IplgP1SOa+RIRgNPam6MJ02GxW/6yb63TmVkg73J37ga4wCqzPf4sBn7wUD6z5
         CSk/wgf7yREVjnkY6YKcbXWEkM8zFKb1VAitMm6tDTnrF6BmTzG8bKk28mpOs3//g2fb
         313w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4JgPf0I2trJtnvNFuGdGdS8w+r7WydweU0Qz8JdEMA0=;
        b=n4Q9mzmcjDkmLM+hJXtTPivH11itmcUpJeE6qrdsMAhB3XWC5kn6aqy7K4APoQIztT
         MQq57/vQ98dTq1QZ5OKrKlRGLCwVivZksrhAfqkoXV7tNApT+alp4KfMrHHqmDIPl/t6
         JbNLlUpLYdSpp7zYlZr23+nvdEsO466aOry6ljoYrD0NZcAcuL6sniJiV3RZJLY2uzBL
         ZaL0eDpn1UAt+LN+bokeUSNcn//1QB82hA4U8buq78lfN6eGlpQM6815oZIQWo3hvtpM
         j7Ih/H/qCeUzsv2buOn6NT8/olEoj2ljhfnxs4oKW+rFKbHXYfL9Y/YyR7CeiRZppGvY
         zNow==
X-Gm-Message-State: ANoB5pmMy7k7oxJXjHvWiFuc+uSa/G9Uvt+3qG4mzHKCBHzCXgywLx/O
        tqH9u5WKohC0BZNothiG9PM/1w==
X-Google-Smtp-Source: AA0mqf7nIzSZ/F4qdDJi35AuwztOq8aNj4pHFPYa2W9y74W+FlS3i4KCpjmjvEOREO1l/bjUAztn0w==
X-Received: by 2002:a2e:a170:0:b0:279:c1a9:3af1 with SMTP id u16-20020a2ea170000000b00279c1a93af1mr6679413ljl.10.1671093854582;
        Thu, 15 Dec 2022 00:44:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i18-20020a2ea372000000b002773ac59697sm330603ljn.0.2022.12.15.00.44.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 00:44:14 -0800 (PST)
Message-ID: <5cd9e71c-8147-2ce1-b137-0342e271031b@linaro.org>
Date:   Thu, 15 Dec 2022 09:44:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Add base QDU1000/QRU1000 IDP DTs
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221118192241.29384-1-quic_molvera@quicinc.com>
 <20221118192241.29384-3-quic_molvera@quicinc.com>
 <20221202033721.4slwz2utw5u6rv7b@builder.lan>
 <9e4e6149-bc24-b727-fff7-3fb7038fc066@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9e4e6149-bc24-b727-fff7-3fb7038fc066@quicinc.com>
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

On 14/12/2022 19:59, Melody Olvera wrote:
> 
>>
>>> +			#clock-cells = <0>;
>>> +		};
>>> +
>>> +		sleep_clk: sleep-clk {
>>> +			compatible = "fixed-clock";
>>> +			clock-frequency = <32000>;
>>> +			#clock-cells = <0>;
>>> +		};
>>> +
>>> +		pcie_0_pipe_clk: pcie-0-pipe-clk {
>> Afaict these clocks are not referenced anywhere, so please skip them.
> 
> Yes, so I included them to be consistent with the bindings. They will be needed later;
> should I still remove?
> 

If they are not referenced anywhere, how is it consistent with bindings?
Where do the bindings require defining such nodes?

Best regards,
Krzysztof

