Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C844587BA8
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 13:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236278AbiHBLdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 07:33:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233167AbiHBLdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 07:33:20 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CCCA4D169
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 04:33:19 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8739283F8E;
        Tue,  2 Aug 2022 13:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1659439996;
        bh=C0sEt+j3wwgW/FAzW+nrtKZhnpmRe7HY/B8uWWmsQaM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=dcwweDoxX1IF0bbhhE6fTWJFPn5FCC6y7ZsFE+wQ8wqKiUDFKmGmni/uU+3MS468R
         MaY8H6+H9YtVJ9u4fI91v2nrY2lQAcSjqyZl5owmuEIHk/GeSlIWB2AyRbtDdBeupg
         gxSSd0FmQS5p3RAJ1za2g1P3ZDxfCVEQJWiOkdZCNlHJWbHYI5UGRyN0rwE8iO/WIR
         H+YF6s83Abxbju0mBgxAYyPZ1VhmxRS4El6ac0XGlL3Y36FcFGJqgOBhWVRc3/DvOa
         7kvbTP5KRL7urRBZTrvEgbRPXCq5pcR/cbXLq5oYp6oC3b7U8wHiqMZ1jnSek/RR4o
         G7J6JwDkYmJHw==
Message-ID: <4d917546-23a2-a33a-1f59-ec78305aa854@denx.de>
Date:   Tue, 2 Aug 2022 13:33:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support
 for RGB/BGR swap
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20220801131901.183090-1-marex@denx.de>
 <20220801163238.GA1130127-robh@kernel.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220801163238.GA1130127-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/1/22 18:32, Rob Herring wrote:
> On Mon, Aug 01, 2022 at 03:19:00PM +0200, Marek Vasut wrote:
>> The ICN6211 is capable of swapping the output DPI RGB/BGR color channels,
>> document a DT property to select this swap in DT. This can be useful on
>> hardware where such swap happens.
> 
> We should ensure this series[1] works for you instead.

[...]

> Rob
> 
> [1] https://lore.kernel.org/r/20220628181838.2031-3-max.oss.09@gmail.com

I'm still not convinced that we should encode this pixel format value 
directly into the DT instead of trying to describe the DPI bus color 
channel width/order/shift in the DT instead. I think I mentioned that 
before in one of the previous versions of that series.
