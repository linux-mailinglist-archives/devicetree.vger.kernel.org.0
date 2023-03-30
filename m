Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B01076D068F
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 15:26:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231881AbjC3N0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 09:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231822AbjC3N0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 09:26:16 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A16BB44A
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:25:55 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id a44so941055ljr.10
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680182753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mV0+oh+l7u4kJ6illcn1TzgHR8FXz7lNfEJu+cV2b3M=;
        b=WZutxXbLCKTfXpxWNnSBlKxEjdN2v4d/BhD+EheqeQ8WcwjMKG25yVyhjOaqq1BrOE
         yTLTDCEqavIImpTELh2zzMb91KKpvmTQ/5KL2snNGExuvq0RxHGjOqmznhHsA1kZPCFo
         QQz2RrBSGp2hzBLAl4/URFLI40NM5gUYkpoE78nrqwtQuAkqlzacwGg0V0kN4TM1CM4a
         EX1Y72eM1bq4CvNqW8+1sARHxVxGmZdFXpn/7zFALQ5+yHTbpn+rrJ4zE3itkh0j3d3i
         e+RrIwaNq//4IG8QVodfA5Yn6br9KbetilGHiQULfrCTvnkNH1ITKRHC3RFFiqm5cvwA
         PZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680182753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mV0+oh+l7u4kJ6illcn1TzgHR8FXz7lNfEJu+cV2b3M=;
        b=kpaaYfjrFGq+G9MGIu2xIoaD5VQ55R3R/CxIQ3nWwWhhiWUIf1e1xYS9XsJWraSju7
         Z/WkMZm4v9FApNYgJXaVuc3uh85aa7oSxBxx+d9V+9yU5M9cLHkWYhhRQFapJtMMY5PI
         gTkV6tXkdO8iLATYqMUtGVRqUCDs0gAHpj9pV8lYpdzXm7uw7Oi4UxdCajPZgsUCcA/w
         BYJyD2BRb+Rks0GbGKObyVWVXDXQxH07ilFq9NUjH64vuNtXZpBjJ3Rtt9Cee0sm14CI
         jd0xKTvhPkPk8hh1+Wxgrim+dGVTUjEf1Cof+9V0ku98iZROpNIQPkfHeNDFNroOh9HT
         w6iw==
X-Gm-Message-State: AAQBX9co2+tHqvc9mepiaZFrS0QBq3FIfHS7mMuCRa488/O40029fL4D
        c7WrsBDgjBAuhvEzagvWZd80yA==
X-Google-Smtp-Source: AKy350bBOfZplRWkTpeeT0ceEob3PTLeDFq8qkKToR90OcxrWk/VYqw3HmYPvoJjrh1ldTiwtdfHog==
X-Received: by 2002:a2e:9ecb:0:b0:298:a7a7:47e with SMTP id h11-20020a2e9ecb000000b00298a7a7047emr7111926ljk.19.1680182753253;
        Thu, 30 Mar 2023 06:25:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v6-20020a2e9f46000000b002a6062f4a60sm1101270ljk.53.2023.03.30.06.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 06:25:52 -0700 (PDT)
Message-ID: <cfa5904e-8ae4-6d39-ed4e-35d1b55e2b04@linaro.org>
Date:   Thu, 30 Mar 2023 15:25:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v6 06/12] dt-bindings: arm: Add initial bindings for
 Nuvoton platform
Content-Language: en-US
To:     Jacky Huang <ychuang570808@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
        gregkh@linuxfoundation.org, jirislaby@kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
        arnd@arndb.de, schung@nuvoton.com, mjchen@nuvoton.com,
        Jacky Huang <ychuang3@nuvoton.com>
References: <20230328021912.177301-1-ychuang570808@gmail.com>
 <20230328021912.177301-7-ychuang570808@gmail.com>
 <CAL_JsqKrrWyOKGUAaT-8r-nKvtS5f_gHAhE5=XaXuGtuYC2gCw@mail.gmail.com>
 <a497eb9c-8279-d4e9-3b8d-537ffa1f7522@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a497eb9c-8279-d4e9-3b8d-537ffa1f7522@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 12:41, Jacky Huang wrote:
> Dear Rob,
> 
> 
> On 2023/3/29 下午 09:07, Rob Herring wrote:
>> On Mon, Mar 27, 2023 at 9:19 PM Jacky Huang <ychuang570808@gmail.com> wrote:
>>> From: Jacky Huang <ychuang3@nuvoton.com>
>>>
>>> Rename the bindings/arm/npcm directory as nuvoton.
>>> Add binding for ARMv8 based Nuvotn SoCs and platform boards.
>>> Add initial bindings for ma35d1 series development boards.
>>>
>>> Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>
>>> ---
>>>   .../bindings/arm/nuvoton/nuvoton,ma35d1.yaml  | 30 +++++++++++++++++++
>>>   .../nuvoton,npcm-gcr.yaml}                    |  2 +-
>>>   .../npcm.yaml => nuvoton/nuvoton,npcm.yaml}   |  2 +-
>>>   3 files changed, 32 insertions(+), 2 deletions(-)
>>>   create mode 100644 Documentation/devicetree/bindings/arm/nuvoton/nuvoton,ma35d1.yaml
>>>   rename Documentation/devicetree/bindings/arm/{npcm/nuvoton,gcr.yaml => nuvoton/nuvoton,npcm-gcr.yaml} (93%)
>> Since you are moving it, this one should be moved to bindings/soc/nuvoton/
>>
>>>   rename Documentation/devicetree/bindings/arm/{npcm/npcm.yaml => nuvoton/nuvoton,npcm.yaml} (93%)
> 
> OK, I will move "Documentation/devicetree/bindings/arm/npcm" to
> "Documentation/devicetree/bindings/soc/nuvoton".

To clarify - Rob asked *this one*. Not all.



Best regards,
Krzysztof

