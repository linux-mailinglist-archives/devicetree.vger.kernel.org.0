Return-Path: <devicetree+bounces-170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB7D7A0089
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:43:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EC541F22608
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03F212AB43;
	Thu, 14 Sep 2023 09:43:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7DF1CFBE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54C34C433C7;
	Thu, 14 Sep 2023 09:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694684619;
	bh=W6rK1+h3h9AyTDVnNHiqbnJQlFfPlOPuQQ4PQrSlA4I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qiVaPzH12lkz1U80y+1+eINheR5ADAZHgxyD/lCkA4ULKC2py6C4+B81jtt56wdz6
	 gt1E1VLb6EsF1R8fZ3yVqnNcZOwJ42LX8WpUF/SE0m9ADwHRNeK73XwIWtaprUYgI6
	 krAca/RS4BtseBtuOOoUbwbuw8Mct1jxvxoJqe+Tb4ZZ0nAjkM3ogEoy+KJ9aICicE
	 7Ww6f6FopSNNR/CGRq69EaDJPwWyTHOgqO3j5YDKRkCzkA0DVjJTCqgseA7HVoxEZh
	 vcooMkatK4W3+3sgP4mCO6IemU6u56oStD4923/fjpQhmZLyIDbM8gjobg9Pxj1G24
	 0BunEK9hM2ljg==
Date: Thu, 14 Sep 2023 10:43:31 +0100
From: Lee Jones <lee@kernel.org>
To: Aradhya Bhatia <a-bhatia1@ti.com>
Cc: Andrew Davis <afd@ti.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: k3-am65: Add full compatible to
 dss-oldi-io-ctrl node
Message-ID: <20230914094331.GJ13143@google.com>
References: <20230911142556.64108-1-afd@ti.com>
 <20230911142556.64108-2-afd@ti.com>
 <64a4a0a8-7628-ffee-fca0-c7b953769fa6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <64a4a0a8-7628-ffee-fca0-c7b953769fa6@ti.com>

On Wed, 13 Sep 2023, Aradhya Bhatia wrote:

> 
> 
> On 11/09/23 09:25, Andrew Davis wrote:
> > This matches the binding for this register region which fixes a couple
> > DTS check warnings.
> > 
> > While here trim the leading 0s from the "reg" definition.
> > 
> > Signed-off-by: Andrew Davis <afd@ti.com>
> 
> For both the patches, 1/2 and 2/2,

If you want to Ack both patches, you have to Ack both patches.

> Reviewed-by: Aradhya Bhatia <a-bhatia1@ti.com>
> 
> > ---
> >  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> > index bc460033a37a8..d5f217427893d 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> > @@ -498,8 +498,8 @@ serdes_mux: mux-controller {
> >  		};
> >  
> >  		dss_oldi_io_ctrl: dss-oldi-io-ctrl@41e0 {
> > -			compatible = "syscon";
> > -			reg = <0x000041e0 0x14>;
> > +			compatible = "ti,am654-dss-oldi-io-ctrl", "syscon";
> > +			reg = <0x41e0 0x14>;
> >  		};
> >  
> >  		ehrpwm_tbclk: clock-controller@4140 {

-- 
Lee Jones [李琼斯]

