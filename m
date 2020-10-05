Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CAF82833E5
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 12:17:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725914AbgJEKRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 06:17:03 -0400
Received: from mx08-00178001.pphosted.com ([91.207.212.93]:58100 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725887AbgJEKRD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 06:17:03 -0400
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 095ABYYl002918;
        Mon, 5 Oct 2020 12:16:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=VXsNcqZi7TgDrBB9LINh2CpqGPH+48H3CTCQT4uGTJI=;
 b=wdiL/O6gh3CLQjy9IZI4GNXIWjHlE6A9sOhuc5B7gbvyz63W3EN5mO0MG6pBo0M52iVS
 eZU1QaZ/eZZFdLMzt1opKVoAccC0lwVsP13E5BGXg3mHfssq4R3HLQNsrhb3tuC5O19r
 76PyLQz5V66fMapq9ziQsxXyWFJi7g1LeMU3nF+6NkoFBhGJN3xHZI6OXR55ExodFwZw
 JfYU9Gwzxaf+nqIlKSAaCqWLbZdP9VjgLIk2SW6+1RMqrfsWMxt0DgjzD/66qh6Q71yL
 VfZa0SI3xQPeCbWYFMLcG/KvQ3NbaqRcGBH4RBSh72aQJA+ZJqsEaEI/oUynECZxTpK+ 0g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com with ESMTP id 33xg6g9h8k-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 05 Oct 2020 12:16:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5D1ED10002A;
        Mon,  5 Oct 2020 12:16:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3E66F2AA2D9;
        Mon,  5 Oct 2020 12:16:37 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 5 Oct
 2020 12:16:36 +0200
Subject: Re: [PATCH] dt-bindings: arm: Add missing root node constraint for
 board/SoC bindings
To:     Rob Herring <robh@kernel.org>, <devicetree@vger.kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Baruch Siach <baruch@tkos.co.il>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Anders Berg <anders.berg@lsi.com>
References: <20201001200943.1193870-1-robh@kernel.org>
From:   Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <707a98c2-8006-a46b-0ed4-c75ca2e73d36@st.com>
Date:   Mon, 5 Oct 2020 12:16:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001200943.1193870-1-robh@kernel.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-10-05_06:2020-10-02,2020-10-05 signatures=0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 10/1/20 10:09 PM, Rob Herring wrote:
> Board/SoC top-level compatible bindings should be constrained to the root
> node. Add the missing constraints that the node name must be "/".
> 

...

> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 790e6dd48e34..696a0101ebcc 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -10,6 +10,8 @@ maintainers:
>     - Alexandre Torgue <alexandre.torgue@st.com>
>   
>   properties:
> +  $nodename:
> +    const: "/"
>     compatible:
>       oneOf:
>         - items:

Reviewed-by: Alexandre TORGUE <alexandre.torgue@st.com>

thanks
Alex
