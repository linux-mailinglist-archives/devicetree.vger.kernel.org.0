Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69928721F8C
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 09:31:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230403AbjFEHbA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 03:31:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230437AbjFEHao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 03:30:44 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 016B9BD
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 00:30:42 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-30ae95c4e75so4614807f8f.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 00:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685950241; x=1688542241;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NFReZyZu2iufJZ3PDykLvhpXb6SdQ7mEv/WAkqm0RQ4=;
        b=G02f0WmoAeY4+9XZg+1cZOAQP3nXivmQNupC0n58RdCR20l7Cklw6KwEqnY+0sZY+3
         nX0bl1m8bjeHTwSdTKgZhuat7x8KOrzfwmPMVwFqjhNlxis5GGXB+Ew6yLMKJaRAbmBV
         k0Ipxom2LnOuYjGjDcLAS9xREEsh+hk1vgOY6N4ogJeNyUDEj//4oicRgj2houMThQbS
         C8Vws74jZta+oyDEO2XPoHlF1ltIEPou/MIgHVSYLkDtG9COJEetZkGSIbbYwyjq5w9d
         w40Cq/ILqZa/JNT9qlM7h5zfy5eHKf947k7+TIUwnnZfYOyKsfXmK9bCdZMerLNnrQm9
         cJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685950241; x=1688542241;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NFReZyZu2iufJZ3PDykLvhpXb6SdQ7mEv/WAkqm0RQ4=;
        b=Pw1PsfWZgrX5ZwwjDxCP+WFTYoiKvwl39UFLA+LLAieXhxaL3O/n9b1aHk/JnbHibL
         cxTgwcn3CL2pYgg2alJfDIm/ITX0Nb789DIBFb7xjM3+NHHp2dQ4zRjJk0Uu0IdfLxok
         Rq0XbllCAln4Alk0wMdoJ/sJaAaVTksJ4KlGevOscUVN+XNp9j34F7UQVL6TIeFf6X3a
         oSUXqr+0y4hKR39CovfH5deu8bKZu2y6nNfwaYiGfbtzAmvCqosLPiHHw3Bc626YpCTQ
         E84cRsWRZm8lK+24p6gyCvo3VfxCW6H6bQF53ImwdbruODjtqpYJygiocM3DwKDtnryF
         1+nQ==
X-Gm-Message-State: AC+VfDxzy5b399tpEs57iqCkukTjrHS8/oE4xE9JLmIYO/JWkroqKbmU
        CICCzp0EC8WtpCRGZcv9/IA6ew==
X-Google-Smtp-Source: ACHHUZ6DpZpxjDccEpr6NoOK08qI/JWn6PS5N8QU7mRlJwWTPUm7Jom2HtRWIntgSYG9nDc9HaANvg==
X-Received: by 2002:a05:6000:10c4:b0:30e:1fc4:d0c9 with SMTP id b4-20020a05600010c400b0030e1fc4d0c9mr3668177wrx.9.1685950241092;
        Mon, 05 Jun 2023 00:30:41 -0700 (PDT)
Received: from [192.168.7.188] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id k16-20020a056000005000b003079986fd71sm8921578wrx.88.2023.06.05.00.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 00:30:40 -0700 (PDT)
Message-ID: <d7da64a8-8d49-595f-f519-9cdc2092d9e7@linaro.org>
Date:   Mon, 5 Jun 2023 09:30:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 1/7] dt-bindings: connector: usb-connector: add a gpio
 used to determine the Type-C port plug orientation
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20230601-topic-sm8550-upstream-type-c-v1-0-d4d97b4d8bab@linaro.org>
 <20230601-topic-sm8550-upstream-type-c-v1-1-d4d97b4d8bab@linaro.org>
 <0fbf55e7-2140-751d-5347-f907a46ef78c@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <0fbf55e7-2140-751d-5347-f907a46ef78c@linaro.org>
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

On 03/06/2023 22:22, Dmitry Baryshkov wrote:
> On 01/06/2023 17:07, Neil Armstrong wrote:
>> On some platforms, the Type-C plug orientation is given on a GPIO line.
>>
>> Document this optional Type-C connector property, and take the
>> assumption an active level represents an inverted/flipped orientation.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/connector/usb-connector.yaml | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> index ae515651fc6b..c3884eed6ba4 100644
>> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
>> @@ -114,6 +114,11 @@ properties:
>>       description: Set this property if the Type-C connector has no power delivery support.
>>       type: boolean
>> +  orientation-gpios:
>> +    description: An input gpio for Type-C connector orientation, used to detect orientation
>> +      of the Type-C connector. GPIO active level means "CC2" or Reversed/Flipped orientation.
>> +    maxItems: 1
> 
> Should this be a property of the connector or of the parent device node? I mean, unlike usb-b-connector (where ID and Vbus can be simple GPIOs nearly directly connected to the pins of the connector) for the USB-C the orientation is not a connector's GPIO, but rather some additional not elementary logic.

I don't see the issue, orientation is a property of the connector itself,
even if it's provided by another ic.

Neil

> 
>> +
>>     # The following are optional properties for "usb-c-connector" with power
>>     # delivery support.
>>     source-pdos:
>>
> 

