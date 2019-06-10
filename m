Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E44653AEB5
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2019 07:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387485AbfFJFs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jun 2019 01:48:26 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:45550 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387431AbfFJFs0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jun 2019 01:48:26 -0400
Received: by mail-wr1-f68.google.com with SMTP id f9so7767082wre.12
        for <devicetree@vger.kernel.org>; Sun, 09 Jun 2019 22:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=UqTMfvdUN4l4dmfUrLpLCLxSB+Co9swJe7W/3oUlri0=;
        b=tcJdLTorzCf4nvzqeoyQF2XfPfTYL490JDW0DOUImon5g5L3pLvtatzry6AKu3ahJw
         zM9dC1SF0n2o3vxGe/b9rpXN3ZdXKACyvUcegPGCc3TPpYVUk6SZ+Mv/wJOSUb3F9ZQ1
         VzJFUDXsDX+i4wAujIYBm2L09Q1IyNHrXgacLWKslptpyzU1jyZGwvBeZ48HxhZy/0jG
         gJo7dINUS1p3HVnTu+DvaZx7jc4z6RBcFA7GWbgEcH5V21D7pG/VeVTAaD1jGRfGlhnw
         cV179tidSdxtnzxNCzFnWwibq35ErWEeGSHqsAaR80//LhCE1zygrHaFYRJKdKVNA2ou
         swlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=UqTMfvdUN4l4dmfUrLpLCLxSB+Co9swJe7W/3oUlri0=;
        b=q3aJshfvrtdgZyESAi46CxG7F+yeSJ1Z5WqqFD67thPrTkFF0lvtHetO8yGPG2Mr0E
         v6cNPoLpAHDfEKe6GKgvfKacVCNW4eY27vjmxUA5dbznmmy4rFAlNWdJc9l3BfhQTC0d
         +/kMhzHlzzeD2WYJg5iS3nLf4LISxgUWOLhHBhP2FBCx09TSZVZ8gKiFFXkM+OfHNjzK
         rFFjssNjAKt8IBYEiyG6y1g9/OH8NBoF4CXR8HxtIbmKlFP5l+KijNOiuRImd9UHIFkQ
         l61z71FxNc7L4zNqMuO+TjJjrUhLBotjgvokrcZIbX6k+A8ahgSG3giKplyvJxbM7lDJ
         ZVLw==
X-Gm-Message-State: APjAAAWp3fndHfwSCoM2QG4km1Tf2WWaIhSEqngLc0H4rIYePyVZ6rc2
        MMGKBgbghheo1JfhdTpwcp38aQ==
X-Google-Smtp-Source: APXvYqwsrG8dkGOUshS3cNu9PxOmmzcafSURYr1r2F+1zsSm5ObYfNFi3/TpWb7kqnrdPh7vZpSZtw==
X-Received: by 2002:adf:db4c:: with SMTP id f12mr20398326wrj.276.1560145704642;
        Sun, 09 Jun 2019 22:48:24 -0700 (PDT)
Received: from dell ([2.31.167.229])
        by smtp.gmail.com with ESMTPSA id d10sm9750323wrp.74.2019.06.09.22.48.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 09 Jun 2019 22:48:24 -0700 (PDT)
Date:   Mon, 10 Jun 2019 06:48:22 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     keerthy <j-keerthy@ti.com>, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-omap@vger.kernel.org, t-kristo@ti.com
Subject: Re: [PATCH v2 3/3] regulator: lp87565: Add 4-phase lp87561 regulator
 support
Message-ID: <20190610054822.GE4797@dell>
References: <20190516043218.8222-1-j-keerthy@ti.com>
 <20190516043218.8222-4-j-keerthy@ti.com>
 <20190522153528.GG8582@sirena.org.uk>
 <1712197d-7d43-38a8-efde-11b99537eae9@ti.com>
 <20190528132755.GK2456@sirena.org.uk>
 <e68d9939-a56a-b3c5-7f6d-e5783e16a6de@ti.com>
 <20190608195159.GA5316@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190608195159.GA5316@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 08 Jun 2019, Mark Brown wrote:

> On Sat, Jun 08, 2019 at 09:26:31AM +0530, keerthy wrote:
> 
> > mfd patches are on linux-next already. Hope you can pull this one now that
> > dependencies are met.
> 
> Someone will need to send me a copy of the patch, if I acked it I was
> expecting it to go in with the MFD changes.

There is/was no need for that.  Patches are built-time orthogonal.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
