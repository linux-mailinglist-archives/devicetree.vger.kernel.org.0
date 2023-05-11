Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A49C86FFCC1
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239519AbjEKWiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:38:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239491AbjEKWiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:38:52 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D182259CD
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:38:42 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-335a61eb904so537575ab.0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1683844722; x=1686436722;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
        b=D1FyFhLQwaDejOigqWLk+GuyULBq7LZgABB5i2e5+IKmmWCfxwSTJT3DQuSmKwKjd8
         e3jhl3HKPDcYXl9986gGkAGRHMQQZJGQk97gBFA8DDgNTtenpBsRUNX6l23eGj3nmZiF
         Ps7NGOVGb2IR8BW+825K4FT0AQX2T3+wgvhKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683844722; x=1686436722;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
        b=dDipnkYLOHRjGZBkHpNZ3JGoR+0aRbS+nZH4IDBmeCwfHDXRq+nzxlhT/SLzDeULEO
         N3mqxEx37Wg864ZUdf1Y+yNw9CkOjyUI9vjt+UV9ayFpSQsfqD71FMxp3FZmY4E5KXx6
         7y0UnStkyDs+ttEAbfoG4U8xniR8VSeGJVu2RpQ5/CLpeyU0ctCYejpWG+VqOyuWeFgl
         UW7x9TOmPm02MGm6IhMaL7dbiEHH2fcb2lsE7xWjm1KPZIIndPPrUz2lkQWibSH8GWZN
         u1ypHNOqdi6EzypNevo4+oTRqNzB7jwzbxYZA5L6RDgvpnjIYSKBlpxg3nM9k5Iwp2bX
         EBAg==
X-Gm-Message-State: AC+VfDx/bD161wir7akEqdEmOlGOlmx1mTnFGbr5lH1tl4BFVbXiTwnn
        nwF2SLAKPwTv798L8aunpNtYvxgUSRBOgc/rGMinvw==
X-Google-Smtp-Source: ACHHUZ5s2SSlvAKm0yJCbow0T1hR5Nz2BqU0NUPOjYkRbNoZ1N11ksD1vWehbac9D31CrZPeMvxv/rSrw7qS62xLZeQ=
X-Received: by 2002:a05:6e02:1c4c:b0:331:4df0:8196 with SMTP id
 d12-20020a056e021c4c00b003314df08196mr14030ilg.13.1683844722057; Thu, 11 May
 2023 15:38:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
 <20230511150539.4.Iaa0ee05cf0362540fda50dd6a0d87ee35dccd88b@changeid>
In-Reply-To: <20230511150539.4.Iaa0ee05cf0362540fda50dd6a0d87ee35dccd88b@changeid>
From:   Julius Werner <jwerner@chromium.org>
Date:   Thu, 11 May 2023 15:38:30 -0700
Message-ID: <CAODwPW9zj6SAbBjk8c91sTOtzzAceJ+=kaMuMOqDYv4Q8JLDyw@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: mediatek: mt8186: Add mediatek,gicr-save-quirk
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        wenst@chromium.org, Eddie Huang <eddie.huang@mediatek.com>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        Tinghan Shen <tinghan.shen@mediatek.com>, jwerner@chromium.org,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        yidilin@chromium.org, Seiya Wang <seiya.wang@mediatek.com>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reviewed-by: Julius Werner <jwerner@chromium.org>
