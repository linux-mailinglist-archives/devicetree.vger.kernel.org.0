Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E3333969A7
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 00:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232320AbhEaWU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 18:20:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231978AbhEaWU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 18:20:56 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ABD9C06174A
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 15:19:15 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id u11so13582007oiv.1
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 15:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3NfaX1Gs50T1dQEkCMVbYezKXRTU/K8sNmMT5g1e+S0=;
        b=z72hhuIcDotTdbyU+i4NkteaUZF5sWY5Q+vaQvswPMo/MyvdmDG05GO6BQgvdWxwCT
         QCYJcf5XAGO+W/zvONEYkgppY28mTEHGs3kvdizcCZfu3dfEMgAno9+pugEV2ai3dK3g
         jK5P043UonDK2HqqKjmQ9YZlAQteCOFZJKDXolZk1jRqhpATWytAYQ3tKKdX5oj/yNQ8
         GoW4EusMWx5SikUqpNzwS3zsDhDJi+YZN6GUXp5S9HZoJ5wQZHZFXbuie9x1PATpAXa8
         fMp81n9XUdVeYiSV9sktAkkF9bHDrvKt0rrGMDis+wGGynEFLiMOrYjvlSs2o7YGn+na
         308Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3NfaX1Gs50T1dQEkCMVbYezKXRTU/K8sNmMT5g1e+S0=;
        b=ivV93jamsyiP3KbZearsAum7Z03GmWAqp/CkdGOXnnJvEMwIk0pay32ZBQ1E6M3QyM
         CM0p+yE8TB32DFFQtUs8/hwieDAR6iopA8uHXLQXyvRI487mOPcLt9dt3wxqFhqTh3u3
         IXwcvoKn571r7ioQX2ddFPSPn/ZxwXZmfjYCnmQf8dsN1mtDNmnh3ZFwr4F9LcqOQ2QF
         hWkP2BupgGUlYZ4s1S/NX2ExKlcFWo7iZbRxMwR6b9AkkMCOslaqy/jWV7Fi3kTu8g8c
         0mJw7A0nMCE7EcmVhH6yybUIObJ6eY98Ilzq+UuMBZifJmQGmKNEABv8EpLhymYQwUiv
         ozcA==
X-Gm-Message-State: AOAM5330jBNf7GVRAr0h8NigaRU9GNtC5VFzIWshgJKyGT2atbaALD3q
        yZN1hPXiNRfzLZf2mky67XKKyA==
X-Google-Smtp-Source: ABdhPJz4iomD+lrAyqJOruQG8SLMAYVpdsRqXxOg4zp/AJwWE74pQ/NKURoXiiAlRlyshhp1WUS3ag==
X-Received: by 2002:aca:44a:: with SMTP id 71mr14895139oie.39.1622499554704;
        Mon, 31 May 2021 15:19:14 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 12sm949556ooy.0.2021.05.31.15.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 15:19:14 -0700 (PDT)
Date:   Mon, 31 May 2021 17:19:12 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Sibi Sankar <sibis@codeaurora.org>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
        agross@kernel.org, mani@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: mailbox: Add WPSS client index to
 IPCC
Message-ID: <YLVg4NAoTqEhkOf1@builder.lan>
References: <1619508824-14413-1-git-send-email-sibis@codeaurora.org>
 <1619508824-14413-2-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1619508824-14413-2-git-send-email-sibis@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 27 Apr 02:33 CDT 2021, Sibi Sankar wrote:

> Add WPSS remote processor client index to Inter-Processor Communication
> Controller (IPCC) block.
> 

@Jassi, I took the liberty of picking this through the qcom tree, as it
only relates to the dts and not the driver. Also sent you a patch to
update MAINTAINERS to ensure that you will receive future patches in
dt-bindings:

https://lore.kernel.org/lkml/20210531221730.627149-1-bjorn.andersson@linaro.org/T/#u

Regards,
Bjorn

> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>  include/dt-bindings/mailbox/qcom-ipcc.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/dt-bindings/mailbox/qcom-ipcc.h b/include/dt-bindings/mailbox/qcom-ipcc.h
> index 4c23eefed5f3..eb91a6c05b71 100644
> --- a/include/dt-bindings/mailbox/qcom-ipcc.h
> +++ b/include/dt-bindings/mailbox/qcom-ipcc.h
> @@ -29,5 +29,6 @@
>  #define IPCC_CLIENT_PCIE1		14
>  #define IPCC_CLIENT_PCIE2		15
>  #define IPCC_CLIENT_SPSS		16
> +#define IPCC_CLIENT_WPSS		24
>  
>  #endif
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
