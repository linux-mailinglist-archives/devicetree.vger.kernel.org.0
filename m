Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D435B6DE678
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 23:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbjDKVdq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 17:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjDKVdp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 17:33:45 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B690C2111
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 14:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681248777;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+t+CxMKTyH/KF2IDw9V8sVAPX3jzq2X9B3VftBWKIM8=;
        b=gH48M+opLawe0/89oj9NunkcejjKvK45ksCljkpUIBSAiW8gGnjHjY3+mV5TlqF0pRMoF/
        eZdDmxQfedoSiYicy7n1qfby+59y8CusVcMhN8XUNtfm33tHrR/eF3dPeIycEDk8S3/nm8
        VAh1ZwCMBoH4id7okK4CsSUvyHcTe6c=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-365-UNdigOZuMkKSaQ67h5e0_Q-1; Tue, 11 Apr 2023 17:32:56 -0400
X-MC-Unique: UNdigOZuMkKSaQ67h5e0_Q-1
Received: by mail-oi1-f197.google.com with SMTP id p10-20020acaf10a000000b00388f0de0c51so2520308oih.12
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 14:32:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681248776;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+t+CxMKTyH/KF2IDw9V8sVAPX3jzq2X9B3VftBWKIM8=;
        b=v3wCcs/yAel2rq6h3k3l9WdEjeu2tY17bqAEklwV7SepEMNN0szwRRRcHUczJPe3DU
         BL5lKiyOX3x3QJs6nl4oARJTvII8w7QOtm7em3sWRTgcyouQVa8k+2jGXgl0NqTQrGoy
         d4Pe1TmIM12vvZ/LjKMoXV2fUbUJwBcFejPseYIEGaJX+rl0LN8glQgmDlsN8Yyb3JSz
         XuXZKUoQFMNytI+X6FkGu41xVfMEcR7QI3LQR/wY43EkORfrHCs97QgQMLanFMexYbm5
         +mQr/nrRbqtlDftcYSkwm9M4sHL+Bt0xO6C85WWHJ1FeUhCR4mvBbtL9gRPrK4ibe5y5
         QQ5g==
X-Gm-Message-State: AAQBX9djk5FUOAYlj2oBqsyAbcLF8D6qQ851Rw9535XwelCynRFZx1g8
        ZMyCiFmr3dvJb5gptn9J2iGHhs3a/4sOqPC4s79OLDd/WGy2qdQwo6Thppkz3+Z5dGBzOqvnx2K
        28EyWvvV2wdWmdHoCZERIDw==
X-Received: by 2002:a05:6870:968a:b0:17e:e1ac:2f09 with SMTP id o10-20020a056870968a00b0017ee1ac2f09mr7337636oaq.47.1681248775877;
        Tue, 11 Apr 2023 14:32:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350YKCSvz7scMdahh0PoFCkZ798gWjD4Hs7SmFZvehvpUk2bQfOgV9GhWwVgZIxZfad9VMP7s/g==
X-Received: by 2002:a05:6870:968a:b0:17e:e1ac:2f09 with SMTP id o10-20020a056870968a00b0017ee1ac2f09mr7337629oaq.47.1681248775663;
        Tue, 11 Apr 2023 14:32:55 -0700 (PDT)
Received: from halaney-x13s (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id tl19-20020a0568718a1300b0017f84f81f3csm5506089oab.52.2023.04.11.14.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 14:32:55 -0700 (PDT)
Date:   Tue, 11 Apr 2023 16:32:52 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-kernel@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sa8155p-adp: Make compatible the first
 property
Message-ID: <20230411213252.xdgt57msr5lwnbrf@halaney-x13s>
References: <20230411203144.471192-1-ahalaney@redhat.com>
 <88d41729-86be-95cb-2fda-1b809f07ed6b@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88d41729-86be-95cb-2fda-1b809f07ed6b@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 11, 2023 at 10:44:36PM +0200, Konrad Dybcio wrote:
> 
> 
> On 11.04.2023 22:31, Andrew Halaney wrote:
> > As stated at the below link in another review, compatible is always the
> > first property.
> > 
> > Follow suit here to avoid copying incorrectly in the future.
> > 
> > Link: https://lore.kernel.org/netdev/20230331215804.783439-1-ahalaney@redhat.com/T/#ma76b4116bbb9e49ee4bcf699e40935d80965b3f3
> > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > ---
> Thanks for this patch!
> >  arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
> > index 459384ec8f23..8c773b856eb1 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
> > @@ -351,19 +351,18 @@ &ethernet {
> >  	max-speed = <1000>;
> >  
> >  	mdio {
> > +		compatible = "snps,dwmac-mdio";
> >  		#address-cells = <0x1>;
> >  		#size-cells = <0x0>;
> Since you're already touching this file, can you make the
> -cells values decimal..
> >  
> > -		compatible = "snps,dwmac-mdio";
> > -
> >  		/* Micrel KSZ9031RNZ PHY */
> >  		rgmii_phy: phy@7 {
> > +			compatible = "ethernet-phy-ieee802.3-c22";
> >  			reg = <0x7>;
> >  
> >  			interrupt-parent = <&tlmm>;
> ..remove the useless interrupt-parent..
> 
> >  			interrupts-extended = <&tlmm 124 IRQ_TYPE_EDGE_FALLING>; /* phy intr */
> ...and the similarly not very useful comment here?
> 
> Konrad
> 

Gladly, I'll wait a few days in case someone points something else out
before sending a v2 patch series tackling each of those little bits.

Thanks,
Andrew

> >  			device_type = "ethernet-phy";
> > -			compatible = "ethernet-phy-ieee802.3-c22";
> >  		};
> >  	};
> >  };
> 

