Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D27EF561E00
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 16:34:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237141AbiF3OeB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 10:34:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236749AbiF3Odu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 10:33:50 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D5B13F318
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 07:18:36 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id y10-20020a9d634a000000b006167f7ce0c5so14810100otk.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 07:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=UKo47eRwZLqOtIrb9MKf+6m0GMopJmkATiSd2gO3qbY=;
        b=OMZKzP51T9zH8ddRl/B6r/fPanoxskVeywxtbh3g18v/DFZAnaekqUgrNljfvUVVbn
         1Xg96wnvXkyGNt7LisqVFnDWuYGxo7wcMwPKsoBPPEjx1coiODlfsVFEBXGgQzhMl8nm
         IV197EaWoBeq0GkSBH8H+I2r8tssvkmTIpDoimyuG4ceKupSRCGhNmo1mqy54hnVHH9T
         3b8exQJ/pY9h3OrOzeyFI/8vWzAdeB9CJ0QElsMU8db1Vhz59UvoBfIrJ0X5gTkdlirv
         IEgO3n3ryq02Dg8hGBuEqaNxNInlrUmhnBcmfE7NbDBrbl6ex4LeQJoZgcsyjN7HX90t
         f59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UKo47eRwZLqOtIrb9MKf+6m0GMopJmkATiSd2gO3qbY=;
        b=AIQhPqZN8fO01UgSda0f+5/HWiqsAj/xLAc3pZoC9KEI/QijYeFvRyDyERm0N6xED/
         cOAD/HNBbOjxNnIJm7nNaP3H3CbwX5ksLmuMv88qSEWRnfh+aP6lzSF2fw69/g4hBnub
         EopaMFgs61/vLvk6Ci/NKnMHiHEFzOGUsayO3IiSgJ25F19nTS6w7UBrDL9ahVfgiubJ
         wDois6VEY/VK2+63Nrxjkx3StGjs4s4XN3vuJgSLN+ElfYFnhh7hmVFkpGt1H75zK0Ma
         rqCgehVjUqhfmNak1UT76Xz5b5xcdRUC84QFxGqu91yvygd1ETta200QYS2MjF9KkDq1
         RMyQ==
X-Gm-Message-State: AJIora9z3lvAg1LS1F7pE77eOCBt7fHoVUPieoQGG2iu27v2/sNwFxaG
        OEtWPg8PxSBhJTsHJAoxDXZWsQ==
X-Google-Smtp-Source: AGRyM1vFfXnm58GfvKKmrQUCEv0TWeibI+q0clBmyfCEd+bphEKgFThB5Lc2P9qbVpK8bd2M6zYkhA==
X-Received: by 2002:a05:6830:2a11:b0:616:831e:37f4 with SMTP id y17-20020a0568302a1100b00616831e37f4mr4143597otu.203.1656598715163;
        Thu, 30 Jun 2022 07:18:35 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id g13-20020a05683030ad00b0060afaae0e34sm11200311ots.0.2022.06.30.07.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 07:18:33 -0700 (PDT)
Date:   Thu, 30 Jun 2022 09:18:32 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andrey Konovalov <andrey.konovalov@linaro.org>, agross@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs404: fix default pinctrl settings
 for blsp1_spi1
Message-ID: <Yr2wuHpedbS4RELd@builder.lan>
References: <20220611195713.131597-1-andrey.konovalov@linaro.org>
 <YrKmGfUrOw5awgNw@matsya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YrKmGfUrOw5awgNw@matsya>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 22 Jun 00:18 CDT 2022, Vinod Koul wrote:

> On 11-06-22, 22:57, Andrey Konovalov wrote:
> > The current settings refer to "blsp_spi1" function which isn't defined.
> > For this reason an attempt to enable blsp1_spi1 interface results in
> > the probe failure below:
> > 
> > [    3.492900] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> > [    3.502460] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> > [    3.517725] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> > [    3.532998] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> > [    3.548277] spi_qup: probe of 78b6000.spi failed with error -22
> > 
> > Fix this by making the functions used in qcs404.dtsi to match the contents
> > of drivers/pinctrl/qcom/pinctrl-qcs404.c.
> 
> Right, I cannot find blsp_spi1 which is the only one which is missing,
> not sure why...
> 
> Bjorn do you recall why SPI1 is treated differently...
> 

Looking at the available pinctrl functions, I believe that blsp_spi1 has
two possible mux options; identified b y blsp_spi_*_a1 and
blsp_spi_*_b1.

Regards,
Bjorn

> > 
> > Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qcs404.dtsi | 21 +++++++++++++++++++--
> >  1 file changed, 19 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > index d912166b7552..0d9e1f19aa67 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > @@ -669,8 +669,25 @@ blsp1_spi0_default: blsp1-spi0-default {
> >  			};
> >  
> >  			blsp1_spi1_default: blsp1-spi1-default {
> > -				pins = "gpio22", "gpio23", "gpio24", "gpio25";
> > -				function = "blsp_spi1";
> > +				mosi {
> > +					pins = "gpio22";
> > +					function = "blsp_spi_mosi_a1";
> > +				};
> > +
> > +				miso {
> > +					pins = "gpio23";
> > +					function = "blsp_spi_miso_a1";
> > +				};
> > +
> > +				cs_n {
> > +					pins = "gpio24";
> > +					function = "blsp_spi_cs_n_a1";
> > +				};
> > +
> > +				clk {
> > +					pins = "gpio25";
> > +					function = "blsp_spi_clk_a1";
> > +				};
> >  			};
> >  
> >  			blsp1_spi2_default: blsp1-spi2-default {
> > -- 
> > 2.25.1
> 
> -- 
> ~Vinod
