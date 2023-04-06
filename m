Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E92496D9690
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 13:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236739AbjDFL6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 07:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238884AbjDFL5k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 07:57:40 -0400
X-Greylist: delayed 365 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 06 Apr 2023 04:55:09 PDT
Received: from forward502b.mail.yandex.net (forward502b.mail.yandex.net [IPv6:2a02:6b8:c02:900:1:45:d181:d502])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61E2659D8
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 04:55:08 -0700 (PDT)
Received: from mail-nwsmtp-smtp-production-main-92.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-92.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:131b:0:640:f0f5:0])
        by forward502b.mail.yandex.net (Yandex) with ESMTP id 519DE5F0EC;
        Thu,  6 Apr 2023 14:47:42 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-92.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id clONjBKWn4Y0-rKcaeQLr;
        Thu, 06 Apr 2023 14:47:41 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ioremap.net; s=mail; t=1680781661;
        bh=WOKr1v7lcEyp0qi7jQb23tgfBsFOsN9ygiSdXAkNyhQ=;
        h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
        b=BqMpUcsxqxJmjzX28fvcvDuGfC9z2mRGuzfNF5heZd78+AzLxaAVj4vkYXMlyjKFj
         EXdRSv+tI2EJ406g/gepBMI8+rBHDBsYoSgFk6Z3QIuJ9gvpovaXgejIF1LHAcxHIK
         vh/cepa4x4CHgFBkieNO8Dm09OAHWxHFB+/ty89o=
Authentication-Results: mail-nwsmtp-smtp-production-main-92.myt.yp-c.yandex.net; dkim=pass header.i=@ioremap.net
Message-ID: <bdcf41d5-cd61-1e95-0b21-b8fe401644bd@ioremap.net>
Date:   Thu, 6 Apr 2023 12:47:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH V5 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
Content-Language: en-US
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
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
From:   Evgeniy Polyakov <zbr@ioremap.net>
In-Reply-To: <2023040651-baboon-busybody-6175@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stefan, Greg, hi

On 06/04/2023 10:58, Greg Kroah-Hartman wrote:
> On Thu, Apr 06, 2023 at 11:53:28AM +0200, Stefan Wahren wrote:
>> Unfortunately no feedback from Evgeniy so far. Should i resend these two
>> patches for you?
> 
> Please do.

Thank you for the patches Stefan, but I'm no longer a w1 maintainer, 
sorry I haven't updated the maintainers file, please send all w1 patches 
to Greg.

