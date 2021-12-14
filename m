Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ACD147453E
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:36:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232683AbhLNOgj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:36:39 -0500
Received: from foss.arm.com ([217.140.110.172]:57540 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230525AbhLNOgi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:36:38 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 622BB6D;
        Tue, 14 Dec 2021 06:36:38 -0800 (PST)
Received: from [10.57.84.72] (unknown [10.57.84.72])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 257643F793;
        Tue, 14 Dec 2021 06:36:37 -0800 (PST)
Message-ID: <85dc7575-de86-b5d5-252d-fcfb6aa6f3e9@arm.com>
Date:   Tue, 14 Dec 2021 14:36:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.4.0
Subject: Re: [PATCH v2 4/5] dt-bindings: perf: Convert Arm DSU to schema
To:     Robin Murphy <robin.murphy@arm.com>, will@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1639490264.git.robin.murphy@arm.com>
 <9fde2e11b0d11285c26d0e9d261034a1628c7901.1639490264.git.robin.murphy@arm.com>
From:   Suzuki K Poulose <suzuki.poulose@arm.com>
In-Reply-To: <9fde2e11b0d11285c26d0e9d261034a1628c7901.1639490264.git.robin.murphy@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2021 14:16, Robin Murphy wrote:
> Convert the DSU binding to schema, as one does.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: Actually finish converting the thing to valid schema...
> 
>   .../devicetree/bindings/arm/arm-dsu-pmu.txt   | 27 ------------
>   .../devicetree/bindings/perf/arm,dsu-pmu.yaml | 41 +++++++++++++++++++
>   2 files changed, 41 insertions(+), 27 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
>   create mode 100644 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt b/Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
> deleted file mode 100644
> index 6efabba530f1..000000000000
> --- a/Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -* ARM DynamIQ Shared Unit (DSU) Performance Monitor Unit (PMU)
> -
> -ARM DyanmIQ Shared Unit (DSU) integrates one or more CPU cores
> -with a shared L3 memory system, control logic and external interfaces to
> -form a multicore cluster. The PMU enables to gather various statistics on
> -the operations of the DSU. The PMU provides independent 32bit counters that
> -can count any of the supported events, along with a 64bit cycle counter.
> -The PMU is accessed via CPU system registers and has no MMIO component.
> -
> -** DSU PMU required properties:
> -
> -- compatible	: should be one of :
> -
> -		"arm,dsu-pmu"
> -
> -- interrupts	: Exactly 1 SPI must be listed.
> -
> -- cpus		: List of phandles for the CPUs connected to this DSU instance.
> -
> -
> -** Example:
> -
> -dsu-pmu-0 {
> -	compatible = "arm,dsu-pmu";
> -	interrupts = <GIC_SPI 02 IRQ_TYPE_LEVEL_HIGH>;
> -	cpus = <&cpu_0>, <&cpu_1>;
> -};
> diff --git a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> new file mode 100644
> index 000000000000..09ddeb6a3ccc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2021 Arm Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/arm,dsu-pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM DynamIQ Shared Unit (DSU) Performance Monitor Unit (PMU)
> +
> +maintainers:
> +  - Suzuki K Poulose <suzuki.poulose@arm.com>
> +  - Robin Murphy <robin.murphy@arm.com>
> +
> +description:
> +  ARM DyanmIQ Shared Unit (DSU) integrates one or more CPU cores with a shared

nit: DynamIQ. I understand I am the one to blame for ;-)

Rest looks good to me.

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
