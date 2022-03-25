Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D73374E716F
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 11:42:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238106AbiCYKn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 06:43:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236476AbiCYKn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 06:43:56 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82BBCC627C
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 03:42:22 -0700 (PDT)
Received: from [192.168.1.111] (91-156-85-209.elisa-laajakaista.fi [91.156.85.209])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8301B6F3;
        Fri, 25 Mar 2022 11:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648204939;
        bh=5dMThMVIPqOliZ1kH45OKsqY99o+mxOS2DgN7FgfJc8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=JidL7PPHFganbvNfLwcge0qx98JkywB2FSFxeWRKooAlMWjxcYSfykippyyM6XH2Q
         dw9PwM9bDzDOL0FCWbdZYAXkAcA+JbQCMI2tuCL5xVoSmamXxhU/dOWc1kkACKIMOr
         aLwHVrbVWexN/7+C1jYeoi+hLoujW/Qnvhlxbe7w=
Message-ID: <f30fe2d7-488a-d599-7631-a991042ecdea@ideasonboard.com>
Date:   Fri, 25 Mar 2022 12:42:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Content-Language: en-US
To:     Maxime Ripard <maxime@cerno.tech>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Jonas Karlman <jonas@kwiboo.se>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Jagan Teki <jagan@amarulasolutions.com>
References: <20220323154823.839469-1-maxime@cerno.tech>
 <YjuFO45Gr1vmKxWG@pendragon.ideasonboard.com>
 <20220324081819.niz4pdqu3j7n2ivh@houat>
 <Yjx1jjB2hWqOPGsi@pendragon.ideasonboard.com>
 <20220324142324.monalktzzpypu74x@houat>
From:   Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
In-Reply-To: <20220324142324.monalktzzpypu74x@houat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On 24/03/2022 16:23, Maxime Ripard wrote:
> On Thu, Mar 24, 2022 at 03:43:42PM +0200, Laurent Pinchart wrote:
>> On Thu, Mar 24, 2022 at 09:18:19AM +0100, Maxime Ripard wrote:
>>> On Wed, Mar 23, 2022 at 10:38:19PM +0200, Laurent Pinchart wrote:
>>>> Hi Maxime,
>>>>
>>>> (CC'ing Sakari)
>>>>
>>>> Thank you for the patch.
>>>>
>>>> On Wed, Mar 23, 2022 at 04:48:23PM +0100, Maxime Ripard wrote:
>>>>> MIPI-DSI devices, if they are controlled through the bus itself, have to
>>>>> be described as a child node of the controller they are attached to.
>>>>>
>>>>> Thus, there's no requirement on the controller having an OF-Graph output
>>>>> port to model the data stream: it's assumed that it would go from the
>>>>> parent to the child.
>>>>>
>>>>> However, some bridges controlled through the DSI bus still require an
>>>>> input OF-Graph port, thus requiring a controller with an OF-Graph output
>>>>> port. This prevents those bridges from being used with the controllers
>>>>> that do not have one without any particular reason to.
>>>>>
>>>>> Let's drop that requirement.
>>>>
>>>> I'm sure this won't come as a surprise, I'm very much opposed to this
>>>> change, for two reasons.
>>>>
>>>> First, ports are part of the hardware, even if they're not connected. It
>>>> thus simplifies handling in drivers if they're always present.
>>>>
>>>> Then, and that's the most important reason, I think it's a mistake not
>>>> to model the DSI data connection using OF graph unconditionally, even
>>>> when the DSI sink device is also controlled through the DSI bus (using
>>>> DCS) and is in that case a child of the DSI source device in the DT
>>>> hierarchy.
>>>
>>> That's the way we do for any other device though. You never addressed
>>> that comment, but it's very much the same that occurs for i2c or spi
>>> controllers and their device. They all get their data from the parent
>>> bus. I don't see you advocate for using OF-Graph for those devices.
>>
>> Those are different, there's no data stream independent of the control
>> communications.
> 
> Fine, then you have Ethernet PHYs, or any MMIO device that does DMA.

Have those devices had the need for OF graphs? For display and capture 
we have a clear need. I don't think we should sometimes use OF graphs 
and sometimes not, but rather use them consistently at least in any new 
driver.

>>>> The device tree describes a control hierarchy between devices. OF graph
>>>> overlays on top of that a data transfer graph. The two are different
>>>> concepts, and the fact that DSI can sometimes be used as a control bus
>>>> doesn't change the concept. Using OF graph unconditionally to describe
>>>> the data connections for DSI leads to less variation in the device tree
>>>> structure, and thus less complexity in the implementation. We're
>>>> suffering from the fact we haven't made it a requirement in the first
>>>> place, which can't be fixed due to ABI breakage constraints, but let's
>>>> not acknowledge it as a good idea.
>>>
>>> Honestly, it doesn't matter one bit.
>>>
>>> We have a huge discrepancy here today, and only a couple of bridges have
>>> that arbitrary restriction. The situation you don't want to acknowledge
>>> is the de-facto standard, by the generic binding and by what all the
>>> bridges and panels are implementing. Even panel-simple-dsi is doing it.
>>> So it's very much there already.
>>
>> It's here, and I think we should move away from it for new DSI sinks.
>> I'd like OF graph to be used consistently for new drivers. We can't
>> change existing DT bindings and drivers to drop support for the
>> non-OF-graph description due to ABI stability, but we can avoid
>> repeating the mistake going forward.
>>
>>> What I'm trying to address here is that some controllers that do
>>> everything right can't be used because that restriction is completely
>>> arbitrary and in opposition to the consensus. And they can't be used
>>> *today*.
>>>
>>> If we want to change that consensus, fine, but we should still have one.
>>> Having some bridges enforcing custom rules for no reason is very much
>>> unacceptable.
>>>
>>> And changing that consensus won't happen overtime, we'll have to take
>>> care of the backward compatibility, etc. So it won't fix the issue that
>>> we can't use any bridge with any controller any time soon.
>>
>> I don't think that's the issue at hand here. You can still use a
>> non-OF-graph DT event if the nodes for the two bridges affected by this
>> patch define a port@0. It can just be left unconnected.
>>
>> I do agree it will cause some DT bindings for DCS-based DSI sinks to
>> have ports will others won't. If your concern is that all DT bindings
>> should be coherent, would you be OK with a patch that makes the sink
>> port mandatory in all DT bindings for DSI bridges and panels (and fixes
>> the mainline DT sources accordingly to make sure they validate) ? The
>> port would not be connected of course (at least when used with DSI
>> source drivers that don't use OF graph today). That would make DT
>> bindings coherent, and would be a first step towards using OF graph
>> everywhere.
> 
> I'm trying to fix a (recent) mistake/cargo-cult in new bindings. That
> discussion is not going to be fairly controversial and I don't see how
> that can be solved quickly. So, as a second step, why not. But this one
> needs to come first.

I feel like I don't quite understand the problem and the discussion.

What's the problem this fixes? DT validation? Why not just fix the dts 
files which use these devices (although I didn't see any in mainline), 
by adding the port nodes?

Or is the argument that we should also support "implicit ports" when the 
control and data busses are the same?

  Tomi
