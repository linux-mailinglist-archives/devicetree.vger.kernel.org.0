Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41245573819
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 15:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230303AbiGMN4M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 09:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236377AbiGMN4L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 09:56:11 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A88752CE08
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 06:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1657720568;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=IMCa17u/KRBIFaG4KsLRIkbEcc9LdlhpCTT849G+Kvc=;
        b=Js+WY730++hxI99wvFj7mGDWYalICxIgHTgUSWrymHRD4UqewKFNFHeK83b7j7K2GK3syM
        +10wzadBs3N64lfr3HYiQuoy07YTNO9diZQyn09PfcZKKX7Lvxp9mapsFJt6fbyIkmxfdx
        O710G+KCuh5pcYlVetjTrUpFKlWz+Ds=
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com
 [209.85.160.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-296-EMXwHpQoOiWB7uma1vmbhQ-1; Wed, 13 Jul 2022 09:56:07 -0400
X-MC-Unique: EMXwHpQoOiWB7uma1vmbhQ-1
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-10c30284e52so5975534fac.21
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 06:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IMCa17u/KRBIFaG4KsLRIkbEcc9LdlhpCTT849G+Kvc=;
        b=Dnmtnxpl8m/roZ7jtpOLJ3NNxRr8/jD3tUKVIVy5NSGmh4rnUhFn1JsAE5MyYXsqU6
         k0i9izDFDPgleP0XNDolNfZ6nmTZJ78J3jjoTDmzmF2c2zGk63l8FoYMOpqzKD/EVsbC
         +UJp2wR7iM75ZHlToNKAJkgYN1M4E6YLUPKZAYBjgcbEv6ztRsIL/b/loymifXlnTV6D
         EY8laj95DcUlnalpDaCeIPYimdLV3D55dMcWMcUInNejcU1pDvijjmvkvT9c6h3DnHDh
         UNEQ/f8mQZIU+2ft1EkemYe3bWzoYnwuiniBD1FLyIi+S4K7rpdM9Y2XHAoA7Xh6ccCU
         BV0w==
X-Gm-Message-State: AJIora9LfAwUInDFYuCNZAqw85fUszy+thZAt8HHHe2e4VWaUFHiq4UK
        SkD5dosImmGbehEf8idpPbQbtuo74+zho2bPOpplSugeCzgHiWXMV1KMJvFmd1K2xjqXVwLy8WC
        yulfpTTgziHcHDiE0pHVF5Q==
X-Received: by 2002:a05:6808:209a:b0:33a:537:6d30 with SMTP id s26-20020a056808209a00b0033a05376d30mr4804580oiw.294.1657720566287;
        Wed, 13 Jul 2022 06:56:06 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vuo5XeROM7lZoIMaa90JjCQfQyQRAPg6yPHfeiuOg8/rxYEdmyhZRf05BhrhKk9Hr1yX1uog==
X-Received: by 2002:a05:6808:209a:b0:33a:537:6d30 with SMTP id s26-20020a056808209a00b0033a05376d30mr4804558oiw.294.1657720566055;
        Wed, 13 Jul 2022 06:56:06 -0700 (PDT)
Received: from halaneylaptop ([2600:1700:1ff0:d0e0::2e])
        by smtp.gmail.com with ESMTPSA id f10-20020a4ace8a000000b0035ef3da8387sm4791255oos.4.2022.07.13.06.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 06:56:05 -0700 (PDT)
Date:   Wed, 13 Jul 2022 08:56:03 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     vkoul@kernel.org, agross@kernel.org, bjorn.andersson@linaro.org,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        quic_plai@quicinc.com, bgoswami@quicinc.com, perex@perex.cz,
        tiwai@suse.com, srinivas.kandagatla@linaro.org,
        quic_rohkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org
Subject: Re: [PATCH] soundwire: qcom: Update error prints to debug prints
Message-ID: <20220713135603.4vkyofw6x4mldxzp@halaneylaptop>
References: <1657714921-28072-1-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1657714921-28072-1-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A couple of drive by nits:

On Wed, Jul 13, 2022 at 05:52:01PM +0530, Srinivasa Rao Mandadapu wrote:
> Upadte error prints to debug prints to avoid redundant logging in kernel
> boot time, as these prints are informative prints in irq handler.

s/Upadte/Update/

> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---
>  drivers/soundwire/qcom.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
> index 9df970e..a4293d0 100644
> --- a/drivers/soundwire/qcom.c
> +++ b/drivers/soundwire/qcom.c
> @@ -573,11 +573,10 @@ static irqreturn_t qcom_swrm_irq_handler(int irq, void *dev_id)
>  				break;
>  			case SWRM_INTERRUPT_STATUS_NEW_SLAVE_ATTACHED:
>  			case SWRM_INTERRUPT_STATUS_CHANGE_ENUM_SLAVE_STATUS:
> -				dev_err_ratelimited(swrm->dev, "%s: SWR new slave attached\n",
> -					__func__);
> +				dev_dbg(swrm->dev, "%s: SWR new slave attached\n", __func__);

There's no need for __func__ usage with dev_dbg() when giving +f flag
when enabling adds this for you!

With those changes feel free to add:

    Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

Thanks,
Andrew

>  				swrm->reg_read(swrm, SWRM_MCP_SLV_STATUS, &slave_status);
>  				if (swrm->slave_status == slave_status) {
> -					dev_err(swrm->dev, "Slave status not changed %x\n",
> +					dev_dbg(swrm->dev, "Slave status not changed %x\n",
>  						slave_status);
>  				} else {
>  					qcom_swrm_get_device_status(swrm);
> -- 
> 2.7.4
> 

