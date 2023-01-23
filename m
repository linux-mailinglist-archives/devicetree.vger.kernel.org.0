Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A93F6774D8
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 06:25:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbjAWFZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 00:25:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbjAWFZe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 00:25:34 -0500
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2090.outbound.protection.outlook.com [40.107.113.90])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 731C7A5ED
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 21:25:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fDnJyCalDs560+wWOPw16e+pf7a3D1kPoFyB4DMKUxIESi8Ryw6i22h5btKevOmlCUyrp5Uu7qhaFE5yeNzoAVp2THnGpaSojLPuhQVYdfPhBdOX1tKZA+4PbMJfhAuKzCAQLuhyIpGQhBB9WtQFTsLqRXDNBXMECQYCy4uAjNmBETt1Bf1bWMVy0GPpdoSAglAihYuFReln5kB0SRuWX/k+FFUQ9berhbGtesvX1LrkEJtGgtIWymlVmLHEAtW42fAbMVVY7mJxx90WJ8rlqLuxu+jjZyLnSK8A1AI2su/Md7lSdrZvfOKeWsMMtbnLdk3+itWurjLPjgmUwjwL7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PIuB4cb7E0X5z+6PbiS12y35XrvPH/i+dmwUVi07fpc=;
 b=ZbXe2AjSFKCyZ3MBjQskC6EP7o5213OjQP48Xhibp462w5EGTMQ/MtbqIMnVBFeMGelR1UAJ3Vo+/H1C5bk178WLEPvhym77+cEcYbYg8F6HgmlQKomXFUQtsj2tL4Dfg4+beN6P9QrScCBK4pSf+ttz8jxrJ5N4poJC5Y3FRmPWAboXFGS/QSRItOh162Z5V9JZpNgl9jvN/MqFoOvw5tGrejZ0Qmo3Pf3Njl5mbzxjcczY69jQcw0IU5GiaB4/4V7mERFgIlS9xiZgRbqRzCcIIOQvH7JR4NKot+1qR6ne873WaUwVD6Nxp1k4exkVKEf5KvwpMgwFvO/KcL9++A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIuB4cb7E0X5z+6PbiS12y35XrvPH/i+dmwUVi07fpc=;
 b=BzGx6H0NrKwmRo7WTRCwq8ze5GqTa8roz8ms4yxVKQ1IUijFmLqiseyf3LDLdzZx7fskubeY5rSHdls4sJEZT9sU4YZwZD0xwKOnP/XJNNTEdT3WyFzoZzGMd/4Dgr/wVXr+rMVuYiBErTnLXsmAKzgnTRN2mT1roFHe8HAF4r0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYYPR01MB10497.jpnprd01.prod.outlook.com (2603:1096:400:2f6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 05:25:30 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae%6]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 05:25:29 +0000
Message-ID: <87lelt7rg6.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v3 05/11] ASoC: dt-bindings: audio-graph-port: remove prefix
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
In-Reply-To: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
References: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Mon, 23 Jan 2023 05:25:29 +0000
X-ClientProxiedBy: TYCPR01CA0188.jpnprd01.prod.outlook.com
 (2603:1096:400:2b0::20) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYYPR01MB10497:EE_
