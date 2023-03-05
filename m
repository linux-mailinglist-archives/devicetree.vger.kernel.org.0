Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2932A6AAF24
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 11:45:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjCEKpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 05:45:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbjCEKpJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 05:45:09 -0500
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CBD6CC35
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 02:45:08 -0800 (PST)
Message-ID: <327f970d-3b8d-9679-e3ae-67a2a6253917@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1678013106;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=hGINCQuAV01Iz0q/DSwI8KNqHRTfGKX74TaLcgvylmY=;
        b=lHuKYsUyo/0zecf4tsSjiVQQ03dS/nKMCPLkzg7g7VwyfsDzkwBqlFoVYomv7ahF/h5x3f
        LzUfx2pWmwXvUgi6nqtIMoDXTLKJTfWnsAguqpd0lTDGsJGivjzX0mTD4+MicSybdoZhz/
        QHaD/Ot2TEkiClCWRtRUiWhXxv25vcIot+oYycA9ao5wU1tUDEcgYhkpnsJk1pqOL6ZfIg
        w1+G01OkpM/OepDxfml289iy7aeztQP6oItsfai41tkeRJE+xns1LcdUE6gPEeqkdHZOYK
        LEMMmMtU5aXObUe9Zj2L4+6j22iw7q/e2KFWImkITR+NCaf/pp43wts4TOa4zg==
Date:   Sun, 5 Mar 2023 11:45:06 +0100
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dragan Simic <dragan.simic@gmail.com>,
        JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
 <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
 <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
 <d0a98b17-9bc9-5842-5245-5c7aea2b4d26@linaro.org>
From:   Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <d0a98b17-9bc9-5842-5245-5c7aea2b4d26@linaro.org>
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


Den 05.03.2023 kl. 11.43 skrev Krzysztof Kozlowski:
> On 05/03/2023 11:04, Dan Johansen wrote:
>> Den 05.03.2023 kl. 10.52 skrev Krzysztof Kozlowski:
>>> On 04/03/2023 18:28, Dan Johansen wrote:
>>>> MicroSD card slot in the Pinebook Pro is located on a separate
>>>> daughterboard that's connected to the mainboard using a rather
>>>> long flat cable.  The resulting signal degradation causes many
>>>> perfectly fine microSD cards not to work in the Pinebook Pro,
>>>> which is a common source of frustration among the owners.
>>>>
>>>> Changing the mode and lowering the speed reportedly fixes this
>>>> issue and makes many microSD cards work as expected.
>>>>
>>>> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
>>> That's not a valid tag. Run checkpatch.
>>>
>>> Missing SoB, which would be pointed out by checkpatch with correct tag.
>> Thank you. I ran checkpatch and it just said it was not valid, didn't
>> give alternatives.
>>
>> Would Co-developed-by acceptable instead?
> Yes, looks good. If checkpatch does not complain, use it.
Thank you. It says there are no obvious issues, so will re-submit with 
that changed.
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
