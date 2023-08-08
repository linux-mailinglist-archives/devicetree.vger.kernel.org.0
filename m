Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C687773D81
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232477AbjHHQSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232526AbjHHQRK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 12:17:10 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 580763588
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:48:22 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b962c226ceso93425121fa.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509700; x=1692114500;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UUWWJpKA/6zwXJWGtCMuvBG3TRDaWAJxATaidUtAgac=;
        b=tXcwtS1PMYhagtOmzIqPLsOKqIGH2wBg/4s5iPv3kn6iKojI+zhRXuiTUczC2qiYbl
         p3aMmnzdBTQ49m55vHlsDh7/u0aeA1H53STXNDIYXg9ZMj9n0sW5XJExXL0dntEA0ajT
         I0tf9htzM0rWkUywDdt44wO8TECnma57bHzBLCzjjvG5BKPjK2TUbubyUt0gmvd2OLJ8
         qNVFZ5zJMEj8VssyauVqQ3k+ywZglugXRHwAMkmEymTkm3+2iWQN9OOQ43EdjyeqCXaN
         gk190uGIg5cGNTzbBhDxUpPxaA6nsY8jD5QYSY9kIdMC2fBNWukRhLmJ6NlBOc75HB1I
         3pEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509700; x=1692114500;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UUWWJpKA/6zwXJWGtCMuvBG3TRDaWAJxATaidUtAgac=;
        b=UGHHEHKn7BOB5Y7CzbRfgtu0SP+gbVz2wT9dzXwA3+RmciYX3U0Mi7YTsqF29KqAgr
         m0yJxBJy/KUk1E+qdIfH5rA5PVuXn5tXbbTzCbrxUUVfmXMlyAPUh58wRe4K0EbofrK6
         xT1kGv0aKNH9TAVl5AqVeTI1tYDvR7SFYA7YgXQ2oQ1pVDo/olfb1lIYmSvrmtJDx30K
         YJkPTIwTg/QYf6rsVzzkhIPtghEFzqUIW9VhcADwbH0wwF753VAMtllBmJPFOoe4eBuL
         hBwfcI7zEzzKrAF6MSJJ135AL96bfay5Ox/DZXvU8KY2xKoFNpdHX8LB8ABvpCVhCyYT
         hkgQ==
X-Gm-Message-State: AOJu0Yyq2Wyk1DXN/vLRSdpkpOjO67QpCbWUE1M4sHWtfho/kN7rrwH1
        HgR0sp2pTvk2nYyreOLoUf4FGiTGJ6V+l3LQrxM=
X-Google-Smtp-Source: AGHT+IESMg7JzrGFpGM30sigc77/m28bfDkUOPdPqGf70edI8KNzvVpGtPkhRGubKlKkdCSwOam6hg==
X-Received: by 2002:adf:ef42:0:b0:314:54f0:df35 with SMTP id c2-20020adfef42000000b0031454f0df35mr8529088wrp.16.1691489895173;
        Tue, 08 Aug 2023 03:18:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id k18-20020a5d5192000000b003143b7449ffsm13177574wrv.25.2023.08.08.03.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 03:18:14 -0700 (PDT)
Message-ID: <1ade44f5-b3d1-dcde-6819-9e944f3b115d@linaro.org>
Date:   Tue, 8 Aug 2023 12:18:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] dt-bindings: remoteproc: pru: Add Interrupt property
Content-Language: en-US
To:     Md Danish Anwar <a0501179@ti.com>, Conor Dooley <conor@kernel.org>,
        MD Danish Anwar <danishanwar@ti.com>
Cc:     Suman Anna <s-anna@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, vigneshr@ti.com, srk@ti.com,
        nm@ti.com
References: <20230807110836.2612730-1-danishanwar@ti.com>
 <20230807-euphemism-trailing-ef4130dc7437@spud>
 <910a4a98-712a-5517-5a5b-ffb962f83463@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <910a4a98-712a-5517-5a5b-ffb962f83463@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 11:44, Md Danish Anwar wrote:
>>>    properties:
>>>      compatible:
>>> @@ -171,6 +181,9 @@ examples:
>>>                <0x22400 0x100>;
>>>          reg-names = "iram", "control", "debug";
>>>          firmware-name = "am65x-pru0_0-fw";
>>> +        interrupt-parent = <&icssg0_intc>;
>>> +        interrupts = <16 2 2>;
>>> +        interrupt-names = "vring";
>>>        };
>>
>> These examples would probably be more helpful if they used the
>> appropriate defines, no?
>>
> 
> PRUSS Interrupt controller doesn't have any appropriate defines. This doesn't
> use GIC so defines from arm-gic.h can not be used here. These are specific to
> PRUSS INTC.
> 
> I think these example are OK. Please let me know if this is OK to you.

But isn't "2" type of the interrupt?

Best regards,
Krzysztof

