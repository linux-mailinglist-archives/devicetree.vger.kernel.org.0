Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D33753D370
	for <lists+devicetree@lfdr.de>; Sat,  4 Jun 2022 00:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348035AbiFCWBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 18:01:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231860AbiFCWBO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 18:01:14 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 642BA45529
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 15:01:11 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-2f83983782fso95339647b3.6
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 15:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eTD0MDLxzeNH/wZaowzR2+0RiK3EJbyXvBxqEdkLvtM=;
        b=xhJzcH7d5QTXkQNOqXLSstuJfS4pLxYPzVq2duSk1AJq1r+TfbcyB/GAypgPpOtA7r
         /ddKS4Qxdxi7jQbGQOE4x/Gn7UCLAaGsT6ec6lvEwBpY7WMGcsLjQp7T/vT/ELWlD44w
         k93B+XASZcopMTvx14Q0F0mqGkCO2m/Wq0pgvaKjPDaJ0vGi++QMQqPx+gl1Aj15z0D2
         5FUafMzPdam2A9cyN9zshFuvGqVZG7E4wKVxZqRZNBiqVe3a91N6F3lKYwxt3mOw+PbO
         WHELqcOA7kZquMmnjYuil/8EhCFa6BURLXfjAPMx+AKqhYkMVxhM0p4btk8wO6qvyny/
         b2vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eTD0MDLxzeNH/wZaowzR2+0RiK3EJbyXvBxqEdkLvtM=;
        b=RYfb5jQUSu7lIxzeUSXKNPY6/Heo07s/7fhMH9YLLAJoTIL1oB6CfJreud1XqkxyhM
         ltsVEEGBH3Y1T0GfUwq1ARedPRVaj8rVqVcqdqsMgj6cBJIn5jW27/x+/t18kwrXLUBz
         nLqQn9bJSlqjnQSfsIWkreD9ku50PluNWdY/U0wcvikVTIZm3kAzxaawD38DWSuL9Hud
         6uvRCF58JeEIaoP0I9+9gYnu4eKV+5zPJOpFRknG8/MOnJEBCSfQooLHEZQouv4aGGBU
         FdGj+YOPN+eVmyUlmPs95CdMGBad7WfBcmvcI9pOktH1UCScl96/Ht1fOrvJlGcgadri
         2FYQ==
X-Gm-Message-State: AOAM530tPHlau4Xsz2W5/7WbEJuuGDTaFrXlYH2TBcUJ6GVqMt8dROJd
        mUsFWdc5ndfrrLO2ccM8hAn7I/id+rP/ugx7dIA89w==
X-Google-Smtp-Source: ABdhPJygLfhw11c+DqIQfw/OzDPBUuIPK8OMfv1NYvSDNKAjndYL5Vk5Dxk796+DH0WSeJFvMkT3GUqpyQVumTKeTYo=
X-Received: by 2002:a81:fe0b:0:b0:30c:7e9c:701 with SMTP id
 j11-20020a81fe0b000000b0030c7e9c0701mr13607442ywn.118.1654293670642; Fri, 03
 Jun 2022 15:01:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220601082410.55266-1-jo@jsfamily.in> <BY5PR02MB700952493EEB6F0E77DC8416D9DF9@BY5PR02MB7009.namprd02.prod.outlook.com>
In-Reply-To: <BY5PR02MB700952493EEB6F0E77DC8416D9DF9@BY5PR02MB7009.namprd02.prod.outlook.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 4 Jun 2022 00:00:59 +0200
Message-ID: <CACRpkdbZwYCT1joo+EdQm8OXkmKHdPPDZicsp_SmH7DYkFMVYw@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] drm/mipi-dsi: Introduce mipi_dsi_dcs_write_seq macro
To:     Joel Selvaraj <jo@jsfamily.in>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Corentin Labbe <clabbe@baylibre.com>,
        Hao Fang <fanghao11@huawei.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 1, 2022 at 10:24 AM Joel Selvaraj <jo@jsfamily.in> wrote:

> A helper macro that can be used to simplify sending DCS commands.
> It is useful in scenarios like panel initialization which can sometimes
> involve sending lot of DCS commands.
>
> Signed-off-by: Joel Selvaraj <jo@jsfamily.in>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
