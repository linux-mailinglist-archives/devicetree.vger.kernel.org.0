Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 437B27120D4
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 09:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242086AbjEZHX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 03:23:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236681AbjEZHX1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 03:23:27 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D4C1114
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 00:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685085803; x=1716621803;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YmAIUgwZORF0fTYyyH6+N20k0tTBg1EmdRyxkcIyfK4=;
  b=kfVADnDfeITAGgLUyX+TL7NZsT1cSshg2kC8+MjwdEMWTB50nYNUwFD2
   tfE83VKKubgnI+Ql9lBvkf55t5Dv1vzH5XxOK71+k0N5o6uacrO1OzZbF
   LXu8U9xGl0tP58Rwi8Vp+wgJppblxr8jQa0ASpvI+5VbjFf+993U8pubJ
   ss0zgrdh8cWwn79MKmxuamazzbprAQADh5MFSNZwHd5x7+lYGg6HabfzR
   ku25Qdb1I62J33xODg9VXVkM6KRg9kvgUzgxzjJyxiWgJmEdK6dCtNhIi
   qFNLnEBsSmOv4xy2/zevLBRLCMX89l1e2Q9HjStFdUBHRXXv1iJhPQm7+
   w==;
X-IronPort-AV: E=Sophos;i="6.00,193,1681164000"; 
   d="scan'208";a="31117937"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 May 2023 09:23:21 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 May 2023 09:23:21 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 26 May 2023 09:23:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685085801; x=1716621801;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=YmAIUgwZORF0fTYyyH6+N20k0tTBg1EmdRyxkcIyfK4=;
  b=DSK4Rg52LNGCA39Z4j/kJGThAIGae1KcD8njDgVKYCebIYi9KgNYzf0t
   DBFwv0yJ1zVC7whiRiTOOV4ZUxlDytVY4GcYAqnpnoGFVSvOiM+mtfkTD
   XGnwNWetxlQoNuYU4GlSBpqstKmiJtrqkjt6apb+1ZQGOSf9wKKcRXiVi
   MsWqrT5nNYpt622rttfcBHoIS+QTuvdncXetndC6j++fZ29ph0RnB/nvA
   5l6ttn0bhjkXJPifXo74R8ha6m5SJv9M6kcD4glChTwGICXRfmBybh8Zq
   hCrTHDIecQUFimFS5ppz5J1l1KRu7XFc5Ak0GJxXY7WWyzJSfSeEGvFOt
   A==;
X-IronPort-AV: E=Sophos;i="6.00,193,1681164000"; 
   d="scan'208";a="31117936"
Subject: Re: [PATCH 06/15] ARM: dts: imx6qdl-mba6: Use the mux- prefix
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 May 2023 09:23:21 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EB542280082;
        Fri, 26 May 2023 09:23:20 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Fabio Estevam <festevam@gmail.com>
Date:   Fri, 26 May 2023 09:23:21 +0200
Message-ID: <3235635.aeNJFYEL58@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230526005529.150418-6-festevam@gmail.com>
References: <20230526005529.150418-1-festevam@gmail.com> <20230526005529.150418-6-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Freitag, 26. Mai 2023, 02:55:20 CEST schrieb Fabio Estevam:
> From: Fabio Estevam <festevam@denx.de>
>=20
> According to Documentation/devicetree/bindings/sound/imx-audmux.yaml,
> there must be a "mux-" prefix in the audmux port nodes.
>=20
> Add the "mux-" prefix to avoid devicetree schema warnings.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Thanks!
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  arch/arm/boot/dts/imx6qdl-mba6.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> b/arch/arm/boot/dts/imx6qdl-mba6.dtsi index 7b7e6c2ad190..b497303013c8
> 100644
> --- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> @@ -129,7 +129,7 @@ sound {
>  &audmux {
>  	status =3D "okay";
>=20
> -	ssi0 {
> +	mux-ssi0 {
>  		fsl,audmux-port =3D <MX31_AUDMUX_PORT1_SSI0>;
>  		fsl,port-config =3D <
>  			(IMX_AUDMUX_V2_PTCR_SYN |
> @@ -141,7 +141,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX31_AUDMUX_PORT3_SSI_PINS_=
3)
>=20
>  		>;
>=20
>  	};
>=20
> -	aud3 {
> +	mux-aud3 {
>  		fsl,audmux-port =3D <MX31_AUDMUX_PORT3_SSI_PINS_3>;
>  		fsl,port-config =3D <
>  			IMX_AUDMUX_V2_PTCR_SYN


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


