Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C15F6A1913
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:52:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbjBXJwI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:52:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbjBXJwH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:52:07 -0500
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E9BC63DD9
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:52:01 -0800 (PST)
Received: by mail-vs1-xe35.google.com with SMTP id a3so7632947vsi.0
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hy9qFm6Se/EXdsfdDRuKKStMA9t1Y7+V3hdvzyTdE1k=;
        b=KaPyZwJldbAZMed7/XIR6NSqzh75fY6A0QtfIFNwMdS7G3vWxZ+J9HAdx4yhkYkidR
         h/9jJ3mzYkS18gADZ7h9khXny+iBQhpl4mfmKAUQ8cXLfusQoGCQ18F8bBh26NQZEFS4
         YPX0b3llm/Rty2OdOfzFDZJKQrssjQlkB6j+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hy9qFm6Se/EXdsfdDRuKKStMA9t1Y7+V3hdvzyTdE1k=;
        b=WirEBAlJh4UWW5G6DwZAQqPXvcy9ENW7QAq6vVQdF+Jk3OFhlcrExWE6tv1bdGyEo1
         qH48Dfp/bmWoaHG+xrZNrsSVIfr8URdEp+SyW/9px5PNKYhjwMm2aU/R2K46xanW/v17
         f8pgpJcWYMo+6/3AT0W+4Le7KbQzPWzv5Cv85ylVoGQ1Lt74RqNPhuuPgMyjgQfwSLZx
         X4O+NmM9iwUoRFTf+CODxyO8iyNXtPIMFBdIw8jSnWBQgXsdQGwFe+cS+CXwgyV9nzYI
         GZKoMf5bQ7wfjf67yuThwGa4LhLAWOVzQXUXg+5cN55S+kKdaXdSGqufJGNBldQECMng
         0g6w==
X-Gm-Message-State: AO0yUKWmRB2l5xnRyNwV8RkPM2JimvKdYfgR5wzfAKR3AAXAmKkP6xvD
        R3zyRlGaF9N92wmVuTJZZUqDva4+LzopPWS778vbsJljq5HoPXPK
X-Google-Smtp-Source: AK7set9sUlfcMOdriWx5llJESulwFsPBUjog+ETyhdNs8BStWZA6c/AggwcYCCE9Et4gzRvd61o1vXs/sQ8NzgT+VdQ=
X-Received: by 2002:a67:c584:0:b0:41f:641c:f775 with SMTP id
 h4-20020a67c584000000b0041f641cf775mr308152vsk.3.1677232320295; Fri, 24 Feb
 2023 01:52:00 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-5-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-5-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:51:49 +0800
Message-ID: <CAGXv+5Eh62NFNW1T7PYiQe+9KD8qX2WB7M3rwrYD=ca872y3WQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/16] arm64: dts: mt8183-pumpkin: Couple VGPU and
 VSRAM_GPU regulators
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
