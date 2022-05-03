Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4674F5187FE
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 17:09:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237808AbiECPMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 11:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237998AbiECPMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 11:12:54 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BBCE3AA62
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 08:09:21 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id p4so20280281edx.0
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7tccEYmP1Up3dLXDN+1M0rIsKvh0911h46EMldmvN7I=;
        b=b9ShGJ5SZTplKe0QbTIy+x0O2zCSuwbYR2O/20m2BPYhSQDrLmIGDywLO0FRQQrwcH
         Ly89HKMYQuR7uMZPvGFDet7K7qr1mGKyVs/NixIsXhg6ywD3joeB7yiiDXuwPkVn61HR
         yH5tjEQ+qoNKZohYEhk8radCiM3/+7F2b2k8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7tccEYmP1Up3dLXDN+1M0rIsKvh0911h46EMldmvN7I=;
        b=fuKzrdKcC+6uVtdieffYLlLgOMtxg3LPq8UKX3+frCP9uQb9Yoo89gf9epR9MU2jpL
         fx4M2+GT5Jo8/4KYOrmH4njbjATFVIeK/DhrmUjM8jyHmG9cfgka+jdMPOsMijzxLM7x
         AJs6vlG9QuRv2dWl2roBhegv96rTldiUMMXrkP/IHBt2CXWXClKSk+XjY+aOd7O/NQ6w
         x+/EMyh5DRnypuQkp0qoAE8YfAZJi1AD/Q/ZAMB8bEnLMhMr1oxhlqnD1OYqMdOi10+y
         JOWtMwyFiu3aicJIpJBnTwm9b03A7jE+sMhFL/kKXtvY65WMdzEqgAccZ9hN4np2W6Ck
         qgwQ==
X-Gm-Message-State: AOAM532MZoCy8wDchtPvPry5UsAN9aA9zR/HrW4+PbQISRBDHD4nUpKL
        h6Z7M0EYri9N6jeQ1vFhVYVyiGwlx3Pkdiv/
X-Google-Smtp-Source: ABdhPJyaH3VCcIzFQK1mXs1EgcNy6r5AuBxgbD0UoJPTg1oqjf5hFDX7dUDpKSNXPy+Kt+oKOVy5ig==
X-Received: by 2002:a50:f69c:0:b0:425:c96a:5c09 with SMTP id d28-20020a50f69c000000b00425c96a5c09mr18098380edn.256.1651590559468;
        Tue, 03 May 2022 08:09:19 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id r22-20020a056402035600b00425d6c76494sm7915264edw.1.2022.05.03.08.09.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 08:09:17 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso1548653wme.5
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:09:17 -0700 (PDT)
X-Received: by 2002:a7b:c4c8:0:b0:394:26c5:b79e with SMTP id
 g8-20020a7bc4c8000000b0039426c5b79emr3744035wmk.15.1651590556954; Tue, 03 May
 2022 08:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220503042242.3597561-1-swboyd@chromium.org> <20220503042242.3597561-2-swboyd@chromium.org>
In-Reply-To: <20220503042242.3597561-2-swboyd@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 3 May 2022 08:09:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V8kfRYidvQRmx_XmGm8X3XHR_GxTkKvxkqUHdqJ5CMNg@mail.gmail.com>
Message-ID: <CAD=FV=V8kfRYidvQRmx_XmGm8X3XHR_GxTkKvxkqUHdqJ5CMNg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 2, 2022 at 9:22 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> @@ -113,3 +135,56 @@ examples:
>              /* UP      LEFT    */
>              0x070b0067 0x070c0069>;
>      };
> +
> +  - |
> +    keyboard-controller {
> +        compatible = "google,cros-ec-keyb-switches", "google,cros-ec-keyb";
> +        /* Matrix keymap properties are allowed but ignored */

nit: s/allowed/required/

This now looks reasonable and well explained to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
