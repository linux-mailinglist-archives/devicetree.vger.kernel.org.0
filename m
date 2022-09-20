Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A5835BDE45
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 09:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbiITHdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 03:33:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbiITHdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 03:33:18 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7938F5FACE
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 00:33:17 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a14so1920695ljj.8
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 00:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=PPl4mpHHpnRstvj9PRcbnaluXmvv7htKw/1jIOn3Ff4=;
        b=wbqVz5N0/fG0DlYdxK26xJ1g4MjRPTmojsGv9T++41W2N/vfL/DIefDUwnru1Nx2z3
         QOw61PZlDwyKlphqlniGHOEaIQ63R2HdRwO8ZgetJvB6WBZl2yXADIBa6GDG8JjL7Vz0
         Rb8MdkVrTp5yxVeMbhCEkJZUXSX7m42QCv+M1tY0yunUfTw5cH7f2PhXF93hhB1/tFXm
         9HFNbDgGcxAZjo9pd9Q1SywauKAUuuVk6du/PJfATDtV0ioveU7yrvMRU9LzyvBc1rkQ
         eHJ75UmfWq8K5JZGyta7QuUX6YLtq84LJs4YzlYzRATEBT1FQ3LihNx0HcyM/+IFH+uS
         XuwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=PPl4mpHHpnRstvj9PRcbnaluXmvv7htKw/1jIOn3Ff4=;
        b=CNHpAMqxzo2+zzgfcp2QPsqyb4PJPwUNHWGBa93jVukgRMJNh0mL90hWZogdJEQuuH
         kuumzVSOwxkxhGG9XXOwupv0WgtPgOehHpAspbKrJ60JERyc7WMLSot7ZDBof6Ei34Cd
         883vkbed3yTudzdXQ6f+z6KDD6mzgItp28qvbcFTEcVJ/dhDHQvHBgQFjPUU2Q12PwDB
         pXMxUbY/I74L/4HQNVraY+sh1Slj2Xop5ippOP8ljpb+O0euo23F4osxN+h9cpgFxFMw
         UJuKtih1J4IREnBNzaIvR/Rf/4ab0AK54am0S4KyveFYSbmrOK2rgU5GEzTYhP0g7zeN
         L/UA==
X-Gm-Message-State: ACrzQf0gGUtmFxGdihr/ZFAjwn5IKt1XhnmaffyShW55kpM/xKXZOTlX
        H3SUCuKqM77lHsE4t1o0Pq+isQ==
X-Google-Smtp-Source: AMsMyM7cLpvAM7G86NTRFt7n+ogv3pvaor+5hOBpggjJ8POwyvQfXQqCkZgVZLq1iUzj5nW2bYUZvw==
X-Received: by 2002:a05:651c:1787:b0:261:c1ff:4407 with SMTP id bn7-20020a05651c178700b00261c1ff4407mr6325720ljb.257.1663659195867;
        Tue, 20 Sep 2022 00:33:15 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v10-20020a2ea60a000000b0026ad753448fsm122448ljp.85.2022.09.20.00.33.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 00:33:14 -0700 (PDT)
Message-ID: <79cfab3d-6b86-8876-cde2-59e43610431a@linaro.org>
Date:   Tue, 20 Sep 2022 09:33:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 1/3] memory: omap-gpmc: allow shared wait pins
Content-Language: en-US
To:     "Niedermayr, BENEDIKT" <benedikt.niedermayr@siemens.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>
Cc:     "rogerq@kernel.org" <rogerq@kernel.org>,
        "tony@atomide.com" <tony@atomide.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
References: <20220916120749.2517727-1-benedikt.niedermayr@siemens.com>
 <20220916120749.2517727-2-benedikt.niedermayr@siemens.com>
 <5d4d9412-6445-f3a3-0f86-6c41a37dca70@linaro.org>
 <7c13efa554d12324d402690753c27a8c0e803867.camel@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7c13efa554d12324d402690753c27a8c0e803867.camel@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 14:37, Niedermayr, BENEDIKT wrote:
>>
>> And how do you handle shared pin when the original owner unbinds?
> So first of all this code only keeps track of the wait_pin allocation from within the gpmc. If any other driver/code
> allocated this pin than the evaluation gpiochip_request_own_desc() would fail since the pin hasn't been requested by the gpmc itself.
> The testbit() only checks if this pin has been allocated by the gpmc itself. If yes, then the waitpin can be treated as shared wait pin. If no,
> then another driver allocated the pin before and we return an error.
> 
> The gpmc must be able to release the wait_pin in the wait_pin_alloc_mask, that's true. The only section where the waitpin_desc is released 
> can be found further down in this function:
> 
> err_cs:
> 	gpiochip_free_own_desc(waitpin_desc);
> 
> You're right. I must add the relase logic here as well.

You wrote quite a lot but that was not explanation of how do you handle
unbind... Last sentence was enough.

Best regards,
Krzysztof
