Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AABF2B5E6D
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 12:34:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727815AbgKQLc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 06:32:56 -0500
Received: from mx08-00178001.pphosted.com ([91.207.212.93]:11810 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725355AbgKQLcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Nov 2020 06:32:54 -0500
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0AHBQjdr026342;
        Tue, 17 Nov 2020 12:32:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=QnMd69S0okGMioQQhZ+X/IS1UxKwi8Wl4RJ1/4SXwnE=;
 b=CrpyEe3rXTpesAe/alZpk/R7WZjnDgeK9RzcHv8flbr7GhOuq2ZcC3O0mI0SFCSToi+u
 Naz+URUz/ceLV02G7IXAGiwZsgwHs0LJLVgQVG1NwhO2AlzFEb2o0Uu464olpFcEiJOz
 jNEpHlvVXCY6vNL1Jy8dDfzWCaSLodPQqKW7RNA2exNEwjZxt1fzguEmqgAy5q/znmkG
 IP0kV+F234Nbm0D8S5X/2Y2pzD5abIy1O55nqZ5CnZpbTzSfLwFPxWARLI+61fL4yTkE
 qouF4ZGJp+eGlgJkKeGVAsKQmB3uBF/WZcXXmYZq/L5GyGs1gFz9wgIV3aeYmK1JY0wi 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com with ESMTP id 34t58cha86-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Nov 2020 12:32:43 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 415A510002A;
        Tue, 17 Nov 2020 12:32:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1D63E244875;
        Tue, 17 Nov 2020 12:32:42 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 17 Nov
 2020 12:32:41 +0100
Subject: Re: [PATCH] dt-bindings: arm: stm32: Add compatible strings for DH
 SoMs and boards
To:     Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Patrice Chotard <patrice.chotard@st.com>,
        Patrick Delaunay <patrick.delaunay@st.com>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20201108221438.310406-1-marex@denx.de>
From:   Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <5b28a306-b5c1-21d3-7d21-b51c698f5581@st.com>
Date:   Tue, 17 Nov 2020 12:31:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201108221438.310406-1-marex@denx.de>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-17_03:2020-11-17,2020-11-17 signatures=0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek

On 11/8/20 11:14 PM, Marek Vasut wrote:
> Document devicetree compatible strings of the DH SoMs and boards.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>   .../devicetree/bindings/arm/stm32/stm32.yaml      | 15 ++++++++++++++-
>   1 file changed, 14 insertions(+), 1 deletion(-)
> 


Applied on stm32-next.

Thanks.
Alex


> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 009b424e456e..f9939ec28eae 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -14,6 +14,20 @@ properties:
>       const: "/"
>     compatible:
>       oneOf:
> +      - description: DH STM32MP1 SoM based Boards
> +        items:
> +          - enum:
> +              - arrow,stm32mp157a-avenger96 # Avenger96
> +              - dh,stm32mp153c-dhcom-drc02
> +              - dh,stm32mp157c-dhcom-pdk2
> +              - dh,stm32mp157c-dhcom-picoitx
> +          - enum:
> +              - dh,stm32mp153c-dhcom-som
> +              - dh,stm32mp157a-dhcor-som
> +              - dh,stm32mp157c-dhcom-som
> +          - enum:
> +              - st,stm32mp153
> +              - st,stm32mp157
>         - items:
>             - enum:
>                 - st,stm32f429i-disco
> @@ -39,7 +53,6 @@ properties:
>             - const: st,stm32h743
>         - items:
>             - enum:
> -              - arrow,stm32mp157a-avenger96 # Avenger96
>                 - lxa,stm32mp157c-mc1
>                 - shiratech,stm32mp157a-iot-box # IoT Box
>                 - shiratech,stm32mp157a-stinger96 # Stinger96
> 
