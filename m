Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38FDF340548
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 13:17:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230493AbhCRMQa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 08:16:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230476AbhCRMQJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 08:16:09 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C241AC06175F
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 05:16:09 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so3040203pjv.1
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 05:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=mDvN0SgAfdUxvP15FGjlUIyfQkEQU0VmBT3cvhyl4P8=;
        b=J0SCTpSl66AXYFrVZinWF1tdEH2O6BGxsFyMoRYdtxMpYlP0iLTy+DjI2rPZTfQIcU
         p5xmOgENJh77+3sPhSiRMqCzHkPZAS8peVP/IbpKySbcykwSepPjABdApEOXSX02Z4S3
         l4Ixeuc52rWSYU0kUkexKhpyhSRQ+xTSIqM6Gz5ptTsyQno+l9w7qgvgvWQdHQjCk6aD
         Ao+jEHr44f7LoaOWDh4EfambbLt6ePERFM49V9dWx86fx+DE5ekAjey5sa9rXyMRSDBd
         N47WBciaLHNJV1jdQ7ybbgXzHMux3nvRGU4MEy4G2kjjMANbg4zN6qVB7y4h5eZhXs1i
         WUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=mDvN0SgAfdUxvP15FGjlUIyfQkEQU0VmBT3cvhyl4P8=;
        b=At/Hs21JX/wdzjC5UjbjgmP3AoDdqpUh5zmvcJkgxYsz4eNC03R8EGm7xpYDkzMK/g
         7IqBAOKH7wg2eu/QlUB+GoatxBLWnxUsC9ddiV14T7OPLzHT4gaxrdQjOrT07WDYYxJN
         dgWyD94r6mXLPD0+8CBv4sT4SFPPISZQiaxd4DgyC3yNmEDQPA19EeMb5nS8qIghMPXY
         rMq8Tor++a3vboZkxoOXDnXfdsPBZslkz/GVIlXpvI12l6Cw9gJC2c31OpUhahsqomFc
         tY8zJdj+91iOimNBTzhZl9yrZJ0SP3MM/IeOaBPpnOdFw8JWsaIYnokbLuHZxfUZHOp2
         YPrA==
X-Gm-Message-State: AOAM5335cdN2wCBxbRBBzZYRPXkHJ/plMl5ZDegnfhdBS1QAN00FmzWc
        C2YXH187gEchiatKa16Uoumc
X-Google-Smtp-Source: ABdhPJw8gFyVpDkplM9fABTLOzM0jYdB18ReJ2voNFd21l1TQUS6DAIi9n2ngbIujTbCX2OD6xslVQ==
X-Received: by 2002:a17:90a:5211:: with SMTP id v17mr4141106pjh.53.1616069769155;
        Thu, 18 Mar 2021 05:16:09 -0700 (PDT)
Received: from thinkpad ([2409:4072:6d00:4737:af26:182c:a57e:1d9e])
        by smtp.gmail.com with ESMTPSA id i7sm2473080pfq.184.2021.03.18.05.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 05:16:08 -0700 (PDT)
Date:   Thu, 18 Mar 2021 17:46:01 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org
Subject: Re: [PATCH v5 0/3] Add support for secure regions in NAND
Message-ID: <20210318121601.GA21610@thinkpad>
References: <20210317122513.42369-1-manivannan.sadhasivam@linaro.org>
 <20210317155121.19cbb50c@xps13>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210317155121.19cbb50c@xps13>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

On Wed, Mar 17, 2021 at 03:51:21PM +0100, Miquel Raynal wrote:
> Hi Manivannan,
> 
> Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote on Wed,
> 17 Mar 2021 17:55:10 +0530:
> 
> > On a typical end product, a vendor may choose to secure some regions in
> > the NAND memory which are supposed to stay intact between FW upgrades.
> > The access to those regions will be blocked by a secure element like
> > Trustzone. So the normal world software like Linux kernel should not
> > touch these regions (including reading).
> > 
> > So this series adds a property for declaring such secure regions in DT
> > so that the driver can skip touching them. While at it, the Qcom NANDc
> > DT binding is also converted to YAML format.
> > 
> > Thanks,
> > Mani
> > 
> > Changes in v5:
> > 
> > * Switched to "uint64-matrix" as suggested by Rob
> > * Moved the whole logic from qcom driver to nand core as suggested by Boris
> 
> I'm really thinking about a nand-wide property now. Do you think it
> makes sense to move the helper to the NAND core (instead of the raw
> NAND core)? I'm fine only using it in the raw NAND core though.
> 

The reason why I didn't move the helper and checks to NAND core is I haven't
seen any secure implementations in other NAND interfaces except rawnand. This
change can be done in future if we start seeing implementations.

> Also, can I request a global s/sec/secure/ update? I find the "sec"
> abbreviation unclear and I think we have more than enough cryptic
> names :-)
> 

Sure.

Thanks,
Mani

> Thanks,
> Miquèl
