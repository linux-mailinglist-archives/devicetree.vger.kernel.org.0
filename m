Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A38014205BD
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 08:14:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232749AbhJDGQA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 02:16:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232745AbhJDGP6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 02:15:58 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2D63C06178A
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 23:14:08 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id v11so2945776pgb.8
        for <devicetree@vger.kernel.org>; Sun, 03 Oct 2021 23:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=l1url66F0t/sCmMZqx5y0fYEDd1yfCg2fr6WFfRQ3Fw=;
        b=sEc2mG/IcBMiant54vsDVEnr8ub9YZTmeOslKiDh2u/Y77UCVeiXyrf1pwXLdAOTpg
         KTsglb+CAiSbLenzU3T/Us7uAipU7l+BKt7fjNtHDptylOtGdJ7kG4cAuXwaVov+q6bk
         deNIPO9tPs+4kvzxr1eSqduYV4/aFuuf7keyx4w0icaYHiO3+PKHkx8wuje8P+bZ54Rl
         Tdk3rXUAZEx86R8oViottUEtZK04mxPhhlClibA+mGNtqfNuiS5W1AbDKwDQ1+0aivOQ
         SmHNIfqZ58LSEqLn7bmZ6W9hYAOlOsjE4ESgYgVPS0LwLI33X/wD6KwLTpbX2L7KQRjC
         44aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=l1url66F0t/sCmMZqx5y0fYEDd1yfCg2fr6WFfRQ3Fw=;
        b=hnq/VN+YkGXoPfnBISFkI5/giLKiN0aVhPI7b5KnNHCH+wMgCCWBSC8hTjBtp783wr
         3y6d/tgu/NhzbgFZX3BTLZIkQXoaXiV5oJYBFR7aMsXWlIJzmp4ND9G61+Zjd4ZVl/gM
         8/pkuOYLkmtq5Kpq4HBYnVV/s/Yq2zcXvYYwociK6HfvoUvW64FVjIhebs5I65odF8U2
         QS50JLCAVwR2qwFA9al4/Q6tKnVGkwrIIEqOr9BTlhPrlAd2+LYNJsF/TPttdPc9I39D
         AHo+x94DKiiyEA8Rp+eWoQj3WPkZrhWggMZt0YL6S1VQLfEqravGeGJqLVq71K6mvZ33
         MtaA==
X-Gm-Message-State: AOAM533m/czsmUvFbKeq1+XIzL20f/OvbhkBYnxnwOfAWjUY1r0rjX8x
        eTg3nuPv8iDwoqJu6vXfuPyeoQ==
X-Google-Smtp-Source: ABdhPJxW9fa52UROhfFkyQi74ZWZotCpSVB8zQ3pXKHnyqZiheRubcZmxJTYmBrc6vPNc0b49P1zeA==
X-Received: by 2002:a62:5185:0:b0:43e:79c:6b6 with SMTP id f127-20020a625185000000b0043e079c06b6mr23361454pfb.79.1633328048527;
        Sun, 03 Oct 2021 23:14:08 -0700 (PDT)
Received: from localhost ([122.171.247.18])
        by smtp.gmail.com with ESMTPSA id q27sm6004041pfg.125.2021.10.03.23.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Oct 2021 23:14:08 -0700 (PDT)
Date:   Mon, 4 Oct 2021 11:44:06 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: spear13xx: Drop malformed 'interrupt-map' on
 PCI nodes
Message-ID: <20211004061406.tyhldt4f26zilaaw@vireshk-i7>
References: <20210928192143.1841497-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210928192143.1841497-1-robh@kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28-09-21, 14:21, Rob Herring wrote:
> The spear13xx PCI 'interrupt-map' property is not parse-able.
> '#interrupt-cells' is missing and there are 3 #address-cells. Based on the
> driver, the only supported interrupt is for MSI. Therefore, 'interrupt-map'
> is not needed.
> 
> Cc: Viresh Kumar <vireshk@kernel.org>
> Cc: Shiraz Hashim <shiraz.linux.kernel@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm/boot/dts/spear1310.dtsi | 6 ------
>  arch/arm/boot/dts/spear1340.dtsi | 2 --
>  2 files changed, 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/spear1310.dtsi b/arch/arm/boot/dts/spear1310.dtsi
> index c4b49baf9804..2f746a9428a7 100644
> --- a/arch/arm/boot/dts/spear1310.dtsi
> +++ b/arch/arm/boot/dts/spear1310.dtsi
> @@ -82,8 +82,6 @@ pcie0: pcie@b1000000 {
>  			reg = <0xb1000000 0x4000>, <0x80000000 0x20000>;
>  			reg-names = "dbi", "config";
>  			interrupts = <0 68 0x4>;
> -			interrupt-map-mask = <0 0 0 0>;
> -			interrupt-map = <0x0 0 &gic 0 68 0x4>;
>  			num-lanes = <1>;
>  			phys = <&miphy0 1>;
>  			phy-names = "pcie-phy";
> @@ -101,8 +99,6 @@ pcie1: pcie@b1800000 {
>  			reg = <0xb1800000 0x4000>, <0x90000000 0x20000>;
>  			reg-names = "dbi", "config";
>  			interrupts = <0 69 0x4>;
> -			interrupt-map-mask = <0 0 0 0>;
> -			interrupt-map = <0x0 0 &gic 0 69 0x4>;
>  			num-lanes = <1>;
>  			phys = <&miphy1 1>;
>  			phy-names = "pcie-phy";
> @@ -120,8 +116,6 @@ pcie2: pcie@b4000000 {
>  			reg = <0xb4000000 0x4000>, <0xc0000000 0x20000>;
>  			reg-names = "dbi", "config";
>  			interrupts = <0 70 0x4>;
> -			interrupt-map-mask = <0 0 0 0>;
> -			interrupt-map = <0x0 0 &gic 0 70 0x4>;
>  			num-lanes = <1>;
>  			phys = <&miphy2 1>;
>  			phy-names = "pcie-phy";
> diff --git a/arch/arm/boot/dts/spear1340.dtsi b/arch/arm/boot/dts/spear1340.dtsi
> index 1a8f5e8b10e3..827e887afbda 100644
> --- a/arch/arm/boot/dts/spear1340.dtsi
> +++ b/arch/arm/boot/dts/spear1340.dtsi
> @@ -47,8 +47,6 @@ pcie0: pcie@b1000000 {
>  			reg = <0xb1000000 0x4000>, <0x80000000 0x20000>;
>  			reg-names = "dbi", "config";
>  			interrupts = <0 68 0x4>;
> -			interrupt-map-mask = <0 0 0 0>;
> -			interrupt-map = <0x0 0 &gic 0 68 0x4>;
>  			num-lanes = <1>;
>  			phys = <&miphy0 1>;
>  			phy-names = "pcie-phy";

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
