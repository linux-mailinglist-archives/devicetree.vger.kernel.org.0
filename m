Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57D413A949F
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 10:02:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231645AbhFPIEK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 04:04:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231336AbhFPIEJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 04:04:09 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87B2EC061574
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 01:02:03 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id h1so723453plt.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 01:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yOnR+mvHvq0XbGYNaQzXS/E8NUV0fIrwWByQjDfQPHQ=;
        b=ogJdzjZlsAKA4Ejn4ortTl8wrFGVAgL3sehcV4cQWN7YHIf+RZHdXy6bxzWiJDpcmL
         V1dtrQ3b4aOb4SO31cyALXckzBMafRJYGsNpqySCJxefgwNM6MitYkGznpk6cDWlEKc2
         MXVfxJAQcKN3G8XpB2Syl2RXG2F/pIAeS7xOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yOnR+mvHvq0XbGYNaQzXS/E8NUV0fIrwWByQjDfQPHQ=;
        b=OilLFyK4I6ebDNe6qkj4It+9xqDKgAQLJxJmjFNySBSDbhkW0X3Jr5miEjD22s5tNu
         aC5uLanjxv4Q1cNDivtMpzaLeZkV14/fevrYxhlludyuVRlWtA6xPZlx6mw6ffefseqk
         fNEBBf7wSxSjJFsTQ6bTyH55J0Ywp4TSg2zPKIgJncqP+KIIQyFfi0pvsQV9IbwUXiVb
         4hfIBbkdyDkHI+i0ZPKn3IJtQMOLaysHHQ4iowWfYz3lF127jvtiqxWN7f/izLy4eiK0
         tfXENyQ5C4fl1AY3X9gk7iC5fWvZCtcrVbYS1yeENdzxPbLMXFLep9u19fcZfbK8Exng
         GNFA==
X-Gm-Message-State: AOAM531SsHenZefisMMnd/rchaLwmu5tdiNenhF/oP3cMAGaaBmwLkiW
        8oX5gF0JSfuhO2EHNF766C9XUA==
X-Google-Smtp-Source: ABdhPJzobEDwQGUJ4kTYd2EtdaboX/M1rgIePs8vk+Af7VafwTKClGnUPRFRDOQ789Va1PHbWluGcg==
X-Received: by 2002:a17:90a:4216:: with SMTP id o22mr9487241pjg.3.1623830523139;
        Wed, 16 Jun 2021 01:02:03 -0700 (PDT)
Received: from google.com (2001-b011-0003-1f79-f0b4-87ad-2804-77d3.dynamic-ip6.hinet.net. [2001:b011:3:1f79:f0b4:87ad:2804:77d3])
        by smtp.gmail.com with ESMTPSA id h8sm1392639pjf.7.2021.06.16.01.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 01:02:02 -0700 (PDT)
Date:   Wed, 16 Jun 2021 16:01:58 +0800
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Tinghan Shen <tinghan.shen@mediatek.com>
Cc:     robh+dt@kernel.org, matthias.bgg@gmail.com,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        srv_heupstream@mediatek.com, seiya.wang@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Crystal Guo <crystal.guo@mediatek.com>
Subject: Re: [PATCH 01/27] arm64: dts: mt8195: add infracfg_rst node
Message-ID: <YMmv9ih/JPRLd7o0@google.com>
References: <20210615173233.26682-1-tinghan.shen@mediatek.com>
 <20210615173233.26682-2-tinghan.shen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210615173233.26682-2-tinghan.shen@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 16, 2021 at 01:32:08AM +0800, Tinghan Shen wrote:
> From: Crystal Guo <crystal.guo@mediatek.com>
> 
> add infracfg_rst node which is for MT8195 platform
> 
> Signed-off-by: Crystal Guo <crystal.guo@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index 629cd883facf..8cda62f736b3 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -8,6 +8,7 @@
>  
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/reset/ti-syscon.h>
>  
>  / {
>  	compatible = "mediatek,mt8195";
> @@ -273,6 +274,20 @@
>  			};
>  		};
>  
> +		infracfg: syscon@10001000 {
> +			compatible = "mediatek,mt8195-infracfg", "syscon", "simple-mfd";

This block is named infracfg_ao in the datasheet. You seem to rename it
in the clock patch. Maybe you squashed the change into the wrong commit?

> +			reg = <0 0x10001000 0 0x1000>;

The address range matches the datasheet.

> +			#clock-cells = <1>;
> +
> +			infracfg_rst: reset-controller {
> +				compatible = "ti,syscon-reset";
> +				#reset-cells = <1>;
> +				ti,reset-bits = <
> +					0x140 26 0x144 26 0 0 (ASSERT_SET | DEASSERT_SET | STATUS_NONE)
> +				>;
> +			};

This node doesn't seem to be used anywhere. Is it really needed?


ChenYu
