Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EFB76E3447
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 00:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbjDOWcF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Apr 2023 18:32:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbjDOWcE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Apr 2023 18:32:04 -0400
X-Greylist: delayed 361 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 15 Apr 2023 15:32:01 PDT
Received: from forward501c.mail.yandex.net (forward501c.mail.yandex.net [IPv6:2a02:6b8:c03:500:1:45:d181:d501])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A80B030F5
        for <devicetree@vger.kernel.org>; Sat, 15 Apr 2023 15:32:01 -0700 (PDT)
Received: from mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:992a:0:640:c3bc:0])
        by forward501c.mail.yandex.net (Yandex) with ESMTP id 0B8D95E4FA;
        Sun, 16 Apr 2023 01:25:58 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id rPiwCiZWr8c0-9qdmcQtV;
        Sun, 16 Apr 2023 01:25:56 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ioremap.net; s=mail; t=1681597557;
        bh=j6QL5cAd6kmENaJ82LDvshMMXQELa95dKR1dUFlpYmE=;
        h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
        b=KaRSxOwkFKngw62Mbq9RoV51ofVHld/zLGoioK+9FWyilxZT2EsW222DYznSvgdrT
         7Rc//KVRiQ5bRdqCNuHZX4LAgcJlHMQ9mNXS0o1qanoaGGax8OkT//rCNVnF7Z/24H
         JTMUIVhEess3Tjq0Zg7h1iT8bBbc+aOxoXFhLSbg=
Authentication-Results: mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net; dkim=pass header.i=@ioremap.net
Message-ID: <daa72583-922f-4ed5-f7e9-36423dd899a0@ioremap.net>
Date:   Sat, 15 Apr 2023 23:25:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH V5 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>
References: <20230404080243.9613-1-stefan.wahren@chargebyte.com>
 <20230404080243.9613-3-stefan.wahren@chargebyte.com>
 <20230404133937.GA3778861-robh@kernel.org>
 <e2afed14-fed3-772c-3acc-dc132b5a1078@i2se.com>
 <2023040651-baboon-busybody-6175@gregkh>
 <bdcf41d5-cd61-1e95-0b21-b8fe401644bd@ioremap.net>
 <dc794f94-42ff-33a5-facc-5fe09f6da295@linaro.org>
 <4649763c-4355-758e-dcdc-5bdb4277c441@linaro.org>
From:   Evgeniy Polyakov <zbr@ioremap.net>
In-Reply-To: <4649763c-4355-758e-dcdc-5bdb4277c441@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof

On 15/04/2023 10:34, Krzysztof Kozlowski wrote:
>>> Thank you for the patches Stefan, but I'm no longer a w1 maintainer,
>>> sorry I haven't updated the maintainers file, please send all w1 patches
>>> to Greg.
>>
>> Thanks Evgeniy.
>>
>> If the one-wire subsystem is orphaned, I can manage the patches to
>> offload Greg a bit.
> 
> There was not feedback on my proposal, which I am optimistically going
> to understand as "go ahead". :)
> 
> I'll send a patch, assuming Evgeniy that you are not planning to
> maintain w1 anymore and a new maintainer would be useful.

Greg has been managing all the w1 patches for last years and as far as I 
understand, in particular since I stepped out, I'm totally not against 
anyone picking up the queue from him or doing it the way I've been doing 
through his tree, but please discuss it with him and come up with the 
solution which works best, I have no word in it.

Thank you.
