Return-Path: <devicetree+bounces-1111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 666977A4BC9
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 926E31C20DEB
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80001D68A;
	Mon, 18 Sep 2023 15:21:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A79A14F77
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:21:57 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93A35E7E;
	Mon, 18 Sep 2023 08:19:58 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A892E8A5F;
	Mon, 18 Sep 2023 16:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695049171;
	bh=5druFxroFh0C6Lle/zcEZeVnWrTnrx3GtgXtpORdVkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J2rJw0caRX+Yl1TILJHqMD0KRYAwyEJGLkddsyJdak7J6rQPmfJvjjHIqoiIKpIdY
	 Uwjtgwj9zqqt6YHCHpt4mG7WgQQbX1e7ktPrMHpOxtpflLkSJWkK0n0clKosHh1OzM
	 d9B1Atg16DIZyvKt3Lyn9AnBGz3hJGSzG/ofx4Rg=
Date: Mon, 18 Sep 2023 18:01:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
	git@xilinx.com,
	Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Parth Gajjar <parth.gajjar@amd.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sharath Kumar Dasari <sharath.kumar.dasari@xilinx.com>,
	Srinivas Neeli <srinivas.neeli@xilinx.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/6] arm64: xilinx: Remove mt25qu512a compatible string
 from SOM
Message-ID: <20230918150119.GC16823@pendragon.ideasonboard.com>
References: <cover.1695040866.git.michal.simek@amd.com>
 <a1e975f5785dfb6eb04e8d5905dcaa7467ccd585.1695040866.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a1e975f5785dfb6eb04e8d5905dcaa7467ccd585.1695040866.git.michal.simek@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Michal,

Thank you for the patch.

On Mon, Sep 18, 2023 at 02:41:14PM +0200, Michal Simek wrote:
> mt25qu512a is not documented in DT binding that's why remove it.

How about adding the compatible string to the bindings instead ?

> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>  arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> index 157dcb4a27a8..cd5cd7f3b5ce 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> @@ -131,7 +131,7 @@ mux {
>  &qspi { /* MIO 0-5 - U143 */
>  	status = "okay";
>  	spi_flash: flash@0 { /* MT25QU512A */
> -		compatible = "mt25qu512a", "jedec,spi-nor"; /* 64MB */
> +		compatible = "jedec,spi-nor"; /* 64MB */
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		reg = <0>;

-- 
Regards,

Laurent Pinchart

