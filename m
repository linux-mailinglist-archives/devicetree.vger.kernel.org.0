Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD1CA670AD4
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 23:02:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbjAQWC2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 17:02:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbjAQWA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 17:00:28 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 468914ABD8
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 12:45:41 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id qx13so19886894ejb.13
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 12:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eOm6YJiOLN3WpkUI18GnrhrupKVRnOUjPnLRzuUGs64=;
        b=aIxMaBf0KzVTDv9FoMrHxleI84HKCfCdzNFpu74oXRGRaf5jXwm2LvEG5wEAdiJbBN
         sPqJx995tjyKYdnAXzbgAGoenPX6ylkiYOIbB1aHdYg/3cRpf3zH8dX5799T2UyfaBZZ
         boC2STLUNGbM2VxiLCe8/tj0ARxlP1DmGz27ACoV9yOpQ/w+Py9GVr95V3LM/vr0fKQQ
         7qNx5bCRQaSpAyNxsqTV1sHeFf27x4dXH9cJMhYnOP1pF6nQIJ6pa1TSkSoc/6dfK0cr
         epeHAVej0mEeOvYO/W5auW3mlDAJMJJzv+AaYWIIYeICGjWnL2U3YsqmFloVxUFbBWCe
         afOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eOm6YJiOLN3WpkUI18GnrhrupKVRnOUjPnLRzuUGs64=;
        b=UJKt8p8/mTDeVUHsMuidCfIjosKhJYP0USknt+ulsahdYcE2UhHzHM2RWFGu0Zp7ZA
         bWYhgvDWYWVg8xz5uydXMBzBa0cQjxEJomCU75Basklqbr/SNOo6P17jX0LQS7dRTHao
         dXn61W60dIVI7i+nzCk06TeKLVHSy0hAYQuZ2EZFHF0EJXeqb1128YJcRQmNxya35LDE
         rM6CyWkYRpJKM7IJ5FTmmVPvPfa/RG9D51ogliQC0mKI4QtxFblT75G+NzX0wiDoN3Cr
         8uIclunsWJLYjTbBVBFU8syUI+fIpR2gg8og1R8p2OUOcySYeb4q9HDcnKAkzSnUMSr4
         /R7Q==
X-Gm-Message-State: AFqh2kqZSylUyM/UPEe+lKno/IE8tRkHaoi6eI00gHsRhzBl6ZotB7zn
        2Dh8jgzw2fSJdO/kBi8pm2AgtZuMzuEToOIVIv8=
X-Google-Smtp-Source: AMrXdXuyd/+CSRmDmzGaW7xRu4VtNyXtDT7t+cWyJHYLY0lq8YdNVQ9jTyxjw8s3Fbcf1573ngNc7XrLbSMJA+2FjxA=
X-Received: by 2002:a17:906:1dc9:b0:7c1:1f28:afed with SMTP id
 v9-20020a1709061dc900b007c11f28afedmr410539ejh.678.1673988339671; Tue, 17 Jan
 2023 12:45:39 -0800 (PST)
MIME-Version: 1.0
References: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
In-Reply-To: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Tue, 17 Jan 2023 21:45:28 +0100
Message-ID: <CAFBinCAYHQOrrjeWQZD2qjXMfSc-h6aQXDxEuKXqtqgGnXQQKA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 16, 2023 at 9:21 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
>
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
