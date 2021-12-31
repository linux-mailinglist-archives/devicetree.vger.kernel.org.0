Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE87448249B
	for <lists+devicetree@lfdr.de>; Fri, 31 Dec 2021 16:37:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbhLaPhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Dec 2021 10:37:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbhLaPhx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Dec 2021 10:37:53 -0500
X-Greylist: delayed 150 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 31 Dec 2021 07:37:52 PST
Received: from resqmta-c1p-023463.sys.comcast.net (resqmta-c1p-023463.sys.comcast.net [IPv6:2001:558:fd00:56::4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85293C061574
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 07:37:52 -0800 (PST)
Received: from resomta-c1p-023266.sys.comcast.net ([96.102.18.234])
        by resqmta-c1p-023463.sys.comcast.net with ESMTP
        id 3JeUnRlKhNJUd3Jw8n7nUm; Fri, 31 Dec 2021 15:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
        s=20190202a; t=1640964920;
        bh=X0PGbkm5AYY94s+W5+NodReCIEluZYxv8imWvsSK3Yg=;
        h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
         Content-Type;
        b=1nFMYQPPViQiqPB4htG5Q5ILgIwNKEZTkOtVu3W/VhqWMBLD3oJR3CYFEkHR+Az4R
         Xc0xVtdWhIBEYoDXdHUxrlTZj0rCrGGyCEMdK9/U2B3VWD3rmwB2jKquZt9I2uxsOL
         LSfAOYdaWhUq3Gxf/zXWHGz4ZrWuIRx1RkFxvCKrU1hF1jky/Q0IBtVQX3a/GiNCw9
         7HrexdCDuL2KPISkz1uL53FWlvQu7fdaNAf1VfLcRxMUN6g6dSoh1LpV9p9O8vVLHL
         wAuSC4/JxqW+35BPqu2qOZ1o3eSEopfmXHBQuni875qoy2L229VVDpyfRYOIR0yEFG
         CtBk3lghUmZRA==
Received: from [IPv6:2601:647:4700:284:9d56:573c:4e75:fa6c]
 ([IPv6:2601:647:4700:284:9d56:573c:4e75:fa6c])
        by resomta-c1p-023266.sys.comcast.net with ESMTPSA
        id 3Jw2nnMYa4rcW3Jw3nrhvk; Fri, 31 Dec 2021 15:35:17 +0000
X-Xfinity-VMeta: sc=-100.00;st=legit
Subject: Re: [PATCH] riscv: dts: sifive unmatched: Add gpio poweroff
To:     James Clarke <jrtc27@jrtc27.com>
Cc:     Dimitri John Ledkov <dimitri.ledkov@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Vincent Pelletier <plr.vincent@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20211231061110.89403-1-w6rz@comcast.net>
 <73F7FAE3-5113-48DD-B0F5-0EEAA0A8B0C1@jrtc27.com>
From:   Ron Economos <w6rz@comcast.net>
Message-ID: <99ac0009-b49a-f618-1b96-7896d6d155ae@comcast.net>
Date:   Fri, 31 Dec 2021 07:35:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <73F7FAE3-5113-48DD-B0F5-0EEAA0A8B0C1@jrtc27.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/30/21 10:58 PM, James Clarke wrote:
> On 31 Dec 2021, at 06:11, Ron Economos <w6rz@comcast.net> wrote:
>> This patch is required for the following commit to work.
>>
>> commit f2928e224d85 ("riscv: set default pm_power_off to NULL")
>>
>> Signed-off-by: Ron Economos <w6rz@comcast.net>
>> ---
>> arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 5 +++++
>> 1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
>> index 6bfa1f24d3de..c4ed9efdff03 100644
>> --- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
>> +++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
>> @@ -39,6 +39,11 @@ rtcclk: rtcclk {
>>         clock-frequency = <RTCCLK_FREQ>;
>>         clock-output-names = "rtcclk";
>>     };
>> +
>> +    gpio-poweroff {
>> +        compatible = "gpio-poweroff";
>> +        gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
>> +    };
> Why? It’s abstracted by firmware, which works.
>
> Jess
>
I didn't realize that OpenSBI 1.0 had been released last week. Please 
disregard this patch.

Ron


