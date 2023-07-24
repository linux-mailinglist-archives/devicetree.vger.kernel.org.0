Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F97F75E5D1
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 02:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229644AbjGXAVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 20:21:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjGXAVA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 20:21:00 -0400
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2102.outbound.protection.outlook.com [40.107.114.102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 300D2E4E
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 17:20:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=namUmqu9sBX87u+b3cawtajL+voN9hprFk1HOXM/0wNeb0/dykli7jv08qL2k/doZrNuKutpBWdCDHwaDujowvm4c5clpAdXZ97A7bDX4UbvbzCpYKXv2l6Bm89N8ggCXQHylEQmgDTt6nRse1TDhvakwOHhf/KJzpHLcQYQQiRBVqJoNTFBfACiRlcFtQMBleTWfPXfYbBJv1ZOVCj2XWpVhz8c5vuGY95g8wGKbTilgY9XvEt3spXfgyfLG4z7CHqlcUJBltFX4GY0K06cuKYKCjFYWxWOuaZOQrpGqD58mQdxBOG6GyqzuqNhpmkaIW48LvhQ4RrWnG0efQ7qQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1alAh4pw3dQvLOdcff9twzlZ9dTsMr4qhRpUiDffOs=;
 b=YfTCIoS3pKt48mYyCvElmmTvsETH5WXhnvbxM1XCV1HxcYFbceb0QUYLifuIXS7nvoMT03o9gUEc8WLgAugDdxojAwa/rZN5Iull6JxfvxDg9j9t3STy4XKlkrUqJBQrtT0j6B1TfrsIkWnlvTl8ahqqNczqYhn+uxKHyGY0e8tI6eN7/JRpZby4u3yU29YJVY14n6+94SKNFqd1JSF/YcnSZElUkNN56dsHcdtZD1wAuust8w3XZTL+awAUKfJnoryfHxua2bNFZCrcYzxGwKTnlkTCUEvn9Iq3NxOJ9ACDwfKsh3LKP+QHOQxolEuoMUujHJw+9GmfVrYa7S7pNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i1alAh4pw3dQvLOdcff9twzlZ9dTsMr4qhRpUiDffOs=;
 b=lK68INsR7Q8/YfjqIAei/zZhal3HDkv5k0A59wUIjzev+Tjgr1UKrD7vHBpHIRQf2wPVldgWBr/1+nfMx7F3yOlNolUs48nqPmUfLoInJVC9jJcPGq2RWJCPIiCGivNwFvYJ6kyy/ZAnHrtlzdmN8sZs+ji8hmOw5L8x+Q8GzCY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYAPR01MB5580.jpnprd01.prod.outlook.com (2603:1096:404:8058::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.31; Mon, 24 Jul
 2023 00:20:55 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::e6db:c2b4:3f89:e3a5]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::e6db:c2b4:3f89:e3a5%3]) with mapi id 15.20.6609.032; Mon, 24 Jul 2023
 00:20:55 +0000
