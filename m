Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1F2757000C
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 13:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbiGKLT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 07:19:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230296AbiGKLSl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 07:18:41 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CCEB041D05
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 03:41:43 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC13616A3;
        Mon, 11 Jul 2022 03:41:43 -0700 (PDT)
Received: from [10.57.85.194] (unknown [10.57.85.194])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 076BA3F792;
        Mon, 11 Jul 2022 03:41:40 -0700 (PDT)
Message-ID: <15846ffa-f68a-2f88-55a3-40a633132c28@arm.com>
Date:   Mon, 11 Jul 2022 11:41:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
Content-Language: en-GB
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
 <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
 <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
 <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-06-25 16:31, Piotr Oniszczuk wrote:
> 
> 
>> Wiadomość napisana przez Peter Geis <pgwipeout@gmail.com> w dniu 25.06.2022, o godz. 16:00:
>>
>>
>> The first issue you have is the TV isn't responding until the absolute
>> end.
> 
> I suspect this is because lack on idle gaps between cec commands sent from board to tv.
> Maybe TV sw. can't deal with consecutive commands without any idle between them?
> 
> It is interesting that disconnecting TV - so CEC line is driven only by board - rock3a still don't have any idle gaps while rock3b (and radxa 4.19 bsp) has them (very similar between 5.18mailine and 4.19 bsp).
> 
> How this is possible that change I/O from m0->m1 impacts _timings_ on free hanging CEC line?

Check all the pinctrl settings beyond just the function mux - pulls, 
drive strength, output type, etc. - the defaults tend to be all over the 
place, and rarely what you want.

Robin.

>> This strikes me as a signal integrity issue. Do you have an
>> oscilloscope (not a logic analyzer, you need voltages and ramp times)
>> to compare the working vs non-working signals? Check both sides of the
>> level shifter.
> 
> Indeed - i will verify this with digital oscilloscope.
> Already ordered and must await week or 2 for delivery :-(
> 
> My analog oscilloscope shows correct levels and slopes "seems" to be the same like in working (no memory so i can compare only visually on fuzzy screen)
> 
> For me key is to understand why on rock3a there is no any idles between cec commands - even when nothing is connected to bard (so cec is only sending and nothing external impacts cec state machine)....
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
