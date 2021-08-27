Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E668E3F91F7
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 03:38:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbhH0BiK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 21:38:10 -0400
Received: from regular1.263xmail.com ([211.150.70.206]:55600 "EHLO
        regular1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231481AbhH0BiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 21:38:10 -0400
Received: from localhost (unknown [192.168.167.16])
        by regular1.263xmail.com (Postfix) with ESMTP id 9816C1B5B;
        Fri, 27 Aug 2021 09:37:20 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P702T139881362753280S1630028240323457_;
        Fri, 27 Aug 2021 09:37:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6dcc37658b0229364e9fc103e0cfe35f>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: alsa-devel@alsa-project.org
X-RCPT-COUNT: 5
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 05/14] ASoC: rockchip: i2s: Fix concurrency between
 tx/rx
To:     Mark Brown <broonie@kernel.org>
Cc:     heiko@sntech.de, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629950520-14190-5-git-send-email-sugar.zhang@rock-chips.com>
 <20210826125206.GD4148@sirena.org.uk>
From:   sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <a6d7a5af-0efd-72db-b144-cf51cd0907a3@rock-chips.com>
Date:   Fri, 27 Aug 2021 09:37:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210826125206.GD4148@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On 2021/8/26 20:52, Mark Brown wrote:
> On Thu, Aug 26, 2021 at 12:01:51PM +0800, Sugar Zhang wrote:
>
>> +/* tx/rx ctrl lock */
>> +static DEFINE_SPINLOCK(lock);
>> +
> Why is this a global and not part of the driver data?  It's also not
> clear to me why this is a spinlock and not a mutex.

Yes, this should be moved into driver data, will do in v4.

it's not allowed to sleep in this context, so use spinlock instead.

-- 
Best Regards!
张学广/Sugar
瑞芯微电子股份有限公司
Rockchip Electronics Co., Ltd.



