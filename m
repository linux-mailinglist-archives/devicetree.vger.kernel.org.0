Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FB8952D769
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 17:24:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240855AbiESPY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 11:24:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240518AbiESPY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 11:24:26 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0AFDEAD1D
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 08:24:25 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id u15so5415652pfi.3
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 08:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RxxDW43556pg8Ua5FCLecPALXbP2iIESOPIMcw9n7sE=;
        b=dD66mv1j+KlBHvLn/Pnd3LT4IkaDHF185QUHOArIhQ3vq98mh9FVYd4M7G4sAVR6BO
         2hjja+BFzPr53FRFkDuOrDIBIE9+tEC7d7kPat/DprLa38AMrc7KSFg4y8ieiLtjRXci
         YBAv8+zvh67gdCTv8jasxHfsFmUuEUi6IZxmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RxxDW43556pg8Ua5FCLecPALXbP2iIESOPIMcw9n7sE=;
        b=YLNwCXDBCjhMSYA+4v2HmrEFjyrClMoE34IyfcjKDqVX1xKhrlU094ZZ0SvyBzIbEX
         N20BPqbEXHOj8xb51cv3Ctda4pF5I0jI7p30PL8/YLAcJ9XzAfRGa5clL/aBsjgDPIdV
         plBWctvJpoKuVfuxuGsbwqF+V8IcvgndDRl12g7yqregbFxRnXdzlfaEykQQOUPi4JLb
         y+lLR1TNV/aWLBlbfCtco0zB9aABLZB1jOVQkay/tio1sDrcedzeZeVExnbGRH2yNMfm
         4no8je1+6U4s6a1agJ85mqMCKurz9lbOsWlvhK1Cf3hjDvifxYM287ztOnqFwaAl838r
         6Q3w==
X-Gm-Message-State: AOAM530nCj0SLZGILPHYArtJ7oA0O5vzmlKliuhh27vpBHM2CTCj7sgA
        ZcB0MIIMkVsCpV8sXAkDurnWLw==
X-Google-Smtp-Source: ABdhPJxWH5HSd2a6kok2fOfyjwjkJ1jaC6v18twZR2TofpZX4x8hZTHdx9Okw9/W96CBOGNO3cnUYA==
X-Received: by 2002:a05:6a02:19c:b0:3aa:1bf8:7388 with SMTP id bj28-20020a056a02019c00b003aa1bf87388mr4409154pgb.455.1652973865333;
        Thu, 19 May 2022 08:24:25 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:e229:79ea:227e:d9dd])
        by smtp.gmail.com with UTF8SMTPSA id er14-20020a17090af6ce00b001cd4989fecesm5761149pjb.26.2022.05.19.08.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 08:24:25 -0700 (PDT)
Date:   Thu, 19 May 2022 08:24:23 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, cychiang@google.com, judyhsiao@google.com,
        tzungbi@chromium.org, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [v1 1/3] arm64: dts: qcom: sc7280: Add drive strength property
 for secondary MI2S
Message-ID: <YoZhJ/3xPwzaBSUS@google.com>
References: <20220519084119.675990-1-judyhsiao@chromium.org>
 <20220519084119.675990-2-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220519084119.675990-2-judyhsiao@chromium.org>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 19, 2022 at 08:41:17AM +0000, Judy Hsiao wrote:

> Subject: arm64: dts: qcom: sc7280: Add drive strength property for secondary MI2S
>
> Add drive strength property for secondary MI2S on sc7280 based platforms

That's not an accurate description, this patch only adjust settings for
herobrine based boards. This should be reflected at list in the subject.

Besides setting the drive strengths this patch also disables the pulls
on some lines, so maybe better say something like "arm64: dts: qcom:
sc7280: herobrine: Add pinconf settings for mi2s1".

> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> index 9cb1bc8ed6b5..6d8744e130b0 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> @@ -612,6 +612,20 @@ &dp_hot_plug_det {
>  	bias-disable;
>  };
>  
> +&mi2s1_data0 {
> +	drive-strength = <6>;
> +	bias-disable;
> +};
> +
> +&mi2s1_sclk {
> +	drive-strength = <6>;
> +	bias-disable;
> +};
> +
> +&mi2s1_ws {
> +	drive-strength = <6>;
> +};
> +
>  &pcie1_clkreq_n {
>  	bias-pull-up;
>  	drive-strength = <2>;
> -- 
> 2.36.1.124.g0e6072fb45-goog
> 
