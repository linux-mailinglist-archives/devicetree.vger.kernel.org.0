Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CEB8419263
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 12:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233876AbhI0Koi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 06:44:38 -0400
Received: from foss.arm.com ([217.140.110.172]:40662 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233800AbhI0Koi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 06:44:38 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47181ED1;
        Mon, 27 Sep 2021 03:43:00 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3D7193F70D;
        Mon, 27 Sep 2021 03:42:59 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
        Guillaume Tucker <guillaume.tucker@collabora.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH] arm: dts: vexpress: Fix motherboard bus 'interrupt-map'
Date:   Mon, 27 Sep 2021 11:42:49 +0100
Message-Id: <163273927824.3582969.18151016257119813398.b4-ty@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924214221.1877686-1-robh@kernel.org>
References: <20210924214221.1877686-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Sep 2021 16:42:21 -0500, Rob Herring wrote:
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
> [...]

Applied to sudeep.holla/linux (for-next/juno), thanks!

[1/1] arm: dts: vexpress: Fix motherboard bus 'interrupt-map'
      https://git.kernel.org/sudeep.holla/c/319aeaf69c

--
Regards,
Sudeep

