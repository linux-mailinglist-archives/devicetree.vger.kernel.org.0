Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03D154F0621
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 22:19:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231889AbiDBUVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 16:21:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349374AbiDBUVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 16:21:15 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E43903DA70
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 13:19:22 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id F3387808BA;
        Sat,  2 Apr 2022 22:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648930759;
        bh=X9am6kwb2hWq84iy+3Afgbz8P1Wwfca1KRLHKXHKQZs=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Dbmjv6aGjfhuEiNth9w+n1hfBDMergbUMq4yQ/9kib/VuSsDEw46Bdcu0I4Gf82xC
         aQfzysl2dZwaDURFDlRNvy23rS3C9Q0GIBp4fi9jO4TzHQA6+GRfvMPSFVMKcxYLYj
         Wl2/I0uxCinDQZusv6RHrskdXoQmD8fOa6BEiSZsVAziJ+m4HvriTL2UEnepw1GnIp
         ngj1rpZpM2ppcDPRQGQ3wGc5QXFIIlHkT+KjK+dKrUUDhdP877CdSWc3Px/xkyf9FB
         3uY1834py5z586XIiqU0y2vO1EfkwO0zSehh9O7UUaK3PKyxdu9oYjGJvYw7KLHQm9
         1D6exxn84xGTg==
Message-ID: <7952a5c9-01f1-ca8d-9ffb-e3e91bf0a0c5@denx.de>
Date:   Sat, 2 Apr 2022 22:19:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC][PATCH 1/3] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Robert Foss <robert.foss@linaro.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220401163755.302548-1-marex@denx.de>
 <CAL_JsqKVkc51sXWE6Sh5yHxLX0vJWgFpn8cmjjKSBx4dYzA8qA@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAL_JsqKVkc51sXWE6Sh5yHxLX0vJWgFpn8cmjjKSBx4dYzA8qA@mail.gmail.com>
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

On 4/1/22 20:36, Rob Herring wrote:
> On Fri, Apr 1, 2022 at 11:38 AM Marek Vasut <marex@denx.de> wrote:
>>
>> Make the width-mm/height-mm panel properties mandatory
>> to correctly report the panel dimensions to the OS.
> 
> Adding required properties is an ABI break.

Per discussion with Noralf in 2/3, these bindings entered in 5.18 merge 
window, so maybe there is still chance to fix them before rc1/rc2 ? I.e. 
they were not shipped in any kernel release yet.
