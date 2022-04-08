Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB8BC4F993D
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 17:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231624AbiDHPV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 11:21:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237479AbiDHPV2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 11:21:28 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 718B339B9A
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 08:19:22 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 2389hItH009505;
        Fri, 8 Apr 2022 17:18:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=BJPh09OuN2vkxDfN//4LhHfa8nRlHWyf3N0XomHXsKY=;
 b=q30X057yLL0K1i5IKVTO02Vexo7I6XZcYYqhNNc6n98hGdv4wgA8B0oUhfvJiDzNJzEO
 Abk89SS8f1ywodnEIGM375jQFONBPMOolyTGL0/+CNva5opNmkGiYCyzwPnbeVZmuFDj
 5bcmWijb5NBxfBFJM5nyaQMgsxUrdCN+E9brfv7t3w2Q0IOlu5NoHD0vjro9zE9PqF8K
 7D2F/YgRPelO2gNr0R8JijfD5dv9ssDnZxmPrj9sdrmHvto8O2199gE2xAl85uzv7PQ0
 x7rOqk9nv0wLtC4/jWZOlzxXSEUjuOw9Ah/FZO6ezdpT7uFtAlzcRCSzEd1FOsgbggY8 JQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3f8x4rv371-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 08 Apr 2022 17:18:52 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 891E610002A;
        Fri,  8 Apr 2022 17:18:51 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 81800220FC7;
        Fri,  8 Apr 2022 17:18:51 +0200 (CEST)
Received: from [10.251.20.121] (10.75.127.44) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.26; Fri, 8 Apr
 2022 17:18:50 +0200
Message-ID: <d3d1907a-37af-16a1-d5c6-52cfe497775b@foss.st.com>
Date:   Fri, 8 Apr 2022 17:18:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/2] dt-bindings: mfd: stm32-timers: Document how to
 specify interrupts
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>, <kernel@pengutronix.de>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20220408063502.136403-1-u.kleine-koenig@pengutronix.de>
 <20220408063502.136403-2-u.kleine-koenig@pengutronix.de>
From:   Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20220408063502.136403-2-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-04-08_05,2022-04-08_01,2022-02-23_01
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/8/22 08:35, Uwe Kleine-König wrote:
> The timer units in the stm32mp1 CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones. Document how
> to formalize these in a device tree.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml    | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> index 10b330d42901..5e4214d1613b 100644
> --- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> @@ -46,6 +46,19 @@ properties:
>      minItems: 1
>      maxItems: 7
>  
> +  interrupts:
> +    maxItems: 4

Hi Uwe,

Rob posted a remark in V1, which need to be taken IMHO:

https://lore.kernel.org/all/CAL_JsqKW3XJ6n5CLg_BNEaASkUnXLM=J_XZW8M6i7sGPuZ8_9A@mail.gmail.com/

Running a dtbs_check with dts change, shows some issues like:
...timer@40000000: interrupts: [[0, 28, 4]] is too short
...timer@40001000: interrupts: [[0, 29, 4]] is too short
...

It should be ok with Rob's proposal.

Thanks,
Best Regards,
Fabrice

> +
> +  interrupt-names:
> +    anyOf:
> +      - items:
> +          - const: global
> +      - items:
> +          - const: brk
> +          - const: up
> +          - const: trg-com
> +          - const: cc
> +
>    "#address-cells":
>      const: 1
>  
