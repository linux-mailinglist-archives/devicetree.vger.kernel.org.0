Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1761350C65D
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 04:09:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbiDWCMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 22:12:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbiDWCMI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 22:12:08 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4A2139740
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 19:09:09 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 51D57839B9;
        Sat, 23 Apr 2022 04:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1650679745;
        bh=eJKZzpCs6mdzACpHc7mFd5mf6sMhAM84s8dDtcqir5E=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=xfTfV5gLVEt1ahC5fAmhonlO+EKT7plqt6MLIHGg85YSPKKZETiesRrsgkH+cLmNh
         zHPxXbKxLwVynmp/p0btbSP9rx3T8snFsbdJWiYH6fO9e8bN/j1mv00c5MK6r3Qm4I
         kIxcvx6nSEG8r49bvscM4/sWhwtbXarTALXBR5B7gq33OYoB1HzmGZgoZCuyD0t4iT
         UdpUqazcdytgyUi76X2doDeCNT9n5sXRjZoDruHw7LjtZ413c8abm3tG6O/1vEDZZD
         Kfkddoz0catYk2RHIR2z9tIxDyt+BDG8LKTkFhifuD/rzZuR62wObM/usrYVAtbSgA
         Fnyzr50jRt/Kg==
Message-ID: <241e0068-67bf-c6e2-129d-5b689e17182d@denx.de>
Date:   Sat, 23 Apr 2022 04:09:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: ldb: Implement
 simple NXP i.MX8M LDB bridge
Content-Language: en-US
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220418145105.76986-1-marex@denx.de>
 <YmLzXDtZ9WNhTX2x@ravnborg.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YmLzXDtZ9WNhTX2x@ravnborg.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/22/22 20:26, Sam Ravnborg wrote:
> Hi Marek, I read the patch once more.
> 
> On Mon, Apr 18, 2022 at 04:51:04PM +0200, Marek Vasut wrote:
>> The i.MX8MP contains two syscon registers which are responsible
> 
> Here it says i.MX8MP

Fixed, this and the bindings.
