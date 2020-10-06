Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B33C2853B3
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:12:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727333AbgJFVMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:12:38 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:36097 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727270AbgJFVMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:12:38 -0400
Received: by mail-ot1-f66.google.com with SMTP id 60so214141otw.3
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=bAwrGjchLp0CZpRXaRU9XE6ygfBYEswSSNSZkgApeBc=;
        b=K1zgb0FUU7nfQ2We3abo4+zhEtp83pVOywercqYEOAg10AwJ9bDa/jPuf2tMaVA4QZ
         uLyomZbi9qfhnjTh1BKyg2O1YiyaxzfY91PjcebI5Ntx8CkA1sJJxsRV7+XDo2tQte1X
         i4k7NR57t9LcNL7mnorKE5kLdEnxapiieUey0bqEC3oBv5aIAQr5Q4kj5K87zWVPKYwt
         T8LvvCToeqaLsoDmm95E3TZGGnJ6n955IujsMBD/WpbHcbKaKuMOafKO7w/37raRuce+
         mxRpWMX29Xcmf+iLUNMEvLmkNXbspSl737zO8z45L7i9F9YBFcA+JfPbQuMXeu162zbz
         VNJA==
X-Gm-Message-State: AOAM530tly78t1t6DE00gv6AUWCbRwRYvHiDoXL8RCUqSoy68VHDmsgm
        6oWpoY5fQvoq0E9NEHzpy/AhiIHf/T/z
X-Google-Smtp-Source: ABdhPJxGWEkqeN1gc26aFssNRziC7vdGcZXdod2C6gAa0GIw7W5o0ppnq2u6S5Lo85YcbO11VFRqfA==
X-Received: by 2002:a9d:3ee5:: with SMTP id b92mr4236403otc.156.1602018757192;
        Tue, 06 Oct 2020 14:12:37 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f29sm87432ook.44.2020.10.06.14.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:12:36 -0700 (PDT)
Received: (nullmailer pid 2850660 invoked by uid 1000);
        Tue, 06 Oct 2020 21:12:35 -0000
Date:   Tue, 6 Oct 2020 16:12:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/5] dt-bindings: reset: imx8mm: Add media blk_ctl reset
 IDs
Message-ID: <20201006211235.GA2850579@bogus>
References: <20201003224555.163780-1-marex@denx.de>
 <20201003224555.163780-3-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201003224555.163780-3-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 04 Oct 2020 00:45:53 +0200, Marek Vasut wrote:
> These will be used by the imx8mm for blk_ctl driver.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Dong Aisheng <aisheng.dong@nxp.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Guido Günther <agx@sigxcpu.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> ---
>  include/dt-bindings/reset/imx8mm-reset.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/reset/imx8mm-reset.h
> 

Acked-by: Rob Herring <robh@kernel.org>
