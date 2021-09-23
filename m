Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E88B41665A
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 22:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243074AbhIWUHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 16:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242979AbhIWUHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 16:07:47 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46891C061574
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 13:06:15 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id u18so20558657wrg.5
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 13:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+fr9Gy1AQEubiTK5cHPDCJrxGwSlissv4q4mqqhp4ls=;
        b=WsfssnVldxNLG/cAcrkuCW5oovIGpRMiOEeOfQ/1RAD+iVH2X35FG098OmMS/FzoJl
         uCmS9rweN/VUqtwntLV386eXFMaYDIfObDUx/I5cJBMloSSEj0jeB+9WZqfGwBIXVIHl
         w6nIUmRSVaWYZNANx9Q3iJswpBeQsMZg3XPKgfWx5ISirs90dCVU6ifNSLm4jke5dRsk
         nzWdMVKezJHYoOyW/ekgzRcdX1PyOIzmkRZtxVywP10AePlOuuQBUWqPMQIP5JjxZE6D
         U40vjDeH41H0AvqEkczNmYLko2CPKtZCaINLc6PHQoQOV2NeighKqG390nF83s6U5FOM
         QOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+fr9Gy1AQEubiTK5cHPDCJrxGwSlissv4q4mqqhp4ls=;
        b=423pWE/qAK447ddAyXEj6H0CQe3snjlQ88F9YyIb/VDO3FTUHtikP6ZcFyxqk7lGSx
         iil6gtNhq90pQNGkELnuvePyeKOePV4hjHdVPkdwhdnMYOngaoxUnyGUKNpFCyUYN+C8
         iXV0e3SD/glaqRGlDYn7rU2KSFbU3dHidPEsc2ZMo1syuQLCmHRB2+C0KTQ64nwpBtQb
         t5HzbNaRjomoVeAvnHI2XJ/LLNjfXoMPHqgYDrZE7Rm09T1m2qX6E618noLXQr2CfnPs
         l/ShW1s//klkJhlyRbjORBdwxbxt1ltNB2/CspKdrZ2G6CXiND775Dae/4KBZHCm3i1E
         2l9g==
X-Gm-Message-State: AOAM531ciX/CfQ2h+UDLJoG1D+ab3f1moIMbO7/Wc7MiM3SOMAgKjUCr
        nwtzQ7iLVE50dfDceEF9UX5d1A==
X-Google-Smtp-Source: ABdhPJwGuflioho+kw1LeePLr5Wotw/ASdcSJIOLrT/gJMjicmoFxsvl6fBQPE1J+ytwi/9v7eKwPg==
X-Received: by 2002:a7b:cd0d:: with SMTP id f13mr18103521wmj.183.1632427573456;
        Thu, 23 Sep 2021 13:06:13 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id h15sm6061862wrc.19.2021.09.23.13.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 13:06:13 -0700 (PDT)
Date:   Thu, 23 Sep 2021 21:06:10 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Message-ID: <YUzeMqVTw62dM/6R@google.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-3-zajec5@gmail.com>
 <YUriBVIH/n0p2H+D@google.com>
 <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 23 Sep 2021, Rob Herring wrote:

> On Wed, Sep 22, 2021 at 2:58 AM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Mon, 13 Sep 2021, Rafał Miłecki wrote:
> >
> > > From: Rafał Miłecki <rafal@milecki.pl>
> > >
> > > Northstar's USB 2.0 PHY is part of the CRU MFD.
> > >
> > > Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> > > ---
> > >  .../devicetree/bindings/mfd/brcm,cru.yaml         | 15 ++++++++++++++-
> > >  1 file changed, 14 insertions(+), 1 deletion(-)
> >
> > Applied, thanks.
> 
> Hopefully this works without patch 2???

What do you mean by 'works'?

It's documentation.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
