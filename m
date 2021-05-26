Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0338C3914F8
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 12:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233864AbhEZKf4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 06:35:56 -0400
Received: from mail-eopbgr10046.outbound.protection.outlook.com ([40.107.1.46]:24389
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233904AbhEZKfz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 May 2021 06:35:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ggUtmmnngPCY4a0J/k40n28tKTO2Yh/qB+KYqBidGXhkaZpoVpDw+54ZpiUg+xNL5DR5rPCHvBeolYyelUgTX8r5ehI7aQOe0rzRjt4/l97tnObmM5ZxQCYEdEf5yIYJ8EzyckFRhmra5t4cc8827mPse9irohwSQlnlzvRwPeGRRj+70pYpf55111F2qcGHtjORt8BL1ObhmzEB15VWzRWOE9a5cvAwBb+V99m7x6lKaIdhB9GT0wA0C/nS+e7OPPo2ivjCAhOtCIkknGUnbxqRbjStYGQy3mDHFRv22LbnuupfXsVoYLKLYXxF15EIkR75zCiVwKgfar8mR9UbWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=urHd/sa8XyzhrB+OOp948qGNXukicOVhZ96csPCncPM=;
 b=GcNZSrEmqmYLKxR23dvPOQRpJzXM/CWZWbarGNJ1lOvBObTS4NiOiuzSLqu9TNtSawq7jhFtQoGAMv1/ftXPDvIDsL5kZDwxyOYIRwKPOkkUyRhjgnebQATikUCAdVI4NLpCsOZ4Yr8vYVNDXRukuar4Oqef6SITqpvat/Xtebe9elvjbsdtH1WfEm9oDIo7niBXRNwS97YpYR8FZ4VCdn6cADdsPMSd9yRTrK30RC0phfsI291+LWTx7t36yKYYppb+L/J4zpk7KNPum1NaI49gVl+EFXvIfEOVD3G2VHLyNbg+XsZSvQe91lXBsD8ScOsilelc+7yxX9lve5zUtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=urHd/sa8XyzhrB+OOp948qGNXukicOVhZ96csPCncPM=;
 b=b1I7m0XzRxRXLPUBl9B96B/kG+vCcljkQoiCY/QuiUmEmaOrtBXqTjasA2UQhYYttL5Q8sc2UoUi253MRSXTRl1g7G9q/CHT408OS7ljB+Z6xIVEjUj9Y+RYl6yJukluYWsNyXTTEq3ClibizmxMAFUhjt23ApTclE1EapFZzI4=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR04MB4479.eurprd04.prod.outlook.com (2603:10a6:803:69::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Wed, 26 May
 2021 10:34:21 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::49a5:9:d201:2382]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::49a5:9:d201:2382%6]) with mapi id 15.20.4173.021; Wed, 26 May 2021
 10:34:21 +0000
Date:   Wed, 26 May 2021 13:34:19 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, dongas86@gmail.com,
        linux-imx@nxp.com, shawnguo@kernel.org, kernel@pengutronix.de,
        festevam@gmail.com, devicetree@vger.kernel.org,
        Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/2] clk: imx: scu: add enet rgmii gpr clocks
Message-ID: <YK4kK+r2Dkb+J+CH@ryzen.lan>
References: <20210521031248.2763667-1-aisheng.dong@nxp.com>
 <20210521031248.2763667-2-aisheng.dong@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210521031248.2763667-2-aisheng.dong@nxp.com>
