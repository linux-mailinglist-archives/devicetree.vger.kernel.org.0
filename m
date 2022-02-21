Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4A8B4BE775
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 19:03:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350695AbiBURWK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 12:22:10 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352849AbiBURWJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 12:22:09 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62E7CFC
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 09:21:40 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 268BF3FDC7
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 17:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645464099;
        bh=8v28uIG1PBlifiT6rIaCfjGfwA19knBew3PLYVSAoVg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=dquq+Y9L3FFGM+qcrxwfuJk46Q+Lg5VnEyhdd9lj53zW0RVGNNMNB5lI07XwBy0I1
         +uvLvwPWZZy9OiQt++68zT7ZNO6T/AQOdO2+l6wOCfIAR0N7JgCHa4X8+fhlM7stk+
         R1WhjWf95tV3g5jXGLv4kvQbevrsXQKrEnH1qSanC6ZlJ8wyZ4yh6Pk1cA1i800Ty0
         D2705oPfy/NsbWACSc+dncTQZxBCdOKsOnsIQ0LND4TkpmzOqNLnmqY+ET/AetXwGP
         SFpCBy2sBLI21Epr/aJoVghLZhQdF7APhjVZSQyYmeBqGH+gZMGhJ2fTB4BYW13gHY
         MEbgRSPWqmrpg==
Received: by mail-ed1-f69.google.com with SMTP id n7-20020a05640205c700b0040b7be76147so10462576edx.10
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 09:21:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8v28uIG1PBlifiT6rIaCfjGfwA19knBew3PLYVSAoVg=;
        b=uC3Bvqz0zq0RRGNyF32Oloqeg0ycDlc9wfk+ib9NDZRFP9vaOFVNjvMocl/ZHOqKql
         NH54VrsLmg5clDTOrC1+JU0BzOJZPaEmhKJY/jvCZu6cqH3XmRH1gojeZjcLEtOIso1E
         jJOeQzrD+dSYAaV0vaOU6aJ7O7roRUEGhGbERoTmd26YIHRqHubsn00OdnJDuYcGzBjE
         vutG0ovhezqpq9T3kfEJnHbxP9zJE8xYfaTlmKD4aA5xyhDIu/XGlz4fIrESErv5zf8e
         ebvWFYGOOiiqQGrgub3Owj5wXcggdkKVgVpwmYJFP0/vemon1xPKakpRZ71XS5nJkZip
         1NZw==
X-Gm-Message-State: AOAM531K3WiY+S2/oU59qzkpIeEHxxoaSqDtZsorMLfStn8HkUOT0i2r
        Ouf+ki7LT6FxgXq5Vd4RM9vDmwnK3ydPUHi+y/5D4pzmb3UIs7bX7CZRBOSNMnYfqyIK2dtcQN0
        nj5xDZBAMMvl0NoB7INMhlfGaWUCiOSzojZhMRho=
X-Received: by 2002:a17:906:8d8:b0:6d2:131d:be51 with SMTP id o24-20020a17090608d800b006d2131dbe51mr427248eje.564.1645464098911;
        Mon, 21 Feb 2022 09:21:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwjgJyey9bJW6vUD8/B7gNtQBM0pda0yp9JUDrbNodpj1wa0288+D69iHNZR8/Gq65bjaVYbg==
X-Received: by 2002:a17:906:8d8:b0:6d2:131d:be51 with SMTP id o24-20020a17090608d800b006d2131dbe51mr427229eje.564.1645464098682;
        Mon, 21 Feb 2022 09:21:38 -0800 (PST)
Received: from [192.168.0.122] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id n25sm8828648eds.89.2022.02.21.09.21.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Feb 2022 09:21:38 -0800 (PST)
Message-ID: <3a7468bd-bba4-8f9c-7ffe-49c01c35497b@canonical.com>
Date:   Mon, 21 Feb 2022 18:21:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: fsl: add TQ Systems boards based
 on i.MX6UL(L)
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>
References: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
 <20220221160419.550640-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220221160419.550640-2-alexander.stein@ew.tq-group.com>
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

On 21/02/2022 17:04, Alexander Stein wrote:
> From: Matthias Schiffer <matthias.schiffer@tq-group.com>
> 
> TQMa6ULx is a SOM family using NXP i.MX6UL CPU family.
> TQMa6ULLx is a SOM family using NXP i.MX6ULL CPU family.
> Both are available as a socket type as well as an LGA type.
> For both variants there are the mainboards MBa6ULx and MBa6ULxL, trailing
> 'L' is LGA version.
> Finally there is the possibility to use the socket module with an LGA
> adapter on the MBa6ULxL.
> 
> The SOM needs a mainboard, therefore we provide compatibles using this
> naming schema:
> 
> "tq,imx6ul-<SOM>" for the module and
> "tq,imx6ul-<SOM>-<SBC>" for when mounted on the mainboard.
> The i.MX6ULL version is done similar.
> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Acked-by: Rob Herring
> 
>  .../devicetree/bindings/arm/fsl.yaml          | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
