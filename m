Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7F9C69F090
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 09:43:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbjBVInS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 03:43:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230466AbjBVInP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 03:43:15 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15A0B1CF70
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:43:14 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id p18-20020a05600c359200b003dc57ea0dfeso5570892wmq.0
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OQy0IKKyc3LYgpBwxk1hmAJwegXGjzIh80NvxBNJdC4=;
        b=rTCypug++FRsfNQPtzvYFd3+1tmZajSA2J1/eoMIzHr8YtBS1j1uM2KQX/gIV7S3Bp
         WPS+7Rl0RdJOFxbgYq9kuMG9xyZjBLa/OyzQlnDGwQz6UubTRAQYRGIuKlSTJAVgXJcg
         FJB4CoivZO404aZkNExb7Gmh6F9HMali7VhKI1SlmcJtEX8tYrZ7BTALDlOB+G1nWjA3
         Da3A3XfwPqhxCrsS8JHrNQYXyL46/TfJ2So3j9mbSgCFZZSlhVfupUwbr4BKA0HpZCQ+
         HggwBNs0bjqE57p4RLJ/NzgitxpWZsUV7NjWSzIkurgb1V4C2pEKt6jhMbk0ugtC5lDX
         u3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OQy0IKKyc3LYgpBwxk1hmAJwegXGjzIh80NvxBNJdC4=;
        b=0PsTrnHUpR+v2MJxgUK0xhZQTNUFNSCDPeqqlvMQfkYBHH13+f/9u12h3hNyb0UctH
         m2u20pUjQ3J6O1KNu64bqTbLdAwn0u1IWv9bkAhKCmwuTmrpGZWPsypyyb6LMoeX4+/F
         EHK28IXLZkaTIUgHDoPFmpB4WH85bQJHzzoGKDdvxoVxwzYwF9z0+C85SHS2Bnpcm9Zs
         WjrkMUvsINy4fa5UnY74ovSNdCKipz8FpNm59NxQ+qgICYxaOkDrc6gDVH6GZKnxppKe
         zAIh7zI2HgjIHwQ6A2KsxG81+AXqKk7Jj2LXkOj2pvNxOsdLYBNA9u0xQqD/UpT5IG1v
         RwHw==
X-Gm-Message-State: AO0yUKXSBQrLXWZw0TMLSdnzFh1p3lC+EM5qH1Z2p636OSBDdhrO4ubY
        Vzck41X66j7MRAJv92opaRDxew==
X-Google-Smtp-Source: AK7set8ScxZ4ZJd84TNx+nof9Foq9TSKqc5FmHtLVLdYFytAuS8f0kOwucyhT+WVIAC8U49TyEXTww==
X-Received: by 2002:a7b:c7d4:0:b0:3df:de28:f819 with SMTP id z20-20020a7bc7d4000000b003dfde28f819mr5589040wmk.15.1677055392488;
        Wed, 22 Feb 2023 00:43:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c22-20020a7bc856000000b003e01493b136sm7132169wml.43.2023.02.22.00.43.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 00:43:12 -0800 (PST)
Message-ID: <d9bd3216-2ee6-3034-9817-1f8b225bbc94@linaro.org>
Date:   Wed, 22 Feb 2023 09:43:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 1/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Align
 block controller example name
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Liu Ying <victor.liu@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230221152804.6061-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230221152804.6061-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2023 16:28, Marek Vasut wrote:
>      #include <dt-bindings/clock/imx8mp-clock.h>
>      #include <dt-bindings/power/imx8mp-power.h>
>  
> -    media_blk_ctl: blk-ctl@32ec0000 {
> +    blk-ctrl@32ec0000 {

Ah, I think I missed in the previous version of patch that you actually
update the node name.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

