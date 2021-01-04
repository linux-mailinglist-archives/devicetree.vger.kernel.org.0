Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B9DF2E97B0
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 15:54:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727030AbhADOxp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 09:53:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726253AbhADOxp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 09:53:45 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F5BDC061794
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 06:53:05 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id d13so32414744wrc.13
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 06:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=to:cc:references:from:subject:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=HAtIHzU9YXuhZVDWQSq0AHxX7Ade0jobNAYTrIOov+c=;
        b=pJhiM7EC4dN2iT0ISUQx5JqPG8ZY3ACJIIGv9zJTTKLVBzC7YV6m1d/5m+RIOcIZ3A
         90vb/WnIZmv4NFR5rLeiwjNB1mNR1ioA0F81iPUXcSQ/aFrnD5PP8+m/6aIp+OHAmNnG
         jYERNcn8dMXhXaJ+4etnqmtLlduCEeQkmjBCnXQ1p3L2PXzB6BMX+ML6zMLyVQIApOaq
         rLTZhfrPSqPhVG6ytuIBlr8PqNYC72YS4F8FnZ9jtomLQ1C7dNDSX+b6ea97mMiyeJuD
         65pHp9dtaQadBu/gFDJflOUzjyHzydfPS4jbnI5iS3D0h+YGjur225qJjqUJUuv6NFEt
         qUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HAtIHzU9YXuhZVDWQSq0AHxX7Ade0jobNAYTrIOov+c=;
        b=EEM5ZOFQPCKQnNUol+OIcWDJ0mK4CqD/4gixZZkDm5MI//W68mChCfgKMr0VXL0icA
         8xQ2DrjARIX4YxnkNJYie9mAdpZu4XySiMvo+2mBYexq0ATglh1UFWLWUBqYnUmT0t70
         5jBP8OF6cTQDMoNyyyMwQGOXFqn5Q313USogGVgMuBtGFGMtoTOiCIacz+6/U1wDMktV
         8idOwWn7vLSkM/GkDiBYmohtKwvmEAN4vrNqejNK+wGg3mUkW50ntpxtx1oOU1TFEqHD
         ETtQWtdQaCulxqbR5usvtshfEqQxuzsPnF+W0enU8kyMhkFwroenJU1+oUIIxeE3tkBC
         wjHQ==
X-Gm-Message-State: AOAM530RGsgQXJmQKeh8izWYVsDPkpnyTBV/IHkhAGanG80x+WqFjyZt
        WCBbOqq35NAzeT1xYwDtDw/wpw==
X-Google-Smtp-Source: ABdhPJzSiDf76pgxkQZeU2oAlwxP1t9slLWuINnvnu/AaUe+1q+tQHfmKAhdcDzEm6EyMxwMP0Eb1g==
X-Received: by 2002:a05:6000:10c4:: with SMTP id b4mr81788248wrx.170.1609771983699;
        Mon, 04 Jan 2021 06:53:03 -0800 (PST)
Received: from [10.44.66.8] ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id o74sm40110727wme.36.2021.01.04.06.53.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 06:53:03 -0800 (PST)
To:     Martin Kepplinger <martin.kepplinger@puri.sm>, robh@kernel.org,
        shawnguo@kernel.org, festevam@gmail.com, catalin.marinas@arm.com,
        will@kernel.org, cdleonard@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, kernel@puri.sm,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Leonard Crestez <leonard.crestez@nxp.com>
References: <20201210100906.18205-1-martin.kepplinger@puri.sm>
 <20201210100906.18205-2-martin.kepplinger@puri.sm>
From:   Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH v3 1/6] arm64: dts: imx8mq: Add NOC node
Message-ID: <5af9ae66-039c-2e94-6b69-d5a6b0f2a0b3@linaro.org>
Date:   Mon, 4 Jan 2021 16:53:03 +0200
MIME-Version: 1.0
In-Reply-To: <20201210100906.18205-2-martin.kepplinger@puri.sm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/20 12:09, Martin Kepplinger wrote:
> From: Leonard Crestez <leonard.crestez@nxp.com>
> 
> Add initial support for dynamic frequency scaling of the main NOC
> on imx8mq.
> 
> Make DDRC the parent of the NOC (using passive governor) so that the
> main NOC is automatically scaled together with DDRC by default.
> 
> Support for proactive scaling via interconnect will come on top.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>

Acked-by: Georgi Djakov <georgi.djakov@linaro.org>

> ---
>   arch/arm64/boot/dts/freescale/imx8mq.dtsi | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index a841a023e8e0..9c9d68a14e69 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1158,6 +1158,28 @@
>   			};
>   		};
>   
> +		noc: interconnect@32700000 {
> +			compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
> +			reg = <0x32700000 0x100000>;
> +			clocks = <&clk IMX8MQ_CLK_NOC>;
> +			fsl,ddrc = <&ddrc>;
> +			operating-points-v2 = <&noc_opp_table>;
> +
> +			noc_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-133M {
> +					opp-hz = /bits/ 64 <133333333>;
> +				};
> +				opp-400M {
> +					opp-hz = /bits/ 64 <400000000>;
> +				};
> +				opp-800M {
> +					opp-hz = /bits/ 64 <800000000>;
> +				};
> +			};
> +		};
> +
>   		bus@32c00000 { /* AIPS4 */
>   			compatible = "fsl,aips-bus", "simple-bus";
>   			reg = <0x32c00000 0x400000>;
> 
