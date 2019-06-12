Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26B864295B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 16:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731701AbfFLOdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 10:33:55 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:47004 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731689AbfFLOdy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 10:33:54 -0400
Received: by mail-wr1-f66.google.com with SMTP id n4so17133305wrw.13
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 07:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=5tpURbYw8ulSj4zNIAnwRv+mqsPvaMs89zHgCbwUorE=;
        b=pc3Q4WLwtyH/QqKBdbPVUglaSmeArsffZq21ZXYXzU0DRnR35+sY3tdGWBuagK0cZI
         wtd9n32LtCybJZK7GO1zh3tHmEwZHbWLSXmR2OOndJ9BVl9Gf5gPTc8tuRnaESo4WFrl
         lJlwyoVwN+S3JZ2O69BZoIUYNXBtDaFza1rrCroi5ISfOyaJRSe83xxkFeXAZUAsn0wE
         v89G7hLfRq6vxIPrlUc39q8Jq1j8+rYvCGITvtOAt5G8RjwVJkfvFbPAgYOEfCJQMODw
         mCcpaR4WPIwz31PgpOt3n3lOPHHz/aUkTS5liQDjdAbSnFydljdrrcrQ4SCJOqpB+exu
         08mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=5tpURbYw8ulSj4zNIAnwRv+mqsPvaMs89zHgCbwUorE=;
        b=rIUUhfaBj6JyrRWi+MTNx9MG+ZvQg7e8aG8LtaVMyVvFrEZdqQO9OpJPPJze+cDaS4
         7yt8ycX8JZOaug6m7FAN4AWBCAvR8AUthk8HEoWetKFcathLoK+0LPuajUj4W7aFxnqT
         TWHFTqabHJBhmNC0YD135f9eXvKqF/jEz9uHrCnQEgqcAKqUgpMbdByvPeySi2JGFSQv
         k1lqKWz5k4Xp/N0sJfx/Oigmi+fuokZmxPKzjEavLPCyZU1dT7b9fOAX/xl7NgOoRszW
         JAhSHtYdsyt0+bGyGcOiniTvydKNM7S4JgEZEtqqeT1rYvlOHrN9qBGmRAVNSHg9Gx+C
         hyhQ==
X-Gm-Message-State: APjAAAXbONb+YqwSWOe30r25toYbGqVLtL4e+9YSmdzkXhuvX7F93X8U
        owKlDy71vAg3g6ArO1ejz2txLw==
X-Google-Smtp-Source: APXvYqy3YGHWLFgs7/wW/TUEjrur0gU36dxTuCSlAFVwP2jci8YFavbg0zMWnihd20zFriRbKLVnCA==
X-Received: by 2002:adf:de8b:: with SMTP id w11mr31381985wrl.134.1560350032633;
        Wed, 12 Jun 2019 07:33:52 -0700 (PDT)
Received: from dell ([185.80.132.160])
        by smtp.gmail.com with ESMTPSA id w67sm264912wma.24.2019.06.12.07.33.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Jun 2019 07:33:51 -0700 (PDT)
Date:   Wed, 12 Jun 2019 15:33:50 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Keerthy <j-keerthy@ti.com>
Cc:     Mark Brown <broonie@kernel.org>, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-omap@vger.kernel.org, t-kristo@ti.com
Subject: Re: [PATCH v2 3/3] regulator: lp87565: Add 4-phase lp87561 regulator
 support
Message-ID: <20190612143350.GB4660@dell>
References: <20190516043218.8222-1-j-keerthy@ti.com>
 <20190516043218.8222-4-j-keerthy@ti.com>
 <20190522153528.GG8582@sirena.org.uk>
 <1712197d-7d43-38a8-efde-11b99537eae9@ti.com>
 <20190528132755.GK2456@sirena.org.uk>
 <e68d9939-a56a-b3c5-7f6d-e5783e16a6de@ti.com>
 <20190608195159.GA5316@sirena.org.uk>
 <20190610054822.GE4797@dell>
 <c58ef6cd-893e-c20f-f437-e0343aa83fea@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c58ef6cd-893e-c20f-f437-e0343aa83fea@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jun 2019, Keerthy wrote:

> 
> 
> On 10/06/19 11:18 AM, Lee Jones wrote:
> > On Sat, 08 Jun 2019, Mark Brown wrote:
> > 
> > > On Sat, Jun 08, 2019 at 09:26:31AM +0530, keerthy wrote:
> > > 
> > > > mfd patches are on linux-next already. Hope you can pull this one now that
> > > > dependencies are met.
> > > 
> > > Someone will need to send me a copy of the patch, if I acked it I was
> > > expecting it to go in with the MFD changes.
> > 
> > There is/was no need for that.  Patches are built-time orthogonal.
> 
> Sorry i am still not clear. Should i resend this patch?

Yes.  It sounds like Mark no longer has the patch to apply.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
