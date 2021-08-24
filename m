Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D39FE3F55F3
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 04:48:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233798AbhHXCs7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 22:48:59 -0400
Received: from regular1.263xmail.com ([211.150.70.202]:43784 "EHLO
        regular1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233399AbhHXCs6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 22:48:58 -0400
Received: from localhost (unknown [192.168.167.235])
        by regular1.263xmail.com (Postfix) with ESMTP id EE3B6808;
        Tue, 24 Aug 2021 10:48:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P32762T139760316184320S1629773288152537_;
        Tue, 24 Aug 2021 10:48:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d93d28eb9fc7cd6118c5e0f95ce892d3>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: alsa-devel@alsa-project.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_15/15=5d_ASoC=3a_dt-bindings=3a_rockchip?=
 =?UTF-8?B?OiBpMnM6IERvY3VtZW50IHByb3BlcnR5ICdjbGstdHJjbSfjgJDor7fms6jmhI8=?=
 =?UTF-8?B?77yM6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R44CR?=
To:     Rob Herring <robh@kernel.org>
Cc:     broonie@kernel.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
 <YSPckWacS4kk270r@robh.at.kernel.org>
From:   sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <068b1fdc-3f93-6bcd-247b-95e68e1ba8e7@rock-chips.com>
Date:   Tue, 24 Aug 2021 10:48:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YSPckWacS4kk270r@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2021/8/24 1:36, Rob Herring wrote:
> On Mon, Aug 23, 2021 at 06:55:32PM +0800, Sugar Zhang wrote:
>> This patch documents property 'rockchip,clk-trcm' which is used
>> to specify the lrck.
>>
>> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
>> Change-Id: I648142c57c568bbed209f2b9188b1f539a3285b2
> Drop this.
okay, will do in v2.
>> ---
>>   Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
>> index 11e911a..8d9dfed 100644
>> --- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
>> +++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
>> @@ -72,6 +72,15 @@ properties:
>>     resets:
>>       maxItems: 2
>>   
>> +  rockchip,clk-trcm:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    default: 0
>> +    description:
>> +      tx and rx lrck/bclk common use.
>> +      0: both tx_lrck/bclk and rx_lrck/bclk are used
>> +      1: only tx_lrck/bclk is used
>> +      2: only rx_lrck/bclk is used
> Sounds like constraints. Make a schema.
will split into two properties: rockchip,trcm-sync-tx-only, 
rockchip,trcm-sync-rx-only.
>> +
>>     rockchip,capture-channels:
>>       $ref: /schemas/types.yaml#/definitions/uint32
>>       default: 2
>> -- 
>> 2.7.4
>>
>>
>>
>>
>
>
-- 
Best Regards!
张学广/Sugar
瑞芯微电子股份有限公司
Rockchip Electronics Co., Ltd.



