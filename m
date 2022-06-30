Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8968C5625CC
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 00:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbiF3WEO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 18:04:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiF3WEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 18:04:13 -0400
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FCA1564F7
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 15:04:13 -0700 (PDT)
Received: by mail-il1-f169.google.com with SMTP id h20so254039ilj.13
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 15:04:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=s6vayCRK86CE7qgYDkxjb+ihTq54Ky6YWbFQEP1rvh0=;
        b=RJM2Z/eqp0Ixey7cq/udf72xvPm22CmBvhgKKDEEpssbqSkKN84zb8k9JZxniHTxgP
         tFIWNoFe2PnbEi82JbJQU6DJimmfweawN2kGWh3Nqwh3alK+kIB/MExw9NhH/N6q5Q2D
         4AuHqgKayGa6nktg1m47WSjR3I2b9L4vEQB8byhRaF9TQo3/fFPF5sD8I0jXgoioDPf/
         vbneI709ijnNrF2+vKeOooPN2/L4J4KW3VNrDIoHxr+jWnrmAw9c0wkOnaXdTvQITKMN
         X5EwkNK4xz5vBA/eDF6N28/lvi2zeICEOtU8EOVeMhD/Z1w5V8TO/qVo9Osm7EBo5EME
         U72w==
X-Gm-Message-State: AJIora+ciAescdEXyUXiDoFyypfg+mL2Qm1MMZ2ZAsgnF8SkZKsVndWp
        pdBccQRiSe0fP9N+V1tQO86FkJx5ow==
X-Google-Smtp-Source: AGRyM1vW3dsEogT9Co/H9kmqJP0E9h2BYpxtiVWrLbrM0vHhTIpjSAk9Y6napPhEV50x1ZxpZ78c1g==
X-Received: by 2002:a05:6e02:1c27:b0:2d9:4d66:8541 with SMTP id m7-20020a056e021c2700b002d94d668541mr6394281ilh.176.1656626652566;
        Thu, 30 Jun 2022 15:04:12 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id e25-20020a0566380cd900b00339ee768069sm8989348jak.74.2022.06.30.15.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 15:04:12 -0700 (PDT)
Received: (nullmailer pid 3399122 invoked by uid 1000);
        Thu, 30 Jun 2022 22:04:09 -0000
Date:   Thu, 30 Jun 2022 16:04:09 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 2/6] dt-bindings: add power-domain header for rk3588
Message-ID: <20220630220409.GA3396626-robh@kernel.org>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
 <20220623162309.243766-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220623162309.243766-3-sebastian.reichel@collabora.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 23, 2022 at 06:23:05PM +0200, Sebastian Reichel wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> According to a description from TRM, add all the power domains.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 include/dt-bindings/power/rk3588-power.h
> 
> diff --git a/include/dt-bindings/power/rk3588-power.h b/include/dt-bindings/power/rk3588-power.h
> new file mode 100644
> index 000000000000..69f7e9060250
> --- /dev/null
> +++ b/include/dt-bindings/power/rk3588-power.h
> @@ -0,0 +1,69 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license please. It would be nice to get agreement from Rockchip on 
this and *all* DT headers.

> +#ifndef __DT_BINDINGS_POWER_RK3588_POWER_H__
> +#define __DT_BINDINGS_POWER_RK3588_POWER_H__
> +
> +/* VD_LITDSU */
> +#define RK3588_PD_CPU_0		0
> +#define RK3588_PD_CPU_1		1
> +#define RK3588_PD_CPU_2		2
> +#define RK3588_PD_CPU_3		3
> +
> +/* VD_BIGCORE0 */
> +#define RK3588_PD_CPU_4		4
> +#define RK3588_PD_CPU_5		5
> +
> +/* VD_BIGCORE1 */
> +#define RK3588_PD_CPU_6		6
> +#define RK3588_PD_CPU_7		7
> +
> +/* VD_NPU */
> +#define RK3588_PD_NPU		8
> +#define RK3588_PD_NPUTOP	9
> +#define RK3588_PD_NPU1		10
> +#define RK3588_PD_NPU2		11
> +
> +/* VD_GPU */
> +#define RK3588_PD_GPU		12
> +
> +/* VD_VCODEC */
> +#define RK3588_PD_VCODEC	13
> +#define RK3588_PD_RKVDEC0	14
> +#define RK3588_PD_RKVDEC1	15
> +#define RK3588_PD_VENC0		16
> +#define RK3588_PD_VENC1		17
> +
> +/* VD_DD01 */
> +#define RK3588_PD_DDR01		18
> +
> +/* VD_DD23 */
> +#define RK3588_PD_DDR23		19
> +
> +/* VD_LOGIC */
> +#define RK3588_PD_CENTER	20
> +#define RK3588_PD_VDPU		21
> +#define RK3588_PD_RGA30		22
> +#define RK3588_PD_AV1		23
> +#define RK3588_PD_VOP		24
> +#define RK3588_PD_VO0		25
> +#define RK3588_PD_VO1		26
> +#define RK3588_PD_VI		27
> +#define RK3588_PD_ISP1		28
> +#define RK3588_PD_FEC		29
> +#define RK3588_PD_RGA31		30
> +#define RK3588_PD_USB		31
> +#define RK3588_PD_PHP		32
> +#define RK3588_PD_GMAC		33
> +#define RK3588_PD_PCIE		34
> +#define RK3588_PD_NVM		35
> +#define RK3588_PD_NVM0		36
> +#define RK3588_PD_SDIO		37
> +#define RK3588_PD_AUDIO		38
> +#define RK3588_PD_SECURE	39
> +#define RK3588_PD_SDMMC		40
> +#define RK3588_PD_CRYPTO	41
> +#define RK3588_PD_BUS		42
> +
> +/* VD_PMU */
> +#define RK3588_PD_PMU1		43
> +
> +#endif
> -- 
> 2.35.1
> 
> 
