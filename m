Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44916A1904
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:48:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjBXJsW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:48:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjBXJsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:48:21 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE4A22A16F
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:48:20 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id f13so16573642vsg.6
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hy9qFm6Se/EXdsfdDRuKKStMA9t1Y7+V3hdvzyTdE1k=;
        b=DXKueC8GpWCpoaUHhYn/VQVDrlcC5bBvGx9yUjyrIaUxjgH/nZgFkXAlDhhIM4Rk1K
         fevzB1ccqZoM/IEbncOZ8uRBzbikbbjGgp4UmpOZmrPCgcJLJ2UXc5ibkBAy4ieK7itq
         7R5kC5Dod5amnYLIoK+eRQgN2GAqgId8oG5es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hy9qFm6Se/EXdsfdDRuKKStMA9t1Y7+V3hdvzyTdE1k=;
        b=0KSbJGdKoGG1qRHkdIxRqpXWNnb40McbHO+yI0DVA0v4Mx9z94pxiqunuABb8HuHDg
         co7BQpC6v3qeSzJ5ut6VjTO0avKRr4A1jNrW0lVHMSrkpmTSmLfqUqAPhHiXgnYYu5W5
         8t5nO/osp3kfAyfRCEMxjgOM2o2ZGYNcSSnESIuRzrQfW/dNz/XMWGy/InyJfDWWuhaj
         t9BwN8+McWtnoqk0KmDaPQDivM9YtA5z9DzTcjdQPjO7ddWxTQt6jNrIIA8XtZLb2VdO
         4AB92YiS3g1laVv3rjQfRrs4xYbQu8lEPIdfZP0HQc0p3zU1t+CM2RtAGl+HxjEZoB+c
         9ZBg==
X-Gm-Message-State: AO0yUKV4zs6YvH7nBIcUOMLei/tw6LtkoTrGCWplmL33H85k8Z42qFL+
        0eLRhMOPQZCIamb5UUKO6jT3BN2O+Wf83tHTNUlA/g==
X-Google-Smtp-Source: AK7set//leuBbGapBBCZqdtVWTRR+//pDwfT2YEJmSKyJPphUPRuePVjrJm1c2+unUfCTnRY/OH4DOBdzIniPgi5pX8=
X-Received: by 2002:a67:ec11:0:b0:411:c62b:6bf0 with SMTP id
 d17-20020a67ec11000000b00411c62b6bf0mr2046072vso.3.1677232099910; Fri, 24 Feb
 2023 01:48:19 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-2-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:48:08 +0800
Message-ID: <CAGXv+5G8dkV-Po+960QeqMVUj6Sp7a08LYLitorWOWN=MhNKhQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/16] arm64: dts: mediatek: mt8183-kukui: Couple VGPU
 and VSRAM_GPU regulators
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add coupling for these regulators, as they have a strict voltage output
> relation to satisfy in order to ensure GPU stable operation.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
