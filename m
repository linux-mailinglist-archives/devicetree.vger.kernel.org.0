Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3C4490B60
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 16:31:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240467AbiAQPbB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 10:31:01 -0500
Received: from foss.arm.com ([217.140.110.172]:59764 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235076AbiAQPbA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 17 Jan 2022 10:31:00 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F6561FB;
        Mon, 17 Jan 2022 07:31:00 -0800 (PST)
Received: from [10.57.67.190] (unknown [10.57.67.190])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4556D3F766;
        Mon, 17 Jan 2022 07:30:59 -0800 (PST)
Message-ID: <e88b882f-4b5d-a801-fc68-66b7f790e11c@arm.com>
Date:   Mon, 17 Jan 2022 15:30:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: xen: document Xen iommu device
Content-Language: en-GB
To:     Sergiy Kibrik <Sergiy_Kibrik@epam.com>,
        xen-devel@lists.xenproject.org
Cc:     Stefano Stabellini <sstabellini@kernel.org>,
        Julien Grall <julien@xen.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220117123251.140867-1-Sergiy_Kibrik@epam.com>
 <20220117123251.140867-2-Sergiy_Kibrik@epam.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220117123251.140867-2-Sergiy_Kibrik@epam.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-01-17 12:32, Sergiy Kibrik wrote:
> In IOMMU-capable system hypervisor usually takes over IOMMU control.
> Generally guest domains don't need to care about IOMMU management and take any
> extra actions. Yet in some cases a knowledge about which device is protected
> may be useful for privileged domain.
> 
> In compliance with iommu bindings this can be achieved with device-level
> iommus property specified with dummy Xen iommu device.

This could break Linux guests, since depending on the deferred probe 
timeout setting it could lead to drivers never probing because the 
"IOMMU" never becomes available.

Unless you intend to expose actual paravirtualised IOMMU translation 
functionality to guests (in which case virtio-iommu would be highly 
preferable anyway), I don't think this is the right approach. If there's 
no better alternative to using DT to communicate Xen-specific policy, 
then at least it should logically be via a Xen-specific DT property.

Thanks,
Robin.

> Signed-off-by: Sergiy Kibrik <Sergiy_Kibrik@epam.com>
> ---
>   Documentation/devicetree/bindings/arm/xen.txt | 26 +++++++++++++++++++
>   1 file changed, 26 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/xen.txt b/Documentation/devicetree/bindings/arm/xen.txt
> index db5c56db30ec..98efa95c0d1b 100644
> --- a/Documentation/devicetree/bindings/arm/xen.txt
> +++ b/Documentation/devicetree/bindings/arm/xen.txt
> @@ -58,3 +58,29 @@ Documentation/arm/uefi.rst, which are provided by the regular UEFI stub. However
>   they differ because they are provided by the Xen hypervisor, together with a set
>   of UEFI runtime services implemented via hypercalls, see
>   http://xenbits.xen.org/docs/unstable/hypercall/x86_64/include,public,platform.h.html.
> +
> +* XEN IOMMU device
> +
> +In compliance with iommu bindings Xen virtual IOMMU device node represents
> +hypervisor-managed IOMMU [1]. Platform devices specified as IOMMU masters of
> +this xen-iommu device are protected by hypervisor-managed platform IOMMU.
> +
> +Required properties:
> +
> +- compatible:	Should be "xen,iommu-el2-v1"
> +- #iommu-cells: must be 0
> +
> +Example:
> +
> +xen-iommu {
> +	compatible = "xen,iommu-el2-v1";
> +	#iommu-cells = <0>;
> +};
> +
> +video@fe001000 {
> +	...
> +	/* this platform device is IOMMU-protected by hypervisor */
> +	iommus = <&xen-iommu 0x0>;
> +};
> +
> +[1] Documentation/devicetree/bindings/iommu/iommu.txt
