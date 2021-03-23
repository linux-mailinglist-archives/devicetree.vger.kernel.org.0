Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A764A345B84
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 11:00:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbhCWJ7x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 05:59:53 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:11958 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbhCWJ7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 05:59:41 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F4Rfz6lCszltts6
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 12:59:39 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 5.346
X-Spam-Level: *****
X-Spam-Status: No, score=5.346 tagged_above=2 required=6.2
        tests=[FSL_HELO_NON_FQDN_1=0.001, HELO_NO_DOMAIN=3.099,
        RDNS_NONE=1.274, SPF_SOFTFAIL=0.972] autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id kCS7cPJvqRt4 for <devicetree@vger.kernel.org>;
        Tue, 23 Mar 2021 12:59:39 +0300 (MSK)
Received: from NervousEnergy (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTPS id 4F4Rfz0cggzlsDkg;
        Tue, 23 Mar 2021 12:59:39 +0300 (MSK)
Date:   Tue, 23 Mar 2021 12:59:38 +0300
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 1/4] ARM: dts: sun8i: r40: add /omit-if-no-ref/ to
 pinmux nodes for UARTs 0&3
Message-ID: <20210323125938.552d92a6@NervousEnergy>
In-Reply-To: <20210322161804.0395de61@slackpad.fritz.box>
References: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
        <20210322105538.3475183-2-i.uvarov@cognitivepilot.com>
        <20210322161804.0395de61@slackpad.fritz.box>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021 16:18:04 +0000
Andre Przywara <andre.przywara@arm.com> wrote:

> On Mon, 22 Mar 2021 13:55:35 +0300
> Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:
> 
> Hi,
>   
> > This patch adds the /omit-if-no-ref/ keyword to the pio nodes for
> > UART0 and UART3 pins of the R40 SoC, which would reduce the fdt
> > size on boards which do not use these UARTs.    
> 
> But what boards are those? It seems like all boards use uart3-pg and
> the two existing boards use UART0.
> 
> I think the idea is to use omit-if-no-ref on some rarely used nodes,
> so if there is only a single user, for instance. Your next patch is a
> good example.
> 
> So I don't think this patch here is needed at all.
> 
> Cheers,
> Andre
>   

This is a valid complaint, and the patch indeed is not strictly
necessary. At the same time, the keyword certainly doesn't hurt, and
it would be a good base for future R40 boards. 

As to what boards I'm referring to, there's at least the carrier board
for the FETA40i which our company is privately developing, the support
for which we probably won't upstream as it's highly unlikely it'll ever
get into the hands of anyone who would appreciate such support.

I must also mention that I only added this patch to the series due to
explicit encouragement from Maxime in his last response to v1 of the patch:

On Fri, 19 Mar 2021 14:24:48 +0100 
Maxime Ripard <maxime@cerno.tech> wrote:
> On Tue, Mar 16, 2021 at 06:48:58PM +0300, Ivan Uvarov wrote:  
> > Also, would it be a good idea to add /omit-if-no-ref/ to the uart3
> > pins as well while I'm here?   
>
> To all the nodes honestly. If you want to make a preliminary patch doing
> this, go ahead :)  

Since there's two differing viewpoints on the subject, this definitely
deserves more discussion.

--
Regards,
Ivan Uvarov
