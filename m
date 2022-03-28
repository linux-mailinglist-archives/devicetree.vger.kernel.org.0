Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FD024E8BE7
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 04:09:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232593AbiC1CKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 22:10:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231562AbiC1CKm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 22:10:42 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 247761EC7D
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 19:09:03 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id t4so8038741pgc.1
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 19:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yvXapPqYzElq1fYgdlIr/vuqUeFZA0jI8LMeEGgPqcQ=;
        b=hzFkH4Dt0bG4QB4nuDoGBznHRc2425jzVBZUuzFK0B1Xh623OyRshk5FtU7W2tRHc8
         ZXMPRTiRU6TCOPyLLjCxSwmalnl2W3+Is5PslOeujy6QBwyR5EprL+wFvtER2I57ULMQ
         AZP00TUnW+ogsIPGUvNPW1nYfNld5HhWcYjFjgjLHGqs1QEdG9gYoTqaPevta1kyDgt/
         ciD4tASRA//4+S/ex7DIb9IyNbE3c6Zf8W79hplB1tm60xsLJ5BUoWJFYPP83/m6uRn4
         vPtBwVROoe7CGhklwVz3FYCDDFQhQRXw17in87OMLJqRGyIlKhFiuj6lSZJrbb8gNIHy
         WM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yvXapPqYzElq1fYgdlIr/vuqUeFZA0jI8LMeEGgPqcQ=;
        b=VgJOkTzpL/swF0lQxdBhQx2B5Tjswxkc8Kg62WnO9PFUnbrRlvJDDokhkH6WoglfoE
         98mL/dRquowkNoIRxBFd8W6XMwjJJ+aN5HUgPqCh+S1TcuTEWQyBOc+MdT3WhVfwRfM5
         K/KTdWiEnTXb2S4EkX9iyf+VetAmtZX6UfcqLEJPLJJogwnaGPJCBm3cFvEDcSnth1xn
         59O+ycEGkkRi3V1j9M4J73olydW/13iV7fkd21PdCuS4k3IIHRHvwrcO7rP4VonIWJyd
         Jxb8S7ldsO4r/6TbR0oGMOgFfqVPzs/nohOoGIlFEDWtDxrMThhncYRv20F7yaU1NMhQ
         agnw==
X-Gm-Message-State: AOAM530iCqrDbw992XD8mXsqG8Ph7YbTZOTJi7SAkVJaILa1WrHR0Plf
        8AkWQpAnvqnQstrZagy67kRoGQ==
X-Google-Smtp-Source: ABdhPJz5uvOKpCljPOUZlt+bf8vDiW2zaApYmTdIP/2olLO3lmLicLDouamvSFijCL5pAeI5MwBKIA==
X-Received: by 2002:a63:7d13:0:b0:398:2d7d:cde2 with SMTP id y19-20020a637d13000000b003982d7dcde2mr5525065pgc.376.1648433342678;
        Sun, 27 Mar 2022 19:09:02 -0700 (PDT)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id h190-20020a6383c7000000b003831aa89c45sm5285812pge.42.2022.03.27.19.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Mar 2022 19:09:02 -0700 (PDT)
Date:   Mon, 28 Mar 2022 07:38:52 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] ARM: dts: spear1340: Update serial node properties
Message-ID: <20220328020852.ljbci4l5rv5cdsot@vireshk-i7>
References: <20220326042313.97862-1-singh.kuldeep87k@gmail.com>
 <20220326042313.97862-3-singh.kuldeep87k@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220326042313.97862-3-singh.kuldeep87k@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26-03-22, 09:53, Kuldeep Singh wrote:
> Reorder dma and dma-names property for serial node to make it compliant
> with bindings.
> 
> Fixes: 6e8887f60f60 ("ARM: SPEAr13xx: Pass generic DW DMAC platform data from DT")
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> ---
>  arch/arm/boot/dts/spear1340.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/spear1340.dtsi b/arch/arm/boot/dts/spear1340.dtsi
> index 827e887afbda..13e1bdb3ddbf 100644
> --- a/arch/arm/boot/dts/spear1340.dtsi
> +++ b/arch/arm/boot/dts/spear1340.dtsi
> @@ -134,9 +134,9 @@ serial@b4100000 {
>  				reg = <0xb4100000 0x1000>;
>  				interrupts = <0 105 0x4>;
>  				status = "disabled";
> -				dmas = <&dwdma0 12 0 1>,
> -					<&dwdma0 13 1 0>;
> -				dma-names = "tx", "rx";
> +				dmas = <&dwdma0 13 0 1>,
> +					<&dwdma0 12 1 0>;
> +				dma-names = "rx", "tx";
>  			};
>  
>  			thermal@e07008c4 {

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
