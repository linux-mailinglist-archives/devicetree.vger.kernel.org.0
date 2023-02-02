Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80D46687B01
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 12:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232039AbjBBLAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 06:00:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231726AbjBBLAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 06:00:51 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 163676CCBF
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 03:00:49 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id v13so1549810eda.11
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 03:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hwqA0bBFdWXpkidocitSvFjFmrRrthZmwzOeQ241hAw=;
        b=aipaeHLyimbrh1xIjYjK59ul9gAgvIOJ2htzisG3cM9E9fQBV4j9HyoWNS9L6ksC+8
         3ojfsravWZC4EKP3hZbJN2NzYSKOU9CdewMmamb/G0tVnZ8zr+J+KQFvwneJ9hyvGC3g
         yKFLProLre67toexwebebS1Ffcsfjm9VbjROVnCnpFILS7rm/9XfLKMKfky/AKMYtTBr
         nV5tBgxlmzoPrSwUB8Q8dJKssXQiiuVneolusJouMWwU2YmPjwH/NK9XB/cIASBFTNU4
         5F7a9H8sg0eCgKiSNNxsy2FV1UNaNz16KOWLBhvBrmYNfZFA7o086Z52L4dfUaLgXbH1
         NZOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hwqA0bBFdWXpkidocitSvFjFmrRrthZmwzOeQ241hAw=;
        b=iWMTMW9RA5TgyroFzkgVpiFHYCzsJWhvRWuvYQ/JW38kA/ycPC1GNwO6az5YwpjLWr
         7FQiVSe2oA5K9GHqC4A1ZD6/xkV759+9rmVD9G0v4O1h4xixWue5O6y+4606NRzdnEVi
         t45abYk/MgVXQdh4kvgWz+1yfTAqXV5h20zL8ii2FHpq7NT8HhhF+e6VTf+s3+8jn8hZ
         jvidXp8IHzphNEwS0F2MD8KaZboMDnHLSBHiKWfol4nXhJdBdJLuvU7d0HdLv68Lwueu
         9vXFN6i4JvmDeEXqHE54cSU/tEDLlc7fzh216jNiUTHOnMHMsZTlUXyx8+fJZx7Rp9vm
         pn3w==
X-Gm-Message-State: AO0yUKWmRk+8UwZMu9DrzuEktar2vwj18W1rQtebQRdTeF1DsGnfff7a
        CoznGXAweV7yvKYtetpF6YthIA==
X-Google-Smtp-Source: AK7set+lY4LEQD/RMWmnBoE2nzZ+sWoTI4ZajAngUzcOw3CeU/millZuUm/cSZxcpezLou5yUZOWVA==
X-Received: by 2002:a05:6402:2b8a:b0:499:d1ca:6d83 with SMTP id fj10-20020a0564022b8a00b00499d1ca6d83mr5436747edb.2.1675335647543;
        Thu, 02 Feb 2023 03:00:47 -0800 (PST)
Received: from [192.168.2.9] (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id r24-20020aa7cfd8000000b00495c3573b36sm11183798edy.32.2023.02.02.03.00.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 03:00:47 -0800 (PST)
Message-ID: <74f30b27-6999-0f67-48e7-85f0acd19cb9@mind.be>
Date:   Thu, 2 Feb 2023 12:00:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v3 0/2] leds: lp55xx: configure internal charge pump
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230202092325.21241-1-maarten.zanders@mind.be>
 <71c9963c-98e3-d90b-116a-68a295feb24a@linaro.org>
Content-Language: en-US
From:   Maarten Zanders <maarten.zanders@mind.be>
In-Reply-To: <71c9963c-98e3-d90b-116a-68a295feb24a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for your feedback. V4 has been sent.

On 2/2/23 10:34, Krzysztof Kozlowski wrote:
> On 02/02/2023 10:23, Maarten Zanders wrote:
>> A new option in the devicetree "ti,charge-pump-mode" allows the user to
>> configure the charge pump in a certain mode. The previous implementation
>> was "auto" mode, which remains the default.
>>
>> v1 of the patch implemented a bool to disable the charge pump and had some
>> issues in the yaml binding.
>>
>> v2 implemented all options of the charge pump as a string which was too
>> complex to parse & check.
>>
>> v3 (this version) replaces the string by constants.
> Please resend without ignoring the feedback.
>
> Best regards,
> Krzysztof
>
