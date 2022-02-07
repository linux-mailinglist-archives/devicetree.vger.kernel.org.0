Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 142EB4AC9FD
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 21:02:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234128AbiBGUBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 15:01:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241433AbiBGT7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:59:19 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D9F4C0401DA
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:59:19 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7D37D3F33A
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 19:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644263956;
        bh=SoJfnnJJW2QFhODDnPm1UyDvJMmMIk7F7kuEpKpNzms=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=fL/UlNfoZvozHajm5UY1pAs9n6tYuJzHOQGFbiLT72FUPMp8GAGRGkkAQQl4cw5Bi
         2stLgtuvQVfW4sojx39PCWrgTYdehdka2IbI+1MMgc6l6TuiGdiKVoQNJSgF848yZB
         oa5OHk5y7lCwlF3KmDwRpl4cTayuiKJJm2GhAw1bX1qJ+q5eMZ296QCga09fKHuTRd
         74jYn3kuv6jsPWNLiIjqwldCokuDX/6tkKFoYikJMElCxg5qHFoe8FwlTMMbY26dFZ
         UaTAZvYRL26X5bZb+w6If23jmPj7HWZqFOxxhY9W/H/25p7so2rHhLDTFLh3De+e1d
         qlruZcNmmIJ2w==
Received: by mail-ed1-f71.google.com with SMTP id k11-20020a50c8cb000000b0040f84c5bc66so1530969edh.4
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 11:59:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SoJfnnJJW2QFhODDnPm1UyDvJMmMIk7F7kuEpKpNzms=;
        b=y7EISpnhxaH1y9k5dM3/N+fc2lcif98PF99OagZectxx/3XkB1rOlK5oqT5lZtE/nE
         ku+xBD9W+RpftCSE126BXxLNyZMf1r/7P7HMjliCVci50OCnNAmIr3iX1PCsWW25DrKg
         3LlEr2McXP9LgpL6a/a6oGdvmb80t1HDQQ0y2uywIhKJfJ2vLuEc7SrKxq70aPjhkACg
         7AxRzqjVbTjpGEzwRb9yHPboC/VTkRvYFGh3CZYigpzjasC9Gawmo33Pw8HP25KMbCOF
         w+FIbupRhDOilhWDD3xmYeUzTHVsLrYe6YmdLlJ5dmtn1+N4RbNRRrNvFJmv40qc7O7l
         pYKA==
X-Gm-Message-State: AOAM531bl4HMKg6VpBsm6OqtMZCwK/w0ZLxpV9sLHNSS5AilwKlJXyhQ
        8u7oVa5nIiq/brrKx44jkZW8lfl1sNjyTH/ludCFweckcTXDhgp1jJUcdrhNb2iqCBR3ul56aiu
        kp4DxPTypRDc9OYJ6A8HuENmGuxO+eOYL/mS4HPI=
X-Received: by 2002:a17:907:1627:: with SMTP id hb39mr1026558ejc.407.1644263956202;
        Mon, 07 Feb 2022 11:59:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwUtxIF9E4YM94a/CEVCVH4ktjKMIEGy/luAXiUvmv2LyRtpgZvjz0rDDsCo/M7Wq+ELblwWQ==
X-Received: by 2002:a17:907:1627:: with SMTP id hb39mr1026547ejc.407.1644263956047;
        Mon, 07 Feb 2022 11:59:16 -0800 (PST)
Received: from [192.168.0.91] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c25sm5601630edu.103.2022.02.07.11.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 11:59:15 -0800 (PST)
Message-ID: <f2370538-6c87-c57f-ad4b-e1a77ebf5e69@canonical.com>
Date:   Mon, 7 Feb 2022 20:59:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/5] dt-bindings: mailbox: imx-mu: add i.MX93 MU
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Peng Fan <peng.fan@nxp.com>
References: <20220207095832.1590225-1-peng.fan@oss.nxp.com>
 <20220207095832.1590225-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220207095832.1590225-2-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2022 10:58, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add bindings for i.MX93 MU which derived from i.MX8ULP
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> index f865b806ae6a..713cb847cd8c 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> @@ -30,6 +30,9 @@ properties:
>        - const: fsl,imx8-mu-scu
>        - const: fsl,imx8-mu-seco
>        - const: fsl,imx8ulp-mu-s4
> +      - items:
> +          const: fsl,imx93-mu
> +          const: fsl,imx8ulp-mu

This should be a list (' - const: ...').

>        - items:
>            - enum:
>                - fsl,imx7s-mu


Best regards,
Krzysztof
