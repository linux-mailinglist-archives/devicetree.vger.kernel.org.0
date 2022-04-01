Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7619C4EE5A4
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 03:22:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243722AbiDABYS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 21:24:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243718AbiDABYR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 21:24:17 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 681EB217967
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 18:22:28 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A3ECE83ACE;
        Fri,  1 Apr 2022 03:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648776146;
        bh=yaml4ahKYPk02MuOU5kh0YRFPUUGjF77bT2P/r7MAd8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=dc0k9FsQ/lNOsCGjbQZ6Hz17+ZnsO8n4sC187GzhfUgc+ZyJ3mWNTgBBoV/5zg+D4
         IT3rknMP+DWH5b0pBuX+VWE2Gkw7X+Z8w9+GqfbEpCKTbU1EPCPTP9Mo32dieQes+C
         BGBMvKydQaOhhyVr+9sCVExObSGQJOi9HyTOR35JCTXN9pn8hETsLvRSk8EzHJiSy6
         ysPucWWQyRzH5tpK7b26fIS9WFyAUatpGXgsmg7Vu+F8U2jUoqwpsFaUZv3Uj9tKPg
         xE+bIU0b6E6f0ziHjRDC/s+3Q68HSakvzfJ8EDwAyg50FkPH6dnKsYxm1LowJCeqgp
         fkXEWoM2X4N5Q==
Message-ID: <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
Date:   Fri, 1 Apr 2022 03:22:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Maxime Ripard <maxime@cerno.tech>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Robert Foss <robert.foss@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        dri-devel@lists.freedesktop.org
References: <20220323154823.839469-1-maxime@cerno.tech>
 <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
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

On 4/1/22 01:52, Rob Herring wrote:
> On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
>> MIPI-DSI devices, if they are controlled through the bus itself, have to
>> be described as a child node of the controller they are attached to.
>>
>> Thus, there's no requirement on the controller having an OF-Graph output
>> port to model the data stream: it's assumed that it would go from the
>> parent to the child.
>>
>> However, some bridges controlled through the DSI bus still require an
>> input OF-Graph port, thus requiring a controller with an OF-Graph output
>> port. This prevents those bridges from being used with the controllers
>> that do not have one without any particular reason to.
>>
>> Let's drop that requirement.
>>
>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>> ---
>>   .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
>>   .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
>>   2 files changed, 2 deletions(-)
>>
> 
> I tend to agree with port@0 not being needed and really like
> consistency.

The consistent thing to do would be to always use port@0 and OF graph, no ?
