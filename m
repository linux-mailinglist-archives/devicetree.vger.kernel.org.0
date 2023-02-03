Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B51D0688FEE
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 07:58:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbjBCG6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 01:58:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231691AbjBCG6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 01:58:47 -0500
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DBFC6537E
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 22:58:46 -0800 (PST)
Received: by mail-vs1-xe33.google.com with SMTP id p10so4431705vsu.5
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 22:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BPezifRRh17LMgbOCetI5RBHb7FvOfUfqVX0Agy4qtY=;
        b=N02LErE9dq3/R+ouQXbCmArYXakhpEsijaOrlNridYJmj530ETOeWePoqlx9jusdKT
         iPfDHYES4HEyQQxPJu19zeJddM1thZLxnlq1uMSzUslbpFkGddTouvlTW54+4K6dADtr
         VAzgIeSwiO4kIkWN6we4elrNZOzpqpXh4Jg08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BPezifRRh17LMgbOCetI5RBHb7FvOfUfqVX0Agy4qtY=;
        b=1WgXQZciBpfMH1XNfGV5He8+m4U4KCTzHluHFWpYp55zn93TN65imVP4Bjy6D5la0t
         /YX2wQS+VUGFVpdJHj2HNbqPnqUA4muKil9s1AQHUMsc+sDKUWso+NDFuZzpD7DyymfM
         Y8nx2KIsYnVKvTGBNIU2lRh+J/IwbDF9CncabGDM4Ogrc4EFatKtytal+i9yreU43oZp
         UQdZN3sL4+rRIWcXn4Pg03Q5XtJVaeXmmp0STn7plf0Dg0YOIJfOkDgtkdeztoSAEtDg
         zLpgEGx+qTqFZXFq5/GMVqESdv+aOLn4UU8zHTMAWUcJjnX2zF0hxTsMyj0hyhL1iUPC
         10FQ==
X-Gm-Message-State: AO0yUKWuQ7GbqOoaxvbItvvd+HP94rLcSfWmNNu6/9i0IBR2YEybspnI
        JAYC8KCRcrFKt5Pyn+QLzvAalzEPmb8tmrVaab3TCw==
X-Google-Smtp-Source: AK7set+oNQywJdjoNKiBRoVLc3BLNQgwROOiiULh2qZGXSFUG24dnj7Lf6sHKTrCEF1O2JAiqeFNZ7IgIlv8x4NVK58=
X-Received: by 2002:a05:6102:23f2:b0:3ed:89c7:4bd2 with SMTP id
 p18-20020a05610223f200b003ed89c74bd2mr1663085vsc.26.1675407525498; Thu, 02
 Feb 2023 22:58:45 -0800 (PST)
MIME-Version: 1.0
References: <20230119124848.26364-1-Garmin.Chang@mediatek.com> <20230119124848.26364-9-Garmin.Chang@mediatek.com>
In-Reply-To: <20230119124848.26364-9-Garmin.Chang@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 3 Feb 2023 14:58:34 +0800
Message-ID: <CAGXv+5GEHXqtYffimHzH2srMZKa2dnMAmN5wgTW+91bfFFf6gg@mail.gmail.com>
Subject: Re: [PATCH v5 08/19] clk: mediatek: Add MT8188 imgsys clock support
To:     "Garmin.Chang" <Garmin.Chang@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-clk@vger.kernel.org, netdev@vger.kernel.org
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

On Thu, Jan 19, 2023 at 8:55 PM Garmin.Chang <Garmin.Chang@mediatek.com> wrote:
>
> Add MT8188 imgsys clock controllers which provide clock gate
> control for image IP blocks.
>
> Signed-off-by: Garmin.Chang <Garmin.Chang@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
