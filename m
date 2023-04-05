Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA04A6D856D
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 19:59:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233800AbjDER7C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 13:59:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233317AbjDER7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 13:59:00 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4126235B1
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 10:58:59 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C584E85CD8;
        Wed,  5 Apr 2023 19:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680717536;
        bh=wSr36nAKMx13qzq+93QhbLx4NIG1U1LZgvc1DrU024A=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Izrw3s4QFyeJWITVy3+Y/7gCOIkJ8Z869OwJQ4xxoM6xZi0IEGNxyrNw+vDVmV3Mc
         eKc8SEmQ6FadL8m3V/RFRrAAkCCR3vi98Ev0JIk1touqMC70B+bjbRdfQSVB60Au5/
         QrId6inwY5i3k1NlQHldtDR0cljh/bh+BpJecxJbg+iCCfrE1zSyhyAGtSV1aavYBL
         d8929czYHJ0MElssFJgo6e/pYeeaI0F5jCE63UAVNmENNIU2VWd1sewvY2rSDJJ1pz
         MnounVV5+5Ce9r1isiyA0WSRF7g0f0LRJ8HkCLyYiidAx0u/jH31jxKhVtaP50fL5K
         9gqtz9xAjm66g==
Message-ID: <48758755-3472-fb05-6d5b-efe19f4a51fc@denx.de>
Date:   Wed, 5 Apr 2023 19:58:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] arm64: dts: imx8mm: Add display pipeline components
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Abel Vesa <abel.vesa@nxp.com>, Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230404000151.534530-1-marex@denx.de>
 <2790760.mvXUDI8C0e@steina-w> <3b6696c1-411c-f382-0da4-67f9272fa306@denx.de>
 <4588730.LvFx2qVVIh@steina-w>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <4588730.LvFx2qVVIh@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-3.9 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/5/23 15:16, Alexander Stein wrote:

Hi,

[...]

>>> What about samsung,burst-clock-frequency and samsung,esc-clock-frequency?
>>> Is there is sane default? Do they need to be provided in the board file?
>> Those two (burst and esc) are display or nearest-bridge specific and go
>> into board files.
> 
> Thanks for clarification. With the nit from above fixed:
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Should be fixed in V2 , thanks. I also bundled those patches into series 
there.
