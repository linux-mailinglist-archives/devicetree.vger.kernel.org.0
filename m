Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A2582853BA
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:15:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727301AbgJFVPK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:15:10 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:40965 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727270AbgJFVPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:15:10 -0400
Received: by mail-ot1-f68.google.com with SMTP id q21so183401ota.8
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:15:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=HGYIv2AU6G8hcb11jN8PweilRadJB+OxU+0ieq8K4l0=;
        b=FUrTbyjZ4a1/mrKFbwAKUJzh6zvCOy73lXlRGCuj71Uo9DC2dHpwqw9BCtSPngr8Ms
         2oPzPXfqAqPkdfkO4lafkX9FYXHAZA2RCQI7TxQ3DlrvCG3i8My7M9SnNLp9zPKi8bf2
         DUvzPp1oCV1GxXB1jcrzosorYRclIc6YulYYDa5Qbc4/reKI/6dp+Ph8Tys+MuW39iXz
         oFP2VI/8VRQIpWGf2u6mkN2p4EP60uWqI/EqnFQ+P99O75EOLbjkJ7G47NaIgS8uzaJG
         1WBdpzJcbEYe+Oazc8R30ScfQ4kNbb8fZj7f6a8VWPtpvCk5DWY0L0LJhpeElFU0pSNw
         /F+A==
X-Gm-Message-State: AOAM531C8q7YNPx+d6J0jyUiuw8syw8cuEtXiI27vlfoR50pE5Nin7/N
        0RNlVjLvb98Zndah8qhfPw==
X-Google-Smtp-Source: ABdhPJxiseZ6WSJ4JafEr4Vo25mS58EcA9DAaXYFrrpEWQMaKwJycEjRJ/62oyy5082H+w5nm6ie9g==
X-Received: by 2002:a05:6830:1091:: with SMTP id y17mr4331385oto.160.1602018909540;
        Tue, 06 Oct 2020 14:15:09 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id r1sm1708993otc.2.2020.10.06.14.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:15:09 -0700 (PDT)
Received: (nullmailer pid 2854702 invoked by uid 1000);
        Tue, 06 Oct 2020 21:15:08 -0000
Date:   Tue, 6 Oct 2020 16:15:08 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MM
Message-ID: <20201006211508.GA2853753@bogus>
References: <20201003224801.164112-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201003224801.164112-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 04 Oct 2020 00:48:01 +0200, Marek Vasut wrote:
> NXP's i.MX8MM has an LCDIF as well.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Guido Günther <agx@sigxcpu.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> ---
>  Documentation/devicetree/bindings/display/mxsfb.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

Though Laurent posted converting this to schema...
