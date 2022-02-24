Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9385F4C3988
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 00:09:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232087AbiBXXIv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 18:08:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232266AbiBXXIu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 18:08:50 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28E88167F9C
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 15:08:20 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id D6FD3836A3;
        Fri, 25 Feb 2022 00:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1645744098;
        bh=jxEpPq37vAr/XSO9nV4JTqocXkdOm6aiLvihz73bXm8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=vOaBM5MVht2q2orlLJUY9/05QqA6aQYi+dcM6E7jrgjlV8bQXoxfWa5n22ItQG7HA
         S+fqfgW5Bv/4ImPPc3GFn5d3jENuwL2Mu5+zMBb+vIzk1aMtZa06xAVmfu/kcB1dJV
         2d3CKoymIa2Jj/ZhVR7vLYmJuN+lswDnNSaQEn7ea8mL7hCPsKdi3Sl4bakRLXFxt4
         HG1vB4qgBzksZDJEIrqIgf07Oh0Buz2P9/AVHVYbwi9fqpGPFluYiCRUCE3CVFgqXz
         td0ZYtcaXQjtxRnV68vh6bvFO8tNg0HJbtGeVpmaVW+sDsMcpiDyPp1H0nRs2QgsV5
         ODgkjHamLRC4g==
Message-ID: <1e4dc8c2-daa7-3cef-eaf5-76616b6230a3@denx.de>
Date:   Fri, 25 Feb 2022 00:08:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2] dt-bindings: leds: Document mmc trigger
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>
References: <20220217174357.13427-1-marex@denx.de>
 <YhgHTrlxyn5QGdOM@robh.at.kernel.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YhgHTrlxyn5QGdOM@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/24/22 23:31, Rob Herring wrote:
> On Thu, Feb 17, 2022 at 06:43:57PM +0100, Marek Vasut wrote:
>> The mmc subsystem supports triggering leds on card activity, document
>> the trigger value here. The value is a pattern in this case.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
>> Cc: Pavel Machek <pavel@ucw.cz>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> To: linux-leds@vger.kernel.org
>> ---
>> V2: Rebase on next-20220217
> 
> Why? Nobody can apply patches to linux-next. Is there something in next
> you are dependent on that you didn't tell us about?

It is just a convenience really, it is where the commits for all the 
mostly latest development exist in one place, so I can be reasonably 
sure the maintainer won't have trouble applying the patch on their tree 
due to some missing patch, and if I work also on driver stuff, I can be 
sure those drivers are also up-to-date-ish.

No, I don't think this patch specifically depends on anything in latest 
next.
