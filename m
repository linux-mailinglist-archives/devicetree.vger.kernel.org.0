Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AC4B1D72B0
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2020 10:16:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727076AbgERIPY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 May 2020 04:15:24 -0400
Received: from foss.arm.com ([217.140.110.172]:35656 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726932AbgERIPX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 May 2020 04:15:23 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 278C2106F;
        Mon, 18 May 2020 01:15:23 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E771A3F305;
        Mon, 18 May 2020 01:15:21 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Andre Przywara <andre.przywara@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh@kernel.org>,
        Liviu Dudau <liviu.dudau@arm.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 00/20] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
Date:   Mon, 18 May 2020 09:15:09 +0100
Message-Id: <158973834734.39932.11246001710949466054.b4-ty@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 May 2020 11:29:56 +0100, Andre Przywara wrote:
> A few updates compared to v2. The most important is to fix the
> interrupt-maps, triggered by changing the number of address-cells in
> the GIC node. For this I split the former patch 07/17 into two (09/20
> and 10/20), one for the foundation model, the other for Juno.
> Also I fixed a dtc complaint about device nodes without reg properties
> being inside simple-bus nodes, those are the new patches 04-06/20.
> Will took patch 01/17 from v2 already, so I removed this from this
> series.
> The rest of the patches stayed the same.
> -----------------------------------
>
> [...]

Applied to sudeep.holla/linux tree (for-next/juno), thanks!

[02/20] arm64: dts: fvp/juno: Fix node address fields
        https://git.kernel.org/sudeep.holla/c/bb5cce12ac
[03/20] arm64: dts: fvp: Move fixed devices out of bus node
        https://git.kernel.org/sudeep.holla/c/849bfc3dfc
[04/20] arm64: dts: vexpress: Move fixed devices out of bus node
        https://git.kernel.org/sudeep.holla/c/d9258898ad
[05/20] arm64: dts: fvp: Move fixed clocks out of bus node
        https://git.kernel.org/sudeep.holla/c/feebdc3f79
[06/20] arm64: dts: juno: Move fixed devices out of bus node
        https://git.kernel.org/sudeep.holla/c/948204a1bf
[07/20] arm64: dts: juno: Fix mem-timer
        https://git.kernel.org/sudeep.holla/c/0e529dae51
[08/20] arm64: dts: fvp: Fix GIC compatible names
        https://git.kernel.org/sudeep.holla/c/336edacfb9
[09/20] arm64: dts: juno: Fix GIC child nodes
        https://git.kernel.org/sudeep.holla/c/a78aee9e43
[10/20] arm64: dts: fvp: Fix GIC child nodes
        https://git.kernel.org/sudeep.holla/c/78631aecc5
[11/20] arm64: dts: fvp: Fix ITS node names and #msi-cells
        https://git.kernel.org/sudeep.holla/c/fac959c93f
[12/20] arm64: dts: juno: Use proper DT node name for USB
        https://git.kernel.org/sudeep.holla/c/17a37ff76e
[13/20] arm64: dts: fvp/juno: Fix serial node names
        https://git.kernel.org/sudeep.holla/c/fa51a2a1ed
[14/20] arm64: dts: fvp: Fix SMMU DT node
        https://git.kernel.org/sudeep.holla/c/19650d681b
[15/20] arm64: dts: fvp/juno: Fix bus node names
        https://git.kernel.org/sudeep.holla/c/b68d15c0e6
[16/20] arm64: dts: juno: Fix GPU interrupt order
        https://git.kernel.org/sudeep.holla/c/2dd42335f8
[17/20] arm64: dts: vexpress: Fix VExpress LED names
        https://git.kernel.org/sudeep.holla/c/bf3f0ccf35
[18/20] arm64: dts: juno: Fix SCPI shared mem node name
        https://git.kernel.org/sudeep.holla/c/93f6027abe

--
Regards,
Sudeep

