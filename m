Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97FFC5BBC95
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 10:51:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbiIRIvQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 04:51:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiIRIvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 04:51:15 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A15CA1F2F3
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 01:51:13 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id f9so41461991lfr.3
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 01:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=P4PnGxERGRhEZRIAngKEa+BFGt/GdNcv1e3EYyeDGB8=;
        b=xlD0f96Qrm53Ol1dT6kQZ5QxqrCRhL3Lx+Y0GJIZFr1TQIRVjNDqYm8rhTavxuUDDW
         XejtJXmOrEs3IaBMz/HyK665wIJ21i+RTmdNvp7nObt/k2pzrmQJejIHM9VOmDCrYMhu
         Sd2rsGbw9na3L3T9iuNbS9e01C6eKc591NNYdZhmK5Q85Cqrs7HXcQZrRsEHKGVvqAyu
         gKSBubjzKgbTaUlYWTARKSnAoElvT8dBwMOJOJsIWtO7xGBe07RHany3njkej/jFnvti
         3OkhDvQXpf1ZpX0N5Q5gMCS/ossIYhnTuUA2ga2AYtpYd2gMfgKESdYve8Ef+CUfjeZ1
         cQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=P4PnGxERGRhEZRIAngKEa+BFGt/GdNcv1e3EYyeDGB8=;
        b=Cqqp/oziFh2cdmB6Ak1EqLFE6NpnfnKFPSMeuDLQttJ8nLBeN2H1PZNIm59sZZ8JEe
         N5nYp/m50lQVMvhUFi0VwW39NM6wz1XIVDK+qcbn4AOTnchvjR4nouXNcKgfE6hRMPJV
         zfc6L5WCz7I+D+C3xAsP6rb/ebVd9bWI6L82k4X0hLftPboAzdkIbhY3E89dZsI1ofdy
         rx2DARnpNr6fhZIeSBhKH6zWRoNf+bL/yVplIcF4ZmPbe2X4AnfxCOiU3Xu7fI7i/bzq
         9OUAhQYQfrUErR1Dnq8Io7Hd7lCEbkZZpzr8TiPmG6M7D3P1h8mbPDzX0OYXc0LDJ9HQ
         pN0A==
X-Gm-Message-State: ACrzQf000GmT2VMZuUjPwtE6tXR+V+/y7QdV+hOA9eGwgQwPIVMSbR4+
        gtDZMbSAEY8oU7b4+fLCykJpnQ==
X-Google-Smtp-Source: AMsMyM5Pl0FopM5e7i+mj3lfYZSAOv6dov5ze80Vy40DJn8kQwuRNvxTSSWy/kl29XlFYp+hSUVCmA==
X-Received: by 2002:a19:f80d:0:b0:49b:29a8:db54 with SMTP id a13-20020a19f80d000000b0049b29a8db54mr4115853lff.178.1663491072019;
        Sun, 18 Sep 2022 01:51:12 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id dt6-20020a0565122a8600b004976809d6a7sm4553134lfb.283.2022.09.18.01.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 01:51:11 -0700 (PDT)
Message-ID: <e89478b5-8495-a846-61ff-917bc4e08490@linaro.org>
Date:   Sun, 18 Sep 2022 09:50:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: timer: Add QEMU compatible strings
Content-Language: en-US
To:     Marc Zyngier <maz@kernel.org>
Cc:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        mark.rutland@arm.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220916132959.1910374-1-jean-philippe@linaro.org>
 <0acc2a21-27c2-ec85-0335-263d70c24469@linaro.org>
 <87mtaxltwm.wl-maz@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87mtaxltwm.wl-maz@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/09/2022 19:47, Marc Zyngier wrote:
> On Sat, 17 Sep 2022 17:51:20 +0100,
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 16/09/2022 14:30, Jean-Philippe Brucker wrote:
>>> QEMU uses both "arm,armv8-timer" and "arm,armv7-timer" as compatible
>>> string. Although it is unlikely that any guest relies on this, we can't
>>> be certain of that. Therefore, add these to the schema. Clean up the
>>> compatible list a little while at it.
>>>
>>> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>
>> I guess you wanted to say QEMU uses "arm,armv8-timer" followed by
>> "arm,armv7-timer", because otherwise I would understand it that either
>> that or that. Anyway, is it a valid (virtualized) hardware? Is ARMv8
>> timer really, really compatible with ARMv7 one?
> 
> Yes. There isn't a shred of difference between the two in the earlier
> revisions of the ARMv8 architecture, and none of the differences
> introduced in later revisions are exposed to DT anyway.
> 
>> I don't think we should document invalid setups out-of-tree, just
>> because they are there, and something like this was also expressed by Rob:
>> https://lore.kernel.org/all/20220518163255.GE3302100-robh@kernel.org/
> 
> This is, on the contrary, something that is perfectly valid. For
> example, a system running a 32bit OS on a 64bit system is perfectly
> entitled to expose both (v8 because that's what the HW is, v7 because
> that's what the OS is the most likely to understand).
> 
> You may find it odd, but that:
> 
> - expresses something that is actually required
> 
> - is what I, as the original author of this binding, have always
>   considered valid
> 
> - has been valid for a long time (10+ years) before you decided it
>   suddenly wasn't
> 
> I understand that the "DT police" has high standards, but this has
> been around for much longer, and it isn't because the conversion to
> schema is imperfect that you can rewrite history.
> 
> As for the patch, I'd remove the QEMU reference and the deprecation.
> This format is perfectly allowed, and is in use in most VMMs out
> there. Yes, DT is an ABI.

Thanks for the explanation, actually enough was to say that it is
perfectly valid combination describing hardware. :)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
