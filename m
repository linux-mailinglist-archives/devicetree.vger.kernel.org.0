Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D80936D27C3
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 20:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232896AbjCaSZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 14:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232048AbjCaSZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 14:25:35 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAA181BF4C
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 11:25:33 -0700 (PDT)
Received: from [192.168.1.141] ([37.4.248.58]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M5Q6n-1pgvr03b2D-001OOK; Fri, 31 Mar 2023 20:25:03 +0200
Message-ID: <5e203deb-4415-0c7f-72b6-e87cc4e61472@i2se.com>
Date:   Fri, 31 Mar 2023 20:25:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V3 2/6] dt-bindings: Add DS2482/DS2484 as trivial device
To:     Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20230331095715.5988-1-stefan.wahren@chargebyte.com>
 <20230331095715.5988-3-stefan.wahren@chargebyte.com>
 <CAL_JsqJ8rabJ7ZSzrvpzxrNrki1jZ7Ry1iVxf1CZOU5pxvjmdg@mail.gmail.com>
Content-Language: en-US
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <CAL_JsqJ8rabJ7ZSzrvpzxrNrki1jZ7Ry1iVxf1CZOU5pxvjmdg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:DU1Hi95Fqei9Ae3G0s9n0ig26gJ8wcVR7wrK/FO38vA9Z4WGIWT
 cSZdfB5Ncw5SXOlY4cy9fC/b0navQAEVZZMRtPCvfUlc/IV6xYt1h9brM7nQEaB9jaUEbUo
 I85FEHrcOHe9MHHf+h2VarYVkWOwcvCGf+aINfiWbgWvAxzi8TiBahYHz7MeA7grR0S2dQT
 GJhWegzGbD18lcQqcXGIw==
UI-OutboundReport: notjunk:1;M01:P0:STfmCvhAC4w=;VFrHzV41Cb7G5Vvu1AnfAdv/go9
 zmZaDip/mqJrJ4OgKfbUJA4Fb7i12enpTPzD7NRdEBJVTBJEGiqC+2+IUhniamfizSlc+TlTt
 7IZnwch3NYkYEDw3GgrvuzFIMTvA6nPsNA0NOoH467qzn0LVfLSRYZkFfNcevA4PhpHN38UqC
 58BXe0aurf5G8cIJRsmGiQUEK0lWDtl3QmyVDY6ote69NC0qkBRYWIumJ+9Rew6TI7z4Q+VTP
 3MlWe4+W+28BrFey9pQitMYm7n7pSx/aX186ZC5rCL9JIR1OdjHTnFh3ZnH40EWG56BS54Cyg
 Y78+46XrIRGc2ThhW8idd+AlHSFz3LO33CJoVINPZ7UK/ZKK1+R51tAIwp+4pPKuwxXrljyiF
 PpMQcwhnmkk3NjnW8Lil+a4662r1slgYDPCEE0wl594RA6zy/y0PWQmfgfSPDV0lRreDUyu6g
 0n4lf977LRKz9f8G0NxXyqSvQjHlwHXhQLmG8B2TDDRFknWtLKDwwCBLBG2wQ4ZyyMi6fjYqx
 jVypujtKrD9ayi1fE8K706yNucIWPD48ZpUHL0rXJVqbBbdNYpyP4TRt4RERfEW+KcKFRajGq
 9yy6dhvt2WQfPQ+tRV0OsJF3PbhqrCIFYSBCrM4devywp3ggm9s57NdQYczwam3VfclQxZH3B
 XbA+TXlDgk5JhgTCtuxfnp7difSoTfVeq5FEiDhxgQ==
X-Spam-Status: No, score=-0.0 required=5.0 tests=NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Am 31.03.23 um 17:49 schrieb Rob Herring:
> On Fri, Mar 31, 2023 at 4:58 AM Stefan Wahren
> <stefan.wahren@chargebyte.com> wrote:
>>
>> Both chips are I2C to 1-wire bridges.
>>
>> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
>> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
>> index 6f482a254a1d..9b7b24989359 100644
>> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
>> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
>> @@ -183,6 +183,10 @@ properties:
>>             - maxim,ds1803-050
>>               # 100 kOhm digital potentiometer with I2C interface
>>             - maxim,ds1803-100
>> +            # I2C to 1-wire bridge
>> +          - maxim,ds2482
>> +            # I2C to 1-wire bridge
>> +          - maxim,ds2484
> 
> A 1-wire device isn't really trivial because it can have child nodes.
> You're probably not the first here, but don't add more.
> 
> You could do a "trivial 1-wire devices" schema similar to trivial RTC
> device schema.

okay. After thinking more about this, it isn't a trivial device at all. 
I will make a dedicated schema for this.

Best regards

> 
> Rob
