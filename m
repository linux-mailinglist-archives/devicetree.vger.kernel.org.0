Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6E64381BBF
	for <lists+devicetree@lfdr.de>; Sun, 16 May 2021 01:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229937AbhEOXu2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 May 2021 19:50:28 -0400
Received: from phobos.denx.de ([85.214.62.61]:59770 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229659AbhEOXu2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 15 May 2021 19:50:28 -0400
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id AE5B281660;
        Sun, 16 May 2021 01:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1621122553;
        bh=jb7LH+knsSaCAl9pLUeUjBltOd47winkSfic/0uzcFo=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=xz4c+Yfg3/PH4u0ex4G9o1UCJ5HL/WAA6B8mmNtlsf69ebu+mO3LoSjhLy6brk+Z0
         yUYzqCwa3c2BRgQKxtjzR/K4ZP/hCBwH5cp/ynkpaS0yldcYxb2j/BmH9ErlHKp4Oq
         h8Xq/ALbbMAgzJP7SxQIxXnWHVDFod5d5cCLFwge70zCxQskL9oZbwJC/a9YBrRekT
         /MlVo1g2NxKQUtprCfpT/vUeRgneVV3WDFZ3K2Tx/e6JbH3tpcW/NmNxCulZhtqPZb
         6cNekrZ9vH4HbrRyG9jhZJ2J0cyzy2GlFm37eP4Lz4liHGfAgy/76asCT3t/f9IQgj
         A1yosn0UN8eMw==
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix spacing
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20210515203932.366799-1-marex@denx.de>
 <YKBBlWXXK8LUc8ac@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <b2d1119e-f875-6775-3813-7d342d66c465@denx.de>
Date:   Sun, 16 May 2021 01:49:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YKBBlWXXK8LUc8ac@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/15/21 11:48 PM, Laurent Pinchart wrote:
> Hi Marek,

Hi,

> Thank you for the patch.
> 
> On Sat, May 15, 2021 at 10:39:32PM +0200, Marek Vasut wrote:
>> Add missing spaces to make the diagrams readable, no functional change.
> 
> Looks better indeed. The patch view looks bad though, because of the
> tabs. Maybe you could replace them with spaces, while at it ?

It is all spaces, where do you see tabs ?

[...]