Message-ID: <87y1j6b1ne.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 0/5] ASoC: rsnd: add multi Component support
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
To:     Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset=US-ASCII
Date:   Mon, 24 Jul 2023 00:20:54 +0000
X-ClientProxiedBy: TYCP286CA0244.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:456::19) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYAPR01MB5580:EE_
X-MS-Office365-Filtering-Correlation-Id: feae35ed-44ec-443e-05ab-08db8bdbd883
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JFiuG4ODLVf9xXJYPRYWxEUn3tZZCQuXJableUj12b1F6dpIN6KUczW6ICgox5YoR/QxlAP3VwOAvtOGz5MCz231DGSLb9mH++MKUGxVMZKoUXlpwBhkzTwB8ArnfExuFl2rZgtZ2+YObDK1BHduAAEdFWx5fhLCCYR4rnGuuwe12tIFWQ1aTcT6xLcr01Z3VT3ALtQnqOr5BpWjuOJAmNEJhJ/+IlszQCHw6SBOzz4AYSKX3POJW/P/Nf5Kh2QjSyjfhZYlgIiORZc4UWxQM4t5uro2KwN0gM35a56E8l90kAWEmIjVHELE52b/eZSDMEmgFY1rQYSdBxdoV9BOUGU6n20JMBgHrAU89/bXyfbUx7bj3adAsuw6KCh/1q3KzJD9WEp6W5ro75yQPs4pSV8mUINV/ZarQ9gHO5N6s7WH72HVv0R4HkeIkr2QlN42CSmrI/oM+9ES3Ahy6O3w1wQmKjvbB2Ina6AG8E78JyQ+2zA7h3o85TwgaUJx699cRbWNfRSq7E4BX7FuGR33oQgABhNGXLI0ujKVjlCUCI+YhtXyruHpzl0DID++6D6bpa5W0SxProirzMZRhUq/lzD2/sFrB8XPbJ0MeDum0Lmrdz1Rh3/TUd8PrH3bvNo2d79vytvaYaUyPHe/ce/cGhfsnDyxdzWFzx/9AWDc9sQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199021)(38100700002)(38350700002)(2616005)(36756003)(83380400001)(8936002)(8676002)(5660300002)(110136005)(478600001)(66556008)(66476007)(316002)(66946007)(4326008)(41300700001)(186003)(26005)(6506007)(52116002)(6512007)(6486002)(2906002)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KOI0eyUHTKVDMhyRgEJnPPOJwj6qng56hoEF4eWWbT4neSeWxzV4J0b8g24E?=
 =?us-ascii?Q?z9PrjhQK5ITamVq/6UPykzDIOMuYucWBixHpP1oF8EtmMRmqBoqO49DoO0oU?=
 =?us-ascii?Q?YPKc4xookDJW4paT0ALJkKfyuxGpFRFoyd1qbqRAc6r644kd6Rj9I+fxk3zx?=
 =?us-ascii?Q?FCBgO4r9v+exvxvIeDI9FxERSnKxtY1J9sqQqeHfgVVFrQAwo4humJijb2n0?=
 =?us-ascii?Q?IJPwiFMLjdLnWyFqKm3hdcrooTuY4pcvfuPhDJi0HH+5ZI8wGy1njbNOiKeH?=
 =?us-ascii?Q?9nxqcxdQ0J2rUb6Ou4iyJenDloBc/IYfjYV+PT/bqowRlOKcN75QryJdJEiw?=
 =?us-ascii?Q?d8h64q6KGcaOUgYtw+LSo0jNUDhWGTzVdpQnPvUiq5Q2/2Cb7qSKb8U+GKca?=
 =?us-ascii?Q?NoP6V7ykbvMSh71kdSwdSbL/dpcSbn8sDNcGrciMlC9KsKbwvChmahzLeDQY?=
 =?us-ascii?Q?L56l4bUNsbT/+3m0LB2giej6KnQlR9KybQv9G66EGWg3n/i9jKz60mqKZgSR?=
 =?us-ascii?Q?5DqmySfTYd0WpV6q+0G6qToDJO7oL9jr+hjVkN6Gzs96muXaREnmnXhwyBLp?=
 =?us-ascii?Q?gTEUyNaHQz4p488Un1pRNZzRVsFedrho6IT49xVg3jJ0s5DHi9eYTrpicAyK?=
 =?us-ascii?Q?biajWLMYh1UZyz217xGp7Lj+1Ga4FwDOHHewwFkytH1Woj8Mu2AcwWT/f9EH?=
 =?us-ascii?Q?F+ow29ClTkktLdIKmu0t7wCsvuYcAthTM+e35T64j47lOMhNvlKbU64IOd1e?=
 =?us-ascii?Q?D2SIGscc6gu98/Nf+KrJz5o1lUVR0AxyWt3xV7ZrTLbMET26hgFT6vgURAt1?=
 =?us-ascii?Q?femhcmZYa9y0dLKDQYRkujPXUj2Oa8OCoqM24VijyZtB1jtZLqVoz4vTgVEZ?=
 =?us-ascii?Q?NebtZGXwBKcyhsQpV66WpPe4qAuATVXNo7Fv462wztgmiuFNjLmniGCafimM?=
 =?us-ascii?Q?j7HvTYISkNiihu/DzpuM3iiaiaGQrUJTJ0I6B2OCtMULvsK15brw3B4ijJMs?=
 =?us-ascii?Q?2RjPrZ1gx0WySaNS0eOB9sLoxbyeUDvrVLfiW7pVcwCINOnNR+1rgIaBrOvf?=
 =?us-ascii?Q?CREDrsxjdGWtzaCt+t/LXc8yYTlXXA8+Z2KikCGgISgJzEs1sqKgybEIQg0F?=
 =?us-ascii?Q?XcyfmhQ0MCmuqKLwose8WKwOAlggyG2wDB6Ey3EGx59AKbxhqdlvqN5OwXU3?=
 =?us-ascii?Q?G+UkWxfAvtiGxm7tCiyOY6coeXU1xa23FwzqRENKLhXXVC0TKXIfCPw0ZDoU?=
 =?us-ascii?Q?eQYsyZjn4aGTPJ6tXdfgopnMo58TpXxkENV7AiMjSBtG9Mr8TtjOjiFcM5bd?=
 =?us-ascii?Q?0/NyyN8KScpmmLcd5I3O6xDTPuc7lfPx8WlKjOHPuXhJkndZaNqGd1e9YbBd?=
 =?us-ascii?Q?1AC7m9fQzfWPZjf0naD8O0wKr2ekAdq0Veqizem4j2SmlEXAJbdc1cKTmI6v?=
 =?us-ascii?Q?E+7AM2LobxAMQWF5ewkWKOznawfbzrhHavGQvijiJB9DkbJOOH3HTEbdATqd?=
 =?us-ascii?Q?s9JYmWhyi+5s6zhJOnrVX2RkmdKjNrMzIO31fEZO+iatBjFpwqgkisl3Ngio?=
 =?us-ascii?Q?eCHYBNRlDJ5iRg012gV1cvNL+6IQ4+QZ4g0nTDmsf11WJHQk1jvJk9ITbEu4?=
 =?us-ascii?Q?XDq/s4D2KlG8XP9/OjXqPR0=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feae35ed-44ec-443e-05ab-08db8bdbd883
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2023 00:20:55.3482
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UupxykuPf85XzT57WIY8TVDZPgIhbzKqvRmm+azxKZ41ZIo8Xu4XEfjIVIM5CI5HwtA4qdVEsj51ppyru0EVCQMjxSR4kvnwpuKZ9mGUAGmKRSZbCeTN86oID1NaqjZ5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB5580
X-Spam-Status: No, score=0.9 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Mark

