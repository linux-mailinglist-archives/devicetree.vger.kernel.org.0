Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAD263F91EB
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 03:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231314AbhH0Bbv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 21:31:51 -0400
Received: from regular1.263xmail.com ([211.150.70.206]:52034 "EHLO
        regular1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbhH0Bbu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 21:31:50 -0400
Received: from localhost (unknown [192.168.167.16])
        by regular1.263xmail.com (Postfix) with ESMTP id 226A11B6D;
        Fri, 27 Aug 2021 09:30:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P702T139881204397824S1630027855737448_;
        Fri, 27 Aug 2021 09:30:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5a3fa2c24523a228756e99ae0148fe0c>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: alsa-devel@alsa-project.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v1_6/7=5d_ASoC=3a_dt-bindings=3a_rockchip?=
 =?UTF-8?B?OiBwZG06IERvY3VtZW50IHByb3BlcnR5ICdyb2NrY2hpcCxwYXRoLW1hcCfjgJA=?=
 =?UTF-8?B?6K+35rOo5oSP77yM6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R?=
 =?UTF-8?B?44CR?=
To:     Rob Herring <robh@kernel.org>
Cc:     broonie@kernel.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629791656-13698-1-git-send-email-sugar.zhang@rock-chips.com>
 <YSUlPU+yxepPrcvL@robh.at.kernel.org>
From:   sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <8b702562-e0b0-fb4e-14f5-8b5419036a0a@rock-chips.com>
Date:   Fri, 27 Aug 2021 09:30:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YSUlPU+yxepPrcvL@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 2021/8/25 0:58, Rob Herring wrote:
> On Tue, Aug 24, 2021 at 03:54:15PM +0800, Sugar Zhang wrote:
>> This is an optional property to describe data path mapping.
>>
>> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
>> ---
>>
>>   Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>> index 54d94438..b2d7e47 100644
>> --- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>> +++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>> @@ -24,6 +24,22 @@ Required properties:
>>   	     pinctrl-names. See ../pinctrl/pinctrl-bindings.txt
>>   	     for details of the property values.
>>   
>> +Optional properties:
>> +- rockchip,path-map: This is a variable length array, that shows the mapping
> The schema says this is a fixed length array.

Actually, it varies depends on different controller or application. 
considering the situation:

for 4 channel, we use path0/1, and hw wired to sdi1/3. we can map them 
to path0/1 as follows:

rockchip,path-map = <1 3>;

>
>> +  of SDIx to PATHx. By default, they are one-to-one mapping as follows:
>> +
>> +   path0 <-- sdi0
>> +   path1 <-- sdi1
>> +   path2 <-- sdi2
>> +   path3 <-- sdi3
>> +
>> +  e.g. "rockchip,path-map = <3 2 1 0>" means the mapping as follows:
>> +
>> +   path0 <-- sdi3
>> +   path1 <-- sdi2
>> +   path2 <-- sdi1
>> +   path3 <-- sdi0
>> +
>>   Example for rk3328 PDM controller:
>>   
>>   pdm: pdm@ff040000 {
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



