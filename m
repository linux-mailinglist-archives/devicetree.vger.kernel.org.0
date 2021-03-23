Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D0493459FB
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 09:44:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbhCWIoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 04:44:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229836AbhCWIoH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 04:44:07 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C47F0C061756
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 01:44:06 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id w3so25715004ejc.4
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 01:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=CA2HZYCAYEZ2FQmqritjssLiySaAB6hp+s1n0HMOzrM=;
        b=mXsIAOkGezeWC53T0nh3D1JBDoJ4z5/OTcthjLlPayIzf4BV/jnKTl26vlpiXk0kwA
         +2FeUBtGby6BLKHHX+ERL/w2K78vRPvhGW9ymAhwzJdlqIGq7fmHx4f8KH9P9WkAftQ+
         +2O7oaWJUczuKjvUYsJTh6rD2TfjgP/zuB+mLTtpvgIH54OCAYO+cOeH635SzrmRtM2m
         h0Q22/SzDXh5kyycPLfZRulpXkL9P+/bk7w6wGB+GRtrRQdp3YkY0iqVf2q5cr8e/7mG
         heOe7dDwSq0YFujk4oThOjuymsWCnxVhWQiRK6ULZBCJfX0JnPNHgMiXnrE/n2c+6zco
         O/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=CA2HZYCAYEZ2FQmqritjssLiySaAB6hp+s1n0HMOzrM=;
        b=FKqBbAoIUDPXmkWUvdRzZt2Wm6/orWnASRKLJGWKjc0dOBCUDzJJ51M/iM5Oxv0a+G
         NiYjJ9lzM/xsoDth1AazqemDzfTdAXrxck3QO/Tl8f2Ms++jFVVQ8v4DhgnLgIaH/orE
         GB7mRDUZLrgMTetrGt/sauNeGnhp3bjIRjMLFidjZcfYeNSpGi8CMgGrHyGcQBAUQI7R
         kr/U2z4xBoizBu0AXDRHm7qH54AjyzTPmgD7OzBV+WJwuBTa4e+W5Uz/Y1yhanHu/W0M
         JphRC0z95iN3ieMg+jaqPS7Xxjbv/2dy561d8vRlMPnH0xeZlbJv4rEXb9P8X2KTFSlL
         Uvgg==
X-Gm-Message-State: AOAM532sNns45cKUThlwwb5jXgYXIrU97AeHOf51v9g/xe5W8EjWRigo
        d7SKfF54lYOEN6rCjyXYVEzang==
X-Google-Smtp-Source: ABdhPJx9f42ahaRhGy9fzg+cOl9fMRYRkTUnFmGO+1xdqw33EBaNEa/TmFK5DHuUkPMIJUjZhzIdiQ==
X-Received: by 2002:a17:906:1b54:: with SMTP id p20mr3758551ejg.307.1616489045510;
        Tue, 23 Mar 2021 01:44:05 -0700 (PDT)
Received: from dell ([91.110.221.180])
        by smtp.gmail.com with ESMTPSA id qo25sm10738421ejb.93.2021.03.23.01.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 01:44:05 -0700 (PDT)
Date:   Tue, 23 Mar 2021 08:44:03 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Min Li <min.li.xe@renesas.com>
Cc:     "sameo@linux.intel.com" <sameo@linux.intel.com>,
        "grant.likely@linaro.org" <grant.likely@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH mfd v1] mfd: Add Renesas Synchronization Management Unit
 (SMU) support
Message-ID: <20210323084403.GG2916463@dell>
References: <1616254985-28920-1-git-send-email-min.li.xe@renesas.com>
 <20210322150319.GZ2916463@dell>
 <OSBPR01MB4773618A38B6797EDDE2E5B9BA659@OSBPR01MB4773.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <OSBPR01MB4773618A38B6797EDDE2E5B9BA659@OSBPR01MB4773.jpnprd01.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021, Min Li wrote:

> > 
> > I'm pretty confused.  This has been sent ~6 times already.  What is the v1 of?
> > Is this a different driver?  If so, why does it have the same $SUBJECT line?
> > 
> > If this is not actually v1.  Please provide a change-log.
> > 
> 
> 
> Hi Lee
> 
> Sorry for confusion. This is no version before v1. The reason you saw it multiple times is because 
> I was basing the change in the wrong tree and I now I switched it to
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/
> 
> I am wondering if this is the correct tree to submit the patch for MFD?
> 
> So to sum it up, the latest patch is my first version to this tree.

Either MFD or -next is fine for MFD-only patches.

Has the code changed at all in any of the patches?

If so, please provide a change-log, so we can keep up.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
