Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FE8C739DE7
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 11:59:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230314AbjFVJ7z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 05:59:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230250AbjFVJ7u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 05:59:50 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74140B4
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 02:59:48 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fa0253b9e7so4490815e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 02:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687427987; x=1690019987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C6pQ9FpvxDVX1g0MNwvNzHtJN36Y8n2j+gwBOp+Pp4Y=;
        b=uMqxY0xz5A8U2guUUe8tJ14kPybDedlDVjPVDekHQu/6ri9VgzqgDU2J8FUk6qS3tq
         ZlW27si/h6o2lA6rU0rrybvv6VvghIQAvGjLMtWZqNQ8OGJUqLXldrWwjFooHBjbm3FB
         Z812Vp1oybGvbqtbs/g8wYoamiroaGQxrZ5UgXcptLpqaHy/EScdiUwgwlIxVEOoEX+g
         9Ij0cSTv/U/4wZ8anjbdhVFa3az9VPHOa7i5Rn4elrfoPXrnD2+1TDdKq5++9fsJh/zQ
         rv4DqkqhjbTtgZxtGAolr3ZjNgClvjZ8teGMwEYXHeaDPkGBrF4OmDvR2NZ+kFeKhVSA
         Nvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687427987; x=1690019987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C6pQ9FpvxDVX1g0MNwvNzHtJN36Y8n2j+gwBOp+Pp4Y=;
        b=FgzUVU3aqpXXjDZ5ochaLHpAQH0nf9sxcp8ewHN/G2atFCECkHbnVm11wnhn+2fUJa
         jL48m43Uul69nsQIGNSMXtVYTnVJb1t/jBDqD9QqwoccQmOS+baoUtGpWJTuDGr0bSCi
         l00rdj7KO0wqg3q8rSZn8qT/erGH41zDMWegI/9GfX5ddvxUgoL/hR258Jdu4DQoaH4j
         qEwNOQYSak9zGqkZjzDqH06e/i7x29wpT6ZcruiBySHbQ51g3tYR9sd7eal51UoePO9Z
         VYUGV+fluq5ji+ttu3It9XpPajMve3qrG3cOE016uCU/DeHXINq2yJQQp+AVSX2aitGF
         vajA==
X-Gm-Message-State: AC+VfDwRhhBke8iXFQOhHVpMpUau0GZnH8CkKkX6t2SNz+XwEvXwQQKu
        KAzkuupulO/BnklV0jfQV+4vBg==
X-Google-Smtp-Source: ACHHUZ4SJBB8N/+OU2LnrtXVj+lIZOoOLdOI45uJZlm5D1WR1VjmrNMBtYfO6lLRC9HQhFBj7EXwdQ==
X-Received: by 2002:a1c:cc07:0:b0:3f7:c92:57a0 with SMTP id h7-20020a1ccc07000000b003f70c9257a0mr16368487wmb.14.1687427986903;
        Thu, 22 Jun 2023 02:59:46 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id s25-20020a1cf219000000b003f41bb52834sm18373999wmc.38.2023.06.22.02.59.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 02:59:46 -0700 (PDT)
Message-ID: <6bc6a3f4-11d2-df4b-4631-96063e762667@linaro.org>
Date:   Thu, 22 Jun 2023 11:59:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] dt-bindings: timer: add Ralink SoCs timer
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tglx@linutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org
References: <20230620100231.1412582-1-sergio.paracuellos@gmail.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230620100231.1412582-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 12:02, Sergio Paracuellos wrote:
> Add YAML documentation for the timer which is present on Ralink SoCs.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v2:
> - Remove redundant 'documentation' word from subject.
> - Drop clock-names property.
> 
>   .../bindings/timer/ralink,rt2880-timer.yaml   | 44 +++++++++++++++++++
>   1 file changed, 44 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/timer/ralink,rt2880-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/ralink,rt2880-timer.yaml b/Documentation/devicetree/bindings/timer/ralink,rt2880-timer.yaml
> new file mode 100644
> index 000000000000..daa7832babe3
> --- /dev/null

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

