Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8AC7590BE
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 10:57:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230508AbjGSI5x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 04:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbjGSI5w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 04:57:52 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF8F119B2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 01:57:47 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99454855de1so618756866b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 01:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689757066; x=1692349066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OQPPMyA/DjFdcuMYDpJGjMvgUHLS2QyPF2AsS5fazNA=;
        b=dyP4RNx5sE81fIJkmbCBN+1V3mzI4i9dwW7xHLRQ2arprnQc64rVKpVRRLIwcPrt6n
         tVoZBzeSIjjfSkOus0Zqp7W+A7BEdZghotiQkIsICIUi+mjOKe2hK350EApRu2EWatUX
         sJ+1EOXAGNH3tn6cCozEnpohl3sd+ntfNxWMtAsQGtEGX0YSyJl9jFFmYSNtiz34IQYP
         AV0nTdxksvg+NB2fVxyLG+SXhTpEKjbuKk4PbRNQROD56fipXan43IW1Qp98gDn8wYvb
         l5uBJcdvFaSGg01jha7LcoIx5NUg3CCrCH1DXSKIDgWtl3ntxduVhiYPJD5nhmmP1kDS
         JboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689757066; x=1692349066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OQPPMyA/DjFdcuMYDpJGjMvgUHLS2QyPF2AsS5fazNA=;
        b=OmDFxpQd46zBfDGtP/Q6HcWzV1EprZWggHRZbOFV8oQ+whCa6PEYOz/kq2PlXQ8CDV
         V8RTVa1rlABqJBcEjMRcRfJpmsfeSbc8CCtu4Xyg42N+YVR5dpYswsDHgADUyDSjBvJm
         t200hISY1Y94I866OBhMGwCRbPSU0mWT7zJZyfxGD2SPdpYBFYkV/1y5mq5uzxAxVVrZ
         NwOSnD5L8DYK7cgHrOxhsDWHhzXlSHp4M+JDbYKPo7Pz9FCetpowKyYZylkxCJhlnD0T
         r63T/3mjf52Htjr2rJOZMT2ZsDO+Kbj6wQY5mtvlUZfSO8tVXOlCYPhFwFrcRyI5kwBu
         OzVA==
X-Gm-Message-State: ABy/qLZm1AmOyXqzuFFzTufNxeU1PECUyv97xttx8Jt5LLSTkKUAMD1o
        odlDlW4jpjiOYGN+eaNJs4GfMQ==
X-Google-Smtp-Source: APBJJlFI2yGYfE6J9XyIkYgYW7xwBVjwfIRzVK+UlmA1YW54zQpo6QUaIr7Rk3fMx/gsnqw5osuEyQ==
X-Received: by 2002:a17:906:24f:b0:98d:d6b2:3377 with SMTP id 15-20020a170906024f00b0098dd6b23377mr1847024ejl.30.1689757066069;
        Wed, 19 Jul 2023 01:57:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id y14-20020a1709063a8e00b00984822540c9sm2062531ejd.96.2023.07.19.01.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 01:57:45 -0700 (PDT)
Message-ID: <88c8e146-a0da-161a-fc03-5bda103aff12@linaro.org>
Date:   Wed, 19 Jul 2023 10:57:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/2] regulator: dt-bindings: rtq2208: Add Richtek
 RTQ2208 SubPMIC
To:     Alina Yu <alina_yu@richtek.com>
Cc:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <1689740741-29244-1-git-send-email-alina_yu@richtek.com>
 <1689740741-29244-2-git-send-email-alina_yu@richtek.com>
 <860fffab-3c48-027d-aa2e-b15fc8f7a760@linaro.org>
 <20230719084619.GA10314@linuxcarl2.richtek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230719084619.GA10314@linuxcarl2.richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2023 10:46, Alina Yu wrote:
> Hi,
> Krzysztof,
> 
> On Wed, Jul 19, 2023 at 09:43:03AM +0200, Krzysztof Kozlowski wrote:
>> On 19/07/2023 06:25, alina_yu@richtek.com wrote:
>>> From: alinayu <alina_yu@richtek.com>
>>>
>>> Add bindings for Richtek RTQ2208 IC controlled SubPMIC
>>>
>>> Signed-off-by: Alina Yu <alina_yu@richtek.com>
>>> ---
>>> v3
>>> - Fix some typos
>>> - Modify the descriptions for "richtek,mtp-sel"
>>> - Modify the node name to lowercase and remove underscore
>>> - Remove '|' from description
>>> - Remove "regulator-compatible" from property
>>> - Remove "regulator-state-mem" from pattern
>>> - Modify node name to generic one
>>> ---
>>>  .../regulator/richtek,rtq2208-regulator.yaml       | 206 +++++++++++++++++++++
>>>  1 file changed, 206 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/regulator/richtek,rtq2208-regulator.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/regulator/richtek,rtq2208-regulator.yaml b/Documentation/devicetree/bindings/regulator/richtek,rtq2208-regulator.yaml
>>> new file mode 100644
>>> index 0000000..2fc92e5
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/regulator/richtek,rtq2208-regulator.yaml
>>
>> No improvements here.
>>
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my
>> feedback got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all
>> requested changes or keep discussing them.
>>
>> Thank you.
>>
>> Best regards,
>> Krzysztof
>>
> 
> 
> Sorry, I missed this one "Filename like compatible".
> If I modify the filename to "richtek,rtq2208.yaml", is it unlike a compatible ?

Yes.

Best regards,
Krzysztof

