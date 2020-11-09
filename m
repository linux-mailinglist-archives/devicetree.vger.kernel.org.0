Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE2812AC5FE
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 21:34:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729493AbgKIUeM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 15:34:12 -0500
Received: from mail-oo1-f65.google.com ([209.85.161.65]:40342 "EHLO
        mail-oo1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726952AbgKIUeM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 15:34:12 -0500
Received: by mail-oo1-f65.google.com with SMTP id t142so2528794oot.7
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 12:34:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NHe/YKKLkiDEZ7nGp75buZGJDo2ec902LS2CTmKBKoA=;
        b=JLMC/EfnMO+ZajiOY5TBnHp5rN2J2dDkpPfC0Ewiu5URbyooGDplWYZN98qb4XIP1B
         NY0pmUmwBGtZ7B3Ct/e3BHrOBLRhO44phVOAlrCjEYX8t+tk4WtcHxe+cwYFJs8t8Rg6
         4EJkxuQMlooY7PVp2xJDiRT6aKjvUhQLugT5qCjCyWRsTPdUsoRptUCbSNUmsVKEohn0
         fbIYd5MYMTwjd94tFVIHnZd5HqoaZ7Bl/PxcYEDu5MCtqNSu1rzvFdQSGoXc6uQ2H5nB
         Pxa/fzGZC2855UkuRuVz6xrlhwQazmTavoU2Vq5/gnlc1VndwTIIVFzcCmVJf9jeOjLY
         uYbA==
X-Gm-Message-State: AOAM530BFAioXqJ7zflx2mlC3LPhHZm2YrbefCCcEVuPdEC/rD2KJY7U
        22RVqJSaFceVyC3zsr6JWg==
X-Google-Smtp-Source: ABdhPJytSj7PsZJKubDiEa2l+CRdmSFDKVvzu6ZqxWgLQLJIpUBrZMgnCHKxf3SWVV/6+1doY8VsCQ==
X-Received: by 2002:a4a:d192:: with SMTP id j18mr10708331oor.93.1604954051740;
        Mon, 09 Nov 2020 12:34:11 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d10sm874013oic.11.2020.11.09.12.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 12:34:11 -0800 (PST)
Received: (nullmailer pid 1714959 invoked by uid 1000);
        Mon, 09 Nov 2020 20:34:10 -0000
Date:   Mon, 9 Nov 2020 14:34:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>, kernel@pengutronix.de,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 10/13] dt-bindings: add defines for i.MX8MM power
 domains
Message-ID: <20201109203410.GA1714905@bogus>
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
 <20201105174434.1817539-11-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201105174434.1817539-11-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 05 Nov 2020 18:44:31 +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v2: drop defines for power-domains with blk-ctl for now
>     as those need more work to enable.
> ---
>  .../devicetree/bindings/power/fsl,imx-gpcv2.yaml |  2 ++
>  include/dt-bindings/power/imx8mm-power.h         | 16 ++++++++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 include/dt-bindings/power/imx8mm-power.h
> 

Acked-by: Rob Herring <robh@kernel.org>
