Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7B188B82F
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 14:16:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726986AbfHMMQK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 08:16:10 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:34313 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726551AbfHMMQK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 08:16:10 -0400
Received: by mail-pf1-f193.google.com with SMTP id b24so1000763pfp.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 05:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HVlLJiIzjaXDxFFkRwCgsS9CVo3aI/KKzGwIYcEyzZU=;
        b=XNUFdEtT15n7SWbDoymnDWB6S1FHl3jTRMDvFq1tpn+deX4cDMtdSaifhruzfd5utA
         Zm6EOCAz2i2aXTj/LvosazkuB1chumYOVHkJVyOztRrzdHDgtxXKQsag4uSefxubT8x+
         x8F9fAzkGkBc7u9QgBuN/hq7bzEW/tmUINBC0DuoIUPEe455xY7RjQ2NFB3+cTbPFKny
         eYCN6EhLj+4oY6s+oDAWKtGbhZo4r+HhznjjdW37EgA0ODTPkQnXJkWn5QB6sCpwgMb9
         3jfjohhGwfSx4Y7y23bjrgF8Dgs8wqn4QCUrhRRoUK+AqAEGBXjikFMhsCwTCF9uuNa7
         1VnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HVlLJiIzjaXDxFFkRwCgsS9CVo3aI/KKzGwIYcEyzZU=;
        b=nZn2k+JSRjAFtZDMsDim18X2i/qNUt5qW0EsGbb999H02HHPxF9plFmXh8xnb8COr6
         0nTBLrZQn5CAczUCwx61H6ZV63ojPHZq0xpioQKtpi6zjqqPUX/fqwzbfnvG+3o3mQeN
         sRc6Ugos6nLjTsYRGlYVCrVuqQLu6eWkmLQ8gw0qMamUZcnmsjcGvcTQBTtu3eyqm9dT
         PFc5pjgw5PQggc4ILSOfLVER/eccVYFirIvrFQuf7oq9nkEfvve1EGglODb92eGA8/mK
         gbKhcXuTVyGfQBxIbRpGwKDJP55AMaJpggDWbBWHeOz3fzm/4kXx3jwWk+1cu7q4GSu7
         zWjw==
X-Gm-Message-State: APjAAAW7r1q9OrjTlOqZQcM7VZILhXciNB+j0b5BVQMkx1R/cNpfHCmK
        UrSeZsK1Jz9BgTw0s+STjy9ZoCmYlw==
X-Google-Smtp-Source: APXvYqyqBDGNMo4tLSC5P2L0ZMq6zP+MdPBF4+rrYMx7vSuFUW2VLy1NayISlC8n8x8eROfvPHOiTw==
X-Received: by 2002:a17:90a:fe07:: with SMTP id ck7mr1936580pjb.68.1565698569207;
        Tue, 13 Aug 2019 05:16:09 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:649c:6ce0:9d44:669c:5d6c:bc5f])
        by smtp.gmail.com with ESMTPSA id o24sm200027991pfp.135.2019.08.13.05.16.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 13 Aug 2019 05:16:08 -0700 (PDT)
Date:   Tue, 13 Aug 2019 17:46:01 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Sakari Ailus <sakari.ailus@iki.fi>
Cc:     mchehab@kernel.org, robh+dt@kernel.org,
        linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813121601.GB29378@Mani-XPS-13-9360>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813115427.GC2527@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190813115427.GC2527@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 13, 2019 at 02:54:27PM +0300, Sakari Ailus wrote:
> On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> ...
> > +Required Properties:
> > +- compatible: Should be "sony,imx290"
> > +- reg: I2C bus address of the device
> > +- clocks: Reference to the xclk clock.
> > +- clock-names: Should be "xclk".
> > +- clock-frequency: Frequency of the xclk clock.
> > +- vdddo-supply: Sensor digital IO regulator.
> > +- vdda-supply: Sensor analog regulator.
> > +- vddd-supply: Sensor digital core regulator.
> 
> Could you also add the link-frequencies property, please?
> 

Sure, will do.

Thanks,
Mani

> -- 
> Sakari Ailus
