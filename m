Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0A2B50938F
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 01:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383185AbiDTXZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 19:25:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383169AbiDTXZW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 19:25:22 -0400
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 913961D0D7
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 16:22:34 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id c12so3186860plr.6
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 16:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=fV4JkmrG7edeYR97GeotnP7wPuRJ0USB98sxOGhu5Ko=;
        b=2QbEzQBZoXJ5xRNIiyZbID4WdZYaARZeIF5EGqW1WEiK/ZiP6EO7YmQlHzNuZZm7vy
         +10trNFZWe1bKcnmY8SnaFylQf/0DAq/NUkberBF5NCnjP61oZQmDR66f4vhGPZrbjnP
         vJXzkKDE54nuoOMtbkMezE3lIXL0ozNDJ70O9Qc6N51MFlgmoTvTsYF7pLFeLMNuH8Za
         jyQprSHDCzbf/InsUTTKP/MZdwtRzy9KQtLAa2oBzRhSWupKYg6NIaWe5kyEaSHgW6b0
         L/Nvoq+WoMdfwKUbHr0v30vlY6LLgOm7zTj4cwIO/MW1hdZ1OqPx7Hpm0jsdUCLJs5Rn
         i1jQ==
X-Gm-Message-State: AOAM532Mocjh4K/5RrYcQTXwcg4eYRl4iDeChqWzCb52fM+BrNBT5ElF
        FbxRzJpuULNRMREXGW09zEJ3gw==
X-Google-Smtp-Source: ABdhPJw1U+sE5q5vVGNJMiWtWbA91DsbiUZKDbDGss51Ta+5DIVK209skvrhfVxxVAgBCnpsiz/S9Q==
X-Received: by 2002:a17:90a:b014:b0:1cb:ba36:8fe1 with SMTP id x20-20020a17090ab01400b001cbba368fe1mr7229694pjq.67.1650496954035;
        Wed, 20 Apr 2022 16:22:34 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id l13-20020a056a00140d00b004e13da93eaasm21870519pfu.62.2022.04.20.16.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 16:22:33 -0700 (PDT)
From:   Kevin Hilman <khilman@kernel.org>
To:     Roger Lu <roger.lu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Boichat <drinkcat@google.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Fan Chen <fan.chen@mediatek.com>,
        HenryC Chen <HenryC.Chen@mediatek.com>,
        Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
        Charles Yang <Charles.Yang@mediatek.com>,
        Angus Lin <Angus.Lin@mediatek.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Nishanth Menon <nm@ti.com>, Roger Lu <roger.lu@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Guenter Roeck <linux@roeck-us.net>,
        Jia-wei Chang <jia-wei.chang@mediatek.com>
Subject: Re: [PATCH v24 0/7] soc: mediatek: SVS: introduce MTK SVS
In-Reply-To: <20220420102044.10832-1-roger.lu@mediatek.com>
References: <20220420102044.10832-1-roger.lu@mediatek.com>
Date:   Wed, 20 Apr 2022 16:22:32 -0700
Message-ID: <7hczhbe3wn.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Roger,


Roger Lu <roger.lu@mediatek.com> writes:

> The Smart Voltage Scaling(SVS) engine is a piece of hardware
> which calculates suitable SVS bank voltages to OPP voltage table.
> Then, DVFS driver could apply those SVS bank voltages to PMIC/Buck
> when receiving OPP_EVENT_ADJUST_VOLTAGE.
>
> 1. SVS driver uses OPP adjust event in [1] to update OPP table voltage part.
> 2. SVS driver gets thermal/GPU device by node [2][3] and CPU device by get_cpu_device().
> After retrieving subsys device, SVS driver calls device_link_add() to make sure probe/suspend callback priority.
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git/commit/?h=opp/linux-next&id=25cb20a212a1f989385dfe23230817e69c62bee5
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git/commit/?h=opp/linux-next&id=b325ce39785b1408040d90365a6ab1aa36e94f87
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/commit/?h=v5.16-next/dts64&id=a8168cebf1bca1b5269e8a7eb2626fb76814d6e2
>
> Change since v23:
> - Change wording from "Mediatek" to "MediaTek" (uppercase T) in mtk-svs.yaml.
> - Use cpuidle_pause_and_lock() to prevent system from entering cpuidle instead of applying pm_qos APIs.
> - Add kfree() at the end of svs_probe() when encountering probe fail.
> - Change MODULE_LICENSE from "GPL v2" to "GPL".
> - Add nvmem_cell_put() in error handling when nvmem_cell_read() encounters fail.

I also gave you a reviewed-by on v23, but here it is again:

Reviewed-by: Kevin Hilman <khilman@baylibre.com>


That being said, it would be really nice to see an integration tree
where this was all tested on mainline (e.g. v5.17, or v5.18-rc)

For example, I can apply this to v5.18-rc2 and boot on my mt8183-pumpkin
board, it fails to probe[1] because there is no CCI node in the upstream
mt8183.dtsi.

I'm assuming this series is also not very useful without the CPUfreq
series from Rex, so being able to test this, CCI and CPUfreq together on
MT8183 on a mainline kernel would be very helpful.

Kevin

[1]
[    0.573332] mtk-svs 1100b000.svs: cannot find cci node
[    0.574061] mtk-svs 1100b000.svs: error -ENODEV: svs platform probe fail
