Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DD8F30285D
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 18:02:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729929AbhAYRBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 12:01:38 -0500
Received: from mail-out.m-online.net ([212.18.0.9]:52539 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729983AbhAYQ7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 11:59:45 -0500
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DPVQQ1QTKz1qw9N;
        Mon, 25 Jan 2021 14:02:38 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DPVQP6bksz1s8Tc;
        Mon, 25 Jan 2021 14:02:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id n_pn9R991jV9; Mon, 25 Jan 2021 14:02:36 +0100 (CET)
X-Auth-Info: p6QN/QHmR8x/ANED8+CFP8bMcqEuKzu9KqqOS2C8IVI=
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Mon, 25 Jan 2021 14:02:36 +0100 (CET)
Subject: Re: [Linux-stm32] [PATCH V2] ARM: dts: stm32: Rename mmc controller
 nodes to mmc@
To:     Yann GAUTIER <yann.gautier@foss.st.com>,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        linux-stm32@st-md-mailman.stormreply.com
References: <20210124170337.32917-1-marex@denx.de>
 <eb8c62eb-87c1-0011-49ae-260239daf79e@foss.st.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <f8515297-7884-4e4b-eca1-24b25e66e8b9@denx.de>
Date:   Mon, 25 Jan 2021 14:02:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <eb8c62eb-87c1-0011-49ae-260239daf79e@foss.st.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/25/21 1:58 PM, Yann GAUTIER wrote:
> On 1/24/21 6:03 PM, Marek Vasut wrote:
>> Per mmc-controller.yaml, the node pattern is"^mmc(@.*)?$"  ,
>> so adjust the node.

[...]

Hi,

> Hi Marek,
> 
> Acked-by: Yann Gautier <yann.gautier@foss.st.com>
> 
> 
> Do you know if similar patches are planned for other platform using this 
> IP (Qualcom, ST-Ericsson, Arm vexpress...)?
> I found issues with them when running this command:
> make -k dtbs_check 
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> 
> Maybe Linus already sent the info?
> Adding those other platforms maintainers.

Maybe just fix them and send patch, since you're at it already ?
