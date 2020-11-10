Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 360942AD239
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 10:19:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726213AbgKJJTT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 04:19:19 -0500
Received: from mail-eopbgr00081.outbound.protection.outlook.com ([40.107.0.81]:4164
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728986AbgKJJTT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Nov 2020 04:19:19 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KckKjgDzcUPwSgq1dXDU1zIHaPGAveYcaTw9kOgJmTG+fkXN+WTBhOr/kdO9aKL3+lsy25xes6WpKBaJW6uaO7I/vxRrPYlFvDDWU3fpHwkwYrQ4jk+UyYIBBOjcyQYmkQhS1HnK7GNSjwNyfLj8c+kbFQ7i4U1ZD+mDHpgVQRim5H1cC8DwCgKLRo0Ing9pBuGJCrKzWzuUBw5qoMQTQwxs8OfVZ/2Zbl7re0bAf0+djb/wgO7vPXagv5OVA22GyC7oHXOwcLAwXnlPckIukjK0HUbXB6wh281EGoF6MjPiBmKZskuG9zwc0vaI9N9gd3CNBG5vbIxYlZMiOWdk9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gWJ9LIdiUbCnTDzycwSMkxwpj26m4n4SxsUWJ5ssTRY=;
 b=M2GbvbF9eOo3BeUuY1Gtv2zJjcRB6AcwRa5ihXUpsBKWcm4iiXMNRcqSSfNEgDL+C4mc94bBYJRmViVPmSlG1V4YYBNyiqUH5ihN0kN2BJD8l6qn6ZISGLt6VGZSNT4x5SH3lq/bzfBbjLa5CIgCSa1WHNLewViwtiZOlQggd1C9N5xwlDJhLcp9In5p5bbZbMGbrtUAKnmVHzWmFuvF25zhq/N6vfPPMmUYigzW0WAGvIjib6YSygXND0vtXmg3Xi4h7/Z03T0t9R6iqGsBY5leoRLhu8fbm+HOZU1sRJutIzsaTRFIa3ao/8shm27pK4zQfaKijLR6AS2sdzVm/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gWJ9LIdiUbCnTDzycwSMkxwpj26m4n4SxsUWJ5ssTRY=;
 b=TdXqXxWBH9Fl766j2NXNb0sjWPSwwDDFFO6DxC+6KEXWzBk+vxyYoLErp0gk7SfbTodumyJu5PWmrLJj9tiWB34PhKeyRFr4v+0PuiK23V6E0ZKl+13V9eQuQYFUSR47zDreUWwbVSB447ZP7UQdENpdydQLAfA9GE2h8MPqq3A=
Authentication-Results: ravnborg.org; dkim=none (message not signed)
 header.d=none;ravnborg.org; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB3983.eurprd04.prod.outlook.com (2603:10a6:803:4c::16)
 by VI1PR04MB7070.eurprd04.prod.outlook.com (2603:10a6:800:123::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.24; Tue, 10 Nov
 2020 09:19:13 +0000
Received: from VI1PR04MB3983.eurprd04.prod.outlook.com
 ([fe80::e171:19c1:b07f:53db]) by VI1PR04MB3983.eurprd04.prod.outlook.com
 ([fe80::e171:19c1:b07f:53db%7]) with mapi id 15.20.3499.032; Tue, 10 Nov 2020
 09:19:13 +0000
Message-ID: <6bd2d6da04c4ab9b95152cda66ab8026068de1b0.camel@nxp.com>
Subject: Re: [PATCH] dt-bindings: display: panel-simple: Allow optional
 'ports' property
From:   Liu Ying <victor.liu@nxp.com>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>
Date:   Tue, 10 Nov 2020 17:17:29 +0800
In-Reply-To: <20201110055324.GA1993169@ravnborg.org>
References: <1604477017-17642-1-git-send-email-victor.liu@nxp.com>
         <20201104104735.GA1581328@ravnborg.org>
         <9a187307aa4f39c44a117f2b99a7f7fd4817e129.camel@nxp.com>
         <20201110055324.GA1993169@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
Content-Transfer-Encoding: 7bit
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2P153CA0016.APCP153.PROD.OUTLOOK.COM (2603:1096::26) To
 VI1PR04MB3983.eurprd04.prod.outlook.com (2603:10a6:803:4c::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from blueberry.ap.freescale.net (119.31.174.66) by SG2P153CA0016.APCP153.PROD.OUTLOOK.COM (2603:1096::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.9 via Frontend Transport; Tue, 10 Nov 2020 09:19:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 14493b76-8519-47f4-c231-08d88559b05e
X-MS-TrafficTypeDiagnostic: VI1PR04MB7070:
X-Microsoft-Antispam-PRVS: <VI1PR04MB70706B96C3AC4A29CB81967298E90@VI1PR04MB7070.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZMFen8l8gPvKYBplOY11hIykAcydPKCLa18EPXH2HklQAeV7n3B0z4UoOWekEl8dmkH/Vct4dzVhqBKAcWGnaiJ9CGSVvqCwtH+ZMjUrYM8Hx493jzzouHN6LkxQQxb7bNh7QprG/LJ25XNRrMwo8nr3YZYx85GyNBxtdtOh8x82aVm9ZBz98b43ctJdEygRXoAbHQRFH0M34lKEf9MWtu40GaBvgWM+gjtSmP5aKIvHm0bV2x4KNJWQDrF+jRBHCY5fvFZjNh3p/phMyIjXutnczw7gjs7vAAzQSHaob1QI7nOyFg8eBeixOAhNZ8XlTCFyx5zFTrl9HSM4N0Rvcmy5kd048xCeX5LrIkQnLjE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB3983.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(26005)(8936002)(66556008)(4326008)(52116002)(16526019)(36756003)(6666004)(6506007)(186003)(83380400001)(6486002)(2616005)(478600001)(956004)(66946007)(54906003)(66476007)(316002)(6916009)(5660300002)(4001150100001)(8676002)(2906002)(6512007)(86362001)(966005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: LWvklIy+jCeLTosnmZaB9RTmCOZRFopFQ8Gr9gEKp+w0xwMku+2RKjUzRCX2SYjwNH2KsZk/s78vJnze49qlaxaYeUIUA3zs1EpYAfrmwT5XVdXgsX7z6QSmuZ+i4et4fjRhACW+IyCqcZkuRCURl9KKh9KBUQUX/XTducaPkukRmjQ586k4Xlrwtj2dtIFFABhLDxbZy3y6FbqW3RW2Akx6sFbIzv+4inEdJdjd7eYWrYDxNguBddGsJb/7/qojpK3Bjzg/mwyJDfjDTG+B2iVWAmTqiWtD6gGGVWmZH9JftmIOiGQhcM+A9FUj4mZtVEI0yxuuRJb2mIue2USgoIrB9/ssPof+E7AcMhkjI+wLioXMVhcqfhtEBYIKi0XY4456XdheTOYxrTjo7n13Eq+q92BkG2is5pRC9WD3BRPKUpJiBGo3uBfXwsP4Hp+Tbw5My7ouGgupAk/R5zXcPHnkGaqhvkU+Ddjbf3yDD3LIJGH8+18gb1hdWS4fnOWlP4RFXktyoYktBmWQTLGRMBl99dPHOtUG9LkPucO8UkO3wFNAG00v3nZal5s28zMgVlteZtrFLuCX+3aL021n99Hf5RJJriW4wtrP3/IbmXNUMxzfkQTacJo35BBwX827wA215XB1eDrqqdpVX3qSFg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14493b76-8519-47f4-c231-08d88559b05e
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB3983.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2020 09:19:13.4946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zLKOHlSxF76AdLqvBw82E2IWdmK5k7NVtsQ/9fbh1GtxYbCNs76Bz2/H/jExYkcDAs4vvwp1wyP/7KmrcTV/hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7070
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2020-11-10 at 06:53 +0100, Sam Ravnborg wrote:
> Hi Liu Ying,
> On Tue, Nov 10, 2020 at 10:37:27AM +0800, Liu Ying wrote:
> > Hi Sam,
> > 
> > On Wed, 2020-11-04 at 11:47 +0100, Sam Ravnborg wrote:
> > > Hi Liu Ying
> > > 
> > > On Wed, Nov 04, 2020 at 04:03:37PM +0800, Liu Ying wrote:
> > > > Some simple panels have dual LVDS interfaces which receive even
> > > > and
> > > > odd
> > > > pixels respectively, like 'nlt,nl192108ac18-02d' and
> > > > 'koe,tx26d202vm0bwa'.
> > > > So, let's allow optional 'ports' property so that pixel order
> > > > can
> > > > be got
> > > > via drm_of_lvds_get_dual_link_pixel_order() if it's child
> > > > nodes 
> > > > 'port@0'
> > > > and 'port@1' contain 'dual-lvds-even-pixels' and 'dual-lvds-
> > > > odd-
> > > > pixels'
> > > > properties respectively.
> > > 
> > > A panel with dual LVDS interfaces is no longer in the "simple"
> > > category.
> > > The panel-simple binding shall be limited to the simple pnales
> > > only.
> > > 
> > > This is also why we have for example panel-simple-dsi binding.
> > > 
> > > Please consider either a binding dedicated for the dual port
> > > displays
> > > or
> > 
> > Thanks for your review.
> > 
> > Does a new 'panel-simple-lvds-dual-ports.yaml' binding look ok?
> > I assume it would inherit all properties of panel-simple.yaml and
> > all
> > existing compatibles of LVDS panels with dual ports in
> > panel-simple.yaml can be moved to it.
> 
> Yes, that would be fine. If possible we shall have similar panels
> described by the same binding.
> 
> Try to send out the binding for review early before starting to move
> too
> much around - so we can get an early look at it at see if this is
> indeed
> the right direction to go.

Yes. I've sent out one for review:

https://lists.freedesktop.org/archives/dri-devel/2020-November/286482.html

> 
> 	Sam
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
-- 
 Liu Ying

