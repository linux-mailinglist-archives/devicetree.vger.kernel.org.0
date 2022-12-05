Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A81546424DF
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 09:42:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232003AbiLEImq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 03:42:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232072AbiLEImp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 03:42:45 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A10C119
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 00:42:43 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id y16so17473866wrm.2
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 00:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=If5qlixuUuCrpqJqTQzfWNyU5P9n2l4cyuUetIlMVDA=;
        b=mvcWfHXUs+nS4mi6KaQhhybAcY63Fu3k9wkvPSzubDOVRxXnWdQnGlvmDA2gwoUaJM
         PIYM0OVjn2K3cY4mxtML7Prk73+rLaCpRElmP7hINu8qUyIxSnlQKVSxmZZfM58duaM9
         mIqjs1DfmePgdp+lDpG4lNCy7tZ3jKIbapWYdvMdCaQbJ6S2DMEm5fXivffQ13OBjURJ
         MZnZ6kub4xIdQGo0Gskxgp/sgL79BOGNV8eX0sSx31wNuvY7z1aPkELiIT+mv+CKeXb1
         Z7fu+RkUawlZ0iJ8kEP1PrURInk5r4DerdaWnElJwgRAksWUyUUnIG5bMtFjszjTR6p0
         t2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=If5qlixuUuCrpqJqTQzfWNyU5P9n2l4cyuUetIlMVDA=;
        b=X7/EEe8YQUtIXrEACIplGySnwIp0QwipMqwVIuDENnwB8mf6kCRGSpSzqTdVYyTyZr
         a/Sk87fcClsWVCIry0ug4wmmSxJJt66lEPF+FTMUuS+fAcgslxdlqWwn4+w6ROep1/ex
         pdBBOhPuLFf30QwkifEVGSsx6IfbXWG1bNaBi5KsFFY8zE9oBu40D3ugzKcsj1JEVBWr
         zeYNxSNqxhKlnLheQD5f+PkcJyb1FyB/9MVf3JwQMvffv8Ap3GT0AX8BwTesevn+X41C
         d3khR+IWPnE5jOzYnTZKuQzktD63IHv8lHCDqxrsv4GlJX/ENG7UJjzv/8n6pn/IGOwG
         w41Q==
X-Gm-Message-State: ANoB5pnWlWcp+ejzb+XqwrziJvs6bSdyoLIXPTPH1DV4xfXSMojXBnI7
        WB5zA12wZv7ivlLCyMiZU4P9g1jzpWSPTrQp
X-Google-Smtp-Source: AA0mqf7ftmwbCHcJjnnGuPWrlw7r3FnwQ27WNFbwK36TbXGmqA9uPXrcdiSRAypn+Q9Bh85Th5WD0w==
X-Received: by 2002:adf:cf11:0:b0:242:4f41:2ef6 with SMTP id o17-20020adfcf11000000b002424f412ef6mr5486456wrj.56.1670229761713;
        Mon, 05 Dec 2022 00:42:41 -0800 (PST)
Received: from [192.168.7.93] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id fn9-20020a05600c688900b003cf75213bb9sm20089291wmb.8.2022.12.05.00.42.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 00:42:41 -0800 (PST)
Message-ID: <5f4579fc-36d4-608a-3ef3-8033faed6873@linaro.org>
Date:   Mon, 5 Dec 2022 09:42:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v6 8/8] arm64: dts: Fix NPU power domain references in
 Amlogic G12-based SoCs
Content-Language: en-US
To:     Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc:     italonicola@collabora.com, Rob Herring <robh+dt@kernel.org>,
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
References: <20221202115223.39051-1-tomeu.vizoso@collabora.com>
 <20221202115223.39051-9-tomeu.vizoso@collabora.com>
Organization: Linaro Developer Services
In-Reply-To: <20221202115223.39051-9-tomeu.vizoso@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/12/2022 12:52, Tomeu Vizoso wrote:
> The power sequence is different between SoCs in that family, so get the
> right bits for each one.
> 
> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 --
>   arch/arm64/boot/dts/amlogic/meson-g12b.dtsi       | 4 ++++
>   arch/arm64/boot/dts/amlogic/meson-sm1.dtsi        | 4 ++++
>   3 files changed, 8 insertions(+), 2 deletions(-)


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


I'll probably squash it in patch 4.

thanks,
Neil
