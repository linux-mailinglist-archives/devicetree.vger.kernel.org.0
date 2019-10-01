Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80C1AC34A4
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 14:47:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387752AbfJAMpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 08:45:33 -0400
Received: from foss.arm.com ([217.140.110.172]:48772 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732122AbfJAMpd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Oct 2019 08:45:33 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC8A2337;
        Tue,  1 Oct 2019 05:45:32 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ADCC73F534;
        Tue,  1 Oct 2019 05:45:31 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh@kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Steven Price <steven.price@arm.com>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <CAL_JsqKUP6qG6PVL47RQ5A5OcBhpdOA_0VL1YeYDuyVSVcRqCQ@mail.gmail.com>
 <20191001085954.GA10443@bogus>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <2a3b2fe1-b08a-bc21-6f3b-4a595b51463c@arm.com>
Date:   Tue, 1 Oct 2019 13:45:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191001085954.GA10443@bogus>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2019 09:59, Sudeep Holla wrote:
> On Mon, Sep 30, 2019 at 12:46:33PM -0500, Rob Herring wrote:
>> On Mon, Sep 30, 2019 at 10:25 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>
>>> Since we now have bindings for Mali Midgard GPUs, let's use them to
>>> describe Juno's GPU subsystem, if only because we can. Juno sports a
>>> Mali-T624 integrated behind an MMU-400 (as a gesture towards
>>> virtualisation), in their own dedicated power domain with DVFS
>>> controlled by the SCP.
>>>
>>> CC: Liviu Dudau <liviu.dudau@arm.com>
>>> CC: Sudeep Holla <sudeep.holla@arm.com>
>>> CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>>> ---
>>>   .../bindings/gpu/arm,mali-midgard.yaml        |  5 +++-
>>>   arch/arm64/boot/dts/arm/juno-base.dtsi        | 27 +++++++++++++++++++
>>>   2 files changed, 31 insertions(+), 1 deletion(-)
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> If you plan to take it along with driver change,
> 
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> If not, please let us know. I can take it for v5.5

The driver change is debatable and not strictly necessary, so it 
probably makes more sense to take this one through the VExpress tree on 
its own. I wouldn't suggest flipping the status to "enabled" just yet, 
but it seems worth putting the basic description in place as a 
jumping-off point for folks to hack on (e.g. it's another 'interesting' 
case for devfreq OPP stuff).

Thanks,
Robin.
