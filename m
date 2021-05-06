Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB476375810
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 18:00:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235589AbhEFQA4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 12:00:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235434AbhEFQAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 12:00:55 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9075EC061761
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 08:59:55 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x5so6169377wrv.13
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 08:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:content-transfer-encoding:date:message-id:cc:subject
         :from:to:references:in-reply-to;
        bh=C0acWdKUYv6cGsx/MgFOQZQsiwnccvj+okVS+OTn/iE=;
        b=qi5RZkIBIXpZTQvtUrk1pJjUcceEEmMsePcYk0ZcahZV2qk1v7PlkjF/t+ZjyA19b5
         4vCnPqDrd9llIcfJx02BINWLncQinO8FngXA438NXcyPqEbNSlngkN8UKYncZA33ligb
         jOgDkmOYM1XLrR3sN14LYi/q1k0uPQp94Oh+5wwxVygK/72tVrofnuJ6vcadzQB+bSJi
         fR8gy4lv1q2cyQrPHC/fgM4fC3zOAZRkuVKEPlemG38nCABKAe26jH05KvRhHrSTpTWi
         9GOuLwLnGZqvyUO6Nc6qFZLX8/K9cI06LLwoQL+RymWSSQ36QEbLJ76ldOwkuGroKbGe
         ehVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding:date
         :message-id:cc:subject:from:to:references:in-reply-to;
        bh=C0acWdKUYv6cGsx/MgFOQZQsiwnccvj+okVS+OTn/iE=;
        b=kYROuXjGEsWA0U19iYc8fbowG1Cr1vGM7cl4OwpeMKLO7rxWvRweUUl9bTE296fFUV
         mQEZHJfh5TSx/wx03Og4ASMhBuRkpltWPL2ec3mqtvdnHwW3Vw1uE0iV9vr1QjEUmL8M
         RxZd01m+F4b47sn3ynadLDLmjgp4HjesxMiaVC7+WyMQZQKofRZ9lgkfTQYkhCAYXUvl
         8wOFc3V8GceTiXK8MnbsIrPcF9djeXrUeeguVCHGyTTpYhtgOr1SwAzUAkObISI1sWZ+
         tAFQRZ+4g23upqpag7QyWPNioF7OYlOzijB68vr5LpoTQVySXQiHbSUu+e4lO1Obub5m
         NN7Q==
X-Gm-Message-State: AOAM532Ffb7D/n70jhi6qzPaus0RtaD/iG8exZX7mK+xMYvH4cLCPlAK
        L8RxiOmlZRRN63gOy/Xi8nd4Dw==
X-Google-Smtp-Source: ABdhPJywvKs7uu8LUMXBVDyWvUqryrkdb9cZOYoycv+/nrHWmnYXpla/UModvluHD7SvLMjmyCHVHw==
X-Received: by 2002:a5d:424e:: with SMTP id s14mr6247789wrr.354.1620316794291;
        Thu, 06 May 2021 08:59:54 -0700 (PDT)
Received: from localhost (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id q4sm4632738wrs.21.2021.05.06.08.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 08:59:53 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Thu, 06 May 2021 16:59:53 +0100
Message-Id: <CB6AD6RI28RL.679NIT6973PD@arch-thunder>
Cc:     "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
        "Sebastian Siewior" <bigeasy@linutronix.de>,
        "Rob Herring" <robh+dt@kernel.org>, <linux-usb@vger.kernel.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/7] usb: isp1760: move to regmap for register access
From:   "Rui Miguel Silva" <rui.silva@linaro.org>
To:     "Laurent Pinchart" <laurent.pinchart@ideasonboard.com>
References: <20210504101910.18619-1-rui.silva@linaro.org>
 <20210504101910.18619-2-rui.silva@linaro.org>
 <YJPgFaJEFqHfYQSj@pendragon.ideasonboard.com>
 <CB67DHRVT0FW.1JTB39XCX16VU@arch-thunder>
 <YJPzBQlsR+LUMW08@pendragon.ideasonboard.com>
 <CB684BAWX4VZ.2C7CTYKX8TJ2P@arch-thunder>
 <YJQENYFXYuMXPUii@pendragon.ideasonboard.com>
In-Reply-To: <YJQENYFXYuMXPUii@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,
On Thu May 6, 2021 at 3:59 PM WEST, Laurent Pinchart wrote:
> Hi Rui,
>
> On Thu, May 06, 2021 at 03:14:15PM +0100, Rui Miguel Silva wrote:
> > On Thu May 6, 2021 at 2:45 PM WEST, Laurent Pinchart wrote:
> > > On Thu, May 06, 2021 at 02:39:13PM +0100, Rui Miguel Silva wrote:
> > > > On Thu May 6, 2021 at 1:24 PM WEST, Laurent Pinchart wrote:
> > > > > On Tue, May 04, 2021 at 11:19:04AM +0100, Rui Miguel Silva wrote:
> > > > > > Rework access to registers and memory to use regmap framework.
> > > > > > No change in current feature or way of work is intended with th=
is
> > > > > > change.
> > > > > >=20
> > > > > > This will allow to reuse this driver with other IP of this fami=
ly,
> > > > > > for example isp1763, with little changes and effort.
> > > > > >=20
> > > > > > Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> > > > > > ---

<big snip>

> > > > > > =20
> > > > > >  	spin_unlock_irqrestore(&udc->lock, flags);
> > > > > >  }
> > > > > > @@ -1091,19 +1158,30 @@ static void isp1760_udc_init_hw(struct =
isp1760_udc *udc)
> > > > > >  	 * ACK tokens only (and NYET for the out pipe). The default
> > > > > >  	 * configuration also generates an interrupt on the first NAC=
K token.
> > > > > >  	 */
> > > > > > -	isp1760_udc_write(udc, DC_INTCONF, DC_CDBGMOD_ACK | DC_DDBGMO=
DIN_ACK |
> > > > > > -			  DC_DDBGMODOUT_ACK_NYET);
> > > > > > -
> > > > > > -	isp1760_udc_write(udc, DC_INTENABLE, DC_IEPRXTX(7) | DC_IEPRX=
TX(6) |
> > > > > > -			  DC_IEPRXTX(5) | DC_IEPRXTX(4) | DC_IEPRXTX(3) |
> > > > > > -			  DC_IEPRXTX(2) | DC_IEPRXTX(1) | DC_IEPRXTX(0) |
> > > > > > -			  DC_IEP0SETUP | DC_IEVBUS | DC_IERESM | DC_IESUSP |
> > > > > > -			  DC_IEHS_STA | DC_IEBRST);
> > > > > > +	isp1760_udc_set(udc, DC_CDBGMOD_ACK);
> > > > > > +	isp1760_udc_set(udc, DC_DDBGMODIN_ACK);
> > > > > > +	isp1760_udc_set(udc, DC_DDBGMODOUT_ACK);
> > > > > > +
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_7);
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_6);
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_5);
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_4);
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_3);
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_2);
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_1);
> > > > > > +	isp1760_udc_set(udc, DC_IEPRXTX_0);
> > > > > > +
> > > > > > +	isp1760_udc_set(udc, DC_IEP0SETUP);
> > > > > > +	isp1760_udc_set(udc, DC_IEVBUS);
> > > > > > +	isp1760_udc_set(udc, DC_IERESM);
> > > > > > +	isp1760_udc_set(udc, DC_IESUSP);
> > > > > > +	isp1760_udc_set(udc, DC_IEHS_STA);
> > > > > > +	isp1760_udc_set(udc, DC_IEBRST);
>
> This is another place I've spotted while casually looking at the patch.

Ok, I will change it.

Many Thanks,
   Rui
