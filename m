Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C5C859594C
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 13:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235156AbiHPLEB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 07:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235172AbiHPLDk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 07:03:40 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3760EA5716
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:30:53 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id v3so12125849wrp.0
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=CC0I+QyhCl78LNGXSDcokb2Igja0kEp2SAvinKMmolw=;
        b=oIdwil5N6ek5uKSZgnjVAREcevTGeVp8vs/IUDYbqm1xSpyJDNbt69srWRT6oBdBxz
         /VLUHr0lFB2q5HZ3fS7K1cltoi8knDjQkfqECjrY+dl4xc5s1KBn3Uz5Np6gC0eOmFVl
         e68cazOb6z5hTOGDvlBRGMzTeLNgJhVgcfq+gApoomWMNBdmrE+Qz8SWj0OtvpqFFYYD
         FftV4YD9V+gHoiN0yXyXxF1YHWvvC9g38yulx7A7wjhDe47fp/qnS+Zgflom8NRx/Dri
         aAvCPyNpbLrydjojgGcsB7K4ws4E+h/DwogtbYwrGrA1hp9H2vgcvGq5gqzv38JtS6cp
         3JNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=CC0I+QyhCl78LNGXSDcokb2Igja0kEp2SAvinKMmolw=;
        b=Dirdlk7VLr6SAftY9BPz6129+/BWqRa2yiLLXGXwEzLea416ypuX6SxK7IziazUyZt
         r3esZ2BXNcsjAPp7cXLIbei6QruWFKL7JpBlpORXVsv8EbLXx09cexSywkDb4I0VP0Jh
         7JdaIovb0MxcVEjZ3+vDDwUPme84PtzkUt8hSBuQil0JmOdb9RHRHxQ1jr014Dr6SiDm
         qVPD9qKtg3lL+PnAzgQO38CTJet3NPhwVaTtlRF+jMs8ULgfL7mMgkWiVzmPkL6P2x22
         CzLdIFjTA03YAF/qyLyfcNCKbAv3hKsOb/moJgTowy7hsM/t0gx95UU7ds5tPussGtgU
         YM6w==
X-Gm-Message-State: ACgBeo2pJ1ptKIJ4OqWOGR0SZelbeH4mWPIx3mufD3LBWXHhCEd0jEwJ
        pEfoCPuGw9UvBZRv7ax3cUXWfw==
X-Google-Smtp-Source: AA6agR76pYX2cHzKIS2Dwr7HqLUjs0UXKxQglBa1qAWdPWQkucfK0/8maBGva4XqPPlS2/nYn+bWUg==
X-Received: by 2002:a5d:4205:0:b0:223:654d:a2f8 with SMTP id n5-20020a5d4205000000b00223654da2f8mr11417330wrq.114.1660645851944;
        Tue, 16 Aug 2022 03:30:51 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j15-20020a05600c190f00b003a5f54e3bbbsm7494134wmq.38.2022.08.16.03.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 03:30:50 -0700 (PDT)
Date:   Tue, 16 Aug 2022 13:30:49 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Caleb Connolly <caleb.connolly@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sdm845: Add the RPMh stats node
Message-ID: <Yvtx2aK1Uu51hTPM@linaro.org>
References: <20220812101240.1869605-1-abel.vesa@linaro.org>
 <T2Uz7zs4Ht58lYc5zWg1VBY0ju6bVaSKa9y3RhBQWDDHmPXBHbAxI2J34jSeY0BFQy2y4JtFn3nQS0Lz4xI5jw==@protonmail.internalid>
 <20220812101240.1869605-3-abel.vesa@linaro.org>
 <e6821eef-4fcb-97b1-24be-e2bb62b99039@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6821eef-4fcb-97b1-24be-e2bb62b99039@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-08-15 21:34:07, Caleb Connolly wrote:
> 
> 
> On 12/08/2022 11:12, Abel Vesa wrote:
> > SDM845 is a special case compared to the other platforms that use RPMh
> > stats, since it only has 2 stats (aosd and cxsd), while the others have
> > a 3rd one (ddr).
> > 
> > So lets add the node but with a SDM845 dedicated compatible to make
> > the driver aware of the different stats config.
> Hi,
> 
> I gave this a go on the OnePlus 6, I noticed the driver is also meant to
> read the stats for remote procs via smem, however this seems to fail for me
> - it can't find any of the SMEM items even if I probe the driver manually
> after ensuring remoteprocs have booted. Is this an unsupported feature on
> SDM845?

Thanks for giving it a test.

Actually, you need to probe the qcom_stats after the remoteprocs have
booted.

Doing so, you'll end up having the following:
adsp  aosd  cdsp  cxsd

> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > Changed qcom,rpmh-stats-sdm845 to qcom,sdm845-rpmh-stats, as suggested
> > by Krzysztof.
> > 
> >   arch/arm64/boot/dts/qcom/sdm845.dtsi | 5 +++++
> >   1 file changed, 5 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > index 5bea96a9ce06..67fe08b837be 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > @@ -4851,6 +4851,11 @@ ebi_cdev: ebi {
> >   			};
> >   		};
> > 
> > +		sram@c3f0000 {
> > +			compatible = "qcom,sdm845-rpmh-stats";
> > +			reg = <0 0x0c3f0000 0 0x400>;
> > +		};
> > +
> >   		spmi_bus: spmi@c440000 {
> >   			compatible = "qcom,spmi-pmic-arb";
> >   			reg = <0 0x0c440000 0 0x1100>,
> > --
> > 2.34.1
> > 
> 
> -- 
> Kind Regards,
> Caleb (they/he)
