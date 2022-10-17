Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF531601ACE
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbiJQU5a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:57:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbiJQU52 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:57:28 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67A74792D6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1666040168;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=rXBr8UhWuzG7Q4pIpETTeqSZZu42yOXUn7p5mhYwxm8=;
        b=JBXLmD8Eu+0KVIZsZmDaW0tTbOI0wXZOS+cj68eqEEuFMebuaj5B5T99jHpzMhyLEIrc1G
        x5uILyvdcRDTt55YPW+eq7gOgpV74BHCy4qk31I4lheE6F+JwVtmdw2e/KXsuZ/WzVTPmV
        XPmN6ElUvqbP2Oy59E0Nk6G+P5WwBIw=
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-307-XUGmePSuPTaDHKvzlQjcaA-1; Mon, 17 Oct 2022 16:56:06 -0400
X-MC-Unique: XUGmePSuPTaDHKvzlQjcaA-1
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-131e72856e0so4944302fac.9
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rXBr8UhWuzG7Q4pIpETTeqSZZu42yOXUn7p5mhYwxm8=;
        b=k7GPTVzFH4fpgCpN9bUGKXzMwE7NRkbqtb/37bWSV/KSwC3Lknxxb0hpdUgGH+QHsp
         4Qh4dANNcsHDVVGtCszyKyX3In89qGSgf+Yn85AvIS6rNIQyZeiLPUjUYwySe9FCN9lP
         1i1QIIpCiVvdbdO65ClODMLcaaVwyKbv8OMzypu8b+bCwMujzVc+q6pyXEubzPfGODNN
         EEd98JPXXkY+HjRPczKc6Q3gua58Xw65Yu8t6svxpIvIA1VExcdPTOS1AjginYeORvLw
         YXH88ehbVplw6/+0o+eHOKfyouUdpOQo3ciplKpXlushFBwCg+FfkVt1RZayHJASsxGE
         YoZA==
X-Gm-Message-State: ACrzQf2hpZ9k5qw+wb2WtWExDOYK/W1A7UB+l8b55QlfgUOrkpai8xgj
        fi2EjgtE8DX4HwktKGCBYqUSwdje/5RIJe2Gz5XROv0AgO66g/TltM9mIKqeyRb42UokwYILwJG
        ME7eXoSdbc7/T72X+uQvl9A==
X-Received: by 2002:a05:6870:3312:b0:131:d614:d7b8 with SMTP id x18-20020a056870331200b00131d614d7b8mr16913104oae.109.1666040165759;
        Mon, 17 Oct 2022 13:56:05 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6kn5zJ/G+rLyKXP84xesKef8MMWV9UcGhZY7xZ8fRhA955xwbWgCGpBsraXbtRBmBpTQBrgA==
X-Received: by 2002:a05:6870:3312:b0:131:d614:d7b8 with SMTP id x18-20020a056870331200b00131d614d7b8mr16913095oae.109.1666040165584;
        Mon, 17 Oct 2022 13:56:05 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::21])
        by smtp.gmail.com with ESMTPSA id er33-20020a056870c8a100b0011e37fb5493sm5365635oab.30.2022.10.17.13.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:56:05 -0700 (PDT)
Date:   Mon, 17 Oct 2022 15:56:02 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sc8280xp: fix USB1 PHY RX1
 registers
Message-ID: <20221017205602.wc6upnbkhr3ujdhf@halaney-x13s>
References: <20220919094454.1574-1-johan+linaro@kernel.org>
 <20220919094454.1574-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220919094454.1574-3-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 19, 2022 at 11:44:52AM +0200, Johan Hovold wrote:
> The USB1 SS PHY node had the RX1 register block (0x600) replaced with
> RX2 (0xc00).
> 
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index e8905445ca19..9667eb1b7c61 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -1242,7 +1242,7 @@ usb_1_qmpphy: phy-wrapper@8904000 {
>  
>  			usb_1_ssphy: usb3-phy@8903400 {
>  				reg = <0 0x08903400 0 0x100>,
> -				      <0 0x08903c00 0 0x3ec>,
> +				      <0 0x08903600 0 0x3ec>,
>  				      <0 0x08904400 0 0x1f0>,
>  				      <0 0x08903a00 0 0x100>,
>  				      <0 0x08903c00 0 0x3ec>,
> -- 
> 2.35.1
> 

