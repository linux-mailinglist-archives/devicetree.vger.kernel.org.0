Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84ACE4C0119
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 19:18:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234477AbiBVSSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 13:18:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234442AbiBVSSY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 13:18:24 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59479657A8
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 10:17:57 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id vz16so45572104ejb.0
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 10:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=9bhd07zCdaxpy0M7izmCDuaMW/aakZ/2KBRTmVTQxBk=;
        b=E/jmpx4/G+75EM3Db27YuB27H56JL7rxSh5hZbyV0JXQMYmJOZQaP40pWph18n8pI4
         RC6611I0QWglIaOoAyjD4QQmlcZwJf7TzmqHIdLyphDbfd45Wl4HMUmxUe2MbPDI2hUr
         fGa0qmIje34LObmzFZGq/O3IEZ6tzUkUZWG+wycZq/WDHrTm/e5ng65ibCt0c503IaL5
         lDem+pBfX8vdzgOP4fVv/HmRwPQ2OcRVhpO/VpxrI1yE4WuJFHMBLcdOI61TvIaRjldl
         RjL8qZQnCqhxpz7tP1G9iUEyV44Vyufzs3C2jJlgSU6rP+lW0cbhGrMckIPDmhEq84Yj
         tVGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=9bhd07zCdaxpy0M7izmCDuaMW/aakZ/2KBRTmVTQxBk=;
        b=Njm7Y1Uw/yD6LmJCCXk48SzaU/l1jndxB4iQxqGgyqoS9XjfB6OIWFbGB+Q0g55ygP
         /qj0BQgIHRgLVedG9Uutc6q6GgeHVyTLgZEn66FUXQ8eoCAdHQtUVfqslAXxheEnEO89
         taqy4CMf0IE6FkqOdXdR+16jDt4GiVT4VKPP9kAbz9wXH0dmHP6gEgOid/PtPUCcCdWj
         XgoGsiyZfrfNJtqr5ViO/J7tURWEJdRn1wINKdZeOZQdz6qz9pTEeVRmhd7Y6YxrXlb+
         H5g6Bgm/cw+QCR0t+p89nJn8eWheN8MjkkW7K57OgmNFMQLPdVCHhGHVZ7ArwK90jchC
         F2Qg==
X-Gm-Message-State: AOAM530q/u0WwPRXHwe4ZS5h+E551v1nSmYjYnypR5w0CFe8OQDhresJ
        KFMkUj7KgaOMWqk2PQX+a1TmAIAxLKg=
X-Google-Smtp-Source: ABdhPJwzoIoAO9MtKvt7j055dhfmEt6aez5R6BZ1XicL32hEOtW++qk2B21g+BVRHobXEZrZDdHbhw==
X-Received: by 2002:a17:906:ae56:b0:6ce:375a:4b93 with SMTP id lf22-20020a170906ae5600b006ce375a4b93mr20805627ejb.189.1645553875762;
        Tue, 22 Feb 2022 10:17:55 -0800 (PST)
Received: from ?IPV6:2003:ea:8f4d:2b00:9cef:d49f:b9d:efeb? (p200300ea8f4d2b009cefd49f0b9defeb.dip0.t-ipconnect.de. [2003:ea:8f4d:2b00:9cef:d49f:b9d:efeb])
        by smtp.googlemail.com with ESMTPSA id 9sm6553307ejd.184.2022.02.22.10.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 10:17:55 -0800 (PST)
Message-ID: <1c85aa0b-8a37-df62-2896-d5652c81535c@gmail.com>
Date:   Tue, 22 Feb 2022 19:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v2 3/6] dt-bindings: auxdisplay: Add Titan Micro
 Electronics TM1628
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
References: <1f39432b-84e2-e6dc-a6b8-c48ad5cf2210@gmail.com>
 <39d61ddb-4b54-4a13-fbb2-c0f88d9bf017@gmail.com>
 <1645539763.080061.3016155.nullmailer@robh.at.kernel.org>
 <e1998e9e-3bb9-9516-8cf3-3b4ab8576e92@gmail.com>
In-Reply-To: <e1998e9e-3bb9-9516-8cf3-3b4ab8576e92@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22.02.2022 18:00, Heiner Kallweit wrote:
> On 22.02.2022 15:22, Rob Herring wrote:
>> On Mon, 21 Feb 2022 21:23:18 +0100, Heiner Kallweit wrote:
>>> Add a YAML schema binding for TM1628 auxdisplay
>>> (7/11-segment LED) controller.
>>>
>>> This patch is partially based on previous RFC work from
>>> Andreas Färber <afaerber@suse.de>.
>>>
>>> Signed-off-by: Andreas Färber <afaerber@suse.de>
>>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>>> ---
>>> v2:
>>> - (re-)add Andreas' SoB
>>> - fix YAML errors reported by Rob
>>> ---
>>>  .../bindings/auxdisplay/titanmec,tm1628.yaml  | 88 +++++++++++++++++++
>>>  1 file changed, 88 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/auxdisplay/titanmec,tm1628.yaml
>>>
>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/auxdisplay/titanmec,tm1628.example.dt.yaml: led-controller@0: 'spi-3-wire', 'spi-lsb-first', 'spi-max-frequency' do not match any of the regexes: '^.*@[1-7],([1-9]|1[0-6])$', 'pinctrl-[0-9]+'
>> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/auxdisplay/titanmec,tm1628.yaml
>>
>> doc reference errors (make refcheckdocs):
>>
>> See https://patchwork.ozlabs.org/patch/1595730
>>
>> This check can fail if there are any dependencies. The base for a patch
>> series is generally the most recent rc1.
>>
>> If you already ran 'make dt_binding_check' and didn't see the above
>> error(s), then make sure 'yamllint' is installed and dt-schema is up to
>> date:
>>
>> pip3 install dtschema --upgrade
>>
>> Please check and re-submit.
>>
> 
> When I run "make DT_CHECKER_FLAGS=-m dt_binding_check" then this error isn't reported. I have:
> 
>> yamllint -v
> yamllint 1.26.2
> 
>> dt-doc-validate --version
> 2022.2.dev1+gf677c85
> 
>> pip show dtschema
> Name: dtschema
> Version: 2022.2.dev1+gf677c85
> Summary: DeviceTree validation schema and tools
> Home-page: https://github.com/devicetree-org/dt-schema
> Author: Rob Herring
> Author-email: robh@kernel.org
> License: BSD
> Location: /usr/lib/python3.10/site-packages
> Requires: ruamel.yaml, jsonschema, rfc3987
> Required-by:
> 
> What else could be messing?
> 
> If it matters: I'm building on latest linux-next.

I was able to reproduce the error eventually.
