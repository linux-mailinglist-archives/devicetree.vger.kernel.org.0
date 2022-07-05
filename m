Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FA4A5674AF
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 18:44:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233026AbiGEQon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 12:44:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231953AbiGEQol (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 12:44:41 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA10F13EA2
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 09:44:40 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id o5-20020a17090a3d4500b001ef76490983so8627507pjf.2
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 09:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eLgml7wSqf63i8QKqavHdfBKu65SGTRMU0zAE0A8Gro=;
        b=L3PxmXdaLTjNaaXfqG64jVu2kWycf/WdmNEvgUeUz8ylOX7RH4pvRAEwyG479e9en/
         bDOh0IpGIbpA4za5jmhUd7zLwJo6RzCX9wzPW83GHWzjKA3a0bRVzsp4QZ+5UTMnTXw+
         4Fh95neopPitrCv8hR9He6fj5HhCx/h2dUDMs56SF4Y3HyRfnGqUSvJk3zVMu0HG+tRK
         vJqhxMt2q3XYvuCrzTLwivkxsvuY+0lgIkJQ9m0jMsxtQkyAYaxJkdppeutZDcKWHeg8
         Fjyk+Ql5yUg+L45MlEpE8EaxPj5AtXlBWBmi73+O2lrXoz7sUt9mofgyxhSG1f7kzUWQ
         MDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eLgml7wSqf63i8QKqavHdfBKu65SGTRMU0zAE0A8Gro=;
        b=f/cT6XOfo7vBdCWO9KJiD/Eh6Ge2fx/Zx7SAe09xylRiILelMTkiPElTOHV/Jju0lS
         vDCr176JIbTSfE9Yi5AdcLkfYN4sQNNgCnjK32bXbx7yFxC3HUAvWQpEGyvhskhtV5+J
         4hgLwME45IatVbUgQHOWJdBQnmxcNwpIfi00To8e0G5on9GZSm+T3kEKJ879Y8Mn/uPq
         0IJqgy+lsfnnEJcRtPvSpk2h2oh5XURC24W14zbyJQuZ/Hk6xhRYi4RORHtbWHlpXXMU
         FRyjYz36L4tsjkLPhHAOBavsWfUrqnmGmkPUqSJxVNnza43nZdXf9swItTzqJcnDFoWA
         jR9A==
X-Gm-Message-State: AJIora+9zesRhVsIuWnoIa7qNGaSVJEJj4XoQVY6I9TdJiQkcwS+FbJv
        rJiOylkx7GJThtXRb2zil1xVoA==
X-Google-Smtp-Source: AGRyM1vIEL7g2JbVjG7B+hWQi1J4TzibjdTDXl464exty9BLy/HIy5ENYXacjU2ODoDjd3/7/Hwdsw==
X-Received: by 2002:a17:90b:3d81:b0:1ef:a950:a0cd with SMTP id pq1-20020a17090b3d8100b001efa950a0cdmr404122pjb.43.1657039480255;
        Tue, 05 Jul 2022 09:44:40 -0700 (PDT)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id m17-20020a170902db1100b0016a275623c1sm16071929plx.219.2022.07.05.09.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 09:44:39 -0700 (PDT)
Date:   Tue, 5 Jul 2022 10:44:37 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Suman Anna <s-anna@ti.com>, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] remoteproc: pru: Add support for various PRU
 cores on K3 AM62x SoCs
Message-ID: <20220705164437.GA2443558@p14s>
References: <20220602101920.12504-1-kishon@ti.com>
 <20220602101920.12504-4-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220602101920.12504-4-kishon@ti.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 02, 2022 at 03:49:20PM +0530, Kishon Vijay Abraham I wrote:
> The K3 AM62x family of SoC has one PRUSS-M instance and it has two
> Programmable Real-Time Units (PRU0 and PRU1). This does not support
> Industrial Communications Subsystem features like Ethernet.
> 
> Enhance the existing PRU remoteproc driver to support the PRU cores
> by using specific compatibles. The initial names for the firmware
> images for each PRU core are retrieved from DT nodes, and can be adjusted
> through sysfs if required.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/remoteproc/pru_rproc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/remoteproc/pru_rproc.c b/drivers/remoteproc/pru_rproc.c
> index 1777a01fa84e..128bf9912f2c 100644
> --- a/drivers/remoteproc/pru_rproc.c
> +++ b/drivers/remoteproc/pru_rproc.c
> @@ -897,6 +897,7 @@ static const struct of_device_id pru_rproc_match[] = {
>  	{ .compatible = "ti,j721e-pru",		.data = &k3_pru_data },
>  	{ .compatible = "ti,j721e-rtu",		.data = &k3_rtu_data },
>  	{ .compatible = "ti,j721e-tx-pru",	.data = &k3_tx_pru_data },
> +	{ .compatible = "ti,am625-pru",		.data = &k3_pru_data },

I have applied this set.

Thanks,
Mathieu

>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, pru_rproc_match);
> -- 
> 2.17.1
> 
