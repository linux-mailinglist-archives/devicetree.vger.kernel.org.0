Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B86AB2326DE
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 23:36:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727820AbgG2Vgr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jul 2020 17:36:47 -0400
Received: from mail-out.m-online.net ([212.18.0.10]:47624 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726365AbgG2Vgr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jul 2020 17:36:47 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4BH6Lh64bBz1rtjY;
        Wed, 29 Jul 2020 23:36:44 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4BH6Lh4dTkz1qrFJ;
        Wed, 29 Jul 2020 23:36:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id r8hWX6V8zLAh; Wed, 29 Jul 2020 23:36:43 +0200 (CEST)
X-Auth-Info: l/c/pyYLVgxzFT6S5PTNV+zaznyAjrVgP2HRSMOngsI=
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 29 Jul 2020 23:36:43 +0200 (CEST)
Subject: Re: [PATCH V2 1/2] dt-bindings: Add DT bindings for Toshiba TC358762
 DSI-to-DPI bridge
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20200729164554.114735-1-marex@denx.de>
 <20200729165904.GB1372716@ravnborg.org>
From:   Marek Vasut <marex@denx.de>
Message-ID: <81d8eed6-bac7-4e84-ff42-d158941d6620@denx.de>
Date:   Wed, 29 Jul 2020 23:36:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200729165904.GB1372716@ravnborg.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/29/20 6:59 PM, Sam Ravnborg wrote:

Hi,

[...]
>> +      port@0:
>> +        type: object
>> +        additionalProperties: false
>> +
>> +        description: |
>> +          Video port for MIPI DSI input
>> +
>> +        properties:
>> +          reg:
>> +            const: 0
>> +
>> +        patternProperties:
> Not happy with the use of "patternProperties" when there is no pattern.

So how should this be changed ?

[...]
