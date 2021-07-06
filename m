Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CE833BC4E8
	for <lists+devicetree@lfdr.de>; Tue,  6 Jul 2021 04:50:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229879AbhGFCwv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jul 2021 22:52:51 -0400
Received: from mail-vi1eur05on2070.outbound.protection.outlook.com ([40.107.21.70]:21760
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229781AbhGFCwu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Jul 2021 22:52:50 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=njU85+CdbGoK65FEUF4UxjyVqzS4DLFTyUVgSi41D0S7oSxXvbI2gX4Lgusuo4sz+x4Fgf4Y0qAm0aPnPCr6x1gLyTua3n0xqhtJM3sWJ9cFwLCYbAWnGliNoYrmDCsrpmZksHm85f+80VUDD4qaPojD6IkjxOLNKjco8POWNRxAvN/+cJzWKmlOeEhj2y1FsU8XRtOCV+roC8RKqYY7AgaYYQoOyTaMnDhcKwo43TB8NpKxJtk7OQOizQTR6bmRsuDYCtG1jpPshpdGlhVeQeBUEh5txUWSrjveuQjRlE6ngiobg+iEn3ZHk9V2tWnV7WIXYzt7EteVkA7kqIuKww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/DMuqOjhvPNwiUcfrtSVOxlzq50wysjoD7BdCCecC4=;
 b=VZHHy/luiGOSlYc61RjqRtg48ZgeqCqVle5E0FoXK1agf3NCwO2ieIGn9SpST2tg2o3zyoGVJnjc2BveSULV7GdOi+ViPLDDUqs/xl04l6mu7lhQXt2My1z00HFyawBC1SNtqEC+Anb6vupUz6rneGOrLs7TCnOyVe+NoFBZuINANSJYWEV32xU1+wWXgIetnJE4N2HUgoaQ1gPPrCcbSa2lGiIaJzjVEuV1ovThejUR37iJtKZkNh5HnG4cBytNopbZL8cig1RRlaOvB7inNkPpBHU9ME3Mid0rPXBIfrIbZKTBwnERG2FDQKOXuxzK2mUKaAwkHSaS1l6vg0rlWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/DMuqOjhvPNwiUcfrtSVOxlzq50wysjoD7BdCCecC4=;
 b=M3CF5YLaK776kCn/c2TosvOf972LgAaUL/ydoi07HA8xXf7Hmmsaa4vIf9gQ7NiOFaIlPW+AXZlrxnttT5X+oAVrgzCjwPnWteVjYkJMWJMblwnx7G8t/u+yVNpK6q6L7nzC0eYJHpnuipQw6/1K4BFuD6gi0jcNIZroNdMvWbA=
Authentication-Results: geanix.com; dkim=none (message not signed)
 header.d=none;geanix.com; dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8774.eurprd04.prod.outlook.com (2603:10a6:10:2e1::21)
 by DU2PR04MB8597.eurprd04.prod.outlook.com (2603:10a6:10:2d8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.21; Tue, 6 Jul
 2021 02:50:10 +0000
Received: from DU2PR04MB8774.eurprd04.prod.outlook.com
 ([fe80::140e:2f81:964c:51fa]) by DU2PR04MB8774.eurprd04.prod.outlook.com
 ([fe80::140e:2f81:964c:51fa%3]) with mapi id 15.20.4287.033; Tue, 6 Jul 2021
 02:50:10 +0000
Date:   Mon, 5 Jul 2021 21:50:01 -0500
From:   Han Xu <han.xu@nxp.com>
To:     Sean Nyekjaer <sean@geanix.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>, richard@nod.at,
        vigneshr@ti.com, robh+dt@kernel.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] mtd: nand: raw: gpmi: new bch geometry settings
Message-ID: <20210706025001.bqvrdye4v3cidm5v@umbrella>
References: <20210522205136.19465-1-han.xu@nxp.com>
 <13c975bc-b37b-8708-9ac7-acdc62ef7108@geanix.com>
 <20210525191308.jlxqvy7khptbuj4z@umbrella>
 <20210526094136.279976a6@xps13>
 <20210526141700.5gygssig4rnzn6mj@umbrella>
 <20210526173123.1787713b@xps13>
 <20210705104654.gko7ettkilrrosi7@skn-laptop>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210705104654.gko7ettkilrrosi7@skn-laptop>
User-Agent: NeoMutt/20171215
X-Originating-IP: [70.112.23.252]
X-ClientProxiedBy: SJ0PR03CA0075.namprd03.prod.outlook.com
 (2603:10b6:a03:331::20) To DU2PR04MB8774.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (70.112.23.252) by SJ0PR03CA0075.namprd03.prod.outlook.com (2603:10b6:a03:331::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend Transport; Tue, 6 Jul 2021 02:50:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d9564803-2bd1-46d1-e64a-08d94028c54a
X-MS-TrafficTypeDiagnostic: DU2PR04MB8597:
X-Microsoft-Antispam-PRVS: <DU2PR04MB85978D706DA21E5516C7769E971B9@DU2PR04MB8597.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +ll/v8uhQ2/MFY41Q/ebvAVuej3tvIN3u6V/kR6GgNA9LepKlrPf72A5H2EOOlFJk2JVOn+4WTOLTB42p5ZeiR+ik1TahjDnwMgD9bFtjy0xepCAYM34oUcvWYC5C1KgnEGKj2+Sa4j23gIGpfAVCuCJVVYvvvSekm8SCtXoTvVfdJ1mo0tFstpw+QG0BBINedGgenKRP6v7MuP/drnG3eiTvj9F6Yr57eglljdtO7ftmQMoBNJq0jECaUBgt0vialAXuYV5SARehCNhgdSx9ftQo0nw/+FyGqTaVDvS1XYMFqvf9wlKVDurrcqQl3cL0rL0YnTFKyh2Tz38qFDUG+JZNJ6vIb0gTKjCRBbUJXIP3rQYD4QP/ouqkThm5ad3Y0jzGvzPXdTWXei5su8Dq0BTxlydxGw3iJMSf5eItrQOg2byTTq+U3bkXv2gnaZsep/p3CXbjUsVBvOZpO9gmdrfJVs1Y4ipw443+kUP1K9FYxuOcN738z1z5LeWJL4ean4d3ValfcQTMMtLrXLXWP1kHlKeU1MVxTRtxKsZn81+n0Mb9qw7uH60bM1suY/eLeWTJH0jVVFaCXCQ6fVQEwWRRCFmWgb0ewh6JBChNlOLediSQYCv8LqFC0xfDOBXOgr+jkl4b9GDanEqe6X0fXx39NX3HxHmxEe8+4RrFk0tNsKk5eevBqVWqRg/PlDI3bMfF/v9TLe5EfOVcmhlYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8774.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(52116002)(9686003)(44832011)(66574015)(1076003)(6486002)(6496006)(5660300002)(478600001)(86362001)(4326008)(66476007)(2906002)(38100700002)(16526019)(26005)(186003)(956004)(66556008)(33716001)(6666004)(8936002)(38350700002)(8676002)(6916009)(83380400001)(66946007)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?XQqP1iMm+HvGK38A5rzKWtuuBjMq/ZogK+R/oXZrEJQ9NlePQXnXt13cbC?=
 =?iso-8859-1?Q?X9BuQyPh4ox9cUE4m5MqaQ84yHfh15k1oSGKa4xEJv3wqRytjGEsHX8n1U?=
 =?iso-8859-1?Q?4eJIyCLxv51vpng50g3NcxNwp5tlWHyf30vPSDkkWIsnyB5LW58He1kO/H?=
 =?iso-8859-1?Q?RF+joTL9kQg1U8NaUIdjHKtr8NlZftwVpEwVnMKdcvmjl7zx+KNMaIL6/k?=
 =?iso-8859-1?Q?f3/SNJKA6hlBLmERz78udMuWs476qg0Gi/zARVdO5vf2GQVzWQkethBRR8?=
 =?iso-8859-1?Q?khdJBht8QuANK6vD3PxCoo3OcdaKfmCEjH9RPXN9TPpGPd+qDcANaWY2KM?=
 =?iso-8859-1?Q?Pk6Uazc2y5xAUXmckQ6Uqr/Zw6TKUAciGMCXLCkQaY6JkJ9rOSHW3Pnaq2?=
 =?iso-8859-1?Q?DWP+jeMODjKBLueFaHQ5GokRPt9LmE5DKOB2pM0+nrDLG178fupIL7BpwD?=
 =?iso-8859-1?Q?lkCHlajuB0Uaa+RcoDiPcUBfkAToHKZxYuc7chRP0vZcN2wxWbpNV+TOdq?=
 =?iso-8859-1?Q?Wv/FlgXcqJ0xKhRstvKcTA3sBfBcIYmOqsMdS8+7vJypD9kX6XUz6Ep5th?=
 =?iso-8859-1?Q?aJgdqYcUTfN/W9uaLDVewQ+JLY5RQpzFL/4x03QcsF3Brtj8JxCCMlnrsO?=
 =?iso-8859-1?Q?Y6NGlGYpheKQvtKBAMbpPOL2YaMlOiW1bATVy+tcuoV/hL46PR3FDH/wU4?=
 =?iso-8859-1?Q?2bd2az2uERjIwtkKSa+rnr4EEaALu25ND4X6BiWxtp17HlQ0DbOWNmLKNw?=
 =?iso-8859-1?Q?BpxG5Ek0MwNqFE4esVj9VL9aPbMsfd27v/lGMyVeHi4N9M0UtKfIdi0Rni?=
 =?iso-8859-1?Q?PkYPugrngTwbQ1pdQ8p2tQaScOxxvyFq3LgvJ3GbrPYU/y0Yc5DWxrbmBq?=
 =?iso-8859-1?Q?MMs3Qz708CSYs9DNLBQjOT+lxpQ7rJkleMNwnav4j8DPXqht8NObgBlyBk?=
 =?iso-8859-1?Q?9OKKbbHOeJA5beBq89Jj492zQSM1nkUbDGzJEN0hhMgtQ3qKu+WPGoUTcq?=
 =?iso-8859-1?Q?27LFVJuqXm9EFT7k1rFSA5/r5tlDi160zGtvUiOFxpvdPyHQDqcKHOgqBO?=
 =?iso-8859-1?Q?6+7sUGivuJ4gbyOf7r/vsWjPxXj8cMWzCOvzvMhwmpAgKMyyyn9S56CNxN?=
 =?iso-8859-1?Q?nY/Nk1LXrGrdUjbpkh+gFydus9SaA5GXiUFEfxe/UANUHuPAp8EANeihRw?=
 =?iso-8859-1?Q?vk09mdE7cmjq3zo9hcpde2J+5KwOax95M6mjwh3sGk0PCkcHhLuUf6mt7H?=
 =?iso-8859-1?Q?7MAiDrTSKNCXBMep76ECufCUYg90d9bCPnmhJ2lO6k1YzrOpNCDsgH+FTN?=
 =?iso-8859-1?Q?K9vmjPoC3ETMccqaht4Mh6Cr+9b+nvLFtDst37AxUIxrSCpTw8whHvfxo3?=
 =?iso-8859-1?Q?2YjyLEfrls?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9564803-2bd1-46d1-e64a-08d94028c54a
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8774.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2021 02:50:10.5034
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZDwlwc2spwAAY16Eg/19set2krkjC5/6IsTmowRbdksQEZ5Upg88KTTeyYoUUb0Z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8597
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/05 12:46PM, Sean Nyekjaer wrote:
> On Wed, May 26, 2021 at 05:31:23PM +0200, Miquel Raynal wrote:
> > Hi Han,
> > 
> 
> [ ... ]
> 
> > 
> > I understand that (2) might be ideal to meet but is breaking all the
> > boards that use this driver really worth the trouble?
> > 
> > Short answer: no. So we need to adapt the calculation for new
> > boards/new flash chips/certain geometries at most.
> > 
> > > > > The new implementation might get weak ecc than legacy way in some cases but it
> > > > > is safety guaranteed.  
> > > > 
> > > > What does "safety guaranteed" means?  
> > > 
> > > set minimum ecc required by nand chip at least meet all requirements
> > > 
> > > >   
> > > > > This reminds me the gpmi raw access mode changes in kernel 3.19, it also changes
> > > > > the driver behaviors and makes totally different output compared with older
> > > > > versions. I know changes bring mess but we have to accept it at some point
> > > > > rather than keep compromising to the wrong way.  
> > > > 
> > > > How is this an argument? I am usually in favor of moving forward when
> > > > there is a real justification, but this does not seem the case, unless
> > > > I am understanding it all the wrong way.
> > > >   
> > > > > The change has been in NXP kernel fork for a while, so quite a few customers are
> > > > > using this bch geometry settings. I hope it can be upstreamed, any other things
> > > > > I can do may mitigate the imapact?  
> > > > 
> > > > You are well aware of the upstreaming process, trying to merge
> > > > something locally, making it used and then complaining because not
> > > > upstreaming it would break your customers really is your own
> > > > responsibility.  
> > > 
> > > Sorry I understand I should try upstreaming it early, so I am still looking for
> > > a chance to avoid further divergence.
> > > 
> > > > 
> > > > IMHO the solutions are:
> > > > - the current (mainline) default will remain the standard for
> > > >   geometries which are already widely supported
> > > > - if there are new geometries that must be supported and do not fit
> > > >   because of the "legacy" logic, then you may detect that and try
> > > >   to fallback to the "modern" way of calculating the ECC
> > > >   parameters (or even jump directly to the modern way if the geometry
> > > >   really is not currently supported officially)
> > > > - if your customers want a specific chunk size/strength when
> > > >   rebasing on top of a mainline kernel there are DT properties which do
> > > >   that anyway
> > > > - follow Sean advice: introduce a property requesting to use the
> > > >   'modern' or 'legacy' logic (with a better name than modern) but first
> > > >   check with Rob that this if valid.
> > 
> > Another hint: please check the core helpers and use them instead of
> > trying to re-invent the wheel: normally just describing the engine
> > capabilities and calling a single helper should do the trick. But this
> > 'new' calculation should only apply to eg. MLC devices or devices with
> > specific geometries, not to all devices.
> > 
> > Thanks,
> > Miqu�l
> 
> Hi Han,
> 
> Is this something you are working on?
> If not I really think we need to revert the changes to u-boot, to allign
> vanilla u-boot and kernel.

I will send patches for both kernel and u-boot to use legacy bch scheme by
default, and add some code to treat few MLC nand chips as corner cases.

> 
> /Sean