These are part of "ASoC: add multi Component support" patch-set.
The patch-set supports below case as "2 Cards".

	+-- basic board --------+
	|+--------+             |
	|| CPU ch0| <--> CodecA |
	||     ch1| <-+         |
	|+--------+   |         |
	+-------------|---------+
	+-- expansion board ----+
	|             |         |
	|             +-> CodecB|
	+-----------------------+

Renesas sound driver and its Doc part were held for observation.
Rob mentioned that "definitions" vs "$defs". But I got error on "$defs",
no error on "definitions". I believe this change is not mandatory.

He also mentioned that "reg" is missing, but I also believe that "reg"
is automatically handled somehow/somewhere (I'm not sure detail, but other
reviewer indicated it before).

He also mentioned that "ports" and "port", but added new "ports" needs
special handling. Using "ports" vs "port" are different, not
compatible on this driver. This means we need both on Doc.

Thus, there is no update for these.

Kuninori Morimoto (5):
  ASoC: rsnd: use DAI driver ID instead of DAI ID
  ASoC: rsnd: cleanup rsnd_dai_of_node()
  ASoC: rsnd: enable multi Component support for Audio Graph Card/Card2
  ASoC: dt-bindings: renesas,rsnd.yaml: add common port-def
  ASoC: dt-bindings: renesas,rsnd.yaml: enable multi ports for multi Component support

 .../bindings/sound/renesas,rsnd.yaml          |  60 +++----
 sound/soc/sh/rcar/core.c                      | 146 ++++++++++++------
 sound/soc/sh/rcar/rsnd.h                      |   4 +
 3 files changed, 134 insertions(+), 76 deletions(-)

-- 
2.25.1

