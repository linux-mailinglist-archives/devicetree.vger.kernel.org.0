Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F5CB38FF50
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 12:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231978AbhEYKgI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 06:36:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232452AbhEYKeA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 06:34:00 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4C3C06134C
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 03:31:14 -0700 (PDT)
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id EE21B80F0E;
        Tue, 25 May 2021 12:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1621938671;
        bh=xfk301m+6mslpXHrbSBkaUpRdGnimYuoUfdkcf++daY=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=Pnq0SlLzf0+l9wqQ+AJgr4c4MukVm3sKvFvhcw0+rcYeQBnive/luw4lNQBn3GFb3
         2E0mj3YZPO2oTJfNLt92eE++hogFXGNxfnEVRd02NSLkMz+H+4ih/668dKKZJwZsiR
         UGGwMEBPfExE5Ur/Ghc8oYvz56SDeeJFIJNuDkeOWgzcS54TdQtBuKbKwFPP3diyQi
         w7oRdx2ecuZMkOA//UYynJz107FigAn0UU9rxC0QDvnbvLzRpEMDd87mLNIzbHWM6o
         0bv1cI0ZHP2EQmMRmNL8IKWEG4GgNuuXe6FKQXXCLzk6ffyWGzouX7QUv1/24EDwfr
         avVftpKH5hBhQ==
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: lvds-codec: Document
 LVDS data mapping select
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20210515204656.367442-1-marex@denx.de>
 <YKL1//4p/voXAR1q@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <e38b5ed6-6fb2-816a-ef19-8dae18eb5d5d@denx.de>
Date:   Tue, 25 May 2021 12:31:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YKL1//4p/voXAR1q@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/18/21 1:02 AM, Laurent Pinchart wrote:
> Hi Marek,

Hi,

> Thank you for the patch.
> 
> On Sat, May 15, 2021 at 10:46:55PM +0200, Marek Vasut wrote:
>> Decoder input LVDS format is a property of the decoder chip or even
>> its strapping. Add DT property data-mapping the same way lvds-panel
>> does, to define the LVDS data mapping.
> 
> The information could also be derived by the driver from the compatible
> string in the case when this is an intrinsic property of the device (or
> when it's configurable by software), but the fact that it can also be
> controlled by strapping makes a DT property needed. We may want to limit
> the usage of the DT property to the strapping case though, but I don't
> have a real preference here, so I'm fine with this approach.

You'd soon end up piling up compatible strings like the panel-simple 
does, I don't think that scales. Besides, there are bridges where you 
can pick the mapping with a strap, and then the compatible string is no 
longer enough.

[...]
