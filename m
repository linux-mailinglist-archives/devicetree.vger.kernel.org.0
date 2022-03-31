Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4D4F4ED788
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 12:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234587AbiCaKIG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 06:08:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234566AbiCaKIB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 06:08:01 -0400
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80129.outbound.protection.outlook.com [40.107.8.129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3BD61E3DF
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 03:06:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHv4lBlBma8HApr9NITYg7L98UN7HsdFLmwwxSO0hoELd7tK2JdOC5edK7YVxrJSkGOeOiOil6qC9v7GDEZ82tk7MFo0A3m64ivthLdEiq4RQEB6YsR03t6UBc8BcFxJm3pGUiWuY7AL0W3v7om6+7sumr5B/+RqrGmKiaM0nKQiDCK/043niy5IKFXD7CjrfwnJqVI3S1Kiqv4FuOTMLEDTZ62zYXM1x+GOMf81xVMd+KUlrqr8QlFBwmon88f6mrhWrkNeSqyfGsSK57Ppe6vct3//5Hxce5mF8JYq5mF/crANn5BbF1vnXuxDc7qd0bhbmv46NsIWhXJmE7Xu1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BD+oOckdTziICcGGlW29bJ1P3aGN51+zPwU775JDVhk=;
 b=Oen6DY6zi/yLVnu/M/a8F+Izz37jC6pLf58AMD3M9YqFsYbRrift8EHcDpdiaYat+vON7AniHDmuFAFyca7VdPpMulILyEztcp4WqYS9u458D0j54a5YauPEFxEI08pt0SbtSitK7C0CfY+CPZuEZJF9tW67MERXZTy14QwXHbggou4NWmunsQdlCfBs/M/QLFeeIs/UUBlAK5kPwc4N451yoBCDdHfq4WxHiJjNWfROYZbw5yXolB4tEiTnpSMGp5gFypA/3flZrzIHcwxlOH+CsBY0dDdYTgdVUi4AaxxxK6pGsbNTfrgtnmXuz3tN0QY6MJZXCk9TIlZF7X9Lwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com;
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BD+oOckdTziICcGGlW29bJ1P3aGN51+zPwU775JDVhk=;
 b=qoYv+HNExXS2+3K9zPqWvzvTcBPuwniK7tv1HNPkN3LWXCT7QDede52HHvXO/1iSKJ0oUFYYFdLcZVHJGGM5DTYfkoG5B8Xv9NSKAMIYIRG5x/aSnEDdjGu0Dhu7tP/jnj3bFooJNsW7l2vo1mPIEuwTq2fTSdCLrZiTBUFRv+Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nokia.com;
Received: from AM0PR07MB4531.eurprd07.prod.outlook.com (2603:10a6:208:6e::15)
 by VI1PR07MB6703.eurprd07.prod.outlook.com (2603:10a6:800:18f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.21; Thu, 31 Mar
 2022 10:06:12 +0000
Received: from AM0PR07MB4531.eurprd07.prod.outlook.com
 ([fe80::30a5:64a8:1672:4169]) by AM0PR07MB4531.eurprd07.prod.outlook.com
 ([fe80::30a5:64a8:1672:4169%4]) with mapi id 15.20.5123.021; Thu, 31 Mar 2022
 10:06:12 +0000
Message-ID: <9db940a1-825b-55d2-5710-6af68cfe8a1b@nokia.com>
Date:   Thu, 31 Mar 2022 12:06:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] of: overlay: set 'overlay_tree' and 'fdt' fields only on
 success
Content-Language: en-US
To:     Slawomir Stepien <sst@poczta.fm>, pantelis.antoniou@konsulko.com,
        frowand.list@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     krzysztof.adamski@nokia.com, tomasz.medrek@nokia.com
References: <YkV60TQ+d3sltkNU@t480s.localdomain>
From:   Alexander Sverdlin <alexander.sverdlin@nokia.com>
In-Reply-To: <YkV60TQ+d3sltkNU@t480s.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::8) To AM0PR07MB4531.eurprd07.prod.outlook.com
 (2603:10a6:208:6e::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 913ee2aa-4b8e-4b39-e045-08da12fe157d
X-MS-TrafficTypeDiagnostic: VI1PR07MB6703:EE_
X-Microsoft-Antispam-PRVS: <VI1PR07MB6703019106006E6F466BF03B88E19@VI1PR07MB6703.eurprd07.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oWwOYFcSadpaITYtz1rupOtzIQ+YbykOG9zl3I9/wIPqkU2pxgFSXno+GoqSCRDor/pb31MF4y0kSf8P8L2rKqlx8TyXU+tBd/BCSnPSqWALcxSZ2w/e8/xsszjhS43d3FiE0MFgBTRkaV5k2PamISxTwAStohNbZp3gdso0kEikbSGLFtInbdWq7urYWYyOEnAdoDExwyhkJCdo0HOpq0K81aRCnX0ZS0b4QNZKHlEfi5PjIA5N+V57bqAoLmcA4but44prnvEvwXHXGtz8MQCD9j/FN3eidgMecp7VpoDZ/7zSgxT6Sb2FjUruOeP0/xoN7RtNyX4K6k/IWYs717Xuv5nwmDhr0i+fgdB57ZxhxUpkVogozIf4Nsu/igCCUkM+5Kgv9jt86+3HRHoHYF/XA4nlY+qJ6TCc01/aKkZfQbVovSJ+VkV/y99yXVkdWpSEYnZrX8i3QG3SDpSPSzi6XGr9uRcKpBgzWWcMdCPZetxFT1IA/ThNn7zkmy+va0tE1HvtLJbpbIPqz2YsGL5hhlazqfdujtc6E0gsawHAh7+4phy32x00kQsgQGT98ym8hSf4sBhK9oO2wvIlC9SbIZX4N7B+FqTRCWzHvfaUiVmJVGxj2WWi0FFLEsWY3J0BdlM5CdRscyLKHyecS6Qub/mw5Yv2K3G+wzKpzTW0a11SGg9Fh/LGgvjZ93PwDs5aCzad3dy/sHj2icHEe5E4nKHhuKL53exEJwPCZrDONuZXFGnjD95Mbj0eraQDuPjtHx8XcoyoMYBCdfv+zVBXcK475LceH0TgJR4blhD49l0KAjBTXWXsASoUCk6A
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR07MB4531.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(53546011)(6506007)(83380400001)(52116002)(31696002)(6512007)(2616005)(26005)(86362001)(186003)(107886003)(38350700002)(82960400001)(38100700002)(8936002)(5660300002)(44832011)(4326008)(8676002)(31686004)(66476007)(66946007)(36756003)(66556008)(2906002)(6486002)(508600001)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFEvdXhFNWNielp1OTUvL2ZsYVBrQUkrUEZLRE9jK1RJUVBacGhDWEhYdkRS?=
 =?utf-8?B?ajZkcXBheERzem5DL3ZKQ1MrUGs0eXUzQ1JWbDZiRWlMU2E0QU1mZnhGTEdE?=
 =?utf-8?B?NW90dlV0NmloM2xzVXBUd0M2VUZMRVlEYllXcUFZZ25tcUZzRjJ1Wmk1Nmd1?=
 =?utf-8?B?ZjBYd0RUV0dtS2xDbTY5ZmVoUm9zY2JlYUhHcnVuNlZVK3VPRWswVUk0dkgx?=
 =?utf-8?B?aHQwcU9XUG5jcTZUOU5BenFCVkhsQkU2c1dOOUFZejdkTklBVVlwRTJNaEZn?=
 =?utf-8?B?KzV0T0JrNnYyYXUzUExMRFFlYityNURpbGk3bWx6T0VuVnAwZUFlZVZhbnhu?=
 =?utf-8?B?bXJmSGF3cTBlWHdoc1k0Q20rWjBwT3JKS2lZT2toaS9hazFrWHYvd1BZMDQw?=
 =?utf-8?B?OHJ1SHJYQTMxdzkzMlpqc2pmdG5UWUd2aDMvZ0xWUkYzWHJoN1VKWnI3TEpF?=
 =?utf-8?B?R3VzS25mY1ZicEVtWXFlbGsyTUlGd1RFVzh0dllqZW9TemVOczR2SEt0V1JU?=
 =?utf-8?B?b21uU1NmRGpZd0NtY3hzWjZkaTk3K0RqTnQrMGExb2J5TlZKc0xmV2ZtOVhW?=
 =?utf-8?B?TjJsbFV5VXR3WjJ3dFdtSzdOanpvZUdwVlQwNEZxeGtQQ3YwV3d5alVZTXRY?=
 =?utf-8?B?cE1QL3NaMERWZHFWcm9qUk1vbkl1V1lGL1NRN2hwOWZWNzNvYkNoRDBYUzZD?=
 =?utf-8?B?dG9ZWlhYSXVwVWN1NysrQ0NYV0RONEYwV0RSVVJJRlY0aGc0SHZjcWZtWTBO?=
 =?utf-8?B?L0czUDR4TnNwbXJ5dlA3NkdTd1RUeDY4WmVrRHF0cC9HSkwrUlQ1MUptVUVW?=
 =?utf-8?B?TzRXRjZWUUI1dVZraXVIcFBTbmxoTXFuY0xpMHJ2REtmYndWSUFSVHgvTXE2?=
 =?utf-8?B?NFJKNGxaRlA5TS9SeFYrY2RzQVJUbHcvYUQrSEtTWHVMNjFKYlBlRkFYRTdY?=
 =?utf-8?B?bEdNQU00cG5jdTBuSDI5Y21ZWU9jVzBwYW1ob3F1RVhjMTgzTjZjdnpldWk2?=
 =?utf-8?B?V2d3L2tMSHBHczJHSTFkN0xPM09pYWZKQTUxcksrRWZRS3lQNTRaZ3c1d1dN?=
 =?utf-8?B?bjZXN04xMnBPWjRnQmptb0paVDR1MVhRMW42eUVtYjRjVUk4ZHI4cTFER1NU?=
 =?utf-8?B?K3kzRWd1QTArajJ5K3hYN3ozOEI0Y0pUUTFZNk5RMmpuZkdTMXhNWitFZWYv?=
 =?utf-8?B?T3p3M1pmb2ppZ1lGalZkc25xbnRDTWdhNmQveFp6VW1kWWNWM2krUzZwZFYv?=
 =?utf-8?B?a2loSTF3SlcvRzk1Nmx5K0M5aDErZHVYQ2hRZGRVYjBtZHhqRkZoQVVlejgv?=
 =?utf-8?B?dkl0Q3BjRlpHQTZMUWlHK1lFdldkdTFGZWE2ZVZXU2UwVVI0SlRFalJ2R3N4?=
 =?utf-8?B?bGdiOCtMUlNqSk42TjhBWGVJYzNmcUZVdVFnYjdkVlFNR1RlbWk2b2toZkNv?=
 =?utf-8?B?c2JZYzF1N0xBYndlRnltemdiL2k3cjREeU91NDNNNjBwUSs5OXVneDU5d004?=
 =?utf-8?B?WG9UZlBZbEFzalV5ZmRjUWdnSUVpZ2NRQW1RSUp6Qk9zSHVFME5WcVQ4U2Np?=
 =?utf-8?B?Lzh1QWNRdzFqazJadVNWZldQeUMrSzZEdjNBbHV3WlBlOERpTGtmaWx1S2x3?=
 =?utf-8?B?YWxYK0xleHhPc2ZmcC9zR3grWUNHdkY1ZkZpeUlpbENGZ1ByaTZkOElQdFRv?=
 =?utf-8?B?eUhxdjlQKzhiWU9uSzgrNU1yREozVW9FRlp4K2dCc01xbmF4Y2VBM3lEVzhn?=
 =?utf-8?B?SXd6QU8wNEZqbWpjaTlYaHpDcTQxTlZPQkJYUkh1MlRDWnZDOHZua0s2UnA1?=
 =?utf-8?B?ZXdVK3NTZW8zSGZrTnluVGp0YlQvVUxZbEViaDdPcjZvM1pZcjltT1NXc09l?=
 =?utf-8?B?MWcvU1V2UDZWZE1aamhZbGRZZkxDRWp6Sk4rN0UyazVXaC9UTVBLNDN5bTZn?=
 =?utf-8?B?Q0xKaGkxRW8ySWlqRmdVYWRmTy9pOGs3cnJ2a2RUYitkdGdTMnN0OTR0YnU2?=
 =?utf-8?B?YW9IcGoxa0VZeWRzMlozK2MzUUdJUXQ3THNPZUJVZDZHUTFhZ09acHBCSWF2?=
 =?utf-8?B?eXNsamk0eXJjdmk3NTh1eFlITlYrMHRURms5UEhRMWdGTWNxZTJWY1g2eGJ4?=
 =?utf-8?B?ekcranB6MUpYZU1QWUZlK0JKYXY2eG16cm45YWY4T2xrVUhTQVB6RFVPVk94?=
 =?utf-8?B?K2JJcjhYeEl5QVNtalpXUkxlS1dXaGFGVk9XRmh1OEdIelhhZGhKcUJPd2Yz?=
 =?utf-8?B?a2pvT3Zjb0FYNnJHaXk5cnJKVWxpNEdqaG45M3REYi9zbXdwSFpnYXYyaGdp?=
 =?utf-8?B?dkJaU0tMRWlvSTRmUHBRWHQ1dGU0cjFIQ0lBWldVeW5qN2Z6cUlSMXIvR0Na?=
 =?utf-8?Q?ehur2H6IaKNRopn0=3D?=
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 913ee2aa-4b8e-4b39-e045-08da12fe157d
X-MS-Exchange-CrossTenant-AuthSource: AM0PR07MB4531.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2022 10:06:11.9785
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NkzTZptib9Ua2YWfhBN56PYTzc7P8ujohqclog/Od98PkO0Y68LUhhYiP/77j6aoAz3MvsTRMtteYnGszQMie6/dMm/qkVf8ZHmatuUGko8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB6703
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,FORGED_SPF_HELO,NICE_REPLY_A,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Slawomir,

Thank you for the patch!

On 31/03/2022 11:56, Slawomir Stepien wrote:
> From: Slawomir Stepien <slawomir.stepien@nokia.com>
> 
> Before this change, the memory pointed by fields 'overlay_tree' and
> 'fdt' will be double freed by a call to free_overlay_changeset() from
> of_overlay_apply(), when the init_overlay_changeset() fails.
> 
> The first free will happen under 'err_free_tree' label and for the
> second time under 'err_free_overlay_changeset' label, where we call
> free_overlay_changeset().
> 
> This could happen for example, when you are applying an overlay to a
> target path that does not exists.
> 
> By setting the pointers only when we are sure that
> init_overlay_changeset() will not fail, will prevent this double free.
> 
> Signed-off-by: Slawomir Stepien <slawomir.stepien@nokia.com>

Reviewed-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>

> ---
>  drivers/of/overlay.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index d80160cf34bb..a72a9a415f8f 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -750,9 +750,6 @@ static int init_overlay_changeset(struct overlay_changeset *ovcs,
>  	if (!of_node_is_root(tree))
>  		pr_debug("%s() tree is not root\n", __func__);
>  
> -	ovcs->overlay_tree = tree;
> -	ovcs->fdt = fdt;
> -
>  	INIT_LIST_HEAD(&ovcs->ovcs_list);
>  
>  	of_changeset_init(&ovcs->cset);
> @@ -829,6 +826,8 @@ static int init_overlay_changeset(struct overlay_changeset *ovcs,
>  		goto err_free_fragments;
>  	}
>  
> +	ovcs->overlay_tree = tree;
> +	ovcs->fdt = fdt;
>  	ovcs->id = id;
>  	ovcs->count = cnt;
>  	ovcs->fragments = fragments;

-- 
Best regards,
Alexander Sverdlin.
