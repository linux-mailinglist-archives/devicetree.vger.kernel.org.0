Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A10C24ACA06
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 21:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234637AbiBGUGk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 15:06:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240991AbiBGUFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 15:05:53 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FE47C0401E1
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 12:05:53 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AC1CF3F324
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 20:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644264351;
        bh=goO8dK0SlEWSiUngcdZPkNQcEJKvK2Mh6ruM6f24zJE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=To0CoDBBVb5fAmfhqkcquaky3Bm8gn9hb9mGpsG3UPqalK++07RU4Q8PS0bPaW1BP
         nIpcv4/gtE0Ffl42C8tJKW4/rlcxf6eEYG75vjeZfbuv6aq9dPA41kIQXx9o0ZLFMw
         y39qiEEEDO8K29IarRzTd9l/obv/o5qdBp13JCJ1WNN63Cx1ZGpXyLLewrgstvIi3a
         QAcN1ek7/QVwaT918rQ/ep+PRzTWV7XsjT408Ej+vKIskKWouebsHOSHblikS2p4fh
         9n8dr6E98RaYIRqavQViJeG73Q/l3C4DApyLvtSMaYgza1TXo068Ttnm2DZVLm+svk
         heOTb5jw26feA==
Received: by mail-ed1-f71.google.com with SMTP id ee7-20020a056402290700b0040f680071c9so2387126edb.9
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 12:05:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=goO8dK0SlEWSiUngcdZPkNQcEJKvK2Mh6ruM6f24zJE=;
        b=wZvqkghoTtjv/qS+8vUnCRnwMszTOQxHOz5Dftu6SMxHVhh8HqU+yO+nVYZq4XmKYv
         ITRaUY07gJLyx/F/tsl2uFcy1+O416w+8C0qSabRCpuz95ndehRwyBVbaYBv2zrPpik5
         tpkLAW2o75JtsgFQVIdJvWkFnYeUuSDZgKeemnZ9xgGWSzLBXFsxIiWPYWjxybWKiX1H
         t9e6t00JbIDHYNzz0+QeI7F7SNvBrLrJmdkSLyShexs5NxCCwnBtWZmn0MiHuK1/Qv2c
         QXpKafT7sptbzKmxddCPII8hBPTnGV/0/6FGsh9mFDWLbrG3K5OrnomPMB/P/6HgxZVD
         cHmg==
X-Gm-Message-State: AOAM530xPDN3Om2Wx2Kz4dy5WlSJ23reYwjZXF5BFjacwmy0Lemhm+Mi
        Ub79t/0XtCRc+7o8ptsmxWFR2HFoLCM54yM+vgyZqYeHwIU9K9/iu96cjSjtqazLYTT45s3QGJv
        6UFtqo5IcLyVAjeiiZXcykBNR5gtgN6swXis1nhc=
X-Received: by 2002:a17:907:961c:: with SMTP id gb28mr1022322ejc.725.1644264351203;
        Mon, 07 Feb 2022 12:05:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJypZvKL/91tZZbz/aGMp7O4C9ndtQieTeLuI9aGeY/ooMqevM1o1LH4cSTekd5klGaRV2Zg7Q==
X-Received: by 2002:a17:907:961c:: with SMTP id gb28mr1022302ejc.725.1644264350990;
        Mon, 07 Feb 2022 12:05:50 -0800 (PST)
Received: from [192.168.0.91] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id w23sm4041672edt.88.2022.02.07.12.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 12:05:50 -0800 (PST)
Message-ID: <b3e95f28-ea7b-b410-b0ea-cf782283e19d@canonical.com>
Date:   Mon, 7 Feb 2022 21:05:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/5] dt-bindings: mailbox: imx-mu: add i.MX93 S4 MU
 support
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Peng Fan <peng.fan@nxp.com>
References: <20220207095832.1590225-1-peng.fan@oss.nxp.com>
 <20220207095832.1590225-3-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220207095832.1590225-3-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2022 10:58, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Similar to i.MX8ULP S4 MU, i.MX93 MU is dedicated for communication
> between Sentinel and Cortex-A cores from hardware design, it could not be
> reused for other purpose.
> 
> However i.MX93 S4 MU use seperate tx/rx interrupt, so update
> interrupts and add interrupt-names property.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/mailbox/fsl,mu.yaml        | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> index 713cb847cd8c..f99890ae1813 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> @@ -29,10 +29,11 @@ properties:
>        - const: fsl,imx8ulp-mu
>        - const: fsl,imx8-mu-scu
>        - const: fsl,imx8-mu-seco
> +      - const: fsl,imx93-mu-s4
>        - const: fsl,imx8ulp-mu-s4
>        - items:
> -          const: fsl,imx93-mu
> -          const: fsl,imx8ulp-mu
> +          - const: fsl,imx93-mu
> +          - const: fsl,imx8ulp-mu
>        - items:
>            - enum:
>                - fsl,imx7s-mu
> @@ -55,7 +56,14 @@ properties:
>      maxItems: 1
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - const: txirq
> +      - const: rxirq

You miss 'if' block defining number of interrupts per compatibles.

>  
>    "#mbox-cells":
>      description: |


Best regards,
Krzysztof
