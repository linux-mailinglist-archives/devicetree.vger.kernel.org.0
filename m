Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA75776EE93
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 17:47:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237238AbjHCPrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 11:47:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237237AbjHCPrL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 11:47:11 -0400
Received: from honk.sigxcpu.org (honk.sigxcpu.org [24.134.29.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 928262726
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 08:47:09 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by honk.sigxcpu.org (Postfix) with ESMTP id 1F22EFB04;
        Thu,  3 Aug 2023 17:47:06 +0200 (CEST)
Received: from honk.sigxcpu.org ([127.0.0.1])
        by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id lNvRMJDejCVx; Thu,  3 Aug 2023 17:47:04 +0200 (CEST)
Date:   Thu, 3 Aug 2023 17:47:02 +0200
From:   Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To:     Philipp Jungkamp <p.jungkamp@gmx.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
        Martin Kepplinger <martink@posteo.de>,
        Angus Ainslie <angus@akkea.ca>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dts: adjust proximity near level
Message-ID: <ZMvL9nlsGvwX2L7h@qwark.sigxcpu.org>
References: <20230802210746.1240625-1-p.jungkamp@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230802210746.1240625-1-p.jungkamp@gmx.net>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_FAIL,SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
On Wed, Aug 02, 2023 at 11:07:46PM +0200, Philipp Jungkamp wrote:
> Adjust the proximity-near-level by one to account for an error in
> calibration using iio-sensor-proxy, which interpreted the
> in_proximity_nearlevel attribute slightly differently than specified in
> the kernel documentation.
> 
> Signed-off-by: Philipp Jungkamp <p.jungkamp@gmx.net>
> ---
> Hello,
> 
> Most userspace programs seem to use the in_proximity_nearlevel sysfs
> attribute

Even all we found.

> implicitly through the iio-sensor-proxy dbus daemon. But the proximity sensor
> near level detection does not adhere to the kernel documentation for the sysfs
> attribute. This is, next to some techical defficulties in iio-sensor-proxy, the
> reason that I proposed to fix the near level criterion there.
> See: https://gitlab.freedesktop.org/hadess/iio-sensor-proxy/-/merge_requests/364
> 
> It has been pointed out that devices with a DT calibrated against
> iio-sensor-proxy will see a slight change in the interpretation of the near
> level criterion.

I'd make that part of the commit message as well. With that the
imx8mq-librem5* bits are

  Reviewed-by: Guido Günther <agx@sigxcpu.org>

Cheers,
 -- Guido

> 
> I want this more or less serious patch to be a heads up for the users and
> implementors of the iio proximity sensors on linux.
> 
> Regards,
> Philipp Jungkamp
> 
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts  | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts  | 2 +-
>  arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
> index 2b3d437a642a..31426cf055b4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
> @@ -23,5 +23,5 @@ &bq25895 {
>  };
> 
>  &proximity {
> -	proximity-near-level = <50>;
> +	proximity-near-level = <51>;
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi
> index 7fd0176e4bd3..12ccc20afc8a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi
> @@ -45,5 +45,5 @@ &magnetometer {
>  };
> 
>  &proximity {
> -	proximity-near-level = <10>;
> +	proximity-near-level = <11>;
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts
> index 97577c0a7715..fab872ecbf1c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts
> @@ -23,5 +23,5 @@ &lcd_panel {
>  };
> 
>  &proximity {
> -	proximity-near-level = <5>;
> +	proximity-near-level = <6>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> index 97262b8519b3..19173d9efa22 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> @@ -156,7 +156,7 @@ magnetometer@12 {
>  	light-sensor@23 {
>  		compatible = "liteon,ltr559";
>  		reg = <0x23>;
> -		proximity-near-level = <75>;
> +		proximity-near-level = <76>;
> 
>  		interrupt-parent = <&tlmm>;
>  		interrupts = <115 IRQ_TYPE_EDGE_FALLING>;
> --
> 2.41.0
> 