X-MS-Office365-Filtering-Correlation-Id: 06b12fd8-6357-4f72-1503-08dafd023df3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O894f5D0kjxPztOw8jW9Zu8J7u3t5G7XML6zuOsJefx7kvxmwbt6anM4a9aeqoCAHKZ0ClKqjNQ7/caJfzgWRLNFtgooSw5W+KO3yTSUKMyEUOJ1b/4IPL88oSM0yCkXJ3ciVNYOabJScA2Ll7OKyXz86hxmxdNRp/Cee3iQDrgUEwCf7v4FQ3+lawsZU3kI6YDFEEtZsbtfFZSejpvNkW2FnS55igX3A/fOAKrOogDl/AV8jYqT7PF1l+4griWoO7cuVAXow6KA0AblwV6Wc6tjzorOez7DUkIBzSkT2VldM0+j7SrESqq1D2Jn/irlmIcMVcDWjvmYSIimw0Vpf6ZjFPFuj1JRKQ30MYktKeCZWjLYzy9nXkmOosEi4czOrX5E7EhkLUKv+TwgJUVZG9UnBs/qRj2gdrbIDAxnLiBbbSXl33vDq8d5XoSV67107G6b7OXW+1rw5ZUpqkXNzMz1o97edNmNji56YlqiQwjXsrL8Rq3K6zHYi8HalNjKgd/CaDKUW6dSmSQ77mosceA3cJSRn06Ock2TbjMXCO62A3/rQ76TkRKvPkmKosIRvZAGgC7iKfCgFwDYZ/Y/QBgN7hDJEXzpuHzlzv24L7vxlXNmkyem+GQihFcfZ+qtzx4tccY6TzNUfddMDxpGnzTo0pN3nU66/7Uk67xavixUJMhF/jAz5ZPJPJ5rA0/KzjPKnt3cbMfsvuwFVuOVew==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199015)(86362001)(36756003)(316002)(54906003)(110136005)(8676002)(4326008)(66946007)(66556008)(66476007)(186003)(6512007)(478600001)(26005)(6506007)(2616005)(6486002)(52116002)(38350700002)(38100700002)(83380400001)(41300700001)(8936002)(2906002)(5660300002)(4744005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CpvCc72MEgEdtG7sA79ppKr2EkUI82d9GOt8GcMrGsTm3cayexgWXd5IsWt6?=
 =?us-ascii?Q?puqGPuLFRNkIsWCa/I+07zQJwrsYwnxldimVYNfD/DSklWkrI/OXd0eUR6/h?=
 =?us-ascii?Q?UJFb7//Za7MbSO5yO2hqvbdIckd5qwzTuEnazZtgDeM1eIvh0WCU8kvFcM1w?=
 =?us-ascii?Q?VD5TLQ+QQqvNHLAo0JdjplPRsCiCukg62XdPKjwMSSlrp7ipjP0ymF8WuCzF?=
 =?us-ascii?Q?qR9JUBMLyp0uFBGxlNmaqTidtjCr2TzfQ36NWRFNud5Z+GP1egDIq/IpuLCz?=
 =?us-ascii?Q?hOfS3qRkqEZTgXbiwSXkupbo2eV1bZUbSWIsKUbWKFjjysXIdAtVwYu35LMe?=
 =?us-ascii?Q?R1sTlF+IFVBXFgnRfRiJN+T2actVZMBJSraf2WUkjCsw7U3LOm+H5MDCucwW?=
 =?us-ascii?Q?MZ9DiiHYFaKI0T3EeguRdInNL91Nf+86dqBC5HXKu1kdRzuFQhK0aerl2LrF?=
 =?us-ascii?Q?GRS79XpzSqG/ypCHng8wQmfK32P6CxRXBebkS7gGGCfy6tv+2ghff8V8Atlm?=
 =?us-ascii?Q?j+FAfUgPPzRpTxymCE+ICd22vz/as29/O7p0LB66Eniqx/tJP00U6FGr/qLs?=
 =?us-ascii?Q?LsCu4tHznRaKDYAe6oGjDLlkgGLgg/uS9duReZi6J7yXlOPGNteBnzvMO4MV?=
 =?us-ascii?Q?e4A5v50JHzV5eKI1OEspOcVSKzpU968fnWIKfHfxvFDYJxtX/DegOZhCvTR3?=
 =?us-ascii?Q?UpB6xQqxf/YOOHb1XgNsH4SaonXP1BOhi1MYLETxb44UUYcNWB65T9TnrAON?=
 =?us-ascii?Q?7lfLyVR425k3ilAlbfg+sfrMGJUB9Q+xnkFo4o3MZ9KMHzA7Fay+VT77BxYX?=
 =?us-ascii?Q?n4eRtnsPLQ3HywPAA6Ng8XnLp53m3ZguAX8VGgX5E+HCxypep3ZN7vVgV8zj?=
 =?us-ascii?Q?GEYjeWOafWcuKZGRpBTP0MVXil9wodVSahHe55ZdzduJHFS9gkqg3Np3+2tI?=
 =?us-ascii?Q?cSokuVelgsaIQyrqlS2mTcft38HgjjAXMkxIS/VTy8rnfIQWeAqK2zpvIb2i?=
 =?us-ascii?Q?9JrS4eqxpNcslDwQX3g3UjNB2E9HiWmWGx3aaaXqJPkqLkNgUfRxwJryPYMU?=
 =?us-ascii?Q?C9LwcOm7f+fvDtFK0TrXnI3SbFFzGRqncG0qMUak802k6hs614U5dIKHIRkZ?=
 =?us-ascii?Q?J44T6rSCWm38TptdM0vGxzcpmTaFPcMNDOgHzs21EUZpuqmpAbZIFyMwXrUv?=
 =?us-ascii?Q?J845qFvBouSnSiTPyK+6dLs5G0GC97PL8S1uIMbZQcuqHkeEnQQxInBNyD7Q?=
 =?us-ascii?Q?MCf0lEfhHq4JayDbH8wQfvty+IvJuta4dxFcYLB4y446KZUWqr8XutIugUZS?=
 =?us-ascii?Q?VPFah9Cr+ojLp8g5bt8LnNKnP2jfDRxpiyrhr4s/DEesLlnOpts7EiEPFFgF?=
 =?us-ascii?Q?lCu77c/xT3AwvvvIfFmfgSfKKw/bHJYasyrKFGKi+xqBnr3UnSQj+gsYvXO+?=
 =?us-ascii?Q?ulgECTjkzEVjDi0nSmnxwntZUDgit/cZONLmEgshmo9fQRfFHhkw/Fgihqvf?=
 =?us-ascii?Q?uHOOJa6PSj4gxBYfTytSdVDHfPdFRLsGVNWrv4qJba5geLgrRPr3DYr8Oc2M?=
 =?us-ascii?Q?ljty5hyufzKapJx13eki5Ti8gEAyNMutgwS59uiDE9V3Z/uRWNDnRfamuRuj?=
 =?us-ascii?Q?2mMZHTcsDW1Dua8Hel4vkEA=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06b12fd8-6357-4f72-1503-08dafd023df3
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 05:25:29.8855
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cs2AhInQ3qqkO9ZNMfCeKwhEIhqs5Mn/6+7W0T2alLbhTVhf6uQAxo2UFlxuMjXdH3bH4T9XV5+/eR4gvzkig+PWjO6hxphLAuIZXsViV1r+R0Ut8FBSQaBq4RFwm1va
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB10497
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Audio Graph port doesn't use prefix.
This patch removes it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index edd6cc37118e..6b4e02a0695a 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -15,9 +15,6 @@ definitions:
   port-base:
     $ref: /schemas/graph.yaml#/$defs/port-base
     properties:
-      prefix:
-        description: "device name prefix"
-        $ref: /schemas/types.yaml#/definitions/string
       convert-rate:
         $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-rate"
       convert-channels:
-- 
2.25.1

