Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF323523B1
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 08:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726776AbfFYGoQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 02:44:16 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35561 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726653AbfFYGoP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 02:44:15 -0400
Received: by mail-wm1-f67.google.com with SMTP id c6so1645826wml.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 23:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=jWFfiQRv+wXGF01EPxBLO+kjrqa8LCaFNGNIzb7PzWI=;
        b=etColUTKnj+q4z01FUw/FmoQ3vlLiTaTo0tQT/9uCpcak5Ncs00h5ZrwM44//WX/8v
         ajCqkVurQbe6c4Ye2vwb6S6xTSiErUAQFaY7rICIvPOJ7Mp2ysWrCDsMujw/In2muCqZ
         8Fok3pRz7sqdNhpt6S7KBAec2BgJtj1+ofjruL35EOCIF+Ab1Npt71ZyGeI5Ow81+pXD
         MAy32yGZGfK8PfPprNpqjOaxpf4b7CnMcMOjeLT34qq91BRtwHp2EPhSOF98/aJ80z0J
         8X/lUT4ZBU6CsV76lHbD036csjhIX7l9QsZ7z3QL/TZDNdsdbzCmGvJBTG8A6CF/WLBk
         4Jtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=jWFfiQRv+wXGF01EPxBLO+kjrqa8LCaFNGNIzb7PzWI=;
        b=HtMjFWoY81nx07ZO+Pt4DcyZtK1EHZuCMfvZa9GkKwrMEMsechzrfmqF9P/9E9RArH
         9aADp56Jn532axMrgMnTSYITRiWlAnCIiN+gBe+Fn0eLwMNFCxio+zrYlf0m2gK/DF2I
         jcWA/vHbSwKYXqT1ZN/dgpuJWFDnszze9tcvTTPjGCA/x1yHm01xIw+vdOlzAS4bEKFi
         pxfC8RtNUw9XR5fiBNGqgdDRmXOsFVp58S/Yboece473TeDk95DNCqjI+mQ+Vu7euwdb
         hgsEXSJE0EieBgsC/MELpS5Y7Mi9mMEOD6yZurdYqYeXOrs/DFpCh9GFfXwWAmh1n0SL
         26uQ==
X-Gm-Message-State: APjAAAVRrS09Q6a+FJeQDt+nMhApWMC9HcglfwIriRn6t21iXbFhUn+A
        BoFm1+NZJPxXqGTVhZzv0j00JJfMIqg=
X-Google-Smtp-Source: APXvYqxScvmDFOBo7wM6MTjdmz92wH4V3DTwqg2gYdmsd9YjYrDhPeBrrdzpuX7NOXWXYqYn6s0yLA==
X-Received: by 2002:a7b:cc04:: with SMTP id f4mr9785913wmh.125.1561445053657;
        Mon, 24 Jun 2019 23:44:13 -0700 (PDT)
Received: from dell ([2.27.35.164])
        by smtp.gmail.com with ESMTPSA id m9sm11584290wrn.92.2019.06.24.23.44.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 24 Jun 2019 23:44:12 -0700 (PDT)
Date:   Tue, 25 Jun 2019 07:44:11 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     mazziesaccount@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: Add link to ROHM BD71847 Datasheet
Message-ID: <20190625064411.GE21119@dell>
References: <20190613121237.GA8984@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190613121237.GA8984@localhost.localdomain>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 13 Jun 2019, Matti Vaittinen wrote:

> ROHM BD71847 PMIC datasheet was published.
> Add datasheet link for BD71847 as well.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  Documentation/devicetree/bindings/mfd/rohm,bd71837-pmic.txt | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
