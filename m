Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 405B84BB839
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 12:36:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234667AbiBRLhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 06:37:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234634AbiBRLgu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 06:36:50 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D252B2B0B38
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 03:36:33 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8CA6E3FE4B
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 11:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645184192;
        bh=eqZvCZxGDjXGAgoTRaRXfKhQZpkzSKP7kp6S7SARNpY=;
        h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
         In-Reply-To:Content-Type;
        b=X/Qxqu1b2QA5P0fjlT4ZCgO09Roo3NibTaA+5/cCKWw3eF/2c2MpGjkTBGZdMJrGV
         F3rprKcYdulcjeXI4Yv9J6NoTV90IBCBYhJSxLGp6jfZsdfEp7sDtoqUnTO6blqBhl
         uzxTGl8ClNPKw2kpLp9c/QB9b5MdUvqo6pCF1J6xbB9UxHs0f7wYkiLTqXA66H7wwZ
         XU11lxK03TchitBQOK1vktLn4ZIPRqxxr6vPQidOVPyrEJ6YEC8z9voObMfFKkf3l+
         Ov9289IpGTmIQVmH4YO+BziF37/m4aPZ/X44MRt0K2ZTtq62avvwk/Jvk27ct7naBI
         O8+oBKLQriXYQ==
Received: by mail-ed1-f70.google.com with SMTP id eq13-20020a056402298d00b00412cfa4bb0eso547244edb.7
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 03:36:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=eqZvCZxGDjXGAgoTRaRXfKhQZpkzSKP7kp6S7SARNpY=;
        b=2JJ61wvu+ZCI2IWTDqB4C8/w7iY98+omIG55fVegeqWAYYWAGJgrL3Xrho2SFQPqtd
         37Z8caI9dnO+zZnt1Is0TojlDRkqmfd7l/6xpnKMvNj683JM/e17VJi4fWqlXxAUleXs
         VYWl1QWG1oC35OVFPoLUOO9Z84A5orwzssEjjYrL9fLI6P9uxagrzWBRxqVmSrFyKtWN
         IfTS9pT00Q+0MDFDnT6qhcbGdkr/XAHWBG1YsAaV75pUKh5dNg8jwHFRo44+XQsqANRh
         Cil+hkskjLIbGLnCG5BQcjeGs4shOeH6PkV2CVWQFgPEyUmaRWlbeVGaD9ZiOFuyvvyr
         HIJQ==
X-Gm-Message-State: AOAM533ljfWUfSX9Xfgv0sQZGjgqhO4lV6jmDjZxI2LguXNlEyQkj87x
        CLuwI3qxjKtVLf3Os13+D1R9032rUkbiKP4ncw8/ZKJ7FQpxjTZ5U56HlL7CSf0hwpiBCF8B5UF
        X6AxKv0KMJqpDOxdp3eX5EhsSC1yrsoBllxb872g=
X-Received: by 2002:a17:906:6408:b0:6ce:a125:9f8a with SMTP id d8-20020a170906640800b006cea1259f8amr6301212ejm.755.1645184192066;
        Fri, 18 Feb 2022 03:36:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwy81ceaKjvz0Zq2b5XTujzz20F5PuvcE9JiodWtJ3SHuBmN7udhs1Vua8wt9qc1W8hJbTynA==
X-Received: by 2002:a17:906:6408:b0:6ce:a125:9f8a with SMTP id d8-20020a170906640800b006cea1259f8amr6301190ejm.755.1645184191864;
        Fri, 18 Feb 2022 03:36:31 -0800 (PST)
Received: from [192.168.0.114] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id s15sm2182902ejj.84.2022.02.18.03.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Feb 2022 03:36:31 -0800 (PST)
Message-ID: <3a36a973-1bc2-0472-9820-375584e00982@canonical.com>
Date:   Fri, 18 Feb 2022 12:36:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/2] Documentation: dt: extcon: add optional
 input-debounce attribute
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Raveendra Padasalagi <raveendra.padasalagi@broadcom.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     bcm-kernel-feedback-list@broadcom.com
References: <1508406773-887-1-git-send-email-raveendra.padasalagi@broadcom.com>
 <12b558e3-dc99-db6a-73ea-7d704262ac6a@canonical.com>
In-Reply-To: <12b558e3-dc99-db6a-73ea-7d704262ac6a@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/02/2022 12:32, Krzysztof Kozlowski wrote:
> On 19/10/2017 11:52, Raveendra Padasalagi wrote:
>> Add documentation on optional dt attribute "input-debounce"
>> in extcon node to capture user specified timeout value for id
>> and vbus gpio detection.
>>
>> Signed-off-by: Raveendra Padasalagi <raveendra.padasalagi@broadcom.com>
>> Reviewed-by: Ray Jui <ray.jui@broadcom.com>
>> Reviewed-by: Srinath Mannam <srinath.mannam@broadcom.com>
>> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
>> ---
>>
>> Changes in v3:
>>  - Modified commit log to name debounce-timeout-ms to input-debounce
>>  - Added Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
>>
>> Changes in v2:
>>  Rename debounce-timeout-ms to input-debounce
>>
>>  Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
>> index dfc14f7..d115900 100644
>> --- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
>> +++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
>> @@ -10,6 +10,9 @@ Either one of id-gpio or vbus-gpio must be present. Both can be present as well.
>>  - id-gpio: gpio for USB ID pin. See gpio binding.
>>  - vbus-gpio: gpio for USB VBUS pin.
>>  
>> +Optional properties:
>> +- input-debounce: debounce timeout value for id and vbus gpio in microseconds.
>> +
> 
> Use standard unit suffix. See schemas/property-units.yaml in dtschema
> sources/repo.

Although different topic is what Rob expressed here:
https://lore.kernel.org/all/20171025145337.kubcbkxrhbsy6o4a@rob-hp-laptop/

It's a no go and sending new versions is not the way to deal with it.

Best regards,
Krzysztof
