Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE41C605975
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 10:15:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231208AbiJTIP0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 04:15:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231228AbiJTIPZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 04:15:25 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E16B8A3AAF
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 01:15:20 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id l16-20020a05600c4f1000b003c6c0d2a445so1603335wmq.4
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 01:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mhEUUAx17h0AgHtxJMeCII0Aci1ZEeSL8jXNszOE9M4=;
        b=SGMXowYozhs41yaXnsLn+6I8DWByS05nCpogBo/gSwiquuK9eqEsbVsWuQKQ+Q9KbU
         Xvss5cdXVqIKC6wayAtZhK+eUKPYcyLjmj/OI2zfTMFSPCeIx+At6NyPkoCePWzDRv7R
         V6y1pr2HzjZfkl0uSjYyyuVTnxTuLHekFSLJiZlRBO6wOWKPtJBmSxVjKeoC1Q+K4Z5Y
         2DsaXTJQ6Fpp/TXwYnlXRmsgd57l07vJySEOZ4HahHdfHdqa5p/uC7p8dCBm1yH7KyQy
         VYUDRgOWFYZA2CtSK+m0gjZ9fUym8nA8Rz5givWgXosqDLZHBAycT7Wvc6Xh5dFvtvUl
         MeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mhEUUAx17h0AgHtxJMeCII0Aci1ZEeSL8jXNszOE9M4=;
        b=C/nCXMkNRvUSwJGAX8+6VsZfCcZLhGTm+I3QzjTmrfU5fikyYcr4CRSspw+7oELHQT
         /dFHSNtjU9vnCAhd0PzHx74UYSASHjevHiCfpgoVMX4hvQhOur3sVQJtxIGPzMTKoh9/
         X3q8SZ++MNCswZaFEA1RARpUxHC2tKpi+g22bcbgdWhTiIpyFQUZ7EI6kQ6UVSooyBve
         Gtyng52LESsm2Aaz4i7wOajrwcVV9juUVbw3UUv7N8fny445T7Q2cU59umID1pN3AJQZ
         YXu3G/acnPsrRANa7LOg8gvAK+5ddfKG78rf1WeeZDb2HcZUqSVz9ZWAoUkt/lReUSrr
         r+2Q==
X-Gm-Message-State: ACrzQf3dSvX6DgGsXIekLK1KBOeD0caadoAKUD6ZAApoLdVIlZjTHaLI
        dt/6Vxj4R0GuqrZFRCN2C/W4WA==
X-Google-Smtp-Source: AMsMyM6+QEGDiYr4HnFQpx2CtydwueOIIFGgcqt8YVmO8d/ISMyk+foSu6EsTOXeeBSJYJr/u3e+Mg==
X-Received: by 2002:a7b:c455:0:b0:3c6:bd0e:f9b0 with SMTP id l21-20020a7bc455000000b003c6bd0ef9b0mr29253450wmi.21.1666253719306;
        Thu, 20 Oct 2022 01:15:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ef2:f28d:311f:c84b? ([2a01:e0a:982:cbb0:ef2:f28d:311f:c84b])
        by smtp.gmail.com with ESMTPSA id q6-20020a7bce86000000b003b3365b38f9sm2127648wmj.10.2022.10.20.01.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 01:15:18 -0700 (PDT)
Message-ID: <6696b644-bb9d-54e4-0b3b-e4897a881898@linaro.org>
Date:   Thu, 20 Oct 2022 10:15:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: meson: Enable active coling using gpio-fan on
 Odroid N2/N2+
Content-Language: en-US
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Anand Moon <linux.amoon@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221018195122.8877-1-linux.amoon@gmail.com>
 <CAFBinCCqXBk9Xq0k=NA3zGi8spwyPQN7dMVWcjE+pXkXYf+FKQ@mail.gmail.com>
 <CANAwSgSR6jHRQR6QgzUop_B4gcOsQnfc6LoUXrP0CSTasZkVfQ@mail.gmail.com>
 <CANAwSgRLZfon5qUFeKW9U9AbHvSa=uKVaVgqghVk554-H1LVKw@mail.gmail.com>
 <402500e8-b4fe-9b8f-d634-e329191af1b8@linaro.org>
 <CANAwSgQhWrzeRcpQSSAmfp+i3966dUQdtCLbcWwifQk=1ce=og@mail.gmail.com>
 <CAFBinCCyEVbc4N7TUEi=sbLFv7Rc-L=y-h8xBuZK446x1oLc2g@mail.gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <CAFBinCCyEVbc4N7TUEi=sbLFv7Rc-L=y-h8xBuZK446x1oLc2g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 22:40, Martin Blumenstingl wrote:
> Hi Anand,
> 
> On Wed, Oct 19, 2022 at 7:17 PM Anand Moon <linux.amoon@gmail.com> wrote:
> [...]
>>>> +&pwm_AO_ab {
>>>
>>> &pwm_AO_cd not _ab
>>>
>> No it has a conflict with CPU_B (vddcpu_b) PWM
> Uh, you're right. That's probably why the Hardkernel team uses a
> software based PWM implementation: [0]
> In hindsight they should have used a different pad either for VDDCPU_B
> or the fan.
> 
> I think the most pragmatic approach (since the "GPIO PWM" driver is
> not upstream and I don't know if something like that would be accepted
> upstream) is to use a GPIO based fan as you did in your initial patch.
> Not sure what others think though.
> 

Indeed I recall them using a SW pwm.

Yes it's perfectly ok to use a gpio-fan.

Anand, please fixup the ddr-active name and send a v2.

Thanks,
Neil

> 
> Best regards,
> Martin
> 
> 
> [0] https://github.com/hardkernel/linux/blob/c109dec94e7e819554830acfac4b6ed96e230179/arch/arm64/boot/dts/amlogic/meson64_odroidn2.dtsi#L356-L359

