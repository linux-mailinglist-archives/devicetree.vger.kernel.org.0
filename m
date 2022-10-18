Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3104603639
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 00:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230058AbiJRWs1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 18:48:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230055AbiJRWs0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 18:48:26 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A12ED38D1
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 15:48:24 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id j21so9651450qkk.9
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 15:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r716SRHBKmkP3qcelLf9VHB+ss3pbVtG1Zz1sth3Kz4=;
        b=FKlbYirZbdggfPnP1oGaG/KAerGXG4jpPPd6+bR/4Sg8R0i/VUFh6x/+7+qbvvRwcH
         8sq9scVVtUSgRyGmmYHVX6gHDCIvCLWjzV9q+Lnd76UhPn2G/2F8Dct4pmSl1NATbbPh
         fN1FEbT4wc0l55Ull6zAaDXUJhvirI5EWmvpKqjShm5OQSAgXO4dqoiBldgDATvDnhXX
         hjm2v4pFXrqrQw+53K+PBQApgr8xUSl5e8Avh3aZ0s+/12vXPS6Ii+f0NUvmUbKeyt6K
         oeohkn/guD+EW5GQM9EGQJMlPij5BByt5Xws81PqeuOIX1LmuP0k9RkPkk2utG/WDHgG
         TpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r716SRHBKmkP3qcelLf9VHB+ss3pbVtG1Zz1sth3Kz4=;
        b=HgMOUnIR2rtoOgdkw+Cy2uCMFS18zKcJYL+sjFp7Lx3iBYwylwnxPQvU8aaCGL1pVu
         4RYTVmTxdgnKrdtLrd8jjdCTGOKu+IeoN/AbqRByTgJvitqzdcTRg+JEwMjjTpo+KaEP
         ehz6thJqOgnpPUYt51Hle+iX0eBR11/nXsJ82a7vT9djVjljc6/t1wEXkN3O6kum7saq
         5/haYi7g7fC4lJgzGfAKdnO7jHJa+sAhs4iwDoguabWzz0ehxcl7hRT+XFzYhcy2L/gF
         G8jfbDlpXuxO7W+eiNUs4+ZlhAiXb173cpk5CWcGtQ455L0/9I/SY9JaR5w7NDokYE5t
         u1Hw==
X-Gm-Message-State: ACrzQf2J8eF9WOF6tD11Aw8f6phIzDDwP3D4QhrR2WrckhVeGnh5aYTi
        od1UqXcajxecchOKDSbhm5c+LjVVekffTg==
X-Google-Smtp-Source: AMsMyM7GWOAh/usAUDi3Z/NxhkUOWMFRb8/IJfQOZj9WHUhN+rG07rZbx6jhEt3kknrGcFTcf+vLyQ==
X-Received: by 2002:a05:620a:4449:b0:6ce:d824:d2e2 with SMTP id w9-20020a05620a444900b006ced824d2e2mr3548607qkp.183.1666133303238;
        Tue, 18 Oct 2022 15:48:23 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id z15-20020a05622a124f00b0039a08c0a594sm2731895qtx.82.2022.10.18.15.48.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 15:48:22 -0700 (PDT)
Message-ID: <ea71315e-cc8c-36aa-d348-dce188d69ba0@linaro.org>
Date:   Tue, 18 Oct 2022 18:48:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] arm64: dts: k3-j72*: correct compatible for syscon
 entries
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>
Cc:     vigneshr@ti.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221012180052.89840-1-mranostay@ti.com>
 <0118faac-7d50-ddb2-2914-0610b83efe6c@linaro.org> <Y00N1yvHrkKoeJ8i@ubuntu>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y00N1yvHrkKoeJ8i@ubuntu>
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

On 17/10/2022 04:09, Matt Ranostay wrote:
> On Thu, Oct 13, 2022 at 09:05:11AM -0400, Krzysztof Kozlowski wrote:
>> On 12/10/2022 14:00, Matt Ranostay wrote:
>>> Add missing ti,j721e-system-controller to bus defines in mcu/wakeup
>>> domains to avoid the following similar warnings from dt-schema checks:
>>>
>>> arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: syscon@40f00000: compatible: ['syscon', 'simple-mfd'] is too short'
>>>
>>> Signed-off-by: Matt Ranostay <mranostay@ti.com>
>>> ---
>>>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi  | 2 +-
>>>  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi  | 2 +-
>>>  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 +-
>>>  3 files changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
>>> index e5be78a58682..b5c666f98ba4 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
>>> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
>>> @@ -35,7 +35,7 @@ k3_reset: reset-controller {
>>>  	};
>>>  
>>>  	mcu_conf: syscon@40f00000 {
>>> -		compatible = "syscon", "simple-mfd";
>>> +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
>>
>> That's a different SoC, so probably you should use dedicated compatible
>> here.
> 
> Since there isn't any notable difference between these platforms for the simple-mfd
> controller I'm thinking it maybe makes sense to have a ti,generic-system-controller
> compatible. Thoughts?

Compatibles should be specific unless you and TI guarantee that chosen
one compatible will cover all future hardware from now till 100 years...

Best regards,
Krzysztof

