Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF012CDD21
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 19:11:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727711AbgLCSKN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 13:10:13 -0500
Received: from mail-out.m-online.net ([212.18.0.9]:57086 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727438AbgLCSKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 13:10:13 -0500
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4Cn3kT3fBKz1qtQY;
        Thu,  3 Dec 2020 19:09:05 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4Cn3kT34R6z1qsp3;
        Thu,  3 Dec 2020 19:09:05 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id MTFhkoOU3ZT8; Thu,  3 Dec 2020 19:09:04 +0100 (CET)
X-Auth-Info: LZKIA5ycnstMqGSyOlI9+wkxZPM4GGfdZeixVKaWks8=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Thu,  3 Dec 2020 19:09:04 +0100 (CET)
Subject: Re: [PATCH V3 1/2] dt-bindings: Add DT bindings for Toshiba TC358762
 DSI-to-DPI bridge
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>
References: <20200809105705.6334-1-marex@denx.de>
 <20200812200738.GA651402@ravnborg.org>
 <CAPY8ntBCsDF+D8EiSrDJ8vn_S6-OGr6p4SMd7_9MHvoFj=f+Fw@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <95f00eda-a0b7-0637-d6cc-2bbea0429b6a@denx.de>
Date:   Thu, 3 Dec 2020 19:09:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAPY8ntBCsDF+D8EiSrDJ8vn_S6-OGr6p4SMd7_9MHvoFj=f+Fw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/3/20 7:01 PM, Dave Stevenson wrote:
> Hi Marek

Hi,

[...]

>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    i2c1 {
> 
> Minor point.
> I've just come to use this and noticed that this example puts the
> device under i2c1. Seeing as it's a DSI driver with no I2C
> interaction, shouldn't it be under a dsi node?

Good catch, it should, please send a patch to correct this error, thanks.
