Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30AE041927B
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 12:48:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233838AbhI0KuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 06:50:22 -0400
Received: from foss.arm.com ([217.140.110.172]:41034 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233787AbhI0KuV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 06:50:21 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10497ED1;
        Mon, 27 Sep 2021 03:48:44 -0700 (PDT)
Received: from bogus (unknown [10.57.25.233])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 909173F70D;
        Mon, 27 Sep 2021 03:48:41 -0700 (PDT)
Date:   Mon, 27 Sep 2021 11:48:21 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Guillaume Tucker <guillaume.tucker@collabora.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm: dts: vexpress: Fix motherboard bus 'interrupt-map'
Message-ID: <20210927104821.pmm33yarfpujgfjm@bogus>
References: <20210924214221.1877686-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210924214221.1877686-1-robh@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 24, 2021 at 04:42:21PM -0500, Rob Herring wrote:
> Commit 078fb7aa6a83 ("arm: dts: vexpress: Fix addressing issues with
> 'motherboard-bus' nodes") broke booting on a couple of 32-bit VExpress
> boards. The problem is #address-cells size changed, but interrupt-map
> was not updated. This results in the timer interrupt (and all the
> other motherboard interrupts) not getting mapped.
> 
> As the 'interrupt-map' properties are all just duplicates across boards,
> just move them into vexpress-v2m.dtsi and vexpress-v2m-rs1.dtsi.
> Strictly speaking, 'interrupt-map' is dependent on the parent
> interrupt controller, but it's not likely we'll ever have a different
> parent than GICv2 on these old platforms. If there was one,
> 'interrupt-map' can still be overridden.
> 
> Fixes: 078fb7aa6a83 ("arm: dts: vexpress: Fix addressing issues with 'motherboard-bus' nodes")
> Reported-by: Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Cc: Guillaume Tucker <guillaume.tucker@collabora.com>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> I tested this on QEMU VExpress CA9. I also added a check to dtc for 
> 'interrupt-map' to catch this kind of error. I need to run it on the 
> rest of the tree and upstream it before enabling in the kernel.
> 

Thanks for fixing this quickly. This time I tested on both Juno and TC2.
Sorry I missed to test it on TC2 earlier as the board was not accessible.

-- 
Regards,
Sudeep
