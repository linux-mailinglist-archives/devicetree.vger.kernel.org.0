Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 541C851B1F2
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 00:31:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379032AbiEDWet (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 18:34:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376423AbiEDWes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 18:34:48 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BAFD2B242
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 15:31:09 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id qe3-20020a17090b4f8300b001dc24e4da73so4474403pjb.1
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 15:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=V4mcraihi9SrpCHC2jZoMr5aDTcAHssWAbY6f0fZueQ=;
        b=RAWjYXrFLWLiT/sTepot+yp0Rawj48PXvecgBtpOgZCatOrIyduZDIHLEe30f5joku
         aUOCgu9eKHYniNrqwX/TmFmc99JjM8WXdb5RX5pJ2X42hherVXdL5ME52oRBdTD01aPy
         ZaEjDc+VZBH6DQLBqS95L4XLkQZ3e7rF1TI88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=V4mcraihi9SrpCHC2jZoMr5aDTcAHssWAbY6f0fZueQ=;
        b=XbwKQeUg+yf+F9WQWt9Nrxx65U8t/34Dl8DOFYc5v4W+NNSlbyRY4893Jqrb/wjezx
         vo5B4VCa3KMlOiwAL3U+wTJ+OQV8bwWavgdQQRNvUWzqgzuayI2MDjGQuyQ7Id1s7GLl
         eYjGTXmmDadV8IOTYLoE16CZn6zTdfhsCcfdXl4Lid7+EmqgJB1dBnoLb4eLoUwZOPZX
         FyqXXrcbmlNGRsEikuUAPBmdGOUIR+SxzMaxneROk9+FATBscrmFFz2bqCkvij24yoa8
         GKZLzn8oydeS+iLi9EbgS3Wn0o9hR0gg4BIe2nf1ClVG0NSNSIwshgYRbAS4IFnl6XzQ
         CTPA==
X-Gm-Message-State: AOAM5305/Qh6JLzgvJT8SPKLJqqJiUrHRlI3VvmkAWyBz8V3ql+1GrWH
        CdJT/dZK1pflFdy+jOk3CE6Hlg==
X-Google-Smtp-Source: ABdhPJyweJp6nGpMCJB6yHstmRUwk1LDnj+lQaH63hw1ifrVEHV1WkcGLOB3NcwSQd7lafQS0UOhvQ==
X-Received: by 2002:a17:902:d510:b0:15e:afc4:85a0 with SMTP id b16-20020a170902d51000b0015eafc485a0mr13862867plg.64.1651703468915;
        Wed, 04 May 2022 15:31:08 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:827b:7f14:bb7e:2898])
        by smtp.gmail.com with UTF8SMTPSA id i9-20020aa79089000000b0050dc76281ffsm8617857pfa.217.2022.05.04.15.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 15:31:08 -0700 (PDT)
Date:   Wed, 4 May 2022 15:31:07 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        srinivas.kandagatla@linaro.org, dianders@chromium.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: [PATCH v13 4/4] arm64: dts: qcom: sc7280-herobrine: Add lpi
 pinmux properties for CRD 3.0/3.1
Message-ID: <YnL+qwoSHt/95PcU@google.com>
References: <1651662987-11704-1-git-send-email-quic_srivasam@quicinc.com>
 <1651662987-11704-5-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1651662987-11704-5-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 04, 2022 at 04:46:27PM +0530, Srinivasa Rao Mandadapu wrote:
> Add LPASS LPI pinctrl properties, which are required for Audio
> functionality on herobrine based platforms of rev5+
> (aka CRD 3.0/3.1) boards.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts | 63 +++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> index deaea3a..dc61bad 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> @@ -110,6 +110,69 @@ ap_ts_pen_1v8: &i2c13 {
>   * - If a pin is totally internal to Qcard then it gets Qcard name.
>   * - If a pin is not hooked up on Qcard, it gets no name.
>   */
> +&lpass_dmic01_clk {
> +	drive-strength = <8>;
> +	bias-disable;
> +};
> +
> +&lpass_dmic01_data {
> +	bias-pull-down;
> +};
> +
> +&lpass_dmic01_clk_sleep {
> +	drive-strength = <2>;
> +};

should be after 'lpass_dmic01_clk'

> +
> +&lpass_dmic23_clk {
> +	drive-strength = <8>;
> +	bias-disable;
> +};
> +
> +&lpass_dmic23_data {
> +	bias-pull-down;
> +};
> +
> +&lpass_dmic23_clk_sleep {
> +	drive-strength = <2>;
> +};

see above

> +
> +&lpass_rx_swr_clk {
> +	drive-strength = <2>;
> +	slew-rate = <1>;
> +	bias-disable;
> +};
> +
> +&lpass_rx_swr_data {
> +	drive-strength = <2>;
> +	slew-rate = <1>;
> +	bias-bus-hold;
> +};
> +
> +&lpass_rx_swr_clk_sleep {
> +	drive-strength = <2>;

drive strengh is the same as for 'lpass_rx_swr_clk', can be omitted?

> +	bias-pull-down;
> +};

see 'lpass_dmic23_clk_sleep'

> +
> +&lpass_rx_swr_data_sleep {
> +	drive-strength = <2>;

is drive strength really needed here?

> +	bias-pull-down;
> +};
> +
> +&lpass_tx_swr_clk {
> +	drive-strength = <2>;
> +	slew-rate = <1>;
> +	bias-disable;
> +};
> +
> +&lpass_tx_swr_data {
> +	slew-rate = <1>;
> +	bias-bus-hold;
> +};
> +
> +&lpass_tx_swr_clk_sleep {
> +	drive-strength = <2>;

is drive strength really needed here?

> +	bias-pull-down;
> +};

see 'lpass_dmic23_clk_sleep'

>  
>  &mi2s1_data0 {
>  	drive-strength = <6>;
> -- 
> 2.7.4
> 
