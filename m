Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ABA6613EA8
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 21:03:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbiJaUDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 16:03:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbiJaUDJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 16:03:09 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D34A13F1F
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 13:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1667246524;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=GyQzSTgHMXAqR4GW328JWqSw6Ba5Dp1IwqrsJPnSvqw=;
        b=gm45UDD7UrJ26TNsh7HcjTlh2nJZvMSWSAUj0LbnGA/BG1LUm4P+F/8X4FHYlV2HOLn5Jp
        rg6DTTt+nOqwLnRnFSWo7XY97aOJcfkhxN2tfwOfSNDyVUlgRPRcgajl4kDv6jXFLkouZL
        YdyozdyiKH2B3rdCmETZtQ9t81CBdNc=
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com
 [209.85.160.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-323-CYfCj-KNNMmBVTCnaeAP2g-1; Mon, 31 Oct 2022 16:02:02 -0400
X-MC-Unique: CYfCj-KNNMmBVTCnaeAP2g-1
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-13cc24bcecbso2300129fac.14
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 13:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GyQzSTgHMXAqR4GW328JWqSw6Ba5Dp1IwqrsJPnSvqw=;
        b=PK0kSHrrWSQWrsOvUJ3OsoypA65f5ryfJ/xMZxAvqtgV/ElHGfJeAMaxV9ZRXimMy8
         F4m2LxIxzRp4mOfbZFNh/xisqmGv7M3RlY0Et2k4mJaENt4L2Z5XGLs+i0sUCnxBgHcg
         R4+IrWXoELAmcxRP9pKdqds+xwV0weLcRXr3J0z3QjQ3bnck8zn14quYsKXB7rk6iF6d
         JOKbuRHZNfk4R3db/y35kE0unlL1WjSiah1wv5HG01FdBpG489xpXAurxtmyhCUCdTJX
         XTNMG3o7XNbwsY6Zoe2PCqid/avczsI3JOaY0g0FJsBkzxRSNqvN5z7sVJd1/zZh/Fqc
         D1pQ==
X-Gm-Message-State: ACrzQf1tKapX8dXiBJ3p9CGQLVKPHDVbUwsfo3FVfLvlDEZWtX3r+meJ
        VIY+0WPyLNleL++Q95sc4CtZyFjfgOYDzhUD9habJFemaKRWrIABRSCY5DxFBILr1RV01oUL/NJ
        Q2G0mCTTZkVHGvmnai5qsrw==
X-Received: by 2002:a05:6870:51a:b0:130:ae8d:daaf with SMTP id j26-20020a056870051a00b00130ae8ddaafmr17100870oao.103.1667246521931;
        Mon, 31 Oct 2022 13:02:01 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4COwYawDiGVOrrxMUqz/QkdUPpj62cIx+cSPHKLQLGQk5fYVCCWkgMetIObtdOgQWrNI5yJQ==
X-Received: by 2002:a05:6870:51a:b0:130:ae8d:daaf with SMTP id j26-20020a056870051a00b00130ae8ddaafmr17100841oao.103.1667246521646;
        Mon, 31 Oct 2022 13:02:01 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id o37-20020a05687096a500b00131c3d4d38fsm3497667oaq.39.2022.10.31.13.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 13:02:01 -0700 (PDT)
Date:   Mon, 31 Oct 2022 15:01:58 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     martin.petersen@oracle.com, jejb@linux.ibm.com,
        andersson@kernel.org, vkoul@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v2 09/15] scsi: ufs: ufs-qcom: Remove un-necessary
 WARN_ON()
Message-ID: <20221031200158.ph6f4ucbjhzw5knt@halaney-x13s>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-10-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221031180217.32512-10-manivannan.sadhasivam@linaro.org>
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 31, 2022 at 11:32:11PM +0530, Manivannan Sadhasivam wrote:
> In the reset assert and deassert callbacks, the supplied "id" is not used
> at all and only the hba reset is performed all the time. So there is no
> reason to use a WARN_ON on the "id".
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/ufs/host/ufs-qcom.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 7cd996ac180b..8bb0f4415f1a 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -895,8 +895,6 @@ ufs_qcom_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
>  {
>  	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
>  
> -	/* Currently this code only knows about a single reset. */
> -	WARN_ON(id);
>  	ufs_qcom_assert_reset(host->hba);
>  	/* provide 1ms delay to let the reset pulse propagate. */
>  	usleep_range(1000, 1100);
> @@ -908,8 +906,6 @@ ufs_qcom_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
>  {
>  	struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);
>  
> -	/* Currently this code only knows about a single reset. */
> -	WARN_ON(id);
>  	ufs_qcom_deassert_reset(host->hba);
>  
>  	/*
> -- 
> 2.25.1
> 

