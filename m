Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20E754C891D
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 11:19:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbiCAKUh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 05:20:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231678AbiCAKUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 05:20:37 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ED4A43393
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 02:19:56 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0B6B0811D8;
        Tue,  1 Mar 2022 11:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1646129993;
        bh=rhoo1FqQzChSituEZDrwDQBIyXTfh7c4RmHdX2dPJvA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NAVxcYCJwT+xWwIs1Ee0lbw2P1bLVqEKC4cOP59TzVD1/gFdfj98zVjPZXdpRDmIl
         faM2v5S2GN2jb5bQkGLV+2oJNavtZzArSOmAESwMTj05x86inC3eYPepC6qGZnTOgE
         FahXz+wJhEK8ELbWtSulurtzjA9bb/MQU5tSXObNMskmrG/4yQiuAqiVsgqbD0Tdrs
         XSA8AeRjoBzyHrQWqfiHCJDRabRiANHcLCETQe/EgvvzKr7l88wnvdtU/YxRasBioq
         iRZ1bgmBNVXbCGx4Fvz8/JPVxUNsnPBgSrs+exXNXz9XiF/yPO27A7u9eAtOZpVHLw
         o/w6c1WleqqMA==
Message-ID: <7aeed693-dfb7-950f-fdf0-3c90de285392@denx.de>
Date:   Tue, 1 Mar 2022 11:19:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 1/9] dt-bindings: mxsfb: Add compatible for i.MX8MP
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Liu Ying <victor.liu@oss.nxp.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, Robby Cai <robby.cai@nxp.com>
References: <20220228004605.367040-1-marex@denx.de>
 <35b981d0d9d763525c427491ca0e25b6e4c03d0f.camel@oss.nxp.com>
 <8eac8a2c-bc6d-0c79-c727-bdaa2cd9abee@denx.de>
 <a3ab4ec2dd0c7b87698bc7902509a4de6950dd25.camel@oss.nxp.com>
 <33207e88-da9b-96d7-0fef-461cb4496c88@denx.de>
 <284d65f53dffb6085bde6ef6ecd398f10d4c6c80.camel@oss.nxp.com>
 <8950434843ff7bbd1a527b0c799d9a74a75ee36d.camel@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <8950434843ff7bbd1a527b0c799d9a74a75ee36d.camel@pengutronix.de>
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

On 3/1/22 11:04, Lucas Stach wrote:

Hi,

[...]

>> Given the two totally different IPs, I don't see bugs of IP control
>> logics should be fixed for both drivers. Naturally, the two would
>> diverge due to different HWs. Looking at Patch 9/9, it basically
>> squashes code to control LCDIFv3 into the mxsfb drm driver with
>> 'if/else' checks(barely no common control code), which is hard to
>> maintain and not able to achieve good scalability for both 'LCDIFv3'
>> and 'LCDIF'.
> 
> I tend to agree with Liu here. Writing a DRM driver isn't that much
> boilerplate anymore with all the helpers we have available in the
> framework today.

I did write a separate driver for this IP before I spent time merging 
them into single driver, that's when I realized a single driver is much 
better and discarded the separate driver idea.

> The IP is so different from the currently supported LCDIF controllers
> that I think trying to support this one in the existing driver actually
> increases the chances to break something when modifying the driver in
> the future. Not everyone is able to test all LCDIF versions. My vote is
> on having a separate driver for the i.MX8MP LCDIF.

If you look at both controllers, it is clear it is still the LCDIF 
behind, even the CSC that is bolted on would suggest that.

I am also not happy when I look at the amount of duplication a separate 
driver would create, it will be some 50% of the code that would be just 
duplicated.

[...]
