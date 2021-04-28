Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 329D236D978
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 16:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbhD1OUX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 10:20:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbhD1OUX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 10:20:23 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00B3DC061573
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 07:19:37 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E210F82CBF;
        Wed, 28 Apr 2021 16:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1619619574;
        bh=1fjocKqDCefoo06SVSV8OVk190gPYOhs/98ZA4jjQoc=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=m4jmP/mmZXIViVgc5gST/ZCdllYOb37MwjZJEe7aSDeb9LEZROjrCVOSckPhYJWbj
         EZxZ/gCkvPM3H2OYEeVVjUQ82hIS4Hj/Fm/gOsntWbFiuBba5bBXTIrdyQLtDb3obP
         8TdWU2/RAIT7UngU/OmSBGTI8yNt1EJ0YQH2SjUlPAPocW6wroHW4tMVVgYLTYTRQZ
         Rj11GSPkqS69EazjIltlTzUGy6mArKa2G2kcPSEfahtVgXMDYQWAGMXsIbcL0EOyAr
         sqWIgajUtG4AP/BczXDIHK96AVAUEc1qKliFxgN6mwFb0LFCNIGMqRRN6394J99q60
         p8H7xfVXAnr2A==
Subject: Re: [PATCH V2 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 and SN65DSI84 bindings
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, ch@denx.de,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20210421223122.112736-1-marex@denx.de>
 <a39a107e-284d-2f4a-8b69-ff507a6a0d62@kontron.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <6126a450-e42e-8341-37c9-bd1832a6c78e@denx.de>
Date:   Wed, 28 Apr 2021 16:19:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <a39a107e-284d-2f4a-8b69-ff507a6a0d62@kontron.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/28/21 9:56 AM, Frieder Schrempf wrote:
[...]
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: ti,sn65dsi83
>> +      - const: ti,sn65dsi84
>> +
>> +  reg:
>> +    const: 0x2d
> 
> There is a strapping pin to select the last bit of the address, so apart 
> from 0x2d also 0x2c is valid here.

Fixed, along with the other DT details pointed out by Laurent, thanks.
