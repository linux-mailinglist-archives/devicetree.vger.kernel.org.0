Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 395A6455231
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 02:27:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233168AbhKRBaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 20:30:24 -0500
Received: from regular1.263xmail.com ([211.150.70.202]:33726 "EHLO
        regular1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232630AbhKRBaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 20:30:21 -0500
Received: from localhost (unknown [192.168.167.16])
        by regular1.263xmail.com (Postfix) with ESMTP id 66A10779;
        Thu, 18 Nov 2021 09:27:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.93] (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P11048T139933688260352S1637198830607739_;
        Thu, 18 Nov 2021 09:27:14 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: andy.yan@rock-chips.com
X-RCPT-COUNT: 12
X-LOCAL-RCPT-COUNT: 2
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <8a96bdeaec7a0268badde3c4ba993496>
X-System-Flag: 0
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
From:   Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
Date:   Thu, 18 Nov 2021 09:27:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha Hauer,

On 2021/11/17 下午10:33, Sascha Hauer wrote:
> This series adds initial graphics support for the Rockchip RK356[68]
> SoCs.  Graphics support is based around the VOP2 controller which
> replaces the VOP controller found on earlier Rockchip SoCs. The driver
> has been tested with HDMI support included in this series and MIPI-DSI
> which is not included because it needs some more work. The driver is
> taken from the downstream Rockchip kernel

Yes, you do know this is from Rockchip kernel.

Could you point me out where is the information about original author  
in your commit?

>   and heavily polished, most non
> standard features have been removed for now.

I don't agree with this, we do believe you have do some clean up to meet 
the requirement

of upstream, but all the framework and feature implement are from 
Rockchip engineer,

we have made a great effort to make everything work which block us to 
upstream this driver for now.


NAK for this series.


- Kever



