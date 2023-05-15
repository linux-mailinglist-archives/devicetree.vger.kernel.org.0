Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F41A8702460
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 08:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230496AbjEOGUQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 02:20:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbjEOGUP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 02:20:15 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC21E54
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 23:20:14 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bcb229adaso22493235a12.2
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 23:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684131613; x=1686723613;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QQk+upFNjcsFg1sTfIoyMrAZ0ApZ4GLo1P0y6xEnNys=;
        b=eT0zT+xSEQfDoDpnMzqokrZq7gA0Mk4Nl7GfodQ7lqZ4h3G6ka03Cbiveo8IwiPO+b
         T0VQkylmmVv2AJT5dTNUqMIxGe4DyF3NY7PdPFchGkaYDprgHSqoXIEsUNtkpkM4atpq
         qC42V8fC4L3TfJT0uKK6DfchiSkdR5T1mXw4ps7hdgoKYW/rCcK91I2HYLSTkiO8c5FF
         rwwoDlXNR7R7lwAhTa2KIh+zYg4GB4Pb5/ADnSpRV+5zNDfyYKwdCdWo72TMC4faz6xm
         zjBzHFxbrGpMMfVdRU5378K6p/bo8wRO4P7lTIRQzf5Dor3g3vA5eSERa3n55lA3pF50
         My2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684131613; x=1686723613;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QQk+upFNjcsFg1sTfIoyMrAZ0ApZ4GLo1P0y6xEnNys=;
        b=bPixeAGLHSxQYdo+7E2eRnoNyWAJKGgdUAncMID+k283/F1Ikxqzwsz1ym8uzwle+T
         mOhiqILwS0c7UEtESYWLYFbA5w0xb7DF35d6rpJVqYBI8tUnGgJBV+xra1+9YtPwHxtr
         jyj2oHH6VZaKY1irVamsSLd/wPrfh4Zk0Py6AMiAKN1CohBjJKlT6oOfyWhzJ/dmg4bt
         Y+MBfvsEd/XxpFsZs665Fj/orWFwIaycL+mFdZd+hMv0Ey8T4CvZtpVDBURji7hBMznM
         J48k7ghc59x/i9XUuD7pVQvs7rJDdss2PRT5T6GXpluFR9aB0Dk4w84LEcbuPZgH/ifd
         Ez0w==
X-Gm-Message-State: AC+VfDx+V/SBKwy0WZPZ99onrwnJyGmkXRcs9BheiscujjKfHLypy2wO
        cJU6tuPBGzj7nziJnXvZO85sTQ==
X-Google-Smtp-Source: ACHHUZ4d3vzQJ1tsE9pjK4Ao9lH+3iqMv3T57c0i5bYRSlbvDcF9FXiWrVuPBq1Ny5XbBiLytc4Yeg==
X-Received: by 2002:a17:906:dc8c:b0:96a:6723:da48 with SMTP id cs12-20020a170906dc8c00b0096a6723da48mr14316989ejc.75.1684131613237;
        Sun, 14 May 2023 23:20:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id jl4-20020a17090775c400b009658475919csm9072367ejc.188.2023.05.14.23.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 May 2023 23:20:12 -0700 (PDT)
Message-ID: <21488506-9e91-e7b4-a995-645b70c720bf@linaro.org>
Date:   Mon, 15 May 2023 08:20:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: nau8824: Convert to dtschema
Content-Language: en-US
To:     AS50 CTLin0 <ctlin0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230512120146.600128-1-CTLIN0@nuvoton.com>
 <877338f8-d157-0f91-33a3-fdb03566aa57@linaro.org>
 <a1afe69d-2bb1-02d8-3573-dec370cc1a9b@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a1afe69d-2bb1-02d8-3573-dec370cc1a9b@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 04:47, AS50 CTLin0 wrote:
> On 5/14/2023 2:38 AM, Krzysztof Kozlowski wrote:
>> On 12/05/2023 14:01, David Lin wrote:
>>> Convert the NAU8824 audio CODEC bindings to DT schema.
>>>
>>> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
>>> ---
>> Thank you for your patch. There is something to discuss/improve.
>>
>>> +
>>> +  nuvoton,sar-threshold-num:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    description:
>>> +      Number of buttons supported.
>>> +    minimum: 1
>>> +    maximum: 4
>>> +    default: 4
>>> +
>>> +  nuvoton,sar-threshold:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +    description:
>>> +      Impedance threshold for each button. Array that contains up to 8 buttons
>>> +      configuration. SAR value is calculated as
>>> +      SAR = 255 * MICBIAS / SAR_VOLTAGE * R / (2000 + R) where MICBIAS is
>>> +      configured by 'nuvoton,micbias-voltage', SAR_VOLTAGE is configured by
>>> +      'nuvoton,sar-voltage', R - button impedance.
>>> +      Refer datasheet section 10.2 for more information about threshold
>>> +      calculation.
>>> +    minItems: 1
>>> +    maxItems: 4
>> Your description mentions 8 buttons, so maybe it should be 8 here? Or
>> description needs a fix?
> Driver just handle maxima 4 buttons for general application, but the the
> above description is truly hardware capability with 8 buttons support.

Then it should be 8.

Best regards,
Krzysztof

