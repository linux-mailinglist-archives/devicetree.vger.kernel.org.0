Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7F42642EAD
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 18:27:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232124AbiLER11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 12:27:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232169AbiLER1Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 12:27:16 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2061.outbound.protection.outlook.com [40.107.20.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEB5821814
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 09:27:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glWFAPAUi+6sjw1a5m2G9k1HothT3w0v1bDJ/AeLZgWh97wIRKT4Fd8DPIZes9U9CEzf7IYPyd2pFCceN4rO3Pk9oDjkpd30yXakAzLenSsS6QJ1Dx23lmqp8dhoImFWAEgvT3jOrHF5IP6Uirj4u5V4LW5Ddqdhi84znhHXYntnemDMYebE6vwlRUev+yvsz19v9NdV/8o6x61H2rSt/gM9B63SyFUmxMc7OjiN3YWDORKYqnRapzro4mVUn5BfjwTdBBouOaZ66LJXWt3OHF1haTu9w41GRRGpYnN38hyWAA8EjtKQNY/TKtI4hMfzqrfnMhDBKkVHdfa/bYaQAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v6qIurGAr7du57NylZYnwCHuVpNuggX3qKIFpi+NoIk=;
 b=dN/DCFF0VcllQnGtdPCxS/FMi1vzpsunfm9VnxIGF+dbP6jcNjkhkP+Qd8T75MgnKKehvcDLpnbMh2q9pJqHYD6UojNwBM0fJUv09zweyS3fdkVYY/CQIOlmLi1sSqEoIQF6FyeQikImYFzjesKLT6Bnb9ZckizhuC8F2nY+bicVm3k3WYd5t8Bm/fhkh+EEglIlwtDsPpI43NJyM39EHeRPqwAt6bbqzm1Kwyd5m20s0SPYruPvJcYD33odoIFyqrTLUsIBW7i62GajdMfXdoVAmi85DZxMAOfBW5pPT7nFaA19Od3Ee3KO64KXCxcETtL8PFGSCjX0JPp+btY6qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v6qIurGAr7du57NylZYnwCHuVpNuggX3qKIFpi+NoIk=;
 b=qyE6fdnHivuCBHPAh+WgsrdFO5R+GtLvvuyJjXaaZ/gvoUacuCUzF+2J2Jr5tuukJOkyRyHoAEfEezPEm0fxOu2dgjy0MgHBKU2/kGw5DTNSmGKB/vd2j8HqSMogndmDrHhgxaiGbLTWt8gdMTGg6tU1qoR1cNu/EL6EC4GOm4s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM8PR04MB7442.eurprd04.prod.outlook.com (2603:10a6:20b:1d8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Mon, 5 Dec
 2022 17:27:13 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b%7]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 17:27:13 +0000
Date:   Mon, 5 Dec 2022 19:27:09 +0200
From:   Vladimir Oltean <vladimir.oltean@nxp.com>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
Message-ID: <20221205172709.kglithpbhdbsakvd@skbuf>
References: <20221201003109.448693-1-tharvey@gateworks.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221201003109.448693-1-tharvey@gateworks.com>
X-ClientProxiedBy: BE1P281CA0016.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:15::15) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM8PR04MB7442:EE_
X-MS-Office365-Filtering-Correlation-Id: c9c55ad3-0015-4672-5d2c-08dad6e5f265
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LvqqUg3XMnG6yOpeQez5MviC8kdN3IzaLOdPxUUM0SvB7tvjREMSi2CmkKOcMUv/FJvs38vxEgGPRZvoBPrnJeh2tbgUZ22ss51OV7c3YBHbTm5T14UlvYJu7AuO5PNGDB/GjDQ3eD5zLBLYlir6BBv/OHQFWepEkt1ftFn+EfqPaJFCpNCxvvlK6J/wZ79euSiGCRaRyrqMAcaeZEWNaFxWt0KfWLK8IMxEEStk6ucbPZsIVvb8KkO8Bi9cKRhm88OPIG9WD477rJt8wcCP4Q83uz1Umzh+RvYIZrscPeKA1+HVicCL3iMwndhuX8UYKc0n5APZm55QEuQeSJT+BGgbeo7/+eotK3PbXusTrdirSYnDpXaa8h2NqMd+CyB0CZe7NuIZsU0VSNzMLzHlDgZStUFAZ9hXpr+xMLvuZNeyJpoWAZP4pR2MemZeKSHiFbNWK7BJTwJ+ihE/0YLqrsojjQR8Bdw7dww8MAh/p1zzMfRc4seV+TIYoupOElCbboEmuBHGhtzlD6mRTZzA0N5roDLBn/xDAm5yDKA/n51wlP4LEggZj3WIcDvIjfcjPsrh0cr3hxmF78Fjhyd4Sv0WTZLMinKkePcYZ/uEUMMJTzbU6iICC+9Sjdnn5lhh5p5fAMuFxp4HwYCxdP2KX/MV30sQIPMvxWurs2Cf8KffGgIOo8CHR1bFHHIsX9DCtAHGKPbG8bqFF8TA80ISDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5136.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(7916004)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199015)(38100700002)(86362001)(41300700001)(2906002)(8936002)(4326008)(44832011)(3716004)(5660300002)(66556008)(478600001)(6486002)(66946007)(66476007)(966005)(316002)(54906003)(6916009)(33716001)(8676002)(1076003)(6666004)(186003)(6512007)(26005)(6506007)(9686003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFBYaTdrYXI0RlUza0FTQ1Q4b081T2xYU3JSTTFuUnplQnZ3SmtWK2h0Vjh1?=
 =?utf-8?B?QU0xN3A0T2FFcFFVelpWSFZtOUFZVUgvWHBXUmtSV09RNlVuajdPQ0NDYjVW?=
 =?utf-8?B?dEhQSVRQQTBHdGdseDh3Ujh4MWd3R1BqYXc3TVJpd3hiS3I1bGhxWHAvL0FV?=
 =?utf-8?B?SjJFaEsxVFJYVXo5OE9RTUY2WjlzMy9nTFZFUGtpM3huaStFaHA2c29xRTVi?=
 =?utf-8?B?dVprdVVMVHFobW1rTmp5UE5zakxsT1dRZjdQQUl1amNnUFJWYklFZVM1aENK?=
 =?utf-8?B?UkFnbWN4OGptWE9hM0dZTjdnVDI1ZGZveFc4STMyUjBxWTlBNjJzR1BwNWl2?=
 =?utf-8?B?YjN4MVlQNzc4NndTSXg0T2pFb0Q3dVZxd0tDVkphU29MenNLaFNUeXlpQjl5?=
 =?utf-8?B?a09va1lMbngzTm85SWkydEJSa1FyeHUzY1U0ZXY0VE1FNVBFMzBSUzRnLysv?=
 =?utf-8?B?dTdBNGVwQXJ5UkNkL1psUWdid3VjQmk2bVlvOXVzcGJwbXRWTDd6clMzc3d3?=
 =?utf-8?B?VGhERnBJaFB6UVVEd0FQcHkwbTRIUFZjQThjYkl5dExDSW1xUE5Pa3dRb2lo?=
 =?utf-8?B?cExBU1A5M3Z5QjZBcTFPa1ROTGNZUU5mVXRIUjZ2bmcyYS9IdkhCUEJDb3h4?=
 =?utf-8?B?T2JNclZ4eFpPR01OSjAwUWxXSVpIT0JRd1Bxb1hBVW1PZFAwSG0rajhUVmt2?=
 =?utf-8?B?MjVBVzFVaVM1QkZPa25ldmRIN01PZzk3Sk9NZXd4TjhhcFdiTlNialkwWHlQ?=
 =?utf-8?B?empIK2F0aG56OGdULzlXdjA0alZ6KzNlNWpveU5jRHVnd2pHVjc1QUJ0am5G?=
 =?utf-8?B?MGZQUnQvNWFTcHhmVmhRY25JZGpTZmlWVTNLN3Y5NGpRYit5SWs4S2JSa0hK?=
 =?utf-8?B?WkNOUWhkYzE5UmNWbnNxTVRKdWxYMDZrRVZyMlhGQU9BZjlXZnhvMkpIWEtm?=
 =?utf-8?B?VW9tbXE3cXowK21Ib0JGZWI3K2R1M3VGcUY0RGdsOGdhQ3NNMm5jSVBUV1BU?=
 =?utf-8?B?cWF5aWJaMjdrRXVQK1UxNFdkN0lXVkUvM2xvZEhMTmRMUXRvTHJuMUR6eVRt?=
 =?utf-8?B?RDA1WGVZU2JscVNVMUpIb01CUmliZkFTZ01XRXVRaHBhdnZNRUV6eG9TYTRC?=
 =?utf-8?B?ajgyRWFERE4vNVdBdVFsN1FYVDIrRldpZVhBYytkQjZZeWxBbW5WMTBmSC9t?=
 =?utf-8?B?TXhDSWRCcVAyVzI5K24zaFhjOVJzRmU1RHN1cTAxNUF6bGxoallzUWg3TUxE?=
 =?utf-8?B?a0xjT3BxWlB2bTM2cjVtM0dad2F5dUlYb3M2b1kwK01BSkZLQzYrdGxkYkVH?=
 =?utf-8?B?S2gvSXYrMjkwN1VlRDVZT3dzUUkzNjM5K2pJdEo3c0diN1VTUnFBK29nNnY3?=
 =?utf-8?B?aklWamJKNU5aK3pmdlR3d0RPSXFpald2Q3VRWS9CMEU3eCtzeU0vVmFFYmdF?=
 =?utf-8?B?L1owUGJ4a3E0T1hQbWhVNDdmNm1FaG5wenplMnExMnRnNDN4L21JYjltbmh5?=
 =?utf-8?B?WFRqR0FVR3RDV0hCM3dyZDFXemNrWDVZV2Q0VTI5ZGVNZDJrNHZYT2RpN3dp?=
 =?utf-8?B?aUdJdjlOY21ta0dWdTM0NUdOS3ZjSmgyd0s2SUFiUkF0OUNBRVRaVVNsbFNY?=
 =?utf-8?B?eWJ0b0M1VUVBR3VHZ05FNW1QdUg4MWI3NXFRZ3hjVmtNMTBEOGtoUVpBK3p6?=
 =?utf-8?B?OS93eXF5TzZXZmU5VWoyUGhIQ3JEbERZM1BLWGNkNkdycE1nK3RWZkM1R3Z1?=
 =?utf-8?B?S0p1UzZYVitldnk3RnhoVGRrM1Uya2lEd3gyUG5xbkVHSXJralJoSTVRUWJR?=
 =?utf-8?B?cHVGNUJvNWV2MzNaVTZyc1dnREtGN3daMmUyYlpaekk3OVB5TCtDcVJTL2hj?=
 =?utf-8?B?aE5POUE3cSs4UHZrZmtEVmo5T0tiY2F2V0VnMEVQQWU5ZC9UcDRPcERjaisr?=
 =?utf-8?B?UHdIZm5vUkV2aWMrVVB2ZnFQNEN0bjhNa0FtTE1KblNIQ0VFVGUxeVFrNk5m?=
 =?utf-8?B?VzBYUmEyT0VLWjFTSWhHaUtZVFRSVGNOYlVjeXNRQXZ2OTBFbU8xN0NWSjNO?=
 =?utf-8?B?dFhhM1ZMQjVoUWcvSXRZWjVMRFhqYUdpZFZQaUZmYmFmdkZvQ0loMm9qdmgv?=
 =?utf-8?B?SzBlVjdqS1ZJNHFqMGdCWUN0RkJ1Z3VXZkplVGZlcVpDY01uQXZlTXR3czBL?=
 =?utf-8?B?Mmc9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c55ad3-0015-4672-5d2c-08dad6e5f265
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 17:27:13.2836
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +iQA8Nz4JwP7Dlmd+Df/OtJIGIDX9bmtJc2yvJ+kHZ4bK7u7AZW4sKr84EKEKZPaYbiYpoDMCYNf84lsYK77nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7442
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 30, 2022 at 04:31:08PM -0800, Tim Harvey wrote:
> Complete the switch definition by adding the internal mdio nodes.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

>  arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 35 +++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> index 612b6e068e28..08463e65dca3 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> @@ -212,6 +212,27 @@ switch@0 {
>  			compatible = "marvell,mv88e6085";
>  			reg = <0>;
>  
> +			mdio {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				sw_phy0: ethernet-phy@0 {
> +					reg = <0x0>;
> +				};
> +
> +				sw_phy1: ethernet-phy@1 {
> +					reg = <0x1>;
> +				};
> +
> +				sw_phy2: ethernet-phy@2 {
> +					reg = <0x2>;
> +				};
> +
> +				sw_phy3: ethernet-phy@3 {
> +					reg = <0x3>;
> +				};
> +			};
> +
>  			ports {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
> @@ -219,27 +240,41 @@ ports {
>  				port@0 {
>  					reg = <0>;
>  					label = "lan4";
> +					phy-handle = <&sw_phy0>;
> +					phy-mode = "internal";
>  				};
>  
>  				port@1 {
>  					reg = <1>;
>  					label = "lan3";
> +					phy-handle = <&sw_phy1>;
> +					phy-mode = "internal";
>  				};
>  
>  				port@2 {
>  					reg = <2>;
>  					label = "lan2";
> +					phy-handle = <&sw_phy2>;
> +					phy-mode = "internal";
>  				};
>  
>  				port@3 {
>  					reg = <3>;
>  					label = "lan1";
> +					phy-handle = <&sw_phy3>;
> +					phy-mode = "internal";
>  				};
>  
>  				port@5 {
>  					reg = <5>;
>  					label = "cpu";

The patch context here might conflict with Arınç Ünal's effort to remove
label = "cpu" from everywhere.
https://patchwork.kernel.org/project/netdevbpf/cover/20221130141040.32447-1-arinc.unal@arinc9.com/

>  					ethernet = <&fec>;
> +					phy-mode = "rgmii-id";
> +
> +					fixed-link {
> +						speed = <1000>;
> +						full-duplex;
> +					};
>  				};
>  			};
>  		};
> -- 
> 2.25.1
>