X-Originating-IP: [188.27.175.31]
X-ClientProxiedBy: VI1PR0602CA0005.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::15) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen.lan (188.27.175.31) by VI1PR0602CA0005.eurprd06.prod.outlook.com (2603:10a6:800:bc::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20 via Frontend Transport; Wed, 26 May 2021 10:34:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea51a7ef-0873-439e-0154-08d92031d281
X-MS-TrafficTypeDiagnostic: VI1PR04MB4479:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB4479B0EFB0E44D007838C572F6249@VI1PR04MB4479.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4AND25kn54LjYIuBJzo4fOtK+VthPIfQQlaFQJgyfpSJgnkn1oJT7fdKtFwzgYddPbl4X2IHHEU5bXcStD+yVycBHyjrTbaFj8mzDQcweNXZ1TS4+QSF84iaUi1+vUBoCSiUzui33NdwaYALLumGowT/wE9A1CmXJ4dkhjnEV37Z11siMYfCNEWp7CyYGARsICwPUyDy/FTngHM3jgN2coDVnzS3//VpaQ5FqBYuM+atRcsP9DpcC7Nqnlmoej8/vchJs1Ps/aMQXcniCRnv8DjjgQ8koDyK4groXZ2TqmLh1np2Kh4orhslTegq63yv+xfeHmjzxoTDmkTiY3xj2fMJ6iNWfUEwCWJYHcl4w31ej9IGrM582teicPUbi2W8LjZi7gP4+/b9NZqp1T+efx1bGrRUNVqZyG4Fm6Uq4mFhILbJ489YlPLNI4nNOUKHux2dNkNPAaKXvOpVRC5xSOzR1RL+yCjKsKkP7v7/TEaTi9H9wXArmY5eND7QfcVHsrxL0G3mv8y8KROoV5mVZuwY+vVYG6G4syWZZVPNFktysH9DerFhrbH2RnKlkyDhRA8wXLL/7t0Z0hPf5PO7JPVvQUVW74gaR5c2d4e4wXB43CIEC3Eii07Up4k7OUKtO69LuziRKfAFuoB97mdBnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(83380400001)(6636002)(2906002)(16526019)(186003)(44832011)(956004)(5660300002)(498600001)(66946007)(8886007)(8676002)(8936002)(86362001)(38100700002)(38350700002)(9686003)(26005)(52116002)(7696005)(55016002)(66476007)(66556008)(36756003)(4326008)(6506007)(53546011)(6862004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?wdIHLJ2crGjl/ojt4eOc1AFaeMoUmCB01gncyAtz/T6Ju49P8lL65ZsuyrQi?=
 =?us-ascii?Q?QDs2YzfQTSMCxuKMQN9GdO2z/puj3SIOwd1LeTC0E7AlMc4ak2hUSNGSHOYy?=
 =?us-ascii?Q?Od3P2VWL+sbxGghvtC56wYANgzRi0xETeDQfHaFG05jvMbmcUW8Z7aWgdFkQ?=
 =?us-ascii?Q?MvUbfNNFtSc/mGaI+28YyG1BSO8FB065q0JjkiDEgKdPTgqq90NF9yQv7g7U?=
 =?us-ascii?Q?+b+7YOFUrjKZIk//qQgwr4BUjpILPBEY2peWwKWeQe20/NW5ipjdQbD2mDps?=
 =?us-ascii?Q?I9L7GJ1tQF9hOKKzqGYvlq68m8Bh+MDh5ZcFZZ3le80fFB60gq53dHUDH19H?=
 =?us-ascii?Q?Hmr7fZKhXxEaFeo2RjP7onuwXksQvckJAyrr3eFcVdpyZhPL4oM0E2r4kHLT?=
 =?us-ascii?Q?GHFn865xU6s0loBNND90ZuVjYJ+WKtouKwU2WIyLGujYcOkB7sFbqC7j+8tz?=
 =?us-ascii?Q?ofhwnHRoaQVyChsEfCwZ9W7jOde3kZS54LDFpjpOsADgCinaxo8mS/5cdw4L?=
 =?us-ascii?Q?yRqNmHVPz/3XeSBSzLx9UCeOGJUGyGooG0mfMY5H9oS1s4nKlyYdgOn3Bz8W?=
 =?us-ascii?Q?Elo8Jm5Pih6PoCa7hW6kg4baiJJvaX2RWPQ4lqbz6xzGy2nOpl6jajeaEkUU?=
 =?us-ascii?Q?2PEFgiCyP8sapuHu4UMFjZSGgQs1CdFOQPr7kqFfFqufFXPN9QHg2h1wGyzm?=
 =?us-ascii?Q?OV09aXqrrEcsr+ars8oIoZECR1cvutm4BUuiEt/6syf+B4G3JoV5dTMrSXpK?=
 =?us-ascii?Q?szZU7l18N+7LOhvkA7JRv1DH+JbW+oc64aRRvsrTqLjFOIDk0m2ndHJnwf2G?=
 =?us-ascii?Q?roBAa7bEXLWkzGDE9kMoZZ6tkC9JWFTISe3P3anSWLLanwak7BNrKkBY1EWN?=
 =?us-ascii?Q?X74S7jIQVnVDlNvPnGVTbKoSeLMU6oKX92HoIqSXYwyYfL+Kuu/ZcvUQ2aRM?=
 =?us-ascii?Q?/OXwQC+RJE/H6Nc07GvJ88OOzr/nAi0OPuWMCGIXrqgnfieOcsZ3jpRUdFlK?=
 =?us-ascii?Q?4k1D5sSALdnGg1yOU9TB9268RtdSfp3X1/oqBGpwyf3Zw47SmTZqqwX+2ekh?=
 =?us-ascii?Q?gHFeR04QF51e4/QhdcdTRZettwghuHW8V4drvqQvoCMU5+zP2GTtF3bh01ZN?=
 =?us-ascii?Q?VjwjSP5yhKWHLZEzydIDcwj74KBmF6Tu6yfr7VNNthi4esqVORIxJyubuykd?=
 =?us-ascii?Q?BQ1QFpIQ8JT3OI98SVfi9xztDKTsUpwDSKjL7NjO0AQbM5fbfTihQFlCBITr?=
 =?us-ascii?Q?UBEZpBsamAc4/t1j7vX2kYV40sv7hQ4+TCPSU6MjsyzdezbND5U0F0efkuwx?=
 =?us-ascii?Q?2NZob59EI08I89+UVaDmw+0r?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea51a7ef-0873-439e-0154-08d92031d281
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2021 10:34:20.8931
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v61DyIUwYeWZVGkN46hc6QTKHq8v81QC4Ts7hkKst1lU4Pkblfi7JmC9084RYRZM+143RpEpIBBTxJl/vMrnqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4479
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-05-21 11:12:47, Dong Aisheng wrote:
> enet tx clk actually is sourced from a gpr divider, not default enet
> clk. Add enet grp clocks for user to use correctly.
> 
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

I'm OK with this:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8qxp.c | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> index 88cc737ee125..f3cdd6449212 100644
> --- a/drivers/clk/imx/clk-imx8qxp.c
> +++ b/drivers/clk/imx/clk-imx8qxp.c
> @@ -25,6 +25,16 @@ static const char *dc0_sels[] = {
>  	"dc0_bypass0_clk",
>  };
>  
> +static const char *enet0_rgmii_txc_sels[] = {
> +	"enet0_ref_div",
> +	"dummy",
> +};
> +
> +static const char *enet1_rgmii_txc_sels[] = {
> +	"enet1_ref_div",
> +	"dummy",
> +};
> +
>  static int imx8qxp_clk_probe(struct platform_device *pdev)
>  {
>  	struct device_node *ccm_node = pdev->dev.of_node;
> @@ -80,12 +90,16 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
>  	imx_clk_scu("sdhc0_clk", IMX_SC_R_SDHC_0, IMX_SC_PM_CLK_PER);
>  	imx_clk_scu("sdhc1_clk", IMX_SC_R_SDHC_1, IMX_SC_PM_CLK_PER);
>  	imx_clk_scu("sdhc2_clk", IMX_SC_R_SDHC_2, IMX_SC_PM_CLK_PER);
> -	imx_clk_scu("enet0_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER);
> +	imx_clk_scu("enet0_root_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER);
> +	imx_clk_divider_gpr_scu("enet0_ref_div", "enet0_root_clk", IMX_SC_R_ENET_0, IMX_SC_C_CLKDIV);
> +	imx_clk_mux_gpr_scu("enet0_rgmii_txc_sel", enet0_rgmii_txc_sels, ARRAY_SIZE(enet0_rgmii_txc_sels), IMX_SC_R_ENET_0, IMX_SC_C_TXCLK);
>  	imx_clk_scu("enet0_bypass_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_BYPASS);
> -	imx_clk_scu("enet0_rgmii_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0);
> -	imx_clk_scu("enet1_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_PER);
> +	imx_clk_scu("enet0_rgmii_rx_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0);
> +	imx_clk_scu("enet1_root_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_PER);
> +	imx_clk_divider_gpr_scu("enet1_ref_div", "enet1_root_clk", IMX_SC_R_ENET_1, IMX_SC_C_CLKDIV);
> +	imx_clk_mux_gpr_scu("enet1_rgmii_txc_sel", enet1_rgmii_txc_sels, ARRAY_SIZE(enet1_rgmii_txc_sels), IMX_SC_R_ENET_1, IMX_SC_C_TXCLK);
>  	imx_clk_scu("enet1_bypass_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_BYPASS);
> -	imx_clk_scu("enet1_rgmii_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_MISC0);
> +	imx_clk_scu("enet1_rgmii_rx_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_MISC0);
>  	imx_clk_scu("gpmi_io_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_MST_BUS);
>  	imx_clk_scu("gpmi_bch_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_PER);
>  	imx_clk_scu("usb3_aclk_div", IMX_SC_R_USB_2, IMX_SC_PM_CLK_PER);
> -- 
> 2.25.1
> 
