Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39802663C00
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:00:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238057AbjAJJAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:00:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238289AbjAJI65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 03:58:57 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEAC349163
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 00:55:17 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id ja17so8227579wmb.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 00:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AJZEgafiIeioJQqxxR2TLfqMG4ggMjF5kvQIg8ru/OQ=;
        b=oZQQGyrihkxkV+NwJoKPFksdxJKepNCRMw8yyZEfme8jomfBCNQtdt0o6DVNYdwShz
         pqdR0x9ML9Qss2dA9dtJyrcMY5dr3zNgLndabDTHVZy37i61lNd6Lbru4tEhhzbrA6/e
         mSRpmVbDEC8LFDljX0TKsZO+ToRrcMZQctN7ubbtHy7IRfMS+3YukFmgDKe6dUnHM5Dq
         J3aKzatx5vKFFcG/cBQC2nBTcVjXjH0wH/o8MlxI+m+S+t8qiebNQRM9fpFrNVJp7XkK
         jMef0DHWaMSq0eijFpUFet5G2DJfdQobq3jSEm7hjQrgSkBl6UYEsuSeH+vhRVnJ9m+2
         XXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AJZEgafiIeioJQqxxR2TLfqMG4ggMjF5kvQIg8ru/OQ=;
        b=mXBsIO1DLoNS3g/EvTvez/Yua5MRv+32q2FCISQGzG2lP3kBQdssRkJcAfYGVbCNa7
         Y+yawCWj9JMOq2Znvzth0TAmw58c7vUchFoMp0dlk01QY0/PTDbYlYK1Vq7yJsrtGiwr
         JaKCj7v/KBn+koiEvPvvSWo3CzvKvBexF9r5v42tC5IY4FhMxoc6eea4/RGfaVacq69t
         MaUKOst4FCU0KGHCR6FhrRMlyvsqkmqrUx5KiCiDPHj90SEd68ynA4bmi21iYQAThXBW
         intdjL6CL/Vw/vdJVBxi0rbFJ4S/F7xMhpzOiQLWwmGHXv0zsuRVZR47daPfVCHBqAne
         O5fw==
X-Gm-Message-State: AFqh2kpvzwP0SP7bsGxtM+4vYsCgYoQCZ0Us5uEz7l6UCePgrq5LJuyi
        EFOEzhQL6zV/1KhcT2wubCYWMw==
X-Google-Smtp-Source: AMrXdXs0jEY/S93IZ/qXGGVCOQXegI9zpdhgJGV3iT3Xgg3RwAb82MkzEh5d6A6LsNWfZtwLHDLJEw==
X-Received: by 2002:a05:600c:1f11:b0:3d0:57ea:319c with SMTP id bd17-20020a05600c1f1100b003d057ea319cmr48491722wmb.13.1673340916427;
        Tue, 10 Jan 2023 00:55:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o19-20020a05600c339300b003cff309807esm17447533wmp.23.2023.01.10.00.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 00:55:15 -0800 (PST)
Message-ID: <2026efab-80fe-31f8-105d-e2772b03606f@linaro.org>
Date:   Tue, 10 Jan 2023 09:55:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2][v4] arm64: dts: imx8mm-evk: move PMIC setup of A53
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org
References: <20230110043257.3637516-2-johannes.schneider@leica-geosystems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110043257.3637516-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/01/2023 05:32, Johannes Schneider wrote:
> from the dtsi to the two dts's

Use proper sentence with capital letter, verb, imperative mode and full
stop. Explain why you are doing it, because I do not see here particular
benefit or goal.


Best regards,
Krzysztof

