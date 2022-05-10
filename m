Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A9B15213B4
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 13:26:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240586AbiEJLas (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 07:30:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240897AbiEJLar (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 07:30:47 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6A9D1659F
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 04:26:50 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id t5so19574375edw.11
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 04:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aTs+D33bVqPC1vTNDFmeKDkEuQHihxFxJO2bdLQfglA=;
        b=eRXK+li6OonkO4IoyWAUONiLZ3H2W5oSwg201hX+NZ2YIQkkPIhE9OEfZZ0QvyZnv+
         FCcuOna18IiOd7iO9isfy+F8ihbC4+VvPxgwbk4ecvtmoxU3pE1LbXPeIX/YO9zXMjmz
         u7S4DZsqRjto6aw6DMBNh+SDt8s3La2PTmcDkRxNjNp0UwBhaAiZrHDhGEDACSjX7fHd
         wKK8kz2szOHfNCt26cueXjbmBYJL8m+so1BXxXNLCpbxVhVTNaat4OJxOUvxA6I07G7L
         1JoYwaTL0t32nYX/SGoiO10xn4sIuojHcetu72a8SBvys3RlcYjGodHOuucfXYZueBou
         Q3rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aTs+D33bVqPC1vTNDFmeKDkEuQHihxFxJO2bdLQfglA=;
        b=UUecoKsWMjFUNN/Vzw+59ja1q0M/+9ffCQUiycohd+ZdB0Y8e+pEIjk2m2dYQ1MDuA
         ydu6N3B2M0uYh0Wa8e5zPybsZDi2q/Mu0ObOwecY4fE4S4tkO9AOhUcWoZmVL4454Gd9
         6af2OgV3k//7zCqrb+lwuZ992FlYgq2NK5eVPmb+BDK+IY0+Vk9wiWEvqmeNaoYGx+MD
         eeth9wMJ73g+2367RC3QyyslI/RMGS6MMD3IxicmEENzlCGEQE/T0FGNYIuq8Lomzddy
         dlTIRpsIAOwM8HXI+wfE3EI6hiuH+1CAYrlVEUG+zu4sYV+KdsN2L4HnN/cxnVnGndQ+
         3CZQ==
X-Gm-Message-State: AOAM530OEtpATVG3er4V83H5LL9aqR0CoKLx50hQZnGZAO8AXy3Jo72i
        lKIC3ge/UuYojShCa7IEtCA1KBmUwxwd7AViGQA=
X-Google-Smtp-Source: ABdhPJwXQ/MdQr4DspsQhT3emOVtAFaaaUsUR03AniBvxa06vylFS8ir9N+abcRhodYcHmhCF/NQJO3DQilUVfeFf/k=
X-Received: by 2002:a50:ab57:0:b0:428:9f9b:d8e3 with SMTP id
 t23-20020a50ab57000000b004289f9bd8e3mr9662680edc.305.1652182009210; Tue, 10
 May 2022 04:26:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220510054612.2389595-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20220510054612.2389595-1-alexander.stein@ew.tq-group.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 10 May 2022 08:26:37 -0300
Message-ID: <CAOMZO5AsqOHmMW2Am4GgbJ1h-eJSTM86j96j3WerB5S0XsSn_A@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: imx7: Move hsic_phy power domain to HSIC
 PHY node
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 2:46 AM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Move the power domain to its actual user. This keeps the power domain
> enabled even when the USB host is runtime suspended. This is necessary
> to detect any downstream events, like device attach.
>
> Fixes: 02f8eb40ef7b ("ARM: dts: imx7s: Add power domain for imx7d HSIC")
> Suggested-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
