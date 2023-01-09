Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09B5C662215
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 10:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236879AbjAIJvK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 04:51:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236744AbjAIJuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 04:50:25 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E9113D2A
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 01:49:38 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id n190so4112636vsc.11
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 01:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D5ahGc+OvNs5WM9eaB6chHv07ET6UjHeKRyotHsgAjM=;
        b=Gpk1v2ZnmWgGcRSYw/UCvPVHlUAizncukxu/U3iy5e90X10p4sPxOeaTBy/IgZiWiA
         695lU071VeiTqW+ry4mUWMgctnJqzd7m6V3oXk/QY0JyzBN+saxHeNBi+bNS5UstZqmK
         XPn6dUrYFHrph5UApKtdK4HkMF1JNZbn9/6bA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D5ahGc+OvNs5WM9eaB6chHv07ET6UjHeKRyotHsgAjM=;
        b=erHU4Mpl9QcUjJ2arjvg+0aUlrP7RTslgnf6IB5DWmmUVP05gEu1G3wL0hxsj1hUqE
         OSiGmDga6CleoPPLzUXJ2cPr3Q7g7AiQXwBpY3KjqBYpjqjzHGF/DACN1dLBZPzia4i4
         BHgHuJGLszkk1g0seV0++ASQAfYKUL2HVpoAfLdSGZ+jkY85PJb4rDR49LBu7Yq1WYgy
         UtgF9QRs2L8s8t+Pll9y51KdMmDJmGrU/EJnn+Ak3JI2+59TkICQxyTQ912UuiPXdhbu
         yc0g/PAs9wpPut2z0mDubrYuVWBhr4fFb5f7lKKC/kCJJow81gN40doGQ/a4BupQ8Pcn
         Wldw==
X-Gm-Message-State: AFqh2kqcHss3RmhBkmGM4HHrQoYZLXGY9XX5E65jTFL/6xNLt7uc1/kL
        5n8xWZCDUnlUBgBe8vqyVsusFo4u6p7iryBzbPkSwA==
X-Google-Smtp-Source: AMrXdXvtT35ihskXX2g1gPIg+h8WjTir+1IBQq2gkg2Z1k7ClRuUMhLNc3woSUYbDnwMhV5JuPAWZz/dN1mL6/Xm590=
X-Received: by 2002:a67:447:0:b0:3ce:d0ae:f6f6 with SMTP id
 68-20020a670447000000b003ced0aef6f6mr2967367vse.26.1673257777595; Mon, 09 Jan
 2023 01:49:37 -0800 (PST)
MIME-Version: 1.0
References: <20230109084101.265664-1-treapking@chromium.org> <20230109084101.265664-5-treapking@chromium.org>
In-Reply-To: <20230109084101.265664-5-treapking@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 9 Jan 2023 17:49:26 +0800
Message-ID: <CAGXv+5HY6qn8QpvPasAh90f7pfzQcLfbP3_GSdk73mucU6ctsw@mail.gmail.com>
Subject: Re: [PATCH v9 4/9] dt-bindings: display: bridge: anx7625: Add
 mode-switch support
To:     Pin-yen Lin <treapking@chromium.org>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Prashant Malani <pmalani@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, linux-acpi@vger.kernel.org,
        Allen Chen <allen.chen@ite.com.tw>,
        Javier Martinez Canillas <javierm@redhat.com>,
        dri-devel@lists.freedesktop.org,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        chrome-platform@lists.linux.dev, Xin Ji <xji@analogixsemi.com>,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 9, 2023 at 4:41 PM Pin-yen Lin <treapking@chromium.org> wrote:
>
> Analogix 7625 can be used in systems to switch the DP traffic between
> two downstreams, which can be USB Type-C DisplayPort alternate mode
> lane or regular DisplayPort output ports.
>
> Update the binding to accommodate this usage by introducing a
> data-lanes and a mode-switch property on endpoints.
>
> Also include the link to the product brief in the bindings.
>
> Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>

on MT8192 based Hayato (ASUS Chromebook Flip CM3200).
