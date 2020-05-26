Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CCEE1C5E57
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2020 19:06:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730076AbgEERG3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 May 2020 13:06:29 -0400
Received: from foss.arm.com ([217.140.110.172]:45892 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729553AbgEERG3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 5 May 2020 13:06:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E03D431B;
        Tue,  5 May 2020 10:06:28 -0700 (PDT)
Received: from [10.57.39.240] (unknown [10.57.39.240])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E7B03F305;
        Tue,  5 May 2020 10:06:27 -0700 (PDT)
Subject: Re: [PATCH 00/16] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh@kernel.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        iommu@lists.linux-foundation.org
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-3-andre.przywara@arm.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <468a97b2-ed4d-382b-262b-6c0cd3025696@arm.com>
Date:   Tue, 5 May 2020 18:06:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505165212.76466-3-andre.przywara@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-05-05 5:51 pm, Andre Przywara wrote:
> Date: Mon, 4 May 2020 12:42:49 +0100
> Subject: [PATCH 02/16] dt-bindings: arm-smmu: Allow mmu-400,smmu-v1 compatible

^^ not sure how you managed that...

> The Arm SMMUv1 DT binding only allows combining arm,mmu-401 with
> arm,smmu-v1, even though the MMU-400 is compatible as well.
> 
> Allow this combination as well to let the Arm Juno board pass the test.

Acked-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> index 6515dbe47508..e3ef1c69d132 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> @@ -41,7 +41,9 @@ properties:
>             - const: arm,mmu-500
>             - const: arm,smmu-v2
>         - items:
> -          - const: arm,mmu-401
> +          - enum:
> +              - arm,mmu-400
> +              - arm,mmu-401
>             - const: arm,smmu-v1
>         - enum:
>             - arm,smmu-v1
> 
