Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDAD13032FF
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727103AbhAZEoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:44:19 -0500
Received: from mx07-00178001.pphosted.com ([185.132.182.106]:52766 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729389AbhAYOaR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Jan 2021 09:30:17 -0500
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10PERZIs010285;
        Mon, 25 Jan 2021 15:29:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=3k/eiQfbt9Pvl5KXfK1EZJ8YBpCwjTaFAFS24mSE9fQ=;
 b=eFAmegj0ZilBpDSWLUBbh0pUCf558T6viyOiH9l2GCgRaX605fdoMWah/zZW38vGLzBL
 frQYMB/uWCw3dHCugCbFwMXvkVSx9tNjJUhD/prt77Q8gGWQv7CgVP9/8wl6H7zC4Ze1
 VqKgDEJZnt7NMn79W8jSixYFpAXRWSusYFsxFHpGTQtboI8CANNHBLkqdDJiGApStCch
 ne7DZByJc+TmTxQNkZ//qL43Mi8yeIGwdp5SLk45D4yWD/fL+uqriSYt412le/1lkQR9
 ElNgCt9tsdc0Du3vm2PtyGezXNbGxnOhVFftOiCI9GaO3pKN/L1jhbEVxFooRm3poCks cA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com with ESMTP id 368c15k42s-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 25 Jan 2021 15:29:14 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0114810002A;
        Mon, 25 Jan 2021 15:29:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E659A21822E;
        Mon, 25 Jan 2021 15:29:13 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG2NODE3.st.com
 (10.75.127.6) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 25 Jan
 2021 15:29:13 +0100
Subject: Re: [PATCH V2] ARM: dts: stm32: Rename mmc controller nodes to mmc@
To:     Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC:     Alexandre Torgue <alexandre.torgue@st.com>,
        Ludovic Barre <ludovic.barre@st.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <devicetree@vger.kernel.org>
References: <20210124170337.32917-1-marex@denx.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
Message-ID: <470dc9a0-5b4d-84f7-41b5-709eabfbf1f8@foss.st.com>
Date:   Mon, 25 Jan 2021 15:29:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210124170337.32917-1-marex@denx.de>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-25_04:2021-01-25,2021-01-25 signatures=0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek

On 1/24/21 6:03 PM, Marek Vasut wrote:
> Per mmc-controller.yaml, the node pattern is "^mmc(@.*)?$" ,
> so adjust the node.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Ludovic Barre <ludovic.barre@st.com>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: devicetree@vger.kernel.org
> ---
> V2: Fix stm32h743.dtsi
> ---
>   arch/arm/boot/dts/stm32f429.dtsi  | 2 +-
>   arch/arm/boot/dts/stm32f746.dtsi  | 4 ++--
>   arch/arm/boot/dts/stm32h743.dtsi  | 2 +-
>   arch/arm/boot/dts/stm32mp151.dtsi | 6 +++---
>   4 files changed, 7 insertions(+), 7 deletions(-)
> 

Applied on stm32-next.

Thanks.
Alex
