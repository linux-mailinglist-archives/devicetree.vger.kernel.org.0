Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BEB36AB0F8
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 15:16:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbjCEOP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 09:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbjCEOP6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 09:15:58 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7070E3AC
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 06:15:56 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id a25so28675769edb.0
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 06:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678025755;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oaYWQsDCiMEerIaw7dOHXTP6aNCmcM9yYsYwMBjgWTo=;
        b=somdt7eCFBhFz4p5Fcw83vtP8kDwgksYd275RGqwFVBRz6Qgtoy4IhyFug/V02wYEH
         933pVJMdTKhTaNyNh2yUc8HdRzYAoECLeFeXmCDmqQtLgHXTT7/Hzhw5RyJk7EN/Qx6T
         Yt3JEuTZ+1s+yFO4LBpWjCg1/UVi/f45egBM5A+cL6kH8Cz/lmPqcF/wrU76TcuZoewz
         brjWrnAbbKGjaGfWz8MOoU7nnTVmVGnXNUDlehngOyY8/8yjXe1RK9TMhUUwRPAsC2JV
         rKIimdbE0emO94TyfAjRwEhBo6QBe7IKuXLCG+ALI19XWrlCUvQyEmcINv1hN4Ku7/6E
         IHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678025755;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oaYWQsDCiMEerIaw7dOHXTP6aNCmcM9yYsYwMBjgWTo=;
        b=TJpaPvaN+szRHtIzfG/gE/y1Y4OMvtwW8a4dg3SuoApl6Hhr3ODC7D1GLWoMt+hLo8
         fIUeajJ1GxdMTpK4PsD12njikweNtGUzNOR7PKabHKdg5Ka5BvLV0W9mlujFcwguZxFC
         3DxF3YIdswHgaUOaLAuxHoOxVJP0PhIfIBIzwP+eSQm8kOevYwJC5ca9zibJYlY53JQc
         EpkUpRQY85otgfmS7PPZKixl2Rhk8kmjt8YOvPIGbIRqHvVa7ItsIYP3GDrcPxZVZLi9
         m8WQUVQlPvNSRkHHU0TbPhrw7/tfBzGcQZs0YF+RKyxPygznaSHDoHQDjAk4jh9faoiF
         NGcA==
X-Gm-Message-State: AO0yUKXqCFccU1Oqiwoc3C0UjnfBNzYRS2xi5hf2zmgLwVKdzdQD1rSQ
        aip6Xh/AvRswS/wDvlt/t03N5Q==
X-Google-Smtp-Source: AK7set+BgrmehdGCt23YQRzXQoQYxWkq2Jc6jPIS0i29bU4WQufydCFh3/GgV7ABlhrQjqtEnc+bDw==
X-Received: by 2002:a05:6402:3448:b0:4be:c6b:7436 with SMTP id l8-20020a056402344800b004be0c6b7436mr6291841edc.30.1678025755265;
        Sun, 05 Mar 2023 06:15:55 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:71e7:13d:1c29:505f? ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id b30-20020a509f21000000b004a21263bbaasm3551737edf.49.2023.03.05.06.15.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 06:15:54 -0800 (PST)
Message-ID: <e52c4a1d-951e-8ce5-4aec-7f2b6d4c6c3a@linaro.org>
Date:   Sun, 5 Mar 2023 15:15:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] arm64: dts: meson: add support for BananaPi M2S
 variants
Content-Language: en-US
To:     Christian Hewitt <christianshewitt@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Linux Amlogic <linux-amlogic@lists.infradead.org>,
        linux-kernel@vger.kernel.org
References: <20230305132044.1596320-1-christianshewitt@gmail.com>
 <20230305132044.1596320-3-christianshewitt@gmail.com>
 <0d2184ee-679e-371e-8433-c38b22c97799@linaro.org>
 <9CC246C2-28A7-46DF-924F-8FBF5CDE16CA@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9CC246C2-28A7-46DF-924F-8FBF5CDE16CA@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/03/2023 14:47, Christian Hewitt wrote:
> 
>> On 5 Mar 2023, at 5:30 pm, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 05/03/2023 14:20, Christian Hewitt wrote:
>>> BananaPi M2S ships in Amlogic S922X and A311D variants with the
>>> following common specifications:
>>>
>> (...)
>>
>>> +
>>> +	leds {
>>> +		compatible = "gpio-leds";
>>> +
>>> +		blue {
>>
>> led-0
>>
>> Does not look like you tested the DTS against bindings. Please run `make
>> dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
>> for instructions).
> 
> I’m building everything in a cross-compile build system that doesn’t allow
> this to be done without a problem amount of hoop jumping. I need to work on
> another arrangement to do this testing (work-in-progress). Thanks for the

Cross compiling kernel and running this (also as cross compiled) is
trivial, so what exactly stops you? Packaging kernel for your system
(e.g. Yocto) is different topic, but that's final step, not necessary
for development of DTS.

Best regards,
Krzysztof

