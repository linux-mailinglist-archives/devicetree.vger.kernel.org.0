Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C22D866E47D
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 18:09:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233582AbjAQRJp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 12:09:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233134AbjAQRJo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 12:09:44 -0500
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E82F42CFEA
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:09:43 -0800 (PST)
Received: by mail-oo1-f43.google.com with SMTP id 123-20020a4a0681000000b004faa9c6f6b9so159170ooj.11
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:09:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EBt6OwEc7aWzfw3HNqGtJVkR6yiTPViGz+8y019qzbo=;
        b=tWUonolJPZPpp1ioFkq/tkjOJJSB/yO/wfFIp+H5PPQpmQYL3ueKnJ2IHibgvgUNTx
         YiDkc0vi71pTSjpCTlswbWQUA7uzrba6YGMXQi2Br4hosQypWGaYFbwR7b6nsOtiq9j9
         i7edmVFnIdv7DCL507RrcuG6ssr+y9pUe4mmR9kZ1jdpMO2pLpEr8/NuB6Euva8VdgtW
         lDgkfsL+yLy3XPQoQ+meyLrSc/DKs46u4mGaOBs6//FLXOWYJ9QLHKriZJewSrjoREV1
         z/Vvc4SyomtLCYdHAz7R5daHWQ4yeI6Q+awS1NcBf+FwBtNeTsGndRFUB+YLdF1bctqC
         qASg==
X-Gm-Message-State: AFqh2krfivX1z2+SpymBKcNxFpA8Eopf2a56+J2b8R4mLKrJDELB/P9T
        lybb+/4flVphWuacqkd7JA==
X-Google-Smtp-Source: AMrXdXuoCd2emcRioMWSkuiL5UJXYiiL7j05Xg3FB4TAOariAaf9grOg2xUsCHaHs0HnjFZPhOVlFg==
X-Received: by 2002:a05:6820:150a:b0:4f2:875:5252 with SMTP id ay10-20020a056820150a00b004f208755252mr12029257oob.3.1673975383168;
        Tue, 17 Jan 2023 09:09:43 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r5-20020a4a83c5000000b0049ee88e86f9sm15310809oog.10.2023.01.17.09.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 09:09:42 -0800 (PST)
Received: (nullmailer pid 3250793 invoked by uid 1000);
        Tue, 17 Jan 2023 17:09:42 -0000
Date:   Tue, 17 Jan 2023 11:09:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 03/10] ASoC: dt-bindings: audio-graph-port: add
 missing mclk-fs
Message-ID: <20230117170942.GA3244879-robh@kernel.org>
References: <87358hj2ub.wl-kuninori.morimoto.gx@renesas.com>
 <87y1q9ho56.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y1q9ho56.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 11, 2023 at 01:10:29AM +0000, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> audio-graph-port is missing "mclk-fs" on ports/port,
> it is used not only endpoint. It is already defined on simple-card.
> This patch fixup it.
> Without this patch, we will get below warning.
> 
> ${LINUX}/arch/arm64/boot/dts/renesas/r8a77951-ulcb-kf.dtb: audio-codec@44: ports: 'mclk-fs' does not match any of the regexes: '^port@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml

IMO, the warning is correct. 'ports' should not be anything but a 
container of 'port' nodes. If something applies to all ports, then it 
should probably be in the device node (or implicit).

Rob
