Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F5583D2305
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 13:54:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231772AbhGVLNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 07:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231713AbhGVLNg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 07:13:36 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B913C061760
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 04:54:11 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id y3so4162248plp.4
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 04:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eJHo32pmDSargBeSSjTxPOgwesXxsmvoHQ7CTrEtPwQ=;
        b=g1OrwVOQT67xVprJPUIau4/8feqm+5lfQ7RHjj4psjNU7ncaYpfy0GfTkd2RS+cbN2
         AApWrJCWAsfpv2O/d5QWEiAmlF4CEXwaKRbBcPBUxuspL18X5G/VZMUThAGZ1XnnrKP/
         i+5byw6QckfZJHxyf+rBdntW22mpTNrAtuCLfBKlbrJs7bxh76LlsVhOtT+38x+LKCXI
         XV93zT246zEHn3Ip/Iu7L8RrwR8tOPxTnNTNDVCd5xFDx57aKOkTXGqjiBg++U11lGJY
         i1VpdFUpFQkvF+yE9rCv5mX2ey0gHTADK6wEvrWSpY7sz+4qlIn7Ls9EtrtOiFmEjJZn
         aYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eJHo32pmDSargBeSSjTxPOgwesXxsmvoHQ7CTrEtPwQ=;
        b=rqmzEnyDvNWPe69w9baK13OU2fWiBCLaGgafGHSKCcOGgMV2nAxQJYPXw1qS9vDYRF
         bl/eiJBViPgui5JvuzyNJfGKS4Y0k5LmVgbzmnwGAWJabQ8bh6doy0xVPJ4tgxF3yC5i
         vrOCFPzqtH6O6IpmW68J0BswuVJWFzbbVzQlunIClUqn6yoADX36KGoNd2JgIpdOfl2T
         r4469vpQfeElPTqjh0EXax0Xc17W9KJV4c/ZGNkudAchotZH/hU3lMJx2EO7ZQUW4M4v
         cMfypSkxzjSYeIdvBYBTcqZ2ynE8QzWmES5rkvRqScbKOhaGJaM0c8Q4ui2rsSgzDKPw
         rPOQ==
X-Gm-Message-State: AOAM530m+QICXbQi1dq0KTnz31p9/M1IXu8wFNkO8jbUCZbsqnaBjnI5
        RI+mw98w1dy0o7fGEobIpkkQ
X-Google-Smtp-Source: ABdhPJyBHQh4bCAQjkaZuBiPkXKbeMCTIOz19OnWVkY7859ey5cMuC8+MZSrazVlbNG1FT3B+ohVPA==
X-Received: by 2002:a17:90a:1941:: with SMTP id 1mr8646747pjh.217.1626954850999;
        Thu, 22 Jul 2021 04:54:10 -0700 (PDT)
Received: from workstation ([120.138.13.30])
        by smtp.gmail.com with ESMTPSA id i8sm32579542pfk.18.2021.07.22.04.54.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 22 Jul 2021 04:54:09 -0700 (PDT)
Date:   Thu, 22 Jul 2021 17:24:04 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Bjorn Helgaas <helgaas@kernel.org>
Cc:     kishon@ti.com, lorenzo.pieralisi@arm.com, bhelgaas@google.com,
        robh@kernel.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, hemantk@codeaurora.org,
        smohanad@codeaurora.org, bjorn.andersson@linaro.org,
        sallenki@codeaurora.org, skananth@codeaurora.org,
        vpernami@codeaurora.org, vbadigan@codeaurora.org
Subject: Re: [PATCH v6 2/3] PCI: dwc: Add Qualcomm PCIe Endpoint controller
 driver
Message-ID: <20210722115404.GB4446@workstation>
References: <20210714083316.7835-3-manivannan.sadhasivam@linaro.org>
 <20210714191509.GA1864706@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210714191509.GA1864706@bjorn-Precision-5520>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 14, 2021 at 02:15:09PM -0500, Bjorn Helgaas wrote:
> Can you use the driver name for *this* driver in the subject instead
> of "dwc"?  Then we'll be able to identify changes related to this
> driver easily in the "git log --oneline" output.
> 

Okay sure. I usually do that for the drivers that got merged but don't
have any issues with driver prefix while under review.

> I'm not sure what that name should be -- you have the PCIE_QCOM_EP
> config symbol and "qcom-pcie-ep" as the driver.name.  Both seem
> possibly a little too generic.  We already have a "qcom" driver
> (drivers/pci/controller/dwc/pcie-qcom.c).  Is this for the same
> hardware in endpoint mode?
> 

Yes

> Will this driver support every endpoint device from Qualcomm, even
> future ones?  People often use a model or codename here (xgene,
> aardvark, armada, tegra, etc).  But I guess you can always use
> something more specific for future drivers if/when Qualcomm produces
> something that requires a different driver.
> 

Since pcie-qcom.c supports most of the RC IPs in recent SoCs, I can
assure that this driver can handle all EPs.

> On Wed, Jul 14, 2021 at 02:03:15PM +0530, Manivannan Sadhasivam wrote:
> > Add driver support for Qualcomm PCIe Endpoint controller driver based on
> > the Designware core with added Qualcomm specific wrapper around the
> > core. The driver support is very basic such that it supports only
> > enumeration, PCIe read/write, and MSI. There is no ASPM and PM support
> > for now but these will be added later.
> > 
> > The driver is capable of using the PERST# and WAKE# side-band GPIOs for
> > operation and written on top of the DWC PCI framework.
> > 

[...]

> > +static int qcom_pcie_establish_link(struct dw_pcie *pci)
> > +{
> 
> This is much more complicated than existing *_pcie_establish_link()
> functions.  Are other drivers doing work like this in different
> functions?
> 
> Please try to copy the same structure and function name conventions as
> other drivers.  This applies to all the functions here.  It makes
> maintenance much easier if code doing similar things looks similar.
> 

Sure thing. I can use the patterns for the callback functions as they
are the ones shared between all drivers.

Thanks,
Mani
