Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D09BC4CE728
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 22:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232229AbiCEVMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Mar 2022 16:12:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232549AbiCEVMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Mar 2022 16:12:53 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B936C74869
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 13:12:00 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 63BF73F1B7
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 21:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646514719;
        bh=f9rg0FgBlrSDEqY2yi+3lyLjudJ4mNThDGgUXldVQBc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=v/wzlMqNWMQAHsFokgtWwoCMfyaWlHPK8Q2afF9vYz5DZA1EKK1BbuaCGDciUCaCZ
         dFqHtUhwoMxMHeDVu/53dFTWbPG5mbbequZsQNyLSQCO2NUa0jV+gKJ9xc25eM/NBc
         KDFXzcWx5XQHypf/bYsWCMYyIYF+zcqBoqPCditJzS3zxsoC1RhpnPo7uPtTqJfCzs
         db2hNUaqryGMPeKLfsd54B9v2Xj3eqiSN3bcqd68H7aO8U9s2X97JnpvTnN1wqKFgQ
         ixbk0FzJLMeluxoENCiM36sfkWHxGtt87sH4XpTKuMXpZUv/aXn6Y2OsxRd2Z/ewTE
         xrpiR+vV5JkXw==
Received: by mail-ej1-f71.google.com with SMTP id le4-20020a170907170400b006dab546bc40so2730473ejc.15
        for <devicetree@vger.kernel.org>; Sat, 05 Mar 2022 13:11:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=f9rg0FgBlrSDEqY2yi+3lyLjudJ4mNThDGgUXldVQBc=;
        b=SFGv5jmBn15KM/Up52PePnGMCpGExP0QyZ4OLnOwl0+TVphP9rKu8FVliuH+R5gn97
         UNWBoTOmX3lFnd/LBMP6RSym7PZsHBwibvif02xK/oRb0rB8n7ZFA5llCvQtlvTaCMH4
         fIFtICEvyQcArUjYqkh8UMDPXDOijc2N3DyhD96EQP6YTLBTN31XLfn8d813I6u/u6G4
         XeNT30f7FxDgn5vaG4MVB2+PKeZFpAM0lyy8+RBA++6X6q1rbEp28QeIFrd6qOnKVt2z
         Av4jIU2dBphwjYW5fRG6FkHaKWO5gepGztGz5ajzqW67oggDg3nHii5cGhFiJLwB8FSb
         2wdQ==
X-Gm-Message-State: AOAM531ZecTfwOdj50OH0CNuDrEULX0ABIhoIzpJf23gaI7eYcoghi2/
        48iN22n0L36osg6r1GDVfFmDmOIVt69bzmeTFvDsfOoiIY3FjI5+KmL6AtPJMDw9ff4epw/XDQy
        PJpKJuZcdyBNFhxC5No0WFsvGKr5bf24uNv3kIX8=
X-Received: by 2002:a05:6402:d08:b0:412:a33e:24fe with SMTP id eb8-20020a0564020d0800b00412a33e24femr4259960edb.281.1646514719104;
        Sat, 05 Mar 2022 13:11:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw6EnzMhmk2unJ5RFjXOKVNXUa2owCkF9J5nLRQs3gFUUn+a8r+YO80rbTs6y2ECtGD+LHULg==
X-Received: by 2002:a05:6402:d08:b0:412:a33e:24fe with SMTP id eb8-20020a0564020d0800b00412a33e24femr4259953edb.281.1646514718938;
        Sat, 05 Mar 2022 13:11:58 -0800 (PST)
Received: from [192.168.0.139] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id b6-20020a50e386000000b00410d64cb3e4sm4055506edm.75.2022.03.05.13.11.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Mar 2022 13:11:58 -0800 (PST)
Message-ID: <7266d4c0-8c5c-24e9-e573-f10ced0c1760@canonical.com>
Date:   Sat, 5 Mar 2022 22:11:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/4] dt-bindings: mailbox: Add compatible for the MSM8976
Content-Language: en-US
To:     Adam Skladowski <a39.skl@gmail.com>, phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220305164906.16853-1-a39.skl@gmail.com>
 <20220305164906.16853-2-a39.skl@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220305164906.16853-2-a39.skl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/03/2022 17:49, Adam Skladowski wrote:
> Add the mailbox compatible for the MSM8976 SoC.

Missing empty line. With this fixed:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

P.S. Please avoid some unusual formatting/bold in commit title (*** of
cover letter). The subject should be informative and simple.

> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> index 01e9d9155c836..3b5ba7ecc19d9 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> @@ -21,6 +21,7 @@ properties:
>        - qcom,msm8916-apcs-kpss-global
>        - qcom,msm8939-apcs-kpss-global
>        - qcom,msm8953-apcs-kpss-global
> +      - qcom,msm8976-apcs-kpss-global
>        - qcom,msm8994-apcs-kpss-global
>        - qcom,msm8996-apcs-hmss-global
>        - qcom,msm8998-apcs-hmss-global


Best regards,
Krzysztof
