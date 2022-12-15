Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D542864D7CB
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 09:32:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbiLOIct (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 03:32:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbiLOIcs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 03:32:48 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3678421882
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:32:47 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id p36so14501218lfa.12
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3yjTota5kYMxjiFZfSzHsAlq+NLE8Ug63+GwThe1jqI=;
        b=viVzGcgZ/xANaj+X8O/UxQHDHYvBUidvhpvgzO7id0s10OC1ywtQ4kf/hcO7j8Nphp
         cU61eWNuxZXft6TgpxJcKjqYOCvtaN9Oh3bcqRq1ehCjWwpCJrsmrsZNvQIlpGcvRtQ1
         TduagCcU88HkJG/rD1qw3VfCSUD6J9fyP25CZwFitU4gL8TbmhvJvcSd78B69WLHjfo4
         HxzzOJY8b30zK58vBVKhvGuxdlG6BA51IyqNZh2r4Kd2U8w/iQ9Lg3tJx/SKiP3Ozw0W
         uDXNibTt6HAmuqBWVaHTBxpJp6+HxR4AJaOp12Mr1/v2cVKLOm0PzDR5bUp04oy2x/OX
         D8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3yjTota5kYMxjiFZfSzHsAlq+NLE8Ug63+GwThe1jqI=;
        b=wYWZB+4MHG0BhXc6eAzi+RhtJgdVjr4RpTJUk3P9RablzZLff0K2/axenqVlT7sua5
         GajFPBAhNq5qNcVZ8r8vPJ0z6mAxVu99m9h8Sb9uZI9m+EJwYiKa/mZdpG1XYT18Rnyr
         gh24NOvN3QEuzSBFCJliFZg5ToTFiC1d31k3m7JI/3eJOcawlTtwSRHug9xRi+bk4hdz
         QIQ4Fz2MyxwoUpET1FfpE9T95qLDD4Fa7pKqhOdJ8HUAwtF1qkO3JxK6iSCQruWlr283
         XSayg6059s1YN2vTBcKg0GhOVR2sbVQ7ByeBmo5fXy3fuMX57aYJgtELpOOMCDJO9AP0
         9NeA==
X-Gm-Message-State: AFqh2komIPhuCaUHZQ+rPaGb8WXNgctPklzcn9+WqwDhHrda8QpAK+mX
        OOpQ5lBDng0jhSsKquKS0X+6Sg==
X-Google-Smtp-Source: AMrXdXt8P/j8Y8ozEXTc3wM5dnBi82wVpHQjgcqLvPhqP7HLV0RdF90ddCywSJz5PyObTiFyf4mYzQ==
X-Received: by 2002:a05:6512:2252:b0:4bc:625d:1c0f with SMTP id i18-20020a056512225200b004bc625d1c0fmr251276lfu.49.1671093165630;
        Thu, 15 Dec 2022 00:32:45 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m12-20020a056512358c00b004b4f3c0d9f8sm1101645lfr.283.2022.12.15.00.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 00:32:45 -0800 (PST)
Message-ID: <4dc0dde2-8e7c-c819-1eb0-376c9e3ed567@linaro.org>
Date:   Thu, 15 Dec 2022 09:32:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/3] drivers: hwmon: Add max31732 quad remote
 temperature sensor driver
Content-Language: en-US
To:     Guenter Roeck <linux@roeck-us.net>,
        Sinan Divarci <Sinan.Divarci@analog.com>, jdelvare@suse.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221214142206.13288-1-Sinan.Divarci@analog.com>
 <20221214142206.13288-2-Sinan.Divarci@analog.com>
 <1697ded6-f04c-183b-4f92-ea4d5eb1c187@linaro.org>
 <246e7330-430f-e569-124d-55afc1b98dce@roeck-us.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <246e7330-430f-e569-124d-55afc1b98dce@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2022 18:24, Guenter Roeck wrote:
> On 12/14/22 09:02, Krzysztof Kozlowski wrote:
>> On 14/12/2022 15:22, Sinan Divarci wrote:
>>> The MAX31732 is a multi-channel temperature sensor that monitors its own
>>> temperature and the temperatures of up to four external diodeconnected
>>> transistors.
>>
>> Use subject prefixes matching the subsystem (git log --oneline -- ...).
>> There is no such prefix as "drivers".
>>
>> I did not review the code, but it is easily visible that it does not
>> conform to Linux coding style wrapping at 80. Wrap at 80.
>>
> 
> I accept line lengths up to 100 to avoid excessive and misaligned
> continuation lines. As long as checkpatch --strict doesn't complain,
> I won't complain either. checkpatch --strict doesn't complain, and a
> brief look into the code tells me that - in terms of line length -
> it is fine. Please do not introduce additional continuation lines.

Sure.

Best regards,
Krzysztof

