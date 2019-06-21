Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3375D4E2D2
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 11:13:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726311AbfFUJNy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 05:13:54 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:35130 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726297AbfFUJNy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 05:13:54 -0400
Received: by mail-ed1-f66.google.com with SMTP id w20so1461949edd.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 02:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=2bGIaORqqfh7NthvfPKeSWzPcbNzBBYxFsaIjbRgqzI=;
        b=cVvcQJ3ufJ+1Qqgqq4fWCNNUQ+RUopn+7hW8VyzYhB/jgWEmSBwXkOA93mdNxl3+4x
         zec6W4/WvUs2j9kiT0afQFuRDsf2jTsrbeZ/NhVF42PG33pIHNkX5BLj1IoYDgn31T0W
         iD8ZlugNc30sg2bDloI5XgFiyGiO1MB3lbZrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=2bGIaORqqfh7NthvfPKeSWzPcbNzBBYxFsaIjbRgqzI=;
        b=PgIspifhf0wJpdNyN4BiDtKOnFuEba3/11EhPTA4+IiPs4kvkNLwSxJjjtwrsQnFEm
         qI2oMuT/b+ng5plO+67XMMLSjO55p1adM3Ns4GAI/vPgOJKn1pJjsuNuGOl9lRglRTJR
         i65sstilc4kLENbP7d9LLHJnCAnsWWcS15OLvJzmOg19qG+RoP8Cpr0nQqrgunJjNry0
         aK5J3yH9sj02AH5tOLou87VQlYK+1hYztfeczkznEx/Q6RmuAaDS1X7y0Vw2A9uNbV8q
         LqCLMwRcGcUn0Wb/tJ3bLCbzrUHg0qTVrYsfuH8LLvfipyeiMrVeGt6RWdjfbshMAdL8
         K6pA==
X-Gm-Message-State: APjAAAXDyN9P021Sx+vM+qr7+8HAqRkCncHDgp70HXTdjL05fzn5iF8F
        XTHzhm8blAHzzxqx0Q+1GM5Ypw==
X-Google-Smtp-Source: APXvYqw14PDnEzjHiPPTDgNf/p3y3XKQE24CKUmI/tC7fQOPfvWanfqpuXk6IlS1WmRPiRcr2v9GQA==
X-Received: by 2002:aa7:c619:: with SMTP id h25mr82941231edq.295.1561108431657;
        Fri, 21 Jun 2019 02:13:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id p18sm327962ejr.61.2019.06.21.02.13.49
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 21 Jun 2019 02:13:50 -0700 (PDT)
Date:   Fri, 21 Jun 2019 11:13:43 +0200
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, od@zcrc.me,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Artur Rojek <contact@artur-rojek.eu>
Subject: Re: [PATCH v5 2/2] DRM: Add KMS driver for the Ingenic JZ47xx SoCs
Message-ID: <20190621091343.GA12905@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
        Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, od@zcrc.me,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Artur Rojek <contact@artur-rojek.eu>
References: <20190603152331.23160-1-paul@crapouillou.net>
 <20190603152331.23160-2-paul@crapouillou.net>
 <20190619122622.GB29084@ravnborg.org>
 <1561040159.1978.0@crapouillou.net>
 <20190621090411.GY12905@phenom.ffwll.local>
 <1561108050.1777.0@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1561108050.1777.0@crapouillou.net>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 11:07:30AM +0200, Paul Cercueil wrote:
> 
> 
> Le ven. 21 juin 2019 à 11:04, Daniel Vetter <daniel@ffwll.ch> a écrit :
> > On Thu, Jun 20, 2019 at 04:15:59PM +0200, Paul Cercueil wrote:
> > > 
> > > 
> > >  Le mer. 19 juin 2019 à 14:26, Sam Ravnborg <sam@ravnborg.org> a
> > > écrit :
> > >  > Hi Paul.
> > >  >
> > >  > On Mon, Jun 03, 2019 at 05:23:31PM +0200, Paul Cercueil wrote:
> > >  > >  Add a KMS driver for the Ingenic JZ47xx family of SoCs.
> > >  > >  This driver is meant to replace the aging jz4740-fb driver.
> > >  > >
> > >  > >  This driver does not make use of the simple pipe helper, for
> > > the
> > >  > > reason
> > >  > >  that it will soon be updated to support more advanced features
> > > like
> > >  > >  multiple planes, IPU integration for colorspace conversion and
> > >  > > up/down
> > >  > >  scaling, support for DSI displays, and TV-out and HDMI outputs.
> > >  > >
> > >  > >  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> > >  > >  Tested-by: Artur Rojek <contact@artur-rojek.eu>
> > >  > >  ---
> > >  > >
> > >  > >  Notes:
> > >  > >      v2: - Remove custom handling of panel. The panel is now
> > >  > > discovered using
> > >  > >      	  the standard API.
> > >  > >      	- Lots of small tweaks suggested by upstream
> > >  > >
> > >  > >      v3: - Use devm_drm_dev_init()
> > >  > >      	- Update compatible strings to -lcd instead of -drm
> > >  > >      	- Add destroy() callbacks to plane and crtc
> > >  > >      	- The ingenic,lcd-mode is now read from the bridge's DT
> > > node
> > >  > >
> > >  > >      v4: Remove ingenic,lcd-mode property completely. The
> > > various
> > >  > > modes are now
> > >  > >      	deduced from the connector type, the pixel format or the
> > > bus
> > >  > > flags.
> > >  > >
> > >  > >      v5: - Fix framebuffer size incorrectly calculated for 24bpp
> > >  > > framebuffers
> > >  > >      	- Use 32bpp framebuffer instead of 16bpp, as it'll work
> > > with
> > >  > > both
> > >  > >      	  16-bit and 24-bit panel
> > >  > >      	- Get rid of drm_format_plane_cpp() which has been dropped
> > >  > > upstream
> > >  > >      	- Avoid using drm_format_info->depth, which is deprecated.
> > >  > In the drm world we include the revision notes in the changelog.
> > >  > So I did this when I applied it to drm-misc-next.
> > >  >
> > >  > Fixed a few trivial checkpatch warnings about indent too.
> > >  > There was a few too-long-lines warnings that I ignored. Fixing
> > > them
> > >  > would have hurt readability.
> > > 
> > >  Thanks.
> > > 
> > >  > I assume you will maintain this driver onwards from now.
> > >  > Please request drm-misc commit rights (see
> > >  > https://www.freedesktop.org/wiki/AccountRequests/)
> > >  > You will need a legacy SSH account.
> > > 
> > >  I requested an account here:
> > >  https://gitlab.freedesktop.org/freedesktop/freedesktop/issues/162
> > 
> > This 404s for me. Did you set the issue to private by any chance? Or
> > deleted already again?
> > -Daniel
> 
> Sorry, yes, I set it to private. I thought I had to :(

Well I can't ack it if its private, so please change that. Also,
everything is public around here, or almost everything ...
-Daniel

> 
> -Paul
> 
> 
> > > 
> > >  > And you should familiarize yourself with the maintainer-tools:
> > >  > https://drm.pages.freedesktop.org/maintainer-tools/index.html
> > >  >
> > >  > For my use I use "dim update-branches; dim apply; dim push
> > >  > So only a small subset i needed for simple use.
> > >  >
> > >  > 	Sam
> > > 
> > > 
> > 
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
