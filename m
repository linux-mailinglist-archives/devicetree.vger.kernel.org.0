Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7FD86FFCBF
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239514AbjEKWin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239512AbjEKWie (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:38:34 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93E237EF1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:38:31 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id e9e14a558f8ab-3330afe3d2fso587005ab.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1683844711; x=1686436711;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
        b=bgglkVrLcpIOyGfwQj/esOxMllAkHXCjEjRGyoziuAKG1QDzP6vqAAzUgt1+LJ+9ZJ
         Ha9KCDI7g2QNDty8fmC1H6UCmCpZeDSbyLU9X3RmLOiOhL/SVRrmbllks5beASUV0ACa
         UzQSTZom/8T2Bla+CZHVWPrPuNzGNYOOyqaxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683844711; x=1686436711;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
        b=FTxZ7xworAP0mFultyHuPXBJfM5N7iLHOjBK2bYuduUSSVBA4ZbzakfdMM9I2BJFvf
         0ECH5aVVxFzPmuClzhVyasQovf94z+s0a5Ob9UXPAH5e7Fm/JQZb8wJm8TPoaH49giRJ
         DbwO5Ussi8I81hj1tvaYmxLFjREuXH5PU2S+CT/1sKN7gD+p9ZWGlyVLoNWryEGlSqcZ
         ZWvSIrwuH3IIYIg2ETTaA2nBwLs9kMR4EKtCa8aqnXEJj4dYdkAngdq2r5IkqDJoXi/L
         2CwJSPPZMIC9BguEg2N7kZORMdKsR1WlE+7NEtRadOeMNDoUZrbKoW+yiZxYbSzj3dSf
         h7ug==
X-Gm-Message-State: AC+VfDwy1I2Z37L1/RMTgBYrOzrLgynpEZUw8EEpkGAOrOBIM7E0dx2q
        zlVLza5MY/aq+mnpuLp35QdGyYEJkhLhNUl/pGSv2w==
X-Google-Smtp-Source: ACHHUZ7vCCWbTAYP16U6tuq3EY4U3PXWute7NLps4i5dXRxX/Gfxf5Ubm2VJtH56zuw8yR1ruIHjnEXfdiodYQ+LhYs=
X-Received: by 2002:a05:6e02:2183:b0:335:4c11:68d6 with SMTP id
 j3-20020a056e02218300b003354c1168d6mr15530ila.7.1683844710963; Thu, 11 May
 2023 15:38:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
 <20230511150539.3.I525a2ed4260046d43c885ee1275e91707743df1c@changeid>
In-Reply-To: <20230511150539.3.I525a2ed4260046d43c885ee1275e91707743df1c@changeid>
From:   Julius Werner <jwerner@chromium.org>
Date:   Thu, 11 May 2023 15:38:19 -0700
Message-ID: <CAODwPW8f+nG9gTQtDLs_OO1Y29A+znkRwKYLQ-gjYbVLiCL85A@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: mediatek: mt8183: Add mediatek,gicr-save-quirk
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
