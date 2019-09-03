Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5CC26A6147
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2019 08:22:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725895AbfICGWE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Sep 2019 02:22:04 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:40236 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726579AbfICGV5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Sep 2019 02:21:57 -0400
Received: by mail-wm1-f65.google.com with SMTP id t9so16674174wmi.5
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 23:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=yGyIrrLARg5qwoC8MjSZ4CSFbPrX3vElTlOaYxFgRnQ=;
        b=WECgJvE2QdLRhFj3i4AxCxgR1vpUfhF1VNqwGZrLdkOacFB3XcpZNKbAF3NPedfZ/9
         NBL/hguADRwjl3TUHJEJH0iVlHeLIR4wEQwX2cSmF6t8kcuSlI4rmHAOymYXKvv3tYY2
         w0Wt4JwGqayHRUygZM/OOR7JTKFcpDZ745eZFw2fInD7Z0RvyY0IqhSWczFLRF3LEOyq
         6QKJzl3cJs5W83haW4N35dmVvoJWgr0cK4u5ldys+zILBsGfeAIJS5o7Yg70dH+Mw/eH
         tHzP7IJmd7dBNszmnvjZvVfwOEWtD9w0hV2ZrcLP2P/xH2smB/BG3P1QGDaGfyLNV0vB
         hUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=yGyIrrLARg5qwoC8MjSZ4CSFbPrX3vElTlOaYxFgRnQ=;
        b=Py6ceOopK3kvWaOFc9IS9OVCgC9jkOkbpwZCMyxju4JZP6oZtiEje84eIP5VjY2NHE
         3AqzrB0jRtfZtmSJB6MOVTyOP3SRYV6BeSrjWSPlm0a3uBgesXoHana2tWE7LtsmTB73
         gLhXmBQAo2jUBQufeKZHbB5FL10/uopRINUow7FFo+VTeclO2Uqo3zri1nGyzxiHdF9L
         nRWBypbKwIPbyeUZDwrxpd4WprNmOBsbRWRLN7cSywgt+Nc4tU1JXkT5itBIpmKYL5Td
         p+IXz3J/GUcsnw/9c5c+MFTD//L5UxpYanzCMgHdm2utffWOB5aqzbvNU/ijWEmHRXK2
         XjXQ==
X-Gm-Message-State: APjAAAUr1FYHMf2wtpN+DH3zdaUtDZMLMLHaLY4NYSNqrUGZScss9Ojg
        pfVrpkuPDP/+Rk3S7H/NqZ3Dqw==
X-Google-Smtp-Source: APXvYqzO8/MDChhFJYV9n2Mdiniy4ia5sEDZAcYL4Cu8Zn76jxIlVNCV1TBkQZbX2z2LJb8KuGs6CQ==
X-Received: by 2002:a7b:c5d6:: with SMTP id n22mr23766517wmk.65.1567491715654;
        Mon, 02 Sep 2019 23:21:55 -0700 (PDT)
Received: from dell ([95.147.198.93])
        by smtp.gmail.com with ESMTPSA id c132sm21978999wme.27.2019.09.02.23.21.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Sep 2019 23:21:55 -0700 (PDT)
Date:   Tue, 3 Sep 2019 07:21:53 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     agross@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190903062153.GD26880@dell>
References: <20190902132400.14084-1-lee.jones@linaro.org>
 <20190903054451.GV6167@minitux>
 <20190903062040.GC26880@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190903062040.GC26880@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 03 Sep 2019, Lee Jones wrote:

> On Mon, 02 Sep 2019, Bjorn Andersson wrote:
> 
> > On Mon 02 Sep 06:24 PDT 2019, Lee Jones wrote:
> > 
> > > From: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > 
> > > The Lenovo Yoga C630 is built on the SDM850 from Qualcomm, but this seem
> > > to be similar enough to the SDM845 that we can reuse the sdm845.dtsi.
> > > 
> > > Supported by this patch is: keyboard, battery monitoring, UFS storage,
> > > USB host and Bluetooth.
> > 
> > Applied this to next-20190829 and booted it, got a little bit of EFI FB,
> > then the screen goes blank and after a while I'm back in GRUB.
> > 
> > I've not been able to figure out what's causing this though.
> 
> Probably DMA.  There is still an issue in the COM GENI Serial Engine
> Driver which reboots the system when a DMA transaction is initiated.
> 
> However, with a workaround patch applied to the Serial Engine driver
> (drivers/soc/qcom/qcom-geni-se.c) this DTS has no issue booting the
> system.
> 
> We have ~12 weeks to either fix or elegantly work around the Serial
> Engine issue.  IMHO is makes no sense to hold back this enablement
> patch (which cannot go in via the -rcs) for something which is likely
> to be fixed and applied during v3.4-rcX.

NB: If you're worried about other entities thinking the platform boots
fault free due to this DTS patch being applied, I would suggest we
place a little "NB:" note in the changelog to explain the situation.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
