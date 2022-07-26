Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24630581547
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 16:30:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239356AbiGZOai (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 10:30:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239362AbiGZOaW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 10:30:22 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCE5D205EE
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 07:30:19 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id q18so9991881wrx.8
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 07:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=JobPjdD6vJ/VDnWu8oHv5yp4dObzK5tNuOR/ghdBnKI=;
        b=Gu/hFqLRp5dpHkDb84a6NVXNPj4mBHFYh9UXxry4fHCxIdq2QnGA+toQDpN/WUK0Bk
         CKY+pqRDe6mfUUGq2XefcUEFOmhGy08KIx07GX6QZtOQY/0S1mxTt6nYVpvFPBlgZIBN
         l+W6WqqZzPCZhIbuNmf9rjHyrdzFVj502BwI/Hq9i01BeS3NQkBRDgqll11DbECp9LTM
         lrPfqR14dyGZDqZgxLa3viqs+H7wjnOCZaGRKL8zfK9V2bFYORLJ/3AZx8hMuWSPfiGy
         xZISm29FQGiZ8fWzgCUJ2QlpwoxRG3/hj/VzqPESzdgpYrSm/wxW91YnU6ndXOVpyxkL
         uY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JobPjdD6vJ/VDnWu8oHv5yp4dObzK5tNuOR/ghdBnKI=;
        b=J377svtk/Px6JHlBociwCroYUmgZUGli3JQ5mxXn/A5SC+gAig409fUCBep/S4EEt+
         D3DerX7z3w4gruxMGwoD3DEzkTX50yhQaCmIwAVqpH5h1Vr6NCAtDC8+n2F+gBN/ObUm
         ppUJD1bsDxAxR3ShwOQTPyEH/6P6+rvL/dzeYkuVQiCLtCJblgG1KF9dn3tsAmX1aaUd
         Lq3quzYBs+Ppnlj6hA678eGPb/G59oIMYmF+qvLdfa2CmJmHR2LXiT2RevlQQol0l1HG
         fyL8et3Nrl1C2Sbf2dpqivM/bGShbBQ/EXxb+9CYFwtlgzMKHvPuivHzBExn3g5eT3cJ
         YpOA==
X-Gm-Message-State: AJIora/gnCiSj1XVCkre7EE14U7X6Z8LpIH3imQ6eCHL+f1VQt1bgv3P
        zNAJiihzAwmYaofQbTxbLRMHAg==
X-Google-Smtp-Source: AGRyM1ul/1sqtUk9JnQAWNc6gLoJsKhknZTELQqCWkEsW0c1yYsqa9D5ZNwZHuiPm+nuNTS85IzlKg==
X-Received: by 2002:adf:f245:0:b0:21d:a39a:bed5 with SMTP id b5-20020adff245000000b0021da39abed5mr10446765wrp.508.1658845818074;
        Tue, 26 Jul 2022 07:30:18 -0700 (PDT)
Received: from blmsp ([2001:4090:a243:806e:25e7:daa:8208:ceb])
        by smtp.gmail.com with ESMTPSA id f12-20020a5d568c000000b0021e5cc26dd0sm13106857wrv.62.2022.07.26.07.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 07:30:17 -0700 (PDT)
Date:   Tue, 26 Jul 2022 16:30:16 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Jerome Neanne <jneanne@baylibre.com>
Cc:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org, khilman@baylibre.com,
        narmstrong@baylibre.com, j-keerthy@ti.com, lee.jones@linaro.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 04/11] MAINTAINERS: OMAP2+ support, add
 tps65218-pwrbutton
Message-ID: <20220726143016.lhcccltwbxmjkf3h@blmsp>
References: <20220726103355.17684-1-jneanne@baylibre.com>
 <20220726103355.17684-5-jneanne@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220726103355.17684-5-jneanne@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 26, 2022 at 12:33:48PM +0200, Jerome Neanne wrote:
> From: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> The entry for the pwrbutton driver seems to be missing. Add it to the
> list for OMAP2+ SUPPORT.

sorry, my mistake, I thought it was missing in this listing. Looking at
the history of the driver all the patches were applied in the INPUT
tree. So we can just drop this patch IMHO.

Best,
Markus

> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 64379c699903..67850b321cbb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14704,6 +14704,7 @@ F:	arch/arm/mach-omap2/
>  F:	arch/arm/plat-omap/
>  F:	drivers/bus/ti-sysc.c
>  F:	drivers/i2c/busses/i2c-omap.c
> +F:	drivers/input/misc/tps65218-pwrbutton.c
>  F:	drivers/irqchip/irq-omap-intc.c
>  F:	drivers/mfd/*omap*.c
>  F:	drivers/mfd/menelaus.c
> -- 
> 2.17.1
> 
