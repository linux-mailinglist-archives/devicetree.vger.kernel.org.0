Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB8AE6B9EBF
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 19:39:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbjCNSjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 14:39:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231162AbjCNSjA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 14:39:00 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66563A2F39
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:38:32 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id y4so36464288edo.2
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678819077;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AuNgNT8D0EuAh1HyRh/9mY626Vq0K4RuneWS+CDoRGU=;
        b=Z7HmxYoFox3cYFH2X6pUtjUx/WnphBH2dLE5baDvxTm+8HmhZ51ONlfq1+vZizz00h
         MoqUdQkitikl3II9OovJ4SC3MFkTFAw46SGbkPz15Owf5BiDozeQi6p+8f2X38Cq76E7
         ElMQL463kCFMmYsVcz/MNnLTUiOizY4q/YfXVpNmJUQTUV50vj7E2uSLbW0e0vtrO7w+
         cpmAQJaoQ2fbNB28vatFWPR8oM9oLnenPp4BKV0GvkSPZPN08f+OdibGUcu50pUufVfY
         oFtfomlpuUB2xBSXPjQjskd1kssmf6ASvqK/W45Nhl4a1QjhmRPD1Sg3oNi0diUB9M/T
         ISjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678819077;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AuNgNT8D0EuAh1HyRh/9mY626Vq0K4RuneWS+CDoRGU=;
        b=46XdKp2pjmGy0h8Ircem89JpuGEWO2a5xtoT9ZoDo/fKzqOl5kIYT+U4GT7o08dCeH
         5PaH5ZhE03qkw/p/e79lrZ9wjmjlF69Qar2gJ/TJrWuqT+D6eVje/X9e8ctJLO2nKYyS
         PJqEkdvNNWvzD7b6/y0h/MM7djSOi0MqPf63GieivMiCIH7vUxDWryuUK66y1WcwoLRW
         F1SHCg4j+oILYWMLpPtugnVULU2J04BO7NnSiMcmQx2lk+Kq8FSCIkq/u6MvT00u6VMQ
         ClPIywQTl6gC4BnjtQxI6NUMI3go29NAd5B/Yf/tVQpKc46zZxOdcu9eVumYeE/RAhhI
         NIWQ==
X-Gm-Message-State: AO0yUKVXL0LhtlIOrY+PqkVXvEnGLi0yVFt+xD2Q6f4fgK5T98OC2omI
        aiE9ul/GZmYyrn2IWwAMOXR8Hw==
X-Google-Smtp-Source: AK7set82bOBTZKdRnxAk1qFAzf9YFnq6NVKrvZuczwCT2pLIE3So1K51eTrLk738WixzMw0wwDDxJg==
X-Received: by 2002:a17:906:1b10:b0:870:baa6:6762 with SMTP id o16-20020a1709061b1000b00870baa66762mr3679366ejg.14.1678819076802;
        Tue, 14 Mar 2023 11:37:56 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id c20-20020a50f614000000b004d8d2735251sm1436152edn.43.2023.03.14.11.37.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 11:37:56 -0700 (PDT)
Message-ID: <7fc9a289-5317-6a40-73f1-b816083af8d1@linaro.org>
Date:   Tue, 14 Mar 2023 19:37:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: dt-bindings: ov2685: convert to dtschema
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh@kernel.org>, Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-kernel@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Shunqian Zheng <zhengsq@rock-chips.com>,
        phone-devel@vger.kernel.org
References: <20230206-ov2685-dtschema-v1-1-9e4da3474c10@z3ntu.xyz>
 <167572017056.1564123.13342855865502188090.robh@kernel.org>
 <aadd794f-8881-6ecf-4d9d-51a8a23fe4b2@linaro.org>
In-Reply-To: <aadd794f-8881-6ecf-4d9d-51a8a23fe4b2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 19:37, Krzysztof Kozlowski wrote:
> On 06/02/2023 22:50, Rob Herring wrote:
>>
>> On Mon, 06 Feb 2023 21:23:16 +0100, Luca Weiss wrote:
>>> Convert the text-based dt-bindings to yaml.
>>>
>>> Changes from original txt:
>>> * Take wording for various properties from other yaml bindings, this
>>>   removes e.g. volt amount from schema since it isn't really relevant
>>>   and the datasheet is a better source.
>>> * Don't make reset-gpios a required property since it can be tied to
>>>   DOVDD instead.
>>>
>>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>>> ---
>>>  .../devicetree/bindings/media/i2c/ov2685.txt       |  41 ---------
>>>  .../devicetree/bindings/media/i2c/ovti,ov2685.yaml | 101 +++++++++++++++++++++
>>>  MAINTAINERS                                        |   1 +
>>>  3 files changed, 102 insertions(+), 41 deletions(-)
>>>
>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'clocks' is a required property
>> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'clock-names' is a required property
>> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'dvdd-supply' is a required property
>> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'avdd-supply' is a required property
>> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'dovdd-supply' is a required property
>> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> 
> These are errors from the bindings, so they must be fixed. If you do not
> want to fix the rockchip bindings, just drop or replace the sensor in them.

Or one more: add some fake stubs. They do not matter anyway...

Best regards,
Krzysztof

