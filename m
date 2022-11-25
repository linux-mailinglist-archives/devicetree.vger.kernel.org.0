Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26587638ABF
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 14:00:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbiKYNAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 08:00:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiKYNAX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 08:00:23 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07A752A73D
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:00:20 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id g12so6635587wrs.10
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HS8kOP96cOEwK5CtLjrL+jNJR3b230Y/mNQgeiCCJnI=;
        b=rT+mRtnSJ9aBu/l3FEvjyaAPwGJHnk5zm0LihU/tYwXrPQBAB/MidoESkZ8IEtmXDZ
         Ko70IfTjNFdij2H0r/q7lc3dO8hdAFGpCpCVeRp+0xiSybGo9tJnRjn+5Jb++bWCutbI
         F0A7/gyVH23KgEkXgWbA49ONQZonIi/S/PH3mUkrhNycUI7pC56jv8UErECcYtRse638
         /ofVOLBQl9WTPANBXwSwX9rNT+xJcqcyCbmoz4Df4OAINGhnO8y2Mvc9nYBKHrgkZz0Z
         i0P0XO1lit6teTkDv7Dc2L254jPmDtXHgrqu6MDFaPZlXdgOdj3TkFetKpCcfZrSLggU
         3IOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HS8kOP96cOEwK5CtLjrL+jNJR3b230Y/mNQgeiCCJnI=;
        b=bKshlg3hNhKaU+pIKoD0j2sVUP+zDuAv5W0L7Yz7k3WTgyHjFNp6h+5oAYAljcyuEP
         e/UG8+rZgbDfR/0LgJNTtf3h9sd4n69es6FXWnzcPbrP2wMUHBVNmbhUv6Fa4fbHlfHE
         7FleZ7oyx8w53e9WB5HUlErg3Mcbr1gppxEypjdbMQ0XEW21xzr2CTsPC9dJaP2hK7nj
         fTNBr0/5kr9cKoOPuKvlqc4qwLGj2PqplyBskiTTrZvNzhcosKRwO2NsA+I8ukUKrf13
         ESzhWeERCpmb0K9VgpTCRvkgvrIJKLPOIJxZFT5cNuQ1CrBVyXQxDLJJ+yOj+GU3H5gu
         4v4A==
X-Gm-Message-State: ANoB5pmznWegP1uyrE/uispK4I7fTICl5mWi5r/WW3A2Ks2n/oSDHma7
        Rt1Fg/F1jRP9ZbFU+dCMrm6yyw==
X-Google-Smtp-Source: AA0mqf7+O1dsaHdK++CkS9wMWnC7AqPy/Gta582CwlXV98mjsAwcepF9VReEzIB55w2u+cCe/GUGlQ==
X-Received: by 2002:a5d:65ce:0:b0:241:e1c3:caaa with SMTP id e14-20020a5d65ce000000b00241e1c3caaamr11203982wrw.458.1669381218324;
        Fri, 25 Nov 2022 05:00:18 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:84a5:7e09:b15:f1fe? ([2a01:e0a:982:cbb0:84a5:7e09:b15:f1fe])
        by smtp.gmail.com with ESMTPSA id x8-20020adff0c8000000b00241f632c90fsm4198949wro.117.2022.11.25.05.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 05:00:17 -0800 (PST)
Message-ID: <a714a297-fa5f-4238-c6ad-bc22cbc1d14c@linaro.org>
Date:   Fri, 25 Nov 2022 14:00:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/6] arm64: dts: meson-g12-common: Add reference to NNA
 reset to pwrc
Content-Language: en-US
To:     Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Amlogic Meson SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson SoC support" 
        <linux-amlogic@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20221125111921.37261-1-tomeu.vizoso@collabora.com>
 <20221125111921.37261-5-tomeu.vizoso@collabora.com>
Organization: Linaro Developer Services
In-Reply-To: <20221125111921.37261-5-tomeu.vizoso@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2022 12:19, Tomeu Vizoso wrote:
> Based on the power sequence in the downstream driver.
> 
> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 45947c1031c4..fa96fddf4633 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -1625,10 +1625,11 @@ pwrc: power-controller {
>   							 <&reset RESET_VDAC>,
>   							 <&reset RESET_VDI6>,
>   							 <&reset RESET_VENCL>,
> -							 <&reset RESET_VID_LOCK>;
> +							 <&reset RESET_VID_LOCK>,
> +							 <&reset RESET_NNA>;

I think this should go in the npu node instead, those are for the VPU power domain.

>   						reset-names = "viu", "venc", "vcbus", "bt656",
>   							      "rdma", "venci", "vencp", "vdac",
> -							      "vdi6", "vencl", "vid_lock";
> +							      "vdi6", "vencl", "vid_lock", "nna";
>   						clocks = <&clkc CLKID_VPU>,
>   							 <&clkc CLKID_VAPB>;
>   						clock-names = "vpu", "vapb";

