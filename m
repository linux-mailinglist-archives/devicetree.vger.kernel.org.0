Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 371B86B0B4C
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 15:34:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231929AbjCHOdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 09:33:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230053AbjCHOdy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 09:33:54 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D605A457E1
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 06:33:47 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id i34so66557969eda.7
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 06:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678286026;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pY55357dkgIJHtMmft1f0nkUwBVH6QdF76V6vHUnWRQ=;
        b=EwgLnIRKAvNBZKGoXoxbVjxB7DNSU683oqoi5sKcMqW44byB/oXEAiy99GQ/e0UOhx
         jjyba+mB074zRUYfywqUb16WRSjHZJTOkb9BpfUhsTOZwLkpirGHq0jwUYP8goUCrQKN
         2OFARaqqaY6vK3ZROVUPqlp6G6YM9Yo73uQlTiunA0pikini2IQE0YFJikFoAgpT3ksR
         3pK8jYsGE2U8KFIMLx2TrFzoowQEKNX6ktIhw5uuLCyMxT5LoAJl3Ad7ZupBLL7eIvCb
         oooS/uSx5efIK8gjDshoI2yL5tw8SICHkT9BfVnxtxvMIVgifJPjdsKOSwDnTA9sW+qY
         KQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678286026;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pY55357dkgIJHtMmft1f0nkUwBVH6QdF76V6vHUnWRQ=;
        b=46M43n4s6CHocLYY6zRlktVvefGkM0SDyfe3L6brdTEroUINWari+uvv8SAMndikkb
         jD4fLCbVbGFEmuGhY71o+tih6XQ560LWjGIGKZEy89eLe4ToqEelVWnY0g4iJNwgf6wS
         X67CAPdlFuqCAuQ2wqFbAgRN5RYEND6ausfo5IOnHJCeXez+GrGpeqVmCBuqTrl3qxyy
         Aqq+Ny4wdxUgW0x0L+YbXpBpRUGbIPeeFWbQVQvSQLueuQ9g1aiTMmgYN8ae3Mt8LGUY
         dkiXtIGxmE3fwMwD/K7hvD7LhkORKTvS6m1EJnGoyZ6Y6x0o5NRMQ3oi/Bm/LMU86qgu
         fvIA==
X-Gm-Message-State: AO0yUKV87BhtN3YqfuIJ1B361HIiuWJeiPCVsWsJfUW9QRUMAoDs1jeQ
        yy8GazIjkJW+sF11FmbIIpWrfw==
X-Google-Smtp-Source: AK7set9VB1j9ytIOlayHEEbp9UwYl/A/qcegCMyS/RXOPIgA8bDCdREDYhZ3VpNVlRRWgZxAGEOrBw==
X-Received: by 2002:a17:906:6b83:b0:8e5:c06b:90e2 with SMTP id l3-20020a1709066b8300b008e5c06b90e2mr16842327ejr.21.1678286026388;
        Wed, 08 Mar 2023 06:33:46 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id op20-20020a170906bcf400b008ca52f7fbcbsm7512984ejb.1.2023.03.08.06.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 06:33:46 -0800 (PST)
Message-ID: <efe2d0a5-7e4a-c4ff-0bcc-c7e64f5538d3@linaro.org>
Date:   Wed, 8 Mar 2023 15:33:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 01/25] arm64: dts: colibri-imx8x: Prepare for qxp and
 dx variants
Content-Language: en-US
To:     Philippe Schenker <dev@pschenker.ch>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
References: <20230308125300.58244-1-dev@pschenker.ch>
 <20230308125300.58244-2-dev@pschenker.ch>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308125300.58244-2-dev@pschenker.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2023 13:52, Philippe Schenker wrote:
> From: Philippe Schenker <philippe.schenker@toradex.com>

Subject: Split? Or Rename? Because prepare is too vague.

> 
> Toradex sells the Colibri iMX8X module in variants with the i.MX 8QXP
> and i.MX8DX SoC. Prepare for this by moving majority of stuff from
> imx8qxp-colibri.dtsi into imx8x-colibri.dtsi.
> 
> Remove DX from the model string.
> 
> This commit intends no functional change.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---
> 
>  .../dts/freescale/imx8qxp-colibri-eval-v3.dts |   4 +-
>  .../boot/dts/freescale/imx8qxp-colibri.dtsi   | 590 +----------------
>  ...val-v3.dtsi => imx8x-colibri-eval-v3.dtsi} |   0
>  .../boot/dts/freescale/imx8x-colibri.dtsi     | 593 ++++++++++++++++++

Use proper -B/-C/-M settings so copy will be detected. It's not possible
to review it otherwise.



Best regards,
Krzysztof

