Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 996DA69DCD0
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 10:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233760AbjBUJXl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 04:23:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233744AbjBUJXl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 04:23:41 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9323901D
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 01:23:39 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id h32so14557669eda.2
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 01:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fbTzQmBbVkw2WG9RX4zaVnIA7NHcDhVJSDn4uazMha8=;
        b=WcNxXJgOyoqCc67id0lYZ4CTspgI/DMh4vHE66IHil5A1QL/Sws+BnpfRV8jnxR9Ix
         HK1DyCxKbxDj3p/MPxe0HIHIElhmfM9FClpRwSk8aLLoHV7oL0H+2xqa0mUaaf964fB/
         +VcavxxMzJaSWGpXxpyABv2JYSLsr8mItxmRGKfSybSiFENIP6xIbQLGQQzeWw6DzP4t
         RqOJLhdxMEYBZf34IhVkppik8aRYEyzDm7cr4jOjS4tbK6gM8JRCyD7EWR3OdqfSq1Nd
         WZ40bXgSeB35rPZq7T5g3SlA4q3d2jc1AoTcoOlIZcfbh12J2jbDKkfk0tXb4J1JmlQS
         AJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fbTzQmBbVkw2WG9RX4zaVnIA7NHcDhVJSDn4uazMha8=;
        b=TLjTdAUw0Umi89Ev8WBGQvjDmu9+xm20zW7eGcmme7L5BUmGa4tZJhMZ2RlU4lnww2
         CnCyX7CXMch9gPJrdrRThsxm0JJGTLkhooyIS4LI6YWF24BkFZjlqISJLKBAbeVKGHxZ
         NXB/RKQkO7azFGkCq/TYWjocot31E/w0JT9EbS/DMyqwXUrEodH5KsOnWy7Y54m8s3xR
         +GyA2GlwKkmaOTfXyDZbvy2OtUS1oONDSI22kB84oKe+25dNsGp8GiIBgPQL7Od5LWmu
         Q3fIpg3aF798CM3qOzoeGg24LgAHfiB72KMYLqzDmqDUFQdaxmvb2a78BOIaaXIe/ZgE
         CySQ==
X-Gm-Message-State: AO0yUKWzpW8VecR0b3XGrTAI0bJzc7CfEOLAlebPVmwPET9mXs4KZW/x
        6kdHNiiz8/mBVq0Sfuh2sbrGGQ==
X-Google-Smtp-Source: AK7set8KQ6AMSa9DTyyfQ/QxgDiwki3JQ/hgmlwOWKJPZgURwegSKc0oEy44DyZ6U98clGYb22w9bQ==
X-Received: by 2002:aa7:c552:0:b0:4a0:e305:a0de with SMTP id s18-20020aa7c552000000b004a0e305a0demr4899297edr.19.1676971418212;
        Tue, 21 Feb 2023 01:23:38 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t21-20020a50ab55000000b004acce817ab7sm1624262edc.2.2023.02.21.01.23.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 01:23:37 -0800 (PST)
Message-ID: <cbe2e397-7044-277d-08a8-93010de339ad@linaro.org>
Date:   Tue, 21 Feb 2023 10:23:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/3] ASoC: dt-bindings: sama7g5-pdmc: add
 microchip,startup-delay-us binding
To:     Claudiu.Beznea@microchip.com, robh@kernel.org
Cc:     lgirdwood@gmail.com, broonie@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230217124151.236216-1-claudiu.beznea@microchip.com>
 <20230217124151.236216-3-claudiu.beznea@microchip.com>
 <20230220225601.GA545317-robh@kernel.org>
 <69c4eccd-9d81-ac0b-802a-8e4e0d57589a@microchip.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <69c4eccd-9d81-ac0b-802a-8e4e0d57589a@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2023 09:10, Claudiu.Beznea@microchip.com wrote:
> On 21.02.2023 00:56, Rob Herring wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On Fri, Feb 17, 2023 at 02:41:50PM +0200, Claudiu Beznea wrote:
>>> Add microchip,startup-delay-us binding to let PDMC users to specify
>>> startup delay.
>>
>> The diff tells me all this. Why does this need to be per platform?
> 
> PDMC can work with different kind of microphones, thus different boards
> could have different microphones. Depending on microphone type the PDMC
> would need to wait longer or shorter period than the default chosen period
> to filter unwanted noise. Thus the need of having this specified though
> device tree. Would you prefer to have this in commit message?

I believe you also had explain it to me, thus as you can see having it
in commit msg would spare you two questions...

Best regards,
Krzysztof

