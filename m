Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 10F3411A544
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2019 08:44:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727829AbfLKHoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Dec 2019 02:44:09 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:55840 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727848AbfLKHoI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Dec 2019 02:44:08 -0500
Received: by mail-wm1-f68.google.com with SMTP id q9so5881160wmj.5
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2019 23:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=8t/GKPkjCc55Q23WSZ4kx8DWb4EGXXPpMvhgPGlpJnc=;
        b=oNQj8T25SlXlalDjaeeB+QS8RBx3bJYT7Zh+65iQm+T6kLKoWCaoICEy8MjZ3V/qqq
         +aUUql1k88gtuazxEmo4f67CEpanwiUSbXUBpUBbezDuzBOY1mxjgSa645xjhtjJheo0
         8amA5Icav4bSCJwkbuPi2VqsswLEjULOHM/q1GjtoWl9D+PiMqQYXtn1+gbCntJk7Ksb
         piIgFPSAL3aLk3voSmpIQc9vJhZSoejM+dMYwdOV23Ydp+mLNvInOee4i+ReVF1aMV26
         oXVbSmIyB3tnLU50Gq++qbH96uLbNxh1j2UkONxF9hjkiZ5v3zL7VFgsa8sKZS1jWhPz
         PsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=8t/GKPkjCc55Q23WSZ4kx8DWb4EGXXPpMvhgPGlpJnc=;
        b=bYGmiawVeVWdYEE8sis3Mw4QBAi3tBAT2CIH/pnrD7KptQuHPQPw4uSt5V9Vz7a71/
         c8+DToTvds5sS7mitq8mDPTB5/3Alzy/j+L1Clc+rJV4IuQfV1C8SFMkkSULQP4UNl0t
         fwAfCZYQML9w5RHUioGj39Iaf2X7HHsBiRhBCTwkbM2BzVZCDkRaBLWZBZOkZG6t+6E1
         PcO6Hu7/bP2dK/pZspwe4uky77IntLh3p6YNIqQY9IQ8I/DiI3g795qxzRGX2I4XaNuz
         UxeiS+nd07IiVfeAEPLW4VE03XrmNlv82RNv6BwBLQaroB7Vu4rJ49ZfvhdMDjbYsqbc
         3KwQ==
X-Gm-Message-State: APjAAAUPRC4Mku3TZ5o20q7dUgzbm57ihB6q8fOBqxT4aDUGE1/XYFsL
        hmgzD3rAJ58F8NCjxj6E5wrTCw==
X-Google-Smtp-Source: APXvYqzVwgTlMa03+ubhsFOuv2y8pE2uSEYmITOdpwC2p4zfLOpocy1LE8xPAMNEo7lgP48izjiyIg==
X-Received: by 2002:a05:600c:204:: with SMTP id 4mr1982085wmi.1.1576050246175;
        Tue, 10 Dec 2019 23:44:06 -0800 (PST)
Received: from dell ([2.27.35.147])
        by smtp.gmail.com with ESMTPSA id i16sm1307003wmb.36.2019.12.10.23.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2019 23:44:05 -0800 (PST)
Date:   Wed, 11 Dec 2019 07:44:00 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Andreas Kemnade <andreas@kemnade.info>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        stefan@agner.ch, b.galvani@gmail.com, phh@phh.me,
        letux-kernel@openphoenux.org
Subject: Re: [PATCH v3 2/6] mfd: rn5t618: prepare for irq handling
Message-ID: <20191211074400.GV3468@dell>
References: <20191129212045.18325-1-andreas@kemnade.info>
 <20191129212045.18325-3-andreas@kemnade.info>
 <20191210091351.GS3468@dell>
 <20191210173146.6b31e599@kemnade.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191210173146.6b31e599@kemnade.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 10 Dec 2019, Andreas Kemnade wrote:

> accidently send it only to Lee, that was unintended.
> 
> On Tue, 10 Dec 2019 09:13:51 +0000
> Lee Jones <lee.jones@linaro.org> wrote:
> 
> > On Fri, 29 Nov 2019, Andreas Kemnade wrote:
> > 
> > > rn5t618 currently lacks irq handling. To prepare implementation  
> > 
> > "RN5T618"
> > "IRQ"
> > 
> > > in a rn5t618-irq.c, move main file to rn5t618-core.c  
> > 
> > Why do you *need* to call it "core"?
> > 
> Well, the pattern is that irq stuff is in a separate file
> for other mfds. And when I want to link things together to a rn5t618.[k]o
> I think that none objects cannot be called rn5t618.o and so no source
> file rn5t618.o. Am I wrong here? Of course if things can live in one file
> this thing is not needed.

Unless you have a good reason for separating out the code, having it
all in a single file is preferred.

> > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > ---
> > >  drivers/mfd/Makefile                      | 2 ++
> > >  drivers/mfd/{rn5t618.c => rn5t618-core.c} | 0
> > >  2 files changed, 2 insertions(+)
> > >  rename drivers/mfd/{rn5t618.c => rn5t618-core.c} (100%)
> > > 
> > > diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> > > index c1067ea46204..110ea700231b 100644
> > > --- a/drivers/mfd/Makefile
> > > +++ b/drivers/mfd/Makefile
> > > @@ -216,6 +216,8 @@ obj-$(CONFIG_MFD_PALMAS)	+= palmas.o
> > >  obj-$(CONFIG_MFD_VIPERBOARD)    += viperboard.o
> > >  obj-$(CONFIG_MFD_RC5T583)	+= rc5t583.o rc5t583-irq.o
> > >  obj-$(CONFIG_MFD_RK808)		+= rk808.o
> > > +
> > > +rn5t618-objs			:= rn5t618-core.o
> > >  obj-$(CONFIG_MFD_RN5T618)	+= rn5t618.o
> > >  obj-$(CONFIG_MFD_SEC_CORE)	+= sec-core.o sec-irq.o
> > >  obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
> > > diff --git a/drivers/mfd/rn5t618.c b/drivers/mfd/rn5t618-core.c
> > > similarity index 100%
> > > rename from drivers/mfd/rn5t618.c
> > > rename to drivers/mfd/rn5t618-core.c  
> > 



-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
