Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49674797560
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235053AbjIGPrG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:47:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344724AbjIGPdm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:33:42 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A8461BFB
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1694100797; x=1725636797;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9mAYKCPC8bBgI8I86foBGH4wX+N885USIKMXrZgND6E=;
  b=QuRQpg4HnZsgFPGgD3crCG0/6D7E4Na0mPN5yB8po4tuWiRYWLGNXWpm
   8DJIfHU4WOXMbJjQO/Z71OXPm3eeQmPMIvxmrKc/Ra3kv/dPXekx7zmtx
   GAmqIFmTvEZi7owXcGWIiqBipRNrQ8YwSgWf20Bdj8rzd2df5Vm17hTN7
   lAzJVCfrohm8dMfqZiqSQtIvXuAwZLsR/3Uxb0jP9lt3nudWrtzGrbWgs
   B8FbHzT+KpamqS6dfSeG5EwwqTrQ0TZHMOyfy6hEs3km3dsWvnvbOvee7
   DYPkfk5Qb0KAfFcRvmOcZpWew+gxY6ZbMSaG/azptEfDOVXIlzTZbNcW/
   Q==;
X-IronPort-AV: E=Sophos;i="6.02,234,1688421600"; 
   d="scan'208";a="32825655"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Sep 2023 08:43:22 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5B08728007F;
        Thu,  7 Sep 2023 08:43:15 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mq: Move funnel outside from soc
Date:   Thu, 07 Sep 2023 08:43:16 +0200
Message-ID: <2900136.e9J7NaK4W3@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230906115444.189664-2-festevam@gmail.com>
References: <20230906115444.189664-1-festevam@gmail.com> <20230906115444.189664-2-festevam@gmail.com>
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

Am Mittwoch, 6. September 2023, 13:54:44 CEST schrieb Fabio Estevam:
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
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 106 +++++++++++-----------
>  1 file changed, 53 insertions(+), 53 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi index
> 35f07dfb4ca8..4b1ce9fc1758 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -225,6 +225,59 @@ opp-1500000000 {
>  		};
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
> +				ca_funnel_in_port3: endpoint {
> +					remote-endpoint =3D=20
<&etm3_out_port>;
> +				};
> +			};
> +		};
> +
> +		out-ports {
> +			port {
> +				ca_funnel_out_port0: endpoint {
> +					remote-endpoint =3D=20
<&hugo_funnel_in_port0>;
> +				};
> +			};
> +		};
> +	};
> +
>  	pmu {
>  		compatible =3D "arm,cortex-a53-pmu";
>  		interrupts =3D <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> @@ -394,59 +447,6 @@ etm3_out_port: endpoint {
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


