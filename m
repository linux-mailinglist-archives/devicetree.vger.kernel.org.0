Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 318E4379350
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:01:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231232AbhEJQC7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:02:59 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:43795 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230503AbhEJQC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:02:57 -0400
Received: by mail-ot1-f51.google.com with SMTP id u19-20020a0568302493b02902d61b0d29adso14089928ots.10
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:01:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CL3EK1BbXw3K+UiGWC4PvFk6RuXbgUMu/FDCEBhRsXc=;
        b=g4IFxo+7SAofRDyA3uUUuGbphPYNIfgmZ/CNMkOjHdX0RIz5fCBar5TPl+3hHounLb
         2uYZxNGf9cFR2GsHoY5S6JwokCSdsBXDKtEQ1enr+FASC788ey1+B4VngWLrjVm7MGe+
         enbwF9Upd66sRnyRe45uRXcUztaBpE4GyEMeHEjBRMOztu604dTyrmJLradwFmq7M8ds
         3AUDZ8nweYT63i5w/6jzPmLs8ewtlGKJQ7vxcu/wO7NkCwYJOCQxCXCB2Eega+uB/1jl
         yPg3ED2xetPd6uRv5eTpnLaUeBwEHHGh4mvLMbesRFTMT93duHwjkw9FvEVm7nOyjHXA
         yjrQ==
X-Gm-Message-State: AOAM531abVFxU2wNVlgyzeLL4NKzh3l3DeEhbLJ9PQ4wgwp8cDUvln+2
        xDthtVK20Us/DagAvLQgNw==
X-Google-Smtp-Source: ABdhPJwzu2GWumJg2qIXQSmyaxw+mou6CJa+ByX8g2CKbnhufna4u6fSpqm2l9DESdyyxTb7QO/5MA==
X-Received: by 2002:a9d:6645:: with SMTP id q5mr17169694otm.80.1620662512536;
        Mon, 10 May 2021 09:01:52 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u201sm2693880oia.10.2021.05.10.09.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:01:51 -0700 (PDT)
Received: (nullmailer pid 202602 invoked by uid 1000);
        Mon, 10 May 2021 16:01:50 -0000
Date:   Mon, 10 May 2021 11:01:50 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     ilya.lipnitskiy@gmail.com, neil@brown.name,
        gregkh@linuxfoundation.org, vkoul@kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org, kishon@ti.com,
        devicetree@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH RESEND v2 2/6] dt-bindings: phy: mediatek,mt7621-pci-phy:
 add clock entries
Message-ID: <20210510160150.GA202555@robh.at.kernel.org>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
 <20210508070930.5290-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210508070930.5290-3-sergio.paracuellos@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 08 May 2021 09:09:26 +0200, Sergio Paracuellos wrote:
> MT7621 SoC clock driver has already mainlined in
> 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> Hence update schema with the add of the entries related to
> clock. Since until now things were not properly being done
> we mark also 'clock' as required in the binding since this
> will be now the only way to properly retrieve frequency to be
> able to make a correct configuration of the PCIe phy registers.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml     | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
