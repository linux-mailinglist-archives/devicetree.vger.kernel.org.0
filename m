Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB9E4E48C6
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 23:01:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbiCVWDL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 18:03:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230328AbiCVWDK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 18:03:10 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77745DE9F
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 15:01:40 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 65CC583B15;
        Tue, 22 Mar 2022 23:01:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1647986499;
        bh=4sCwKYdjwBVsX0VeIWVH2ZkfcS9DgX908He+0PJaxJo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Ie9P9SrDwiAC7X1NRqsaq2bdQ+xSlwnRk5zhculC+y//5Xw1356F7nkbXx5C6MppO
         LBItw2WCuNDocNcDfVluURZCoJWyVNsGUjHde+7zJeaR87BwWsi0iTH4LKAtPgVie/
         fKnBfkqpPgW9O7WjDBeMiSIgqro9f1riovePD/hY4OfuMJUqoF+uDK8UgezJjlnnKD
         AG/xLPxkgIM24/phLLj/61CVrfrQrhwIRVljAVbs0wDNUbdd1MEeWmYrSzmp3Z4JvV
         8gHF81K5qyEuzSRL2EZbFEm5LTEMC99EkmH6H0FKW8rcX0Rmk8GEoqii4u+Ng30drW
         id8vEzgH3PCkA==
Message-ID: <3fdcaaf4-245b-2856-eaf9-4350f0f20724@denx.de>
Date:   Tue, 22 Mar 2022 23:01:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: Add i.MX8MP media block control
 DT bindings
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20220322190324.12589-1-laurent.pinchart@ideasonboard.com>
 <20220322190324.12589-2-laurent.pinchart@ideasonboard.com>
 <3f7bdca8-0da7-fe2d-7bcb-9768b12bb759@denx.de>
 <YjpGRpQcbKjJQJEG@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YjpGRpQcbKjJQJEG@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/22/22 22:57, Laurent Pinchart wrote:
> Hi Marek,
> 
> On Tue, Mar 22, 2022 at 10:29:56PM +0100, Marek Vasut wrote:
>> On 3/22/22 20:03, Laurent Pinchart wrote:
>>> From: Paul Elder <paul.elder@ideasonboard.com>
>>>
>>> The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level
>>> peripheral providing access to the NoC and ensuring proper power
>>> sequencing of the peripherals within the MEDIAMIX domain. Add DT
>>> bindings for it.
>>>
>>> There is already a driver for block controls of other SoCs in the i.MX8M
>>> family, so these bindings will expand upon that.
>>>
>>> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>
>> Reviewed-by: Marek Vasut <marex@denx.de>
>>
>> [...]
>>
>>> +        power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
>>> +                             "mipi-csi2", "lcdif2", "isp2", "isp1", "dwe",
>>> +                             "mipi-dsi2";
>>
>> Nit, I cannot say I'm a big fan of calling the power domain "mipi-csi1"
>> and "mipi-csi2", they are both MIPI CSI2, except there are two of them
>> CSI2 (#1 and #2).
>>
>> Maybe mipi-csi2-1 and mipi-csi2-2 would be better ? DTTO for the LCDIF,
>> where we have lcdifv3 and then mx8mp lcdifv3 and eventually we will have
>> power domain for lcdif #3 instance in this SoC in hdmimix, so maybe some
>> lcdif-1/lcdif-2 would be a better name ?
> 
> The names come from the reference manual, at least the ones for the
> second instance. We have, for instance, SFT_EN_MIPI_CSI_PCLK_RESETN and
> SFT_EN_MIPI_CSI2_PCLK_RESETN. Same for DSI and LCDIF, there's DSI and
> DSI2, and LCDIF and LCDIF2. The "1" suffix has been added for clarity.
> 
> This is a bit bikeshedding territory as I expect the DT node for the
> media-blk-ctrl to be written once and never be touched again, so if
> anyone feels strongly about using better names (whatever those better
> names would be), I don't mind much.
> 
> I can submit a v3 once a consensus emerges.

I don't feel strongly about it, I just wanted to point it out.
Let's wait for the others' opinions.
