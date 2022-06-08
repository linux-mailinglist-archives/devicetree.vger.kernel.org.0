Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DD7D542A02
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 10:55:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231966AbiFHIyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 04:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232168AbiFHIxt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 04:53:49 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBB252D9AFE
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 01:13:25 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id w21so17764848pfc.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 01:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OpzsPMP/JbLoZLFrQAZ5bVdhywVQhjFjYH+n7gk+ydg=;
        b=BpQHgbfhqZALYc1c0hy53SKp+1fTBLfJ/iCER6aTG4Yeyrp5q9T6ZdzX/7uWsDS5Jg
         q+9HR3CKmzO1QCXJP/JCiIoRV9t3iKtBAIlDNWrYH8hExyOPJ1yXVCRUamJJsYepgHzu
         MnJkIkGqOaqgHNe4tWAXl53x0tXdhmRd+W+7ACtcqjmC8iKVmHhMwHKiWgm+mXLT7kSM
         sMZ54M2pIYa09oAMoDugqL+wIt3yxPFDqpTePU6/a6Po3PFhO93O0zO//chP+hMdHT++
         fLR3fU+LLTnsR0HQZtl/Ba5Vw0h8fLAbV2XCpMur1sAUoc7v4zdkggiagYXhyBmk0J9l
         ObXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OpzsPMP/JbLoZLFrQAZ5bVdhywVQhjFjYH+n7gk+ydg=;
        b=xmOjs7jscZrSkY+MEUvD6AscQ22/hER+kbssuSsGQbD0U840+oo2ZrGCSi9ZMZCPYS
         2QSnuYsHOUJYuMHO2+NEaxHxggHqwPW+ouZ7X4C3rCtZTXuKgmeYLWPRuH83236NoWDw
         YI2akSTbIehc57+jWi5F2zAYfeZdu4NVyEyq5QoJACUYEgL6D8IpjoRBVWEg1R20MEwQ
         06RqsdmxjItCzv4wGe/ClbbXR04MkfO4XQLmjNd5Dw13c0DktzBs3wcyzxELBZQ1XV9B
         yxecri+qABNwFKYJcK6ZqkIj2g8jPTWNb4i9W1rMa4PWtbYuLDGtmIqD0rU70BExC3Wc
         qcRw==
X-Gm-Message-State: AOAM531JkKXcC7wHIv23xgCw3jfHy3t4ciYRUt0D4COz3cGLDmcgA9tS
        In/I0MU2H71MS7sB0kNyQXo=
X-Google-Smtp-Source: ABdhPJxH8aTXnytBxLvRrZlPSCSTLl11415XN7uwR24K9+sN03kX7pWGBdHa32ci3De5mSQFdekJMg==
X-Received: by 2002:a05:6a00:1ace:b0:51c:242d:b62e with SMTP id f14-20020a056a001ace00b0051c242db62emr12763009pfv.25.1654676005453;
        Wed, 08 Jun 2022 01:13:25 -0700 (PDT)
Received: from [192.168.0.24] ([88.126.57.132])
        by smtp.gmail.com with ESMTPSA id r11-20020a170902e3cb00b0015e8d4eb28csm13683186ple.214.2022.06.08.01.13.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 01:13:24 -0700 (PDT)
Message-ID: <a9113658-4267-fe36-a9f5-36c142ab0e0c@gmail.com>
Date:   Wed, 8 Jun 2022 10:13:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] arm: bcm2711-rpi-4-b: Add gpio offsets to line name array
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        nicolas saenz julienne <nsaenz@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20211130161147.317653-1-u.kleine-koenig@pengutronix.de>
 <3dd6940acac27e5577b54ded8f2d472bbb6f7733.camel@kernel.org>
 <bc412de6-1f77-b8ba-fdff-af27c47c8e30@gmail.com>
 <921ec5ea67b6d343647a28b57b78923e5678d59b.camel@kernel.org>
 <20220608071349.uflbfojuf3e65k5y@pengutronix.de>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220608071349.uflbfojuf3e65k5y@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/8/2022 9:13 AM, Uwe Kleine-König wrote:
> Hello Nicolas,
> 
> On Thu, Dec 02, 2021 at 09:21:53AM +0100, nicolas saenz julienne wrote:
>> On Wed, 2021-12-01 at 14:16 -0800, Florian Fainelli wrote:
>>> On 12/1/21 3:40 AM, nicolas saenz julienne wrote:
>>>> On Tue, 2021-11-30 at 17:11 +0100, Uwe Kleine-König wrote:
>>>>> this helps human readers considerably to determine the line name for a
>>>>> given offset or vice versa.
>>>>>
>>>>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
>>>>> ---
>>>>
>>>> Applied for next.
>>>
>>> Subject should be:
>>>
>>> ARM: dts: bcm2711-rpi-4-b: Add gpio offsets to line name array
>>>
>>> Can you fix that up before sending this to me as a pull request? Thanks
>>
>> Done, thanks for catching that one.
> 
> This patch is in next since 2021-12-16 as ce94980d2970, but didn't hit
> mainline yet. What's wrong here?

It's there:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5e8c1bf1a0a5c728cee2b6c2162348a9dfddf1bf
-- 
Florian
