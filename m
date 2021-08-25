Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0524D3F72E0
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 12:21:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239741AbhHYKWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 06:22:36 -0400
Received: from mail-eopbgr10121.outbound.protection.outlook.com ([40.107.1.121]:58247
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239859AbhHYKWf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 06:22:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mq7pd4BHJg7dSEtEl3q+XFpx+oQCWOS7dM34EoMP7kdyFPRFW+6w1BnzjanTrv0+57wlrKQ71iHkNw7bioSb7BzYreQBELb2gOwThrFduX6NYRidkcc2MohH5cVXZ0zQLsIfjLuyPuWBtxLUH3/Meq52Wu1vSZBC07L8+QLGkUrM8xe0vT0wdjF9+p+jj5pc0IWeYc7/u24+JDPbea32kstpk+lXHDpSa3Ix7y/0XiUIWlVVtc29mo2v/vLtHyreUejb9iIlRRg688uaL+JV+8eZfDxgE7q0FwK6lRfw4164Sv/8aqi0QaUnHkcGth2wlFmcyJrzeGW4dvDMwOd9Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyewecAzGs+9COoSHzIJk3+AY40SljoHoVFnPBXaHpY=;
 b=gBFLJV1aYLrS51PxlpwYfY7ARUcAxKfwfHA0OGv4TsO6J72jrMtc981WwdNnoKer0VwCt0i5TSlo2TuH4ePSX/FLyN3wZx80C8KOkONu6DwuO4glkWyhUdIBLUmmeWeyfZ0FJiv41ROM1l7/l/714+s+jEDfjXLtXaC/GqhrnM12dfy3j3+PeL8IS3VMgcI+hcoB9QrB+XlZcOUahNSCi62/kvgC9M0IKXSFzOcqhKfXV9sTBsfbJd6J1a+74Njf+45zUzNtzkEgm6qImPH98fQGlEi5thyZkV5uFAoiYBusdFI4Bs6DHkzeQcdC8S4gZIhHGTYBAk4Sn90koveS5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyewecAzGs+9COoSHzIJk3+AY40SljoHoVFnPBXaHpY=;
 b=l/HncqLHfUFVNer1O/Ndbbh0ig/aJt9G5mQ9PMSUZzBxG6if7toItQp2IY6ZjyknPqpSW08U7JcfesPTORDdqq3wBsNYY56L7USuGGczwx/vzQBIG8nwPgMc4zfxsMbV0OMUTMkEKBQ6mmRYZQSKPxurqBy2W/wVRmLBe/4o9OU=
Authentication-Results: axentia.se; dkim=none (message not signed)
 header.d=none;axentia.se; dmarc=none action=none header.from=axentia.se;
Received: from HE1PR02MB3148.eurprd02.prod.outlook.com (2603:10a6:7:2b::33) by
 HE1PR0201MB2443.eurprd02.prod.outlook.com (2603:10a6:3:7d::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19; Wed, 25 Aug 2021 10:21:46 +0000
Received: from HE1PR02MB3148.eurprd02.prod.outlook.com
 ([fe80::65d1:4ec2:a48a:69fd]) by HE1PR02MB3148.eurprd02.prod.outlook.com
 ([fe80::65d1:4ec2:a48a:69fd%4]) with mapi id 15.20.4415.024; Wed, 25 Aug 2021
 10:21:45 +0000
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        du@axentia.se
From:   Daniels Umanovskis <du@axentia.se>
Subject: [PATCH] dt-bindings: display/bridge: document enable-panel for,
 sn65dsi83
Message-ID: <131ea94b-2079-3214-3ab9-f2129659cb76@axentia.se>
Date:   Wed, 25 Aug 2021 12:21:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: HE1PR05CA0277.eurprd05.prod.outlook.com
 (2603:10a6:3:fc::29) To HE1PR02MB3148.eurprd02.prod.outlook.com
 (2603:10a6:7:2b::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from midgard.internal.axentia.se (87.96.186.165) by HE1PR05CA0277.eurprd05.prod.outlook.com (2603:10a6:3:fc::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17 via Frontend Transport; Wed, 25 Aug 2021 10:21:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6182a23-e689-48c1-af46-08d967b2241d
X-MS-TrafficTypeDiagnostic: HE1PR0201MB2443:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0201MB2443F96EAC94E0338B328C9EBDC69@HE1PR0201MB2443.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xqc99p5m6yRrDla8t5VthDZVeCaetJLEwuxQQrSfupzoJWO6/GuKpb0+PNuzO5dFK1tK6T7TnOUcgWcREqqoxZij+aGJ51EtY7Viawd5AdRO1bRp2n5TKcmhfVhVriaZlX3cmKPGTBt42kAmPMqlDoW4sarf/g7KKjSHqbKDvvf5NhdtcpGAQhIzyT0DlsBPUvYZY/lKcHURTACcrPBVtwPvrLfiiLdpZkL21VDkEWFXzu7qO9k0WDHPN0skJo1Nu2/2P5Mkob+rwpU+tZWUEL3foxhoGFCQoAZDsRQaj403ii9VV8yDBdEx2e5LrRfsfWykUB1Y3iu0Bg+pze0ZPPqYx0ZZPlYUsB9P+2G1WtfVATMfZUG4MrOnjlppD0TMeEwS7Fxf5NlfGvmg8GO/qMgu6QR3ZCpn/yn/S8uGHXsocgCX9hAcnhqbfHKixA3zwSewOldzJreLqxOp/D6V14Secv8PnJqFMeWSwypUb8VMhSMikWA3dRNN6ssbGYNRPyth6Rxr3QLMUjz3/d7uXqT223udXeiYazZUtsc0GiR5STSpCZxbb2Hf100xi2B3eAVpmzJhYy1M2U9PW7hPSMnUiMFkyw40VKQzHHMLL0K0/E8I/AkhmM1BQMfpcH61XmygXGRjGflBEauPxAhbj6uRDl45YAkNhi+pPLYd/rmOSEI0yNCFMgapKmtUEtd16sHv5pkG4BnABF8F/U2fkx9weFkVkuSU8Dg7MgpH2TkY64kDnc9fs4m+V9rfktIe38bdxGhLDS2fzWgkjCnECw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR02MB3148.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(136003)(346002)(39840400004)(396003)(366004)(36756003)(66556008)(8676002)(66476007)(5660300002)(2906002)(8936002)(316002)(66946007)(86362001)(31696002)(2616005)(6486002)(956004)(7696005)(6916009)(478600001)(107886003)(26005)(4744005)(186003)(31686004)(4326008)(38100700002)(138113003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clJod1N1d0tHcW5wSC9QZklHNkdtQmQyOEswSndlck9tZFpENjkyMjJmQlR2?=
 =?utf-8?B?aERkeUYwakpENktrTE1IeFMwQlYxS0lVWHplWG1TV1Z1NlhXbElrMlgrWDZO?=
 =?utf-8?B?bWpQa2VwYWtjY3hpYVJFVHZySHZuNjB4blNmYnFyS1RNd2xrRjc3TkJWTTY3?=
 =?utf-8?B?SUZZaFBRY0lSSUZvZWZwNDRvWU1MZjdRL1FTME5Kc2RpQ0pMeU53MU8rSzUy?=
 =?utf-8?B?bEVDYlBQSXE3WWVuTVFnWDFNbDV3bE5aOGl5Q2ZBN21NdzAyS3N3bWV1R0Jo?=
 =?utf-8?B?bkswa0prR2t1NHFJSDJRWTN2dC9WWjEyYmhCRmpVenpVa1EyVzF6QlZEbE80?=
 =?utf-8?B?OWtNcWhpbExFZGZCNnhIbzQrUFVvVXRpdkRwRFdXZVBxR05mNkJiUStpcXRq?=
 =?utf-8?B?NFNEYXE2OEJrc0FLM2NmQWVUMmxXVlZreG1uZGQrNm92NVJhZ1BXYTlYYlRt?=
 =?utf-8?B?TkxvMExxMXo1SHBoZ2xqQXZROXJ1eDFxSFdqeUtMTHRtTGxpdDR5bkFPb2ps?=
 =?utf-8?B?YlVVTE5VWGpvVFlCOHd3c2ZNaStTOHdmc1dsc2IzRmFQaDd6OXVMN3pmYk5x?=
 =?utf-8?B?dG96dFBHWW5Zb3JYeDNtRFRrdjJBYW9sSVlEZ3dRVjJRRzMwZCs0OFA5U2tY?=
 =?utf-8?B?U0dsQnVYeFBiZlprMUNhcHdMT0twNUsxRm9vLzlrdW1vcWpaQ2M2QVBLbHMz?=
 =?utf-8?B?NU5mWS9BNzREeWwvZGJiamNDV05DR0Q2eHJnUFZLOXpPTmdmazlsQ3VlcTdG?=
 =?utf-8?B?V3ZLejdRaUFydy9Ddld0aTdCNmtFMkk4Y1N2UkZpTzNFVGVkdGJUaGlVaUFk?=
 =?utf-8?B?YzE4ejNSYXRrK2U3NmdQZDJDRENoRGZ6VEkvQzBrMGlRQ2xJZC9pdWgxZUNw?=
 =?utf-8?B?MThHV3BCd0h5cUpMdUxScUtzMDI4aElsK1JWK0ZiQkZHZUk1RDh0K3o3ak54?=
 =?utf-8?B?eDRDV0dYNlBMYkREL0xHcXpuTloyMzFLOXRaRXpYa29pdnJoNzZRYWZNdzJQ?=
 =?utf-8?B?cUkrS1duSnFrRU95Yy9QNlU5V1VXdlBMajhGTnlGQkRBWnhLcEEvRUlDaHNq?=
 =?utf-8?B?a09vYmNWV2ZDR05SRjZSZEEzLzIzbGRZcWQyaTN3Tjcva1d0STRLZk9ZQzNr?=
 =?utf-8?B?Q0dQUXdEY3BtNUtaaDlyT0VaMGUrbjFISlV2RXFNeC93VTd4RmlTNThTQ2VN?=
 =?utf-8?B?Nit2elJjYmFBSS90ZlBSeHR0eDlkTFU4YVZORm4wU214UmtLY2Y1LytudEJj?=
 =?utf-8?B?MlhTcXF1TnhIL0pmdGRNT1VreWRKTWxjTVBqQ3ppZlJ2aUk0MVZxdzZ4Tk02?=
 =?utf-8?B?Zlg5Z29YN0NYYlFOQVRyUzAra05RRFl2d0llL3dBdXlYUjBueE9hYkcveWEy?=
 =?utf-8?B?azZwc3MzVlpZbU1IRFVBaVNycW9XVkw1Y0pFd3FMZ0VDNGZhNFdGVGR5RTEy?=
 =?utf-8?B?MkxQVjdsa0RBZWFoWmZPdGQ1d2dzUkNxMFV3dWhBYWY4U3VGZWp2RGFuTlhY?=
 =?utf-8?B?SWVVZEo2UCs0OWpBekhVZnhVbTVDbytML1FldXZXMVpqZG5yNjd6UmJsc1E4?=
 =?utf-8?B?STBIVFh4NUEyRk1qVlF0RE15YktncUNCVTVDTmtXRVA3aVZINDRQK2w0THBn?=
 =?utf-8?B?ZnpHRVg2YkFJRTk1T3dIM0pwMnB2ZzJFRjlwUktDMDNYMHVhVnExZE1BMGZr?=
 =?utf-8?B?Z1krY2c1dllXczA2Y0h2ZUFJOEhUTXJqMFlnOUMvSXROeUFhN2Z3aEhLTTla?=
 =?utf-8?Q?OfXgqXtV2Y7XgjV26yJXylQe/aBVaOlgT/TnpOp?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: b6182a23-e689-48c1-af46-08d967b2241d
X-MS-Exchange-CrossTenant-AuthSource: HE1PR02MB3148.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2021 10:21:45.8629
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Hpbc1LI0S5SL/ITD0mRcoVW+o/KzIOXqNNQmka6zcwd5r6zYnsCw+nA+9pDlKSA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2443
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver supports an optional GPIO specifier for a pin that
enables the connected panel, but it's not documented in dt-bindings

Signed-off-by: Daniels Umanovskis <du@axentia.se>
---
  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
  1 file changed, 4 insertions(+)

diff --git 
a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml 
b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index d101233ae17..1aca6c1a8e0 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -32,6 +32,10 @@ properties:
      maxItems: 1
      description: GPIO specifier for bridge_en pin (active high).

+  enable-panel-gpios:
+    maxItems: 1
+    description: GPIO specifier for the panel's enable pin (active high).
+
    ports:
      $ref: /schemas/graph.yaml#/properties/ports

-- 
2.30.2

