Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 319E86D9379
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 12:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236387AbjDFKAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 06:00:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236430AbjDFKAY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 06:00:24 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31116213C
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 02:59:56 -0700 (PDT)
Received: from [192.168.1.141] ([37.4.248.58]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mbj3Y-1qFZSR0syk-00dCMP; Thu, 06 Apr 2023 11:53:29 +0200
Message-ID: <e2afed14-fed3-772c-3acc-dc132b5a1078@i2se.com>
Date:   Thu, 6 Apr 2023 11:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V5 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
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
Content-Language: en-US
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20230404133937.GA3778861-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:0O/V6QTsojIvgXV4Fk1tuxQtxxuAZMUe1iiigYfbvLQftTG6fms
 zi9q7rSWAKFJiPS67V4t4wTCmbsuhhisZdxEZ9DVGYSre/dTuQy4slbmVQDoId54BKYRfgl
 SMdvBy9UT2BcA6M/7Y3faj2lv4ou9l7ZaNjkmh3+EPWzdkSqS8mq4/wfiitHbHa65e9Fv87
 G9WtAPyBzc09gtUSZKrVw==
UI-OutboundReport: notjunk:1;M01:P0:79bWtDH2wEQ=;+jHkTVvNfteRFXYLxGl7c2SgGaC
 /VTcXXmjvoerYZnBH5jy9rCF806/32M5djUQealXogHPkrr0SSfFws/Eumc0ac8nvAV8l7/VP
 XRJoWtCkpmvQAJ/JsNykaGvGzL44AwJAH8Xb16sHCm7BWKlrZsKvNvLUbRbQpk34ewcJnND48
 7DiV+QEVl7xk78eg7+uXeyBeq6crm1WfRozKupCa5yAAlV2dqHa2lwQQj5hVgGqdbLXzTBFiM
 tGLN3SPBFnBOFu/DAeHRztQmw6kpCf2tMOt264L3FvI37w25Dc/RPvRhfr6cvsxcOZPE/ux7D
 PgWRAnwej8U92/MQ/SqwO8hdMKVuUJmKViHHXdhXJQX50wnH8tQwTHhec4tJieRCnKXI8BeCH
 9C5DwWgwmYFAEPNG587CUYZB34ii4IZa32hqYI2lk8UI78urasllGSCY3mS4b88ERAKynshdq
 H+j6Wnoa+WdOEz1f5sl20WSALD2Yf5UyEyXjJEaiYqDiidD7U76vKLY0vAYjl8ZX9xtyEDRTv
 /iPp4ufEUNkawxZKZwugZcUAYKQAz6LJ9jgSjqPkl5dwHuGQXIq9UcBDMOojV/mRckuBKmurn
 Ytx+Kt0A2eStyB3NGYXeR3u1juTS/Rgp2L58+yg3ddXbH3lG3IxE3bA1CVEXXgITM7ySb/VS6
 qeAotOczDxE6gBzf0WNtCiIdW84TJUcDibmPUZQTfQ==
X-Spam-Status: No, score=-2.2 required=5.0 tests=NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Greg,

Am 04.04.23 um 15:39 schrieb Rob Herring:
> On Tue, Apr 04, 2023 at 10:02:39AM +0200, Stefan Wahren wrote:
>> This adds a dedicated devicetree binding for the Maxim DS2482/DS2484
>> I2C to 1-W bridges, which can be extended later for further features
>> (e.g. sleep mode control GPIO). Since one wire is a bus, child nodes
>> needs to be allowed here.
>>
>> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
>> ---
>>   .../devicetree/bindings/w1/maxim,ds2482.yaml  | 44 +++++++++++++++++++
>>   1 file changed, 44 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/w1/maxim,ds2482.yaml
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Shawn Guo applied all patches from this series [1] except of this one 
and patch 3, which probably should go via your 1-w tree?

Unfortunately no feedback from Evgeniy so far. Should i resend these two 
patches for you?

Best regards
Stefan

[1] - 
https://lore.kernel.org/linux-arm-kernel/20230404080243.9613-1-stefan.wahren@chargebyte.com/T/

> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
