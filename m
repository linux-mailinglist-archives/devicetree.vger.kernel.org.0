Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 924DD3032E8
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:41:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726843AbhAZEkZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:40:25 -0500
Received: from mx07-00178001.pphosted.com ([185.132.182.106]:3428 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728560AbhAYM72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Jan 2021 07:59:28 -0500
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10PCv4wB016352;
        Mon, 25 Jan 2021 13:58:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=flzvt0A8NWOCN0z5OXHpUHz7Tl0U61lPJm1sLeszyqE=;
 b=SYlmEWAiMKoFjwsYvhdZr3+OwaNeY/bcxjBH7RF53RyVycupAbTgH7vv2j3KZr4YNR+M
 LCci4flCKlzuxIDP8TCUsZpDE/6vA5kUnb++Pr6mwbtvhz6WwgnaaSBtWdtrx4bl7DWN
 ZF1WqcWd+22G8PjA4ihy+VzhTmulYVJwZNVCpm0dV/2bGpFbdl10v3ppEtssvnHEeC40
 6jbxfrXeCs+wIFYY8fLUI45ni5UnvSlfIw451TcOHR2rPfN/r9NGTfPwv0NDZje6GLhN
 EoQ1wtpGrb3EEl8XXahLg6OENuh8bhhBr/4yZTeL+q34o4lLdiA27NsXACyfKH9bh5d5 2Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com with ESMTP id 368a56b1v4-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 25 Jan 2021 13:58:25 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D0A15100034;
        Mon, 25 Jan 2021 13:58:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B57732C38D4;
        Mon, 25 Jan 2021 13:58:23 +0100 (CET)
Received: from lmecxl0504.lme.st.com (10.75.127.49) by SFHDAG2NODE3.st.com
 (10.75.127.6) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 25 Jan
 2021 13:58:23 +0100
Subject: Re: [Linux-stm32] [PATCH V2] ARM: dts: stm32: Rename mmc controller
 nodes to mmc@
To:     Marek Vasut <marex@denx.de>,
        <linux-arm-kernel@lists.infradead.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
CC:     <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20210124170337.32917-1-marex@denx.de>
From:   Yann GAUTIER <yann.gautier@foss.st.com>
Message-ID: <eb8c62eb-87c1-0011-49ae-260239daf79e@foss.st.com>
Date:   Mon, 25 Jan 2021 13:58:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210124170337.32917-1-marex@denx.de>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-25_04:2021-01-25,2021-01-25 signatures=0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/24/21 6:03 PM, Marek Vasut wrote:
> Per mmc-controller.yaml, the node pattern is"^mmc(@.*)?$"  ,
> so adjust the node.
> 
> Signed-off-by: Marek Vasut<marex@denx.de>
> Cc: Alexandre Torgue<alexandre.torgue@st.com>
> Cc: Ludovic Barre<ludovic.barre@st.com>
> Cc: Ulf Hansson<ulf.hansson@linaro.org>
> Cc:linux-stm32@st-md-mailman.stormreply.com
> Cc:devicetree@vger.kernel.org

Hi Marek,

Acked-by: Yann Gautier <yann.gautier@foss.st.com>


Do you know if similar patches are planned for other platform using this 
IP (Qualcom, ST-Ericsson, Arm vexpress...)?
I found issues with them when running this command:
make -k dtbs_check 
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/arm,pl18x.yaml

Maybe Linus already sent the info?
Adding those other platforms maintainers.


Regards,
Yann
