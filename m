Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E63882F60BE
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 13:08:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727097AbhANMIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 07:08:02 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46024 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727001AbhANMIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 07:08:02 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10EC76Cg127982;
        Thu, 14 Jan 2021 06:07:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610626026;
        bh=c6Qzd7haF7zo5ZuOTCYGyQ66X4AsxPoFdGfhorfZZuk=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=mNvIb+3FtEXypkA+wXvoihJ3WbJGngT4L1qrPVwbbHmxJYwCOgXCR2I+r4gLKGzLP
         2lqwizJlQloH9EJuLAwcWbZO/z6p7TOwBItELcdWj/yqysPiLzSkswP0AGR3Pui+7d
         2Wjh8vx06XAKH1ulZUh36ZFGyRyHKgy3hWHWK+ZQ=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10EC76bL113164
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 14 Jan 2021 06:07:06 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 Jan 2021 06:07:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 Jan 2021 06:07:06 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10EC74iY083167;
        Thu, 14 Jan 2021 06:07:05 -0600
Subject: Re: [PATCH v2 0/3] Add R5F nodes on TI K3 J7200 SoCs
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210111184554.6748-1-s-anna@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <92f9f684-05bb-3587-35b2-b19c6a49f841@ti.com>
Date:   Thu, 14 Jan 2021 17:37:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210111184554.6748-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/01/21 12:15 am, Suman Anna wrote:
> Hi Nishanth,
> 
> This is v2 of the R5F DT node patches, and is a minor revision of the 
> previous series [1] with couple of patches squashed in. There is no
> change in overall delta. Please see the v1 cover-letter for details
> and the individual patches for exact delta.

Series looks good to me.

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210107183907.6545-1-s-anna@ti.com/
> 
> Suman Anna (3):
>   arm64: dts: ti: k3-j7200: Add R5F cluster nodes
>   arm64: dts: ti: k3-j7200-som-p0: Add mailboxes to R5Fs
>   arm64: dts: ti: k3-j7200-som-p0: Add DDR carveout memory nodes for
>     R5Fs
> 
>  arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 42 +++++++++-
>  .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 42 +++++++++-
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 80 ++++++++++++++++++-
>  3 files changed, 161 insertions(+), 3 deletions(-)
> 
