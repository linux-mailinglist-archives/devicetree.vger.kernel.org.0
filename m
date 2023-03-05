Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F12646AAEEE
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 11:04:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbjCEKER (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 05:04:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjCEKER (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 05:04:17 -0500
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E969B762
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 02:04:15 -0800 (PST)
Message-ID: <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1678010653;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=tttlDtdagS98L3eWYv8TYPfVASIZ/pxTczL7vpVUrgc=;
        b=Ke/7GE9N9qv53eNcBLIzorNDPLKggCP20L9hfOIuMmNMNzZfbWmZQHrMidNpgHADOJxxso
        DDLlT2oRCX6mZbvVDCpuP2NND04vcj2tSBdDdvSaOYU9GR066W6lwWrhRJcpFKj4LrHRic
        FGha1rB9HHMKSSLLEm87BALpDCum25iM+EJHIhHY5V0O04PwnCskJaBEkuAK6pwgT+KYp8
        JrHFqui6dlrHbnZl+qgxDa1N5rYgUW8YsCLVscivpwpM4B2vZla0RlyH7z9j/7v8IonRbB
        9HWtyf1FumClXSLakAkLe9Kn/tMO7LtgXjIzmfpqPTRPMukmc4vey5DrpHWDeQ==
Date:   Sun, 5 Mar 2023 11:04:12 +0100
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dragan Simic <dragan.simic@gmail.com>,
        JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
 <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
Content-Language: en-US
From:   Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
        auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Den 05.03.2023 kl. 10.52 skrev Krzysztof Kozlowski:
> On 04/03/2023 18:28, Dan Johansen wrote:
>> MicroSD card slot in the Pinebook Pro is located on a separate
>> daughterboard that's connected to the mainboard using a rather
>> long flat cable.  The resulting signal degradation causes many
>> perfectly fine microSD cards not to work in the Pinebook Pro,
>> which is a common source of frustration among the owners.
>>
>> Changing the mode and lowering the speed reportedly fixes this
>> issue and makes many microSD cards work as expected.
>>
>> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
> That's not a valid tag. Run checkpatch.
>
> Missing SoB, which would be pointed out by checkpatch with correct tag.

Thank you. I ran checkpatch and it just said it was not valid, didn't 
give alternatives.

Would Co-developed-by acceptable instead?

And then ofcourse with the added SoB for the co-developer.

>
>
>
> Best regards,
> Krzysztof
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>
