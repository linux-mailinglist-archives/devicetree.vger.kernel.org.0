Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EAA564E53B
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 01:36:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229754AbiLPAgt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 19:36:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiLPAgs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 19:36:48 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D3223720E
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 16:36:47 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7F727852CE;
        Fri, 16 Dec 2022 01:36:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671151006;
        bh=Upm/tLO+9m7v+aFpUArVDuYsn0ZVRBiU4IK6eZApgT8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=xw4H0iDhjKJmuSge9wbwsSKtgXpgMXIgJI6mJvUCqtGf/rncE9Mv/Ill8ws/74JG0
         o7DpTfXxYz2yi+1sc8p3uPU+SXnVN+764brY406JcrZvXFUIelQiL+c21mLOH51Fq0
         b7YSp88KJdz6ioFIUvg90WnBEXpEmcpxkGgf6aoykeyfQJKX0r2pA1EoNfWMTDErwr
         SYoMw0cxwuVWohfU7p0aTA6g97HdVPVnJ+XtCRNaMHNPuX21fk6MIx4TkFiJ5b+E7y
         MFxrbPihvWc8Ssga1eM+VDLfk5MjBx1LqOFk4Rid2P/aNLfEgBCPse+/jJjmzgCm+L
         x53mIYnOHUsYg==
Message-ID: <5d67cfa2-4af3-39ea-2d3a-26ae7beffc03@denx.de>
Date:   Fri, 16 Dec 2022 01:36:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Drop deprecated
 regulator-compatible from i.MX8M Plus PhyCore SoM
Content-Language: en-US
To:     Fabio Estevam <festevam@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Jonas Kuenstler <j.kuenstler@phytec.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Teresa Remmet <t.remmet@phytec.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
References: <20221215235710.228500-1-marex@denx.de>
 <20221215235710.228500-2-marex@denx.de>
 <76040ae69860f88440dd9a558a6d2579@denx.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <76040ae69860f88440dd9a558a6d2579@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/16/22 01:33, Fabio Estevam wrote:
> Hi Marek,

Hi,

> On 15/12/2022 20:57, Marek Vasut wrote:
>> The "regulator-compatible" property is deprecated and unused, as the
>> match happens on the node name in Linux of_regulator_match() in case
>> the property is not present. Drop the deprecated property from DT.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
> 
> Thanks for the patch.
> 
> I have already sent the same fix:
> 
> https://lore.kernel.org/linux-arm-kernel/20221121162911.2377556-1-festevam@gmail.com/T/

Ah nice, thanks !

Please drop this patch then.
