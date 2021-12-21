Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59E7A47C4A4
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 18:05:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230158AbhLURFg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 12:05:36 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:42532 "EHLO
        mail-qt1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbhLURFf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 12:05:35 -0500
Received: by mail-qt1-f175.google.com with SMTP id z9so13457092qtj.9
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 09:05:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UD3qQSG9+U43d10s7E1v5JU3a2kADmbTr1M++9obgSU=;
        b=W6g+Q/Jwd7ES3lG/uWuRptk7mH/aIUIG+gUsxkurdvKdt1G6ehLG6AeSDx4bm3aoba
         5geTR0AIQs2EvA1dhc0YE00LDGkQwiGeXjP3N3JvkYL7qAUdo35Q6PDr1k65cHyV/VYS
         lw3y6i94xBzPmCpZEBobQJ9r7LGbi59eBfesorgyAZG+hdRvp6OPk8iAxeeaONEjp3CT
         hVyk1ykGOwXw9IcjqBFTFmYGkbRrQcjfS/on4BE8osBN16kS+cewNPxsKcY6GP0TyrIy
         HQ/10LNnw8zAiSofds8HhBfikc+aO42HqF1ozFEV0eLeXDfdKnIfnu6R+Bf2ezmI2M5A
         NI3g==
X-Gm-Message-State: AOAM533Ap5LDimm9OxcxzwXx/gG2ZSzFhOZ/KSMiEmheM6fW0JQUo1wv
        TEVwgzhi1mHWsjdCzMfYUg==
X-Google-Smtp-Source: ABdhPJxwCpeMQXrcv6FkLIlRLVZj6Gh3jzfon31mjXnFMG5ZnJF+pY7HtFO2lbRwyThSimUl8wnMuA==
X-Received: by 2002:ac8:5c54:: with SMTP id j20mr3041135qtj.121.1640106335295;
        Tue, 21 Dec 2021 09:05:35 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id s3sm1586354qkp.93.2021.12.21.09.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 09:05:34 -0800 (PST)
Received: (nullmailer pid 1457497 invoked by uid 1000);
        Tue, 21 Dec 2021 17:05:32 -0000
Date:   Tue, 21 Dec 2021 13:05:32 -0400
From:   Rob Herring <robh@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, p.yadav@ti.com
Subject: Re: [PATCHv3 1/2] dt-bindings: spi: cadence-quadspi: document
 "intel,socfpga-qspi"
Message-ID: <YcIJXFVb9xwxTc4c@robh.at.kernel.org>
References: <20211216224902.374403-1-dinguyen@kernel.org>
 <20211216224902.374403-2-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211216224902.374403-2-dinguyen@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Dec 2021 16:49:01 -0600, Dinh Nguyen wrote:
> The QSPI controller on Intel's SoCFPGA platform does not implement the
> CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> results in a crash.
> 
> Introduce the dts compatible "intel,socfpga-qspi" to differentiate the
> hardware.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v3: revert to "intel,socfpga-qspi"
> v2: change binding to "cdns,qspi-nor-0010" to be more generic for other
>     platforms
> ---
>  Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
