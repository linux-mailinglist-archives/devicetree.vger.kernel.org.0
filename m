Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 575F351426D
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 08:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354577AbiD2GiY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 02:38:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354581AbiD2GiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 02:38:23 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C9F92AC8
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 23:35:05 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id g23so7906794edy.13
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 23:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=EfOqHDUetBl096bHcE1vJPq8IrljeUw7/thDQpMzW2k=;
        b=M6KvAyfi062spM/pz7j2kQTVHgQWKRm0g1gNfOo5pK1OEvU83X12561d+7ztFnIHYG
         K5uLtkzvqVUz3M0ghqYI7rPQE75rdNBHAy9m5/ANvr4uvr1YAQ05BZDGsBJvWXNzAi45
         W9fXyRWBA2+pqDilrHII7TA8D0Y/MabLqF7kn9qP2QcAfuGD43fABiEMBG21VRqjET6X
         472veiRHITcz+7tqe0MBKnpFXwlL8uYJypr/9v570xC2Zk73gCwbrRJAbDdhv08a+IhL
         lUpSn49GkAoy+X1/p75x42gX9Mg3yPfRFOoTGOAlNFcDQMarJv/e6Vyj3mE4qWjeJ8l5
         iBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=EfOqHDUetBl096bHcE1vJPq8IrljeUw7/thDQpMzW2k=;
        b=CWtgEF4MAjiUheu3CncGTNrx+6I4JbH1fSct67KkQ7YVHEkfXja2hszIjgr8xRzo+k
         fhOIa0+4YCeDBk0TcHPbD0iFYMmj6IG0IKBST80qWPFVbqIB3ooFw80qQqfuRUJ7z7tM
         wS1cyyaBaQVCQ5IkGtMVE6W7HpGqiYkkwmapI2gGSCVldgcSLfdlTQlCSIJ4nqis2Hqs
         uxMeJS00DF+kikh0T/NiERD6L+CFx8u9JsNaIYPaVIua9SdrV+ild+bEiY5frMJt+pYU
         LsayD2jm+k8dLL8TjREz21TJ19aiWJUn0KlcojniwY3aIwj1sY3YfPy+EVv4HbE/vbkD
         6Fcg==
X-Gm-Message-State: AOAM532l60GtMP8Hyl4Du0ZNZvwTXhYJ8OcW+3CnXjl5ZMfcsiOoffcg
        berGt+HpaFDLhZAVwioDAeVESQ==
X-Google-Smtp-Source: ABdhPJy6y9rIbrBYO1s+q5i9b16gf/Sx1CIi2GH2tAP+RX+9r8Drv2+kwpY5AxGUARnaWAM7oU+WyA==
X-Received: by 2002:a05:6402:2787:b0:425:fa59:ebf8 with SMTP id b7-20020a056402278700b00425fa59ebf8mr18860703ede.53.1651214103828;
        Thu, 28 Apr 2022 23:35:03 -0700 (PDT)
Received: from [192.168.0.168] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ze16-20020a170906ef9000b006f3ef214e44sm343463ejb.170.2022.04.28.23.35.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 23:35:03 -0700 (PDT)
Message-ID: <54dc7bc6-2849-157b-1245-75df2392a2cf@linaro.org>
Date:   Fri, 29 Apr 2022 08:35:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 05/11] dt-bindings: serio: add Arm PL050 DT schema
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-6-andre.przywara@arm.com>
 <55574426-df20-cdd7-c97d-092726981a42@linaro.org>
 <20220428182708.0c1065f8@donnerap.cambridge.arm.com>
 <993d74fa-be5b-6db2-6bba-2323de7757f3@linaro.org>
In-Reply-To: <993d74fa-be5b-6db2-6bba-2323de7757f3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/04/2022 08:29, Krzysztof Kozlowski wrote:
> The driver is coming from ancient times, so it is understandable it has
> some old coding style. But it definitely not sailed away. :)
> 
>> So by
>> changing this we would break both the existing DT's compliance and also
>> existing Linux kernels.
>> So is lowercase something that is mandated by DT schema, or can we just
>> make an exception here?
> 
> This uppercase clock name affects even ARM64 devices, so it seems the
> device is still being used. Therefore I propose to add new clock name,
> old as deprecated and support both in the driver:
> 
> 	kmi->clk = clk_get(&dev->dev, "kmirefclk");
> 	if (IS_ERR(kmi->clk)) {
> 		kmi->clk = clk_get(&dev->dev, "KMIREFCLK");
> 
> and convert the DTS as well later on.

On the other hand, I don't find this as that important if you do not
have time for it, so I am fine with the exception and uppercase name.

Best regards,
Krzysztof
