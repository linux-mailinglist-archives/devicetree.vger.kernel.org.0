Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4D3474567
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:42:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234942AbhLNOmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:42:40 -0500
Received: from foss.arm.com ([217.140.110.172]:57730 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232847AbhLNOmj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:42:39 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 616FF6D;
        Tue, 14 Dec 2021 06:42:39 -0800 (PST)
Received: from [10.57.84.72] (unknown [10.57.84.72])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1631E3F774;
        Tue, 14 Dec 2021 06:42:37 -0800 (PST)
Message-ID: <abcc021f-e1f4-f097-e6a1-29240de3cd84@arm.com>
Date:   Tue, 14 Dec 2021 14:42:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.4.0
Subject: Re: [PATCH v2 5/5] dt-bindings: perf: Add compatible for Arm DSU-110
To:     Robin Murphy <robin.murphy@arm.com>, will@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1639490264.git.robin.murphy@arm.com>
 <51a8060493e1220886dcd468fad9a2b603607297.1639490264.git.robin.murphy@arm.com>
From:   Suzuki K Poulose <suzuki.poulose@arm.com>
In-Reply-To: <51a8060493e1220886dcd468fad9a2b603607297.1639490264.git.robin.murphy@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2021 14:16, Robin Murphy wrote:
> DSU-110 is the newest and shiniest for Armv9. Its programmer's model is
> largely identical to the previous generation of DSUs, so we can treat it
> as compatible, but it does have a a handful of extra IMP-DEF PMU events
> to call its own. Thanks to the new notion of core complexes, the maximum
> number of supported CPUs goes up as well.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: Also make it complete and valid
> 
>   Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> index 09ddeb6a3ccc..7f31bcecedb5 100644
> --- a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> +++ b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> @@ -21,7 +21,11 @@ description:
>   
>   properties:
>     compatible:
> -    const: arm,dsu-pmu
> +    oneOf:
> +      - const: arm,dsu-pmu
> +      - items:
> +          - const: arm,dsu-110-pmu
> +          - const: arm,dsu-pmu

Couldn't this be :

	compatible:
	  oneOf:
	    - const: arm,dsu-110-pmu
	    - const: arm,dsu-pmu

Otherwise, looks good to me.

Suzuki
