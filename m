Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B816DE1624
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2019 11:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403895AbfJWJbS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Oct 2019 05:31:18 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:40161 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404066AbfJWJbS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Oct 2019 05:31:18 -0400
Received: by mail-wm1-f65.google.com with SMTP id b24so18887291wmj.5
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2019 02:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=2fLQAYivjPCeFhrnS0eAbtLcKwI/jjUTQJtAub9j6h8=;
        b=plSwP6c6mLqj8vkc7p9cJc1rbasnfbXWCxxziBoPaInno3/XEo+2lmnN2HKb3mng3y
         tYdqtYrpxH1mA80BuazCzz8AKwvOVTCbjnSSs3m5XVf+trbtHa5TntpXxJcnw+P7+8Ge
         gRWgy5U0wtzomDDu+DfmIsyVbWAxuBLLW7qp8G39q+jjv+eJ1CwMjsisd3/vmUs5NEOb
         B9sQQbrPK2U/TKjclRAaDLPlcTBZGqbul8HMqEKMkLrRlhS1sCO1ptnKQkRd0DYALnvi
         P5kZG5BNVrgxUfiU8KlCWnMqp7q5B4QSDiLRw/prg85Dkhy+aY6QfrDGUA3h87jRTcQP
         lQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=2fLQAYivjPCeFhrnS0eAbtLcKwI/jjUTQJtAub9j6h8=;
        b=BEufMCkPJ4keLmVde/OiT+jpmhw5XrE7JsnDFmsN6DXQU5vGXwtMst0h6EhjAla52w
         mfAF4J/SIaJV6YDDr7X5+q/YbxAbpaXns6HKlE1V3DUjwwvS0Vvp0Ggx7qRLm/iYGJNY
         nuIrA2DTC0b5gEFiWD8Y3Zk5DRqMVhPGR6GQVtra4IdSt6L3mxN97HNWN/6XTd/Lc3tO
         ZSSC7RMUFbzAlXSBEI9VJPE8D8Sa+GiTAR/jeJyOcIKa8AJjw6763F1NjspQlh1UxgK0
         JKXTHFSGASg/XvpkP46y+teGIHDzHQZiplX6kh8dzjLPGP/mYAQFR1ddVFBtSzyk+Vqs
         Odwg==
X-Gm-Message-State: APjAAAWJWajk2/AGAf90nrfdqqeNnqM87JY320Gu9ikUejIjN4sAGTSI
        vmxoGo6z6CglmHCO4H9dxTBRog==
X-Google-Smtp-Source: APXvYqykfve4PxGAzNbeonYmDixqLBfWcdLX29lVDVQi9qir+N9Q6u3ur5hniBnheE7/KszY9XK5Eg==
X-Received: by 2002:a1c:5415:: with SMTP id i21mr3193435wmb.120.1571823075340;
        Wed, 23 Oct 2019 02:31:15 -0700 (PDT)
Received: from dell ([95.149.164.99])
        by smtp.gmail.com with ESMTPSA id u1sm31823556wru.90.2019.10.23.02.31.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 02:31:14 -0700 (PDT)
Date:   Wed, 23 Oct 2019 10:30:58 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Jeff LaBundy <jeff@labundy.com>
Cc:     Jonathan Cameron <jic23@kernel.org>, dmitry.torokhov@gmail.com,
        jdelvare@suse.com, linux@roeck-us.net, thierry.reding@gmail.com,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        linux-hwmon@vger.kernel.org, u.kleine-koenig@pengutronix.de,
        linux-pwm@vger.kernel.org, knaack.h@gmx.de, lars@metafoo.de,
        pmeerw@pmeerw.net, linux-iio@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com
Subject: Re: [PATCH 1/8] dt-bindings: mfd: iqs62x: Add bindings
Message-ID: <20191023093058.GA19477@dell>
References: <1571631083-4962-1-git-send-email-jeff@labundy.com>
 <1571631083-4962-2-git-send-email-jeff@labundy.com>
 <20191022120051.686ed9f9@archlinux>
 <20191023033646.GB4458@labundy.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191023033646.GB4458@labundy.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 22 Oct 2019, Jeff LaBundy wrote:

> Hi Jonathan,
> 
> On Tue, Oct 22, 2019 at 12:00:51PM +0100, Jonathan Cameron wrote:
> > On Sun, 20 Oct 2019 23:11:16 -0500
> > Jeff LaBundy <jeff@labundy.com> wrote:
> > 
> > > This patch adds binding documentation for six-channel members of the
> > > Azoteq ProxFusion family of sensor devices.
> > > 
> > > Signed-off-by: Jeff LaBundy <jeff@labundy.com>
> > 
> > I'm not sure if Lee has made the switch for mfd entirely yet, but
> > mostly new dt bindings need to be in yaml format as it allows
> > automated parsing of the examples + bindings using them for
> > correctness.
> > 
> 
> I'll wait for Lee or Rob's cue, but I'm happy to move to yaml if it's time
> to make the switch here.
> 
> > One comment inline.  I'm far from an expert on most of the stuff here
> > so will leave it for others!

It would make sense.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
