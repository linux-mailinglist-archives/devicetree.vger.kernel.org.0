Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 784C56A19A5
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:10:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbjBXKKe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:10:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbjBXKKO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:10:14 -0500
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com [IPv6:2607:f8b0:4864:20::e30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DCBA61BC
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:09:03 -0800 (PST)
Received: by mail-vs1-xe30.google.com with SMTP id f13so16666237vsg.6
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K/7IE3JWHJRTNTnzdoavFidJ6LPEaM9q4fZmYFGLA1Q=;
        b=DuSvUG9OycXrW6z26E5ntJAC8P8Z21ffrQQ0zKldE29yAbLukcTLMCOsd6/Y26MnPR
         3GYz1sfaAjSIQLylvfFxGJHQNWEV4LgX5DU6LGkI+rtH3I3Z8d6jtb/ap6AWzM4viiWv
         8WEUFbO14adJhjvJF/ctsGWNloY4St5A5SwoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K/7IE3JWHJRTNTnzdoavFidJ6LPEaM9q4fZmYFGLA1Q=;
        b=MzEBOfm9yg/EmtpT7w7qV30wNOTic3a5BtYi8D6Mgo5UnkZeue/gUERLulHW+cnAt9
         thbwMTKG38lV/ZJ/LbmcwsUzvnCZLcyQlqyIN0nwHXS0iMlFQlQ3JQ0PzOT632+Xdsr0
         q3ACdoSO5bLkNit6oWW5gqFGgxsojjiYnEhSWXx6dcLC8uly5kxfL851ZHuWeYkm4Y8C
         QGbxx4JwlK46BDOytNlOI8A4vOvdllBC6fqQkevvS3S28FCa7xnDSBO/oU+U6XXZRbZT
         QlcDVu7uW7gmKFJ1hkR096dZRlTk1PKkExazoP40gd8fWu23KIS5AGu8XXYiujcdHX5q
         c1ZA==
X-Gm-Message-State: AO0yUKWjztEVPsymI8xtBArIhTJ0vYQyIEl71cs/U7LkDmWWsXoz/VEq
        wfTDc63OWgRhV5/cZOPKcxkUNl8BNTV07cBIS2vO+Q==
X-Google-Smtp-Source: AK7set/RvpYiZdz2LIP4LHIvV09xgbjakyZphGlBWRIs/ctqNr1a9OJ7MquZUocfHsTdE0KvpE3jj3Ssiny0LCbsUw4=
X-Received: by 2002:a67:ec11:0:b0:411:c62b:6bf0 with SMTP id
 d17-20020a67ec11000000b00411c62b6bf0mr2076104vso.3.1677233343067; Fri, 24 Feb
 2023 02:09:03 -0800 (PST)
MIME-Version: 1.0
References: <20230223133440.80941-1-angelogioacchino.delregno@collabora.com> <20230223133440.80941-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223133440.80941-3-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 18:08:52 +0800
Message-ID: <CAGXv+5FK8BjSgwS5276FJj4zG_3STMbQwQWdyn3LjOvQ=108RQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/11] dt-bindings: gpu: mali-bifrost: Split out
 MediaTek power-domains variation
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
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

On Thu, Feb 23, 2023 at 9:34 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> In preparation for adding new bindings for new MediaTek SoCs, split out
> the power-domain-names and power-domainsvariation from the `else` in
> the current mediatek,mt8183-mali conditional.
>
> The sram-supply part is left in place to be disallowed for anything
> that is not compatible with "mediatek,mt8183-mali" as this regulator
> is MediaTek-specific and it is, and will ever be, used only for this
> specific string due to the addition of the mediatek-regulator-coupler
> driver.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
