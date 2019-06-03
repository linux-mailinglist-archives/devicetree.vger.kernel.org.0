Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E51F932878
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 08:26:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726803AbfFCG0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 02:26:33 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35796 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726486AbfFCG0d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 02:26:33 -0400
Received: by mail-wr1-f68.google.com with SMTP id m3so10674278wrv.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 23:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ZXrkd8Mwo/g3f6eOlB+lKEUaiYlVyH7B52Bno48i0U4=;
        b=OOCzHmFCQ6+uQmbDwIaRszRMDuClPoHhr5H7kwNJziCiMS9xMcGVf0M1rgm/Pt4rKA
         fp8XFzndv/jxfUbYsbTd26AVAdUd5q8LdqyIcRgVpys0r3S515KTzbrJ5BqbeCMVH2oI
         4R+3MxUK68h0Pm/TR7haYbKdTbJT7GJ/X2fHTWsqcN7aa9VZqs9rY3eTrvJWddahgmXd
         b12GX4gvhRWDiry2Egr5sudFWT3CyF/X8b83pr74p+nrXCa1mM9qwfPxEja+CMgweYnr
         mcy6AJB+xKFoRwlZg2oWCMxregG6CZVO/L+98DWZOZyBVbodtDRyhy/80y+XosIt9f9h
         nBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=ZXrkd8Mwo/g3f6eOlB+lKEUaiYlVyH7B52Bno48i0U4=;
        b=eiEZAlADZM4axJoTY69wjQnV+Uo2CTixjMrNl5WkK7k8GHfsXBrlPCw5IdIvE2QmIE
         hGqc6jitxvWTSOhZToQSRMRc7d5EqTlX8iqdpmXZF7lIgmGJc6pp994z3md16H9aGdU1
         fzZGuN28Om5m+VVuwrdY3UEtA4eHme6ghNAAuHkFOd9VzGz9OWzhi7UcOVFSLkUwJs2d
         rhrvWtx5sA82evWrvqU6tR/Q6zyzXhGRuCtORN5MXfiNC9xMn2zY6yJ+CDNOfeyi+U0X
         eOYHfvu26BEM18X/vN06ESYuX1spANTtgHnVGmj3ye5WyGrZpepZYv80oSLRa85qEUYi
         XzWQ==
X-Gm-Message-State: APjAAAVUfu8Rsn+L2dp++tXIv9EHmUXb8O2IzuGstNmP9TnEFN9esoAd
        j1GT5l465iILQVCnJD78Yef18JsXx3A=
X-Google-Smtp-Source: APXvYqzJsfhbmSJQVtgCRgNfwclLfYr/epaklpCQJuCOOVe3BKwACvrV9Q0BC6QgLZ6iVrSpogWcsw==
X-Received: by 2002:a5d:6a05:: with SMTP id m5mr8024724wru.161.1559543191236;
        Sun, 02 Jun 2019 23:26:31 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id 74sm10617403wma.7.2019.06.02.23.26.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 02 Jun 2019 23:26:30 -0700 (PDT)
Date:   Mon, 3 Jun 2019 07:26:29 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Mason Yang <masonccyang@mxic.com.tw>,
        linux-spi@vger.kernel.org
Subject: Re: [PATCH RFC 0/2] Add Renesas RPC-IF support
Message-ID: <20190603062629.GC4797@dell>
References: <ad503d6e-4739-9744-64b4-fd13f44ea6fe@cogentembedded.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ad503d6e-4739-9744-64b4-fd13f44ea6fe@cogentembedded.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 May 2019, Sergei Shtylyov wrote:

> Hello!
> 
> Here's a set of 2 patches against the 'for-mfd-next' branch of Lee Jones's
> 'mfd.git' repo. Renesas Reduced Pin Count Interface (RPC-IF) allows a SPI
> flash or HyperFlash connected to the SoC to be accessed via the external
> address space read mode or the manual mode. The MFD driver for RPC-IF
> registers either the SPI or HyperFLash subdevice, depending on the contents
> of the device tree subnode; it also provides the absract "back end" API
> that can be used by the "front end" SPI/MTD drivers to talk to the real
> hardware... The HyperFlash subdriver isn't ready yet, so the MFD driver
> may need some updates in order to serve it, hence the RFC status...
> 
> Based on the original patch by Mason Yang <masonccyang@mxic.com.tw>.
> 
> [1/2] dt-bindings: mfd: document Renesas RPC-IF bindings
> [2/2] mfd: add Renesas RPC-IF driver

Please use `git` to create your cover letters.

You are missing useful information e.g. the change stats.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
