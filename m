Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 019864BD59C
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 06:46:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344577AbiBUFgb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 00:36:31 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344569AbiBUFga (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 00:36:30 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E8014AE1F
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 21:36:08 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id 27so8136581pgk.10
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 21:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EAQyTnkUAM1IyjIOYRpB8FD6IRTMq3X88oxk+zMSmuw=;
        b=HGX6JqZPd7SOhy7rGlrb+9QbVSbS8V8qseTxZvNxl2bz6WJXcFhPXCcrBaNKCsYMZy
         k91+IS6zV/GAPkDueN1i+jCDQ7bzLTgPQBCZTVgycMH/seYvMVUZrGZ+t3oefUnZVtuM
         nvQgi5b3KlzMgHuV7+AhT5UUuUc5FmEbcGANWBa/54/Oa8eyUIq2P0Eqd4jF0Rvw4MRk
         LbUx2/7cJFtPncbG8fxUOaPFnKbf/XyzXxYu+q02Fo6Iau/4EGz9lQ5kPPhJh4Hg9ejq
         oR5hyuuPCQnb8kAWw1qSNOv3KyoIDjNibV/T1ZayhSGDefjWPKJwX1lM+H+329pnRM+z
         E/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EAQyTnkUAM1IyjIOYRpB8FD6IRTMq3X88oxk+zMSmuw=;
        b=lpJ1QsdUe+ezq/V8pU7WZ4kC0tSWYKfY1Q3ZeJvihrZoK7hTLtakzAQRNJ6rQ+felO
         ofYBZxVNz7t2t+0wKAOHNq1e/m14+yLrq6szR+X9ASoLlPEwM0upuxOku8sRtlBxkiAB
         nHvwoZrJhjkD/6OaMx/s6fK1eELdprWihIM+BacwF/I3ARlovDlQyYqAXacPwh3uldES
         QiImw24mDt7ZbNjUHqP4ppgSZo5Jxz+9SMTUKm8XC1y+oDLUn8qAFigIBa1AivxQqTf+
         8YFJ2Vbo+qyOjQSzhIVcLKlqgXxaMkl3GQ8TaKTiNnffLCyjsj4M/3M/f6exW6Tni4Pv
         sQWQ==
X-Gm-Message-State: AOAM5335SKqR/7U4hn/NLuc9aHgN3aW6KvAJI57Nk6URdGLOJau3T+1Y
        CvRsXt+HQYsEThW/jyVTQo5z
X-Google-Smtp-Source: ABdhPJyWPfzuqcZjoJhZxxBokayrbHM72NFJNCELyFIV5od8JvOEyY9VZKHm9DCOUQ3CewuEaVvnSw==
X-Received: by 2002:a05:6a00:c95:b0:4e1:1f5a:35cf with SMTP id a21-20020a056a000c9500b004e11f5a35cfmr18794483pfv.56.1645421767940;
        Sun, 20 Feb 2022 21:36:07 -0800 (PST)
Received: from thinkpad ([220.158.158.223])
        by smtp.gmail.com with ESMTPSA id u6sm588982pfk.203.2022.02.20.21.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Feb 2022 21:36:07 -0800 (PST)
Date:   Mon, 21 Feb 2022 11:06:03 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        jassisinghbrar@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 7/7] clk: qcom: Add SDX65 APCS clock controller support
Message-ID: <20220221053603.GB15108@thinkpad>
References: <1645420953-21176-1-git-send-email-quic_rohiagar@quicinc.com>
 <1645420953-21176-8-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1645420953-21176-8-git-send-email-quic_rohiagar@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 10:52:33AM +0530, Rohit Agarwal wrote:
> Update APCS Kconfig to reflect support for SDX65
> APCS clock controller.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  drivers/clk/qcom/Kconfig | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 5159a1d..a2fa9af 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -55,13 +55,13 @@ config QCOM_CLK_APCC_MSM8996
>  	  drivers for dynamic power management.
>  
>  config QCOM_CLK_APCS_SDX55
> -	tristate "SDX55 APCS Clock Controller"
> +	tristate "SDX55 and SDX65 APCS Clock Controller"
>  	depends on QCOM_APCS_IPC || COMPILE_TEST
>  	help
> -	  Support for the APCS Clock Controller on SDX55 platform. The
> +	  Support for the APCS Clock Controller on SDX55, SDX65 platform. The
>  	  APCS is managing the mux and divider which feeds the CPUs.
>  	  Say Y if you want to support CPU frequency scaling on devices
> -	  such as SDX55.
> +	  such as SDX55, SDX65.
>  
>  config QCOM_CLK_RPM
>  	tristate "RPM based Clock Controller"
> -- 
> 2.7.4
> 
