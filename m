Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54E2C40EBAC
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 22:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234199AbhIPU1X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 16:27:23 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:41979 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbhIPU1X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 16:27:23 -0400
Received: by mail-ot1-f52.google.com with SMTP id 97-20020a9d006a000000b00545420bff9eso2996449ota.8
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 13:26:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HD82ZaUkEL/jGqs6cNJiZufP4wX0oXzfYNPLdaqJWGA=;
        b=Qmf5QWyJOJu3eCh4oH0uM1acgg1c/R3xT/1VEf2nyeIlnych9X6732UTTRByMQgI89
         VrfIOZCMHIhwXF20sRTVY/5McVAsUKkCjkmWo9vUmhPawXKqHiTUOvPYRydF5tTYx3vb
         7pR2Sn4Bcnjq6Fh8mqENCbyKq1xantq+JBFCHEyjGeuxB03I84D2m0aLLAFpMKc2kigP
         DRNRH9dNM53DNWPkuyQd3U0h+JhyIf0YD9IvN1RLuEUYY0+Jw+s7AXz3Y1omHiUTHpRv
         OIxXInUMh/FVGu3HOJi10Zc44Zeu6ij6uvnn5trWtlVjovRk1dn+QB8xLpRRffy9iK29
         cv0w==
X-Gm-Message-State: AOAM533c8IPdWB21fTUFPXBGt2hZW2cXKw1pCV04IPAcYTBk2E1/7ZBC
        RcOdeFZYE+TaPVhP7369cQ==
X-Google-Smtp-Source: ABdhPJwehMEJ5b4wBo0/7whPyo9DEiTZVzN9eaNO4Z0swv/hrUCTZbu+9KEX9wsIegarG96DvArzOQ==
X-Received: by 2002:a9d:6215:: with SMTP id g21mr6547992otj.116.1631823962254;
        Thu, 16 Sep 2021 13:26:02 -0700 (PDT)
Received: from robh.at.kernel.org (107-211-252-53.lightspeed.cicril.sbcglobal.net. [107.211.252.53])
        by smtp.gmail.com with ESMTPSA id d23sm280650ook.47.2021.09.16.13.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 13:26:01 -0700 (PDT)
Received: (nullmailer pid 1442033 invoked by uid 1000);
        Thu, 16 Sep 2021 20:25:58 -0000
Date:   Thu, 16 Sep 2021 15:25:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Adam Ford <aford173@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Tim Harvey <tharvey@gateworks.com>,
        patchwork-lst@pengutronix.de, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v4 09/18] dt-bindings: power: imx8mm: add defines for VPU
 blk-ctrl domains
Message-ID: <YUOoVv156konko2y@robh.at.kernel.org>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
 <20210910202640.980366-10-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210910202640.980366-10-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Sep 2021 22:26:31 +0200, Lucas Stach wrote:
> This adds the defines for the power domains provided by the VPU
> blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/dt-bindings/power/imx8mm-power.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
