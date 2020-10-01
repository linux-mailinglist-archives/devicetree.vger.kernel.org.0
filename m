Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CC5C27FBF4
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 10:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731365AbgJAIxN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 04:53:13 -0400
Received: from mail-ej1-f67.google.com ([209.85.218.67]:33385 "EHLO
        mail-ej1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731134AbgJAIxN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Oct 2020 04:53:13 -0400
Received: by mail-ej1-f67.google.com with SMTP id j11so6925794ejk.0
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 01:53:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4jzLSUIj5RzvTVUjJhGV7IcS8dv7BTGe66qJhsTjcb0=;
        b=UrD00SVF7dmk7ly7IWst7Q003Qr7LSLoEPtocKF+OFatJM7rupM9F8wax1EXbuiIuv
         jimteOL4ZrG5rZQ6ZC5Ypmn81kg8tJLwBzeqPfKHCR0yUTMA1h+tPK35Rdr31E+s1mFc
         1sdZIROUU+VJNA3jT5hIEDMDzyDdCkLugP/jD6HrsU6O5Sw8AkRxRzrcMiCT844BYCiK
         fdqDAwwLS1mFEJwu63dZ3QEtIi5ISP6AF46/jnet8+n4ReHPnCasP0kBLUZ468xXoBLS
         +W/uZZj4dZQg+eytEbvtHUrT9jjPAnkwwOpjAW5NubMhAVn8hALZgDlZSEMhG2rvhr3U
         3yCQ==
X-Gm-Message-State: AOAM530+3Jk1h7EqBmWT2YVuBu7fL+pw6mY4k2n9pPratcf615zKS5Ea
        vjdLTwbqUjB8m72YCJaMrVE=
X-Google-Smtp-Source: ABdhPJz7gaUKhwrXnyKF/OpaIR7U7dJBq8Pzz/giDbChiTHf9tgwuRV1H2f12TfDNkS2+Uv5WIiYww==
X-Received: by 2002:a17:906:586:: with SMTP id 6mr7228405ejn.315.1601542391395;
        Thu, 01 Oct 2020 01:53:11 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id m6sm3645940ejb.85.2020.10.01.01.53.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 01 Oct 2020 01:53:10 -0700 (PDT)
Date:   Thu, 1 Oct 2020 10:53:08 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
Message-ID: <20201001085308.GB15804@kozik-lap>
References: <20200930155418.535857-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200930155418.535857-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 05:54:18PM +0200, Lucas Stach wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> According to the documents, the i.MX8M-Mini features a GC320 and a
> GCNanoUltra GPU core. Etnaviv detects them as:
> 
> 	etnaviv-gpu 38000000.gpu: model: GC600, revision: 4653
> 	etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> 
> This seems to work fine more or less without any changes to the HWDB,
> which still might be needed in the future to correct some features,
> etc.
> 
> [lst]: Added power domains and switched clock assignments to the
>        new clock defines used for the composite clocks, instead of
>        relying on the backwards compat defines.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> This patch depends on the power domain support for i.MX8MM, as the
> GPUs are in a invalid state (which might lead to full system lockups)
> if they are not properly powered on via the power sequencing
> implemented in the GPCv2 driver.
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 39 +++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
