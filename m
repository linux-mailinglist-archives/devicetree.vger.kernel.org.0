Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 525EA6870DD
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 23:13:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231681AbjBAWNh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 17:13:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbjBAWNg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 17:13:36 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A8335CD2F
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 14:13:35 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso2146wmq.5
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 14:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CNRHDNKDz3PF77hDFv89NP6dgEBns2Rf5wX2Wa7bFI8=;
        b=h/p2OM4mxGvy1Tl/Mtj7PX3iy1EGHMIuVgAzpipXtMRbXjPzkHXPJvfxa6r0/Ph/Zf
         8kGgUz62Ubm68nL+6PWXCCKPeeELaoEI/HaTaZeYkaOs7faV++mKUGwgB0cfN19evZaZ
         r8Nq3cQkYpXmguGZVYFII3o7Xdyr328Ntd11U+Y3Ey1GCiGa/tuz10Ts/HIrcQSPVFeH
         rhyxlQOdSXepRAjF4OlIKW6BIfMPYuPd44tV8lYAkVHeW5XFe+l6W6+zRlLTC5HPPBOc
         xSVFkxs8VIs9nl+pImlghdoqBlgiGTKfgmOR7ZAKBcnFBujzcA696eJbN7dQFSq+eFB4
         AquA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CNRHDNKDz3PF77hDFv89NP6dgEBns2Rf5wX2Wa7bFI8=;
        b=PetLzDQA8sWXo/RhwdEI5CL436DMBy785XV2yB63tGlf+bJgzecvaxJYn+0K5soEP6
         Q7dT9X7RDLJLigd2aqCmErFo5o//Q7kCa6IuVIpozQf8g3WNOxse9mcYVFdkzKCL+6oz
         5ZDuBga7aDNH7wj/z//636GQWhzRdvh19F66sxrjsbnK7TL4U1AKRqhiJFd5R4lvng4w
         MKDwv/NF5lhCXW+w4IT82I2X91yois3GlgfhwAEZRWkZ3BK0owAOZmXm9GQAqR+HAz95
         3zLSQHOWVONgDVsB2Z5/UkWhRGg4J+H0DryIxBd95RdkdmPbOPr9z07I40/aouq7q9VN
         NfUg==
X-Gm-Message-State: AO0yUKUJp5wX6AOULqqSNvpiqzioaCHI6kCP9TQfAeYld2UBOkda1vkV
        Nj+SqmoOTs+mg9byGqcQVu0=
X-Google-Smtp-Source: AK7set8m1ylKmngS1T2pC+6ncY2Puh9mLc4nJuWQjIDtQIMBCY0jMfdrIrlEl89gFkkPtqnUWZ9vEg==
X-Received: by 2002:a05:600c:3b16:b0:3d3:4f99:bb32 with SMTP id m22-20020a05600c3b1600b003d34f99bb32mr3488208wms.36.1675289613368;
        Wed, 01 Feb 2023 14:13:33 -0800 (PST)
Received: from ?IPV6:2a01:c23:b912:d400:3963:7bc4:12b:ddb3? (dynamic-2a01-0c23-b912-d400-3963-7bc4-012b-ddb3.c23.pool.telefonica.de. [2a01:c23:b912:d400:3963:7bc4:12b:ddb3])
        by smtp.googlemail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm3078760wmb.37.2023.02.01.14.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 14:13:32 -0800 (PST)
Message-ID: <b0e502fa-ef11-df82-ad45-9367ff7c75b3@gmail.com>
Date:   Wed, 1 Feb 2023 23:13:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3] dt-bindings: pinctrl: Convert Amlogic Meson pinctrl
 binding
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <cb62dfc0-cb3d-beba-6d0b-8db18583dda0@gmail.com>
 <285b7b4b-4fd4-be5f-266c-96b1ee6f4cbf@gmail.com>
 <20230201020647.GA2318275-robh@kernel.org>
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <20230201020647.GA2318275-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01.02.2023 03:06, Rob Herring wrote:
> On Mon, Jan 30, 2023 at 10:00:24PM +0100, Heiner Kallweit wrote:
>> Convert Amlogic Meson pinctrl binding to yaml.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>> v2:
>> - consider that more than one compatible can be set
>> - remove bus part from example
>> v3:
>> - remove minItem/maxItem properties for compatible
>> ---
>>  .../pinctrl/amlogic,meson-pinctrl.yaml        | 122 ++++++++++++++++++
>>  .../bindings/pinctrl/meson,pinctrl.txt        |  94 --------------
>>  2 files changed, 122 insertions(+), 94 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl.yaml
>> new file mode 100644
>> index 000000000..7aaae606b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl.yaml
>> @@ -0,0 +1,122 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pinctrl/amlogic,meson-pinctrl.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Amlogic Meson pinmux controller
>> +
>> +maintainers:
>> +  - Neil Armstrong <neil.armstrong@linaro.org>
>> +
>> +allOf:
>> +  - $ref: pinctrl.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - amlogic,meson8-cbus-pinctrl
>> +              - amlogic,meson8b-cbus-pinctrl
>> +              - amlogic,meson8m2-cbus-pinctrl
>> +              - amlogic,meson8-aobus-pinctrl
>> +              - amlogic,meson8b-aobus-pinctrl
>> +              - amlogic,meson8m2-aobus-pinctrl
>> +              - amlogic,meson-gxbb-periphs-pinctrl
>> +              - amlogic,meson-gxbb-aobus-pinctrl
>> +              - amlogic,meson-gxl-periphs-pinctrl
>> +              - amlogic,meson-gxl-aobus-pinctrl
>> +              - amlogic,meson-axg-periphs-pinctrl
>> +              - amlogic,meson-axg-aobus-pinctrl
>> +              - amlogic,meson-g12a-periphs-pinctrl
>> +              - amlogic,meson-g12a-aobus-pinctrl
>> +              - amlogic,meson-a1-periphs-pinctrl
>> +              - amlogic,meson-s4-periphs-pinctrl
>> +      - items:
>> +          - const: amlogic,meson8m2-aobus-pinctrl
>> +          - const: amlogic,meson8-aobus-pinctrl
>> +      - items:
>> +          - const: amlogic,meson8m2-cbus-pinctrl
>> +          - const: amlogic,meson8-cbus-pinctrl
> 
> Again, can't have both with and without the fallback allowed.
> 
Hi Martin,

meson8m2 is the only chip version having a fallback for the
pinctrl compatible. Is this fallback really needed?
Looking at the driver it seems that both compatibles
are handled identically.

