Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74D97610773
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 03:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235700AbiJ1Bwq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 21:52:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234137AbiJ1Bwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 21:52:45 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDBF3AD996
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 18:52:44 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id b25so2613614qkk.7
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 18:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5yy8TNI0iIOeZCtVjRMbf3TjP3tDO+JbDFQL1ZgVllA=;
        b=a3FXlBy9z5wu0caeZP7ZvrhebVK+PYnk00GobO2x2JsYEYo6lDsjLMrxx3+zPvgOUr
         kIfZCU8Oc0DUut1EB/qYk+9yb5PEHjJ2bPyqM9Ma8d5wnK+27sjWztJckFuS+CavwBD8
         sNu1A3xaMBa7QzbQNK4L9vCXvbiHbB3qEDaEZspK8KcVs93O2rn1SA6rFm7gpC7eU4bG
         IJoQdtDHs0AW8FuxA0s+kua7zfawRxYfdBl+F3g+uRxiE4aJ6W3ol/kj4apeZnrD13W0
         1l7oBAFn3XhDPWdx/lUBN1LCn1k37pLQ+OOvjJzDoZmGuEqA2TUY568OPpk+UGH0WnDz
         i0gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5yy8TNI0iIOeZCtVjRMbf3TjP3tDO+JbDFQL1ZgVllA=;
        b=LFqd0JxAzlheAEZQxTtjaCscGRqzpN4kT2tehPR3Yz4jKIZ2ZYYbuVVnlJ+5x5ixeo
         7IqTjzhchcvr8NAzBpMS0BE5L5vF960PDtjY3BXqXEhklxBbl7/DtmaArGueI+ICSnoI
         M4TyQQib4BlbIZ6q4/UmHlKy+EdHI4+A7Xt+fXsGJFtVl5OTWybKXj4VanS0Ogjfo8w4
         vQxZldhUaH8WINxEGjChscW3DlwQ1ki3e40RMhcjKBZqERieKUVnfNQ1WB13/SnxVEkX
         DTzuQRQiQ1C4/yiOOWqDECBnMuz21jrb2QOmf/VmThWTk8plPh/M/WDk8B6bhWCbBnvg
         rBMw==
X-Gm-Message-State: ACrzQf0yqFzlkVSwC4eDB0OM5dlcpLgv7Xg57VF/3Z9fTETxUIbFmV3q
        Dz1R+wQ9h+GDiLoTfhrEr7kAbO8hjqHjkA==
X-Google-Smtp-Source: AMsMyM4koLkGjhZW3oXhqu+e+0pVR0w0wzPHgyh1kHQo+WobOSK2QlzqYGnUNjTcjtRYXZ+4bz/lqw==
X-Received: by 2002:a05:622a:15c7:b0:39b:2791:cd44 with SMTP id d7-20020a05622a15c700b0039b2791cd44mr43752425qty.676.1666921953238;
        Thu, 27 Oct 2022 18:52:33 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id r9-20020a05620a298900b006b61b2cb1d2sm2102295qkp.46.2022.10.27.18.52.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 18:52:32 -0700 (PDT)
Message-ID: <31d129a4-50a5-dc5d-4d69-cddd7e1bca21@linaro.org>
Date:   Thu, 27 Oct 2022 21:52:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v5 1/2] dt-bindings: it6505: add properties to restrict
 output bandwidth
Content-Language: en-US
To:     Pin-yen Lin <treapking@chromium.org>, allen <allen.chen@ite.com.tw>
Cc:     Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
        Hermes Wu <Hermes.Wu@ite.com.tw>,
        Kenneth Hung <Kenneth.Hung@ite.com.tw>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
References: <20221019093215.8204-1-allen.chen@ite.com.tw>
 <20221019093215.8204-2-allen.chen@ite.com.tw>
 <20221024163748.GA1874793-robh@kernel.org>
 <CAEXTbpfpmAAaXOEkirMtuSJLopv-Us6w-46oE+GSxXiMGU-ZfQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAEXTbpfpmAAaXOEkirMtuSJLopv-Us6w-46oE+GSxXiMGU-ZfQ@mail.gmail.com>
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

On 26/10/2022 00:03, Pin-yen Lin wrote:
>>> +                  - minItems: 4
>>> +                    maxItems: 4
>>> +                    uniqueItems: true
>>> +                    items:
>>> +                      enum:
>>> +                        - 0
>>> +                        - 1
>>> +                        - 2
>>> +                        - 3
>>> +                    description: For four lanes operation.
>>
>> I would do just:
>>
>> data-lanes:
>>   minItems: 1
>>   items:
>>     - enum: [ 0, 1 ]
>>     - const: 1
>>     - const: 2
>>     - const: 3
> 
> I believe we also want a `uniqueItems: true` to prevent duplicate
> items like `<1 1>`.

... and are <1 1> passing with Rob's proposal?

Best regards,
Krzysztof

