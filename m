Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3900752ED46
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 15:37:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345592AbiETNhw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 09:37:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349823AbiETNhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 09:37:48 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462B9169E3B
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 06:37:47 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24KC5lLW004845;
        Fri, 20 May 2022 15:37:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=EWqpQF3gyIEpXuoGoxFjVR5sJZAkS9thASy95mo2gLk=;
 b=XySLmH8+CsqbK/oh3XOX+GIZuOg40bzGyXtse9RJ/M337Lcxd8wbl/gJVno/7bpYbPDM
 Tw7QZVhEsM0wXdmpM1xxryOy37lgb5Kipo4RDlXoa4Wdzkf4Qe5I2kRc5mFjX4bib2am
 fmN3XeoOeemC1pUCBU3GH2vFlWrZq0/AHsvPgH6UaxwjWtAOGOeWKskfYmFHpPDHTpFw
 C+RZ+cK5igukUmBcDYbcPYVmXc00s2TdCm+ZGt3A/tseyRS285yU8xZxw54j5ybpzUMf
 rExolZEb3PHeGTjgNIgNNuIPIMVPjcox5sJV2yDbfY6rCAaSDlwSkeEVUvCuWqavINGn GA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3g21umcwkd-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 20 May 2022 15:37:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A5FB6100040;
        Fri, 20 May 2022 15:37:16 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0C0D123301F;
        Fri, 20 May 2022 15:37:05 +0200 (CEST)
Received: from [10.48.1.102] (10.75.127.44) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Fri, 20 May
 2022 15:37:01 +0200
Message-ID: <a1b9a37e-a049-136d-5320-9a413873ded3@foss.st.com>
Date:   Fri, 20 May 2022 15:37:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 1/2] dt-bindings: mfd: stm32-timers: Document how to
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
References: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
From:   Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-20_04,2022-05-20_02,2022-02-23_01
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/19/22 18:28, Uwe Kleine-König wrote:
> The timer units in the stm32mp1 CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones. Document how
> to formalize these in a device tree.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Hi Uwe,

You can add my:
Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

Best Regards,
Thanks
Fabrice

> ---
> Changes since v3:
>   - Do the things Rob suggested in reqly to v1 which I didn't notice
>     until Fabrice told me in reply to v3.
> 
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml  | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> index 10b330d42901..5b05b2ec1728 100644
> --- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> @@ -46,6 +46,21 @@ properties:
>      minItems: 1
>      maxItems: 7
>  
> +  interrupts:
> +    oneOf:
> +      - maxItems: 1
> +      - maxItems: 4
> +
> +  interrupt-names:
> +    oneOf:
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
> 
> base-commit: 3123109284176b1532874591f7c81f3837bbdc17
