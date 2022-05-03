Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D03535185DF
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 15:46:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236498AbiECNtt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 09:49:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236485AbiECNtl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 09:49:41 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FC672251E
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 06:46:07 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3C2578186D;
        Tue,  3 May 2022 15:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1651585564;
        bh=S62zju50AR86PtJj89G+DBN81Uzx9E62NaSdLZMQVFc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=rJNGcQCMz7nWyzB8sVdKGLQzongwKgapAaEWUtJe/Wr1cnPBXBLa2WxJ7/kY1U2BT
         sXHR56NiJdWOl8V14wXacEvk0faYktw/K4E+Gn/lycBEx1037zKdHi4xra76rcZ9lF
         81LbxmKNFFrnlIsXJJN2n8lGsXlSqis2+olCqmaYFrLnAyeYNruPYV7Izn7I8ciixi
         kxljdMSyLiBaQCYw4wUKqoyc20oc3ptlb7CnNQan1APHDBTvWDAAHJ24GJbd/+62of
         msMQ6fO745sSmlHgPj3oQbAa7ZIuBsG+u/ItHFBcfPLCYoJhlV4DRGP5S2Jq9/oBuu
         cgD8QxXuyKvzw==
Message-ID: <ffe878d7-fc00-cadf-7516-d8bb2551a77f@denx.de>
Date:   Tue, 3 May 2022 15:46:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: ldb: Implement
 simple Freescale i.MX8MP LDB bridge
Content-Language: en-US
To:     Robert Foss <robert.foss@linaro.org>, Rob Herring <robh@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Robby Cai <robby.cai@nxp.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220426193645.244792-1-marex@denx.de>
 <YnB3008DXAVoUK7j@robh.at.kernel.org>
 <CAG3jFyte+ePjD6aYoFCW-+3sBW37ROcL8cYNuBGq31YpOUbGcA@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAG3jFyte+ePjD6aYoFCW-+3sBW37ROcL8cYNuBGq31YpOUbGcA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/3/22 14:03, Robert Foss wrote:
> On Tue, 3 May 2022 at 02:31, Rob Herring <robh@kernel.org> wrote:
>>
>> On Tue, Apr 26, 2022 at 09:36:44PM +0200, Marek Vasut wrote:
>>> The i.MX8MP contains two syscon registers which are responsible
>>> for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
>>> which represents this serializer as a bridge.
>>>
>>> Acked-by: Sam Ravnborg <sam@ravnborg.org>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> Cc: Lucas Stach <l.stach@pengutronix.de>
>>> Cc: Maxime Ripard <maxime@cerno.tech>
>>> Cc: Peng Fan <peng.fan@nxp.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Robby Cai <robby.cai@nxp.com>
>>> Cc: Robert Foss <robert.foss@linaro.org>
>>> Cc: Sam Ravnborg <sam@ravnborg.org>
>>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>>> Cc: devicetree@vger.kernel.org
>>> To: dri-devel@lists.freedesktop.org
>>> ---
>>> V2: - Consistently use fsl,imx8mp-ldb as compatible
>>>      - Drop items: from compatible:
>>>      - Replace minItems with maxItems in clocks:
>>>      - Drop quotes from clock-names const: ldb
>>>      - Rename syscon to fsl,syscon
>>>      - Use generic name of ldb-lvds in example
>>> V3: - Add AB from Sam
>>>      - Consistently use MX8MP
>>> V4: - Rename to fsl-ldb all over the place
>>>      - Put the LDB node under media block controller in the example
>>> ---
>>>   .../bindings/display/bridge/fsl,ldb.yaml      | 92 +++++++++++++++++++
>>>   1 file changed, 92 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
>>
>> A little quick on the applying...
> 
> Darnit, you're right.
> 
> Marek: Can you supply a new patch with all of the relevant changes?

Sure, it's coming today-ish or so.
