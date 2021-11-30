Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF70046343A
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 13:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241575AbhK3MdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 07:33:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbhK3MdD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 07:33:03 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E0BC061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 04:29:44 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 834FCCE19BC
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 12:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89FA0C53FC1;
        Tue, 30 Nov 2021 12:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638275380;
        bh=R7mje9CFnBrtD2xjxgbjNM7V63ClxAu6xrWFI9eOgGU=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=UN7jKGqo339Q9sNQ5YQc9gDFTeqoLk8DYLIjFQw5mGKzuJk7ZzO5yYt/OAnChUqCO
         BR9DAkMzX++msxCGMRtHkQDCFZKYvzis69hJIl0GceKHEjOCjg/b7wP6K3+MmVS2zx
         FwLQu8HZSjh+L2hEnDwn27/zl6yVAsQTHf6znScoldU7abhCHD/902lwU2j40FoMTM
         y7xBcBHqmviaHKOg0rzUSj9bZ/GILyBHTYO1iZOH0f4ipWN4T2j2ZoH10gAwBHUlZ3
         V8F6iTkTiOwhti5QWXJgNG7HrOn5BJLcriVEeotZijUNsWt7cQdUM6NFLpL0riI7wI
         Oe8+wBMvY7Jlg==
Message-ID: <6c2de7ee4771478abe386a2ae48e643e7fefc861.camel@kernel.org>
Subject: Re: [PATCH V2 1/2] ARM: dts: bcm283x: Drop fallback compatible for
 vchiq
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Mwesigwa Guma <mguma@redhat.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-staging@lists.linux.dev
Date:   Tue, 30 Nov 2021 13:29:35 +0100
In-Reply-To: <5f617f60-9e0d-2b29-650a-4cd31f406ce7@i2se.com>
References: <1635682086-3200-1-git-send-email-stefan.wahren@i2se.com>
         <1635682086-3200-2-git-send-email-stefan.wahren@i2se.com>
         <5f617f60-9e0d-2b29-650a-4cd31f406ce7@i2se.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 2021-11-27 at 11:57 +0100, Stefan Wahren wrote:
> Am 31.10.21 um 13:08 schrieb Stefan Wahren:
> > With introduction of SoC specific vchiq compatible in 2018, we kept the
> > original "brcm,bcm2835-vchiq" as a fallback for older Kernel versions.
> > Now this fallback isn't necessary anymore. So before we create a DT schema
> > which also handles this fallback better fix this on the DTS side.
> > 
> > Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> > ---
> >  arch/arm/boot/dts/bcm2836-rpi.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boot/dts/bcm2836-rpi.dtsi b/arch/arm/boot/dts/bcm2836-rpi.dtsi
> > index c4c858b..f98e0e4 100644
> > --- a/arch/arm/boot/dts/bcm2836-rpi.dtsi
> > +++ b/arch/arm/boot/dts/bcm2836-rpi.dtsi
> > @@ -2,5 +2,5 @@
> >  #include "bcm2835-rpi.dtsi"
> >  
> >  &vchiq {
> > -	compatible = "brcm,bcm2836-vchiq", "brcm,bcm2835-vchiq";
> > +	compatible = "brcm,bcm2836-vchiq";
> >  };
> gentle ping ...

Sorry for the wait. :)
