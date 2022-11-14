Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF8BB627CFF
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 12:50:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236763AbiKNLuf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 06:50:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236981AbiKNLuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 06:50:09 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0621F27DC4
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 03:46:22 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id y14so27627065ejd.9
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 03:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JcA3WTxOLVsx9HyWrWLCEt+YOch5fZ11V6/Dj+y46aA=;
        b=J5IbFNRIl4mZrIOBZFbbul4vZSjr+pCopQ7xC7t7IOFNWt6LK4uxEvTlJnvi3DcCwg
         Mj0qHZIjwFJVNplqULbN/194xLESjkxtAhp/nuowYUfaRBLpXSknAajP3SX6Dgrzv59V
         yKghZNr1yjbX3bREjwDCaVqXxzRKTLp2WxROFiJm78qSAUevR0I+XZ0yL2AhwA5Pa8OC
         Ar++AW2/6pNlTjaFzQ+AU5BsmOCluF6KQGAxfnIzvKmg3YcHdqbB1xKailKTBo/9bQke
         f1lNIWQKey8NrtlSX6lZgrcC1R5huFLvUHeJ1g7l+kQtdhx1JHnLlDYNnPfod7M6u2NM
         5PWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JcA3WTxOLVsx9HyWrWLCEt+YOch5fZ11V6/Dj+y46aA=;
        b=Q87GaQCoalh1b88fwd7DJS0psW3gYxdiaEfbCUPbm+EGUVmdUCgpZ3ChWZ5lkY+1/v
         7/16YlBiAAW+KypxqyfvkgWERlIVnoPLWA+XNVr0eDmUpI4DjTwBXgyXvAJqei/pIqRf
         9rmrlH85e7VNKZglTw5/jKp2Dfo484d2MuQWoijTgMVGXuSeay6QsWQmg2m+eNC1KjZR
         Wr0+RzOnc96/Klpgehd0jWKNZTdWW+Pcey4b3rBC2dwS4GL6LC6RpmbClVk4ajzeE4uE
         ryGq9DPcRKTB8epMFHjGsBquAkJFy+0X9e8hqv+tKhQ8L0uvOH34ydM7a9+SnzM2DD9L
         hPjA==
X-Gm-Message-State: ANoB5pnr27KUDq7UkE+TMoxTOWtsZ4SkIJZJm95Yzr205zw55N/pAH+Y
        bEtOj2ZZn5rAe01CxzlHh5ad0worVo9zPOj2KPuz3Q==
X-Google-Smtp-Source: AA0mqf55Kgh4Bv2j+bcln0t870AQldqCRbuXxJ4UGCTGQspRwPvvgmh0WJDtUtbiPYrjd10rLRWtolMp2Yb6CagXlUk=
X-Received: by 2002:a17:906:4911:b0:7ad:9891:8756 with SMTP id
 b17-20020a170906491100b007ad98918756mr10170402ejq.203.1668426381321; Mon, 14
 Nov 2022 03:46:21 -0800 (PST)
MIME-Version: 1.0
References: <20221111203130.9615-1-macroalpha82@gmail.com>
In-Reply-To: <20221111203130.9615-1-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 14 Nov 2022 12:46:10 +0100
Message-ID: <CACRpkdatn3SFaSDwj33QVvx_B-020TaTDoPz3p_9K=EiT7A_7w@mail.gmail.com>
Subject: Re: [PATCH V5 0/3] drm/panel: Add NewVision NV3051D Panels
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        thierry.reding@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 11, 2022 at 9:31 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add the NewVision NV3051D panel as found on the Anbernic RG353P and
> RG353V. The underlying LCD panel itself is unknown (the NV3051D is
> the controller), so the device name is used for the panel with a
> fallback to the driver IC.
>
> Changes from V4:
>  - Removed "prepared" as its tracked by the framework.
>  - Use mipi_dsi_dcs_write_seq instead of custom implementation.
>  - Changed devm_gpiod_get_optional to assert GPIO as high at probe so
>    it is held in reset on suggestion from maintainer.
>  - Removed requirement for vdd-supply in documentation.
>  - Added description in documentation for reset gpio to note it should
>    be active low.

v5 looks good, patches applied to drm-misc-next and pushed, I had to fix
a minor checkpatch complaint in the driver but it was trivial.

Yours,
Linus Walleij
