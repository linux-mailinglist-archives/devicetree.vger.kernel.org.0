Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 484174FE83E
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 20:51:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352109AbiDLSxe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 14:53:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346082AbiDLSxd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 14:53:33 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF0455D5E4
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 11:51:14 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-df02f7e2c9so21682634fac.10
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 11:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7F3VAQ1QHUHvdbm5KEmjYRFlzYw20eZc2U1u5ZXGarQ=;
        b=W7CniYyt9A3iNGpo8z5f93wVR9XVnXb/UZyvMAOs6M1bwiWHMlYWj0SPOsD2mgzKrQ
         2nIK0rNhsd8VrPvJL6/Gtv64jQkBUasxj+nV8K03dF/H8gasM2JUPIEW0eRS6ZbEBHqh
         IH3qTGqQXfTPZimlXrCb4tIM8O/u45TJ1gKw2b4rB03JK3eejEAIwlcrnj+mype1gh4k
         ixni5Hr2WUTnkj4AkyTXOxyQ3wrwnplWuxrm5F0mtNm0yoCi8XzMZ+KZNsLZN2DlMbTm
         gqFGlsF6kE/9uvtLJ9kwJFjpNAFKO19TKsU+whzYj2uuv50Wlyyqjbe+cxqTYDNeli0A
         3aBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7F3VAQ1QHUHvdbm5KEmjYRFlzYw20eZc2U1u5ZXGarQ=;
        b=63HGqxUvExeRgfEaFZ/vyH9PN05oAzI+m+PsCFbR+zWKnxjbrOjrJGJUtsPdjyQxcy
         bDPMi3W/VENTEWDWbZASCZYkNcYyAg/hc0O/phBjiM319Y8qiKPUjxNb0swwGSJoByBs
         w+AcLu33joQDmzLEPvGFW7tiBySpvcXG9jGWcMRRP1+eLHNRikUqXaqEIyLjqz1Mgrp0
         icH7GO8i8T0SAnS78XL+5c4+bvyx03MRT5dmdRlqo8nAQ1dn15iN2er+PK/HFISnkO27
         G9WXpouVohFcZkKDSANUeNBbyQEtrnJbKgA1cUnrPAFlI74MBCQxCIXEh0IoV0zh/M1p
         bg6Q==
X-Gm-Message-State: AOAM532nzR0Y8FUXj9ElDNEUGTCBY+2nGhsJwsn+qX378YVAtoCqIHWo
        KHAy32wfnKLwd0Yw9VtFzdaLrQ==
X-Google-Smtp-Source: ABdhPJwEVuQwbw/aAe0zHJPNR/Gdm48g1Sdrp1MCqQm2nAJbJmCkQT/Nx+0QIb2iKxWeFyVyht9XKQ==
X-Received: by 2002:a05:6870:4345:b0:de:f347:e2cd with SMTP id x5-20020a056870434500b000def347e2cdmr2716804oah.113.1649789474190;
        Tue, 12 Apr 2022 11:51:14 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id z3-20020a056870d68300b000e2a0a74f9fsm5073719oap.37.2022.04.12.11.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 11:51:13 -0700 (PDT)
Date:   Tue, 12 Apr 2022 13:51:11 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/1] arm64: dts: qcom: sm8150: Add ufs power-domain
 entries
Message-ID: <YlXKH6BpBh5h7y02@builder.lan>
References: <20220323203052.1124683-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220323203052.1124683-1-bhupesh.sharma@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 23 Mar 15:30 CDT 2022, Bhupesh Sharma wrote:

> Add power-domain entries for UFS phy node in sm8150 dts.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
> Changes since v3:
> ----------------
> - v3 can be found here: https://lore.kernel.org/linux-arm-msm/20220303082140.240745-1-bhupesh.sharma@linaro.org/
> - Dropped [PATCH 1/2] from v3, which is already in linux-next now.
> - Addressed Dmitry's and Bjorn's review comments.
> - This patch is rebase on linux-next.
> 
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 6012322a5984..eed601e70229 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -1637,6 +1637,7 @@ ufs_mem_hc: ufshc@1d84000 {
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			#reset-cells = <1>;
> +
>  			resets = <&gcc GCC_UFS_PHY_BCR>;
>  			reset-names = "rst";
>  
> @@ -1687,6 +1688,8 @@ ufs_mem_phy: phy@1d87000 {
>  			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
>  				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
>  
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			power-domain-names = "ufs_phy_gdsc";

As far as I can tell the UFS PHY sits in the MX domain, while the
controller and perhaps the connection between the two sits in
UFS_PHY_GDSC.

So I believe the power-domains should be moved to the &ufs_mem_hc node.


There's no need for power-domain-names in either case.

Regards,
Bjorn

>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
>  			status = "disabled";
> -- 
> 2.35.1
> 
