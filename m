Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84FD22E97B7
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 15:54:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727365AbhADOyF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 09:54:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727357AbhADOyE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 09:54:04 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AC8FC061796
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 06:53:24 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id r4so19566572wmh.5
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 06:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=to:cc:references:from:subject:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=4QrXGx7FtAnhRuMnsLMSUk0XbMJdOp5gkDG2dnRIDoA=;
        b=o5Gz6eN5i1fyL8Wfu3Rqh54+fRdg437SvFl08MXBHD0PfO6l3+A/FQh8f6vpv0LkKI
         zsE2ELYpw8at7cWBZKwmhzfdsObHiTBKuReuZdf30q5/xWFubieGgMVUpyA0AF4tTt0v
         YpX6AVn9DHssQc7MI+CvOgR9Ydoeg+bvg3lHN0y/aQrvx3HeJ8cIQybmSFc9czWrfX9Z
         AXM0NNyrshvt+pYKREh9k75hwAAL5H8BZpp7c9tM0daDJl6v5d1So/lueTtmiHhogWks
         7PYBDbUassuCKAPaVpvaozpmrku3OFED1gKeHe8GpvleGrWGCTQm3BAghnZLCCXuqWEA
         LSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4QrXGx7FtAnhRuMnsLMSUk0XbMJdOp5gkDG2dnRIDoA=;
        b=Xam32hIYYuNNuCGQbnYKXOqDOeKOsGlZxISW+BFn/GCIizk1ZVQvr9Q2SsLE7NOiXP
         /6M/3zbzxdwNLF9+kudd/cI0epgeRa4TNNgqPgyJXGd0opQ5ZhkLwvYj5vR4z1QvpMDv
         e5DPI7vEfSDGwgZSBwlva3YlUuurDvskAV4pJG9gnAfe7MAMPg1XlHGcd0qsGSlaAkcK
         TUiUhF49RuB0UPpM6APf8tVMrgPuRBnZmHzqQgX2DzNyDW97/kzytuzWism1a+p/spo8
         JjGqvxy0rQ5eINB9OplYfbwHKfbDSWR343lZzckmnFjtSEmzdMAaVK8Ky6NQm7TyCZDV
         /okA==
X-Gm-Message-State: AOAM532/Sy4MH5PnfPdpX2Ap8XnqOqFnPbFpnVa/+q6msTJE4qlotvqx
        cRaxJcyvb0AnGTBmIZFwRNbX5w==
X-Google-Smtp-Source: ABdhPJwJqolwCfnkrqQvAL2pkxSwTps2tNbc32ivwVDX9myfgp6iupnGflFxhOH7+ygHuidC45wv0w==
X-Received: by 2002:a1c:1d85:: with SMTP id d127mr26688779wmd.39.1609772002972;
        Mon, 04 Jan 2021 06:53:22 -0800 (PST)
Received: from [10.44.66.8] ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id j59sm96795476wrj.13.2021.01.04.06.53.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 06:53:22 -0800 (PST)
To:     Martin Kepplinger <martin.kepplinger@puri.sm>, robh@kernel.org,
        shawnguo@kernel.org, festevam@gmail.com, catalin.marinas@arm.com,
        will@kernel.org, cdleonard@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, kernel@puri.sm,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20201210100906.18205-1-martin.kepplinger@puri.sm>
 <20201210100906.18205-3-martin.kepplinger@puri.sm>
From:   Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH v3 2/6] arm64: dts: imx8mq: Add interconnect provider
 property
Message-ID: <a2e89056-6c49-6513-f350-5d91203f149b@linaro.org>
Date:   Mon, 4 Jan 2021 16:53:24 +0200
MIME-Version: 1.0
In-Reply-To: <20201210100906.18205-3-martin.kepplinger@puri.sm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/20 12:09, Martin Kepplinger wrote:
> Add #interconnect-cells on main &noc so that it will probe the interconnect
> provider.
> 
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>

Acked-by: Georgi Djakov <georgi.djakov@linaro.org>

> ---
>   arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 9c9d68a14e69..3617b7238952 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1163,6 +1163,7 @@
>   			reg = <0x32700000 0x100000>;
>   			clocks = <&clk IMX8MQ_CLK_NOC>;
>   			fsl,ddrc = <&ddrc>;
> +			#interconnect-cells = <1>;
>   			operating-points-v2 = <&noc_opp_table>;
>   
>   			noc_opp_table: opp-table {
> 
