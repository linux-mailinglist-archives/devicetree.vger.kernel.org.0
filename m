Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CC47797509
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:45:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231289AbjIGPpj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:45:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344514AbjIGPdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:33:19 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155061FC9
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1694100777; x=1725636777;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=gMkPX0IrTo34gwIGgv+63TDq3sNA7e015988bsC3V8g=;
  b=AXkRIZ7mY6Ca6hbATM/sqoV5/DuFZ4CAbr1JjBA0H1CnK4g8qBPELxeK
   95+CDIHnrWqLfYUGrXjxGz5MfwX4UyVGEa5ZoBMrFpmjL7ITGAPZs8Jlv
   X5xCk3TCIoKABlzdwsdcCv8EWfp+VXK11o2Itvnh4mkpf6rnd+Gwwlq10
   b3DAJvyC93CJJbg8ZEGcWOnwo2CG3HTmYBOf9pWsVYmcPUo6qPcUqy5Fd
   PDsFrd2gmfoeANeCF+EuHpLf7Tz77VvLdQCZTxi0xOlp6ANKv1EVcenCg
   RF0aZQMCUCkqm257Wnh2hOcdLgDLvpaN99FtC4NrQwM3B6yq4w6ynmNjK
   Q==;
X-IronPort-AV: E=Sophos;i="6.02,234,1688421600"; 
   d="scan'208";a="32825646"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Sep 2023 08:42:58 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A8DC828007F;
        Thu,  7 Sep 2023 08:42:58 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Move funnel outside from soc
Date:   Thu, 07 Sep 2023 08:42:59 +0200
Message-ID: <2156857.irdbgypaU6@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230906115444.189664-1-festevam@gmail.com>
References: <20230906115444.189664-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

Am Mittwoch, 6. September 2023, 13:54:43 CEST schrieb Fabio Estevam:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The 'funnel' node does not contain a register range, so it should
> be placed outside of the soc node to fix schema warnings from
> simple-bus.yaml.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

I noticed the warning in dtbs_check as well. LGTM
Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 107 +++++++++++-----------
>  1 file changed, 54 insertions(+), 53 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 6f2f50e1639c..ee92043a4052 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -202,6 +202,60 @@ clk_ext4: clock-ext4 {
>  		clock-output-names =3D "clk_ext4";
>  	};
>=20
> +	funnel {
> +		/*
> +		 * non-configurable funnel don't show up on the AMBA
> +		 * bus.  As such no need to add "arm,primecell".
> +		 */
> +		compatible =3D "arm,coresight-static-funnel";
> +
> +		in-ports {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			port@0 {
> +				reg =3D <0>;
> +
> +				ca_funnel_in_port0: endpoint {
> +					remote-endpoint =3D=20
<&etm0_out_port>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg =3D <1>;
> +
> +				ca_funnel_in_port1: endpoint {
> +					remote-endpoint =3D=20
<&etm1_out_port>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg =3D <2>;
> +
> +				ca_funnel_in_port2: endpoint {
> +					remote-endpoint =3D=20
<&etm2_out_port>;
> +				};
> +			};
> +
> +			port@3 {
> +				reg =3D <3>;
> +
> +					ca_funnel_in_port3: endpoint=20
{
> +					remote-endpoint =3D=20
<&etm3_out_port>;
> +				};
> +			};
> +		};
> +
> +		out-ports {
> +			port {
> +
> +				ca_funnel_out_port0: endpoint {
> +					remote-endpoint =3D=20
<&hugo_funnel_in_port0>;
> +				};
> +			};
> +		};
> +	};
> +
>  	reserved-memory {
>  		#address-cells =3D <2>;
>  		#size-cells =3D <2>;
> @@ -368,59 +422,6 @@ etm3_out_port: endpoint {
>  			};
>  		};
>=20
> -		funnel {
> -			/*
> -			 * non-configurable funnel don't show up on the=20
AMBA
> -			 * bus.  As such no need to add "arm,primecell".
> -			 */
> -			compatible =3D "arm,coresight-static-funnel";
> -
> -			in-ports {
> -				#address-cells =3D <1>;
> -				#size-cells =3D <0>;
> -
> -				port@0 {
> -					reg =3D <0>;
> -
> -					ca_funnel_in_port0: endpoint=20
{
> -						remote-endpoint =3D=20
<&etm0_out_port>;
> -					};
> -				};
> -
> -				port@1 {
> -					reg =3D <1>;
> -
> -					ca_funnel_in_port1: endpoint=20
{
> -						remote-endpoint =3D=20
<&etm1_out_port>;
> -					};
> -				};
> -
> -				port@2 {
> -					reg =3D <2>;
> -
> -					ca_funnel_in_port2: endpoint=20
{
> -						remote-endpoint =3D=20
<&etm2_out_port>;
> -					};
> -				};
> -
> -				port@3 {
> -					reg =3D <3>;
> -
> -					ca_funnel_in_port3: endpoint=20
{
> -						remote-endpoint =3D=20
<&etm3_out_port>;
> -					};
> -				};
> -			};
> -
> -			out-ports {
> -				port {
> -					ca_funnel_out_port0:=20
endpoint {
> -						remote-endpoint =3D=20
<&hugo_funnel_in_port0>;
> -					};
> -				};
> -			};
> -		};
> -
>  		funnel@28c03000 {
>  			compatible =3D "arm,coresight-dynamic-funnel",=20
"arm,primecell";
>  			reg =3D <0x28c03000 0x1000>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


