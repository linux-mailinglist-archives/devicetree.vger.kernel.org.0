Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E463C6FFCC3
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239565AbjEKWjH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:39:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239571AbjEKWi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:38:57 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 937BD7EEB
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:38:50 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-3330afe3d2fso587165ab.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1683844730; x=1686436730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
        b=T1vTFJ3ph99/mqUWGDMVcpfXAbah9+ScQlqestniXFMUKxb/wBJXUihnRBnrW8Uv/0
         fH6z8fhjj5Qi//2MHMdRmI2TU/wfhwAZt+bYCGUiuVSA81j4VTQt8VPWsdO8hm8Zmc+w
         AiGP7X43ltgvRm3sW0GR81xRNeT0x52IapZ4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683844730; x=1686436730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
        b=R08S5lBBrq6G50yUa9kGj5/R5IRR0FyndcerGn4MnamfSDOz2ODMxAZm8g3d0NQiyc
         lHcAT9NrMHSae/BDyQbH+Z0KIx5+wbpcEgJQpK7HNbIJehCtgBzBURz0FjgIWhX//QwS
         xLrP7oz9sqTU1AyIH7nV/M+fSDFLIksUftTsj5XIVdjV3Qe6U+edymVQ5rXBUJGVTk6d
         169qfvkVzB2Ozpnrvf5T/ISf+RcXRyS9ROrUSiqEuXYMmTIjjKRm2kBSVzGUBnrnMsNe
         BE+dzn6Yy6wQltRPnaZkLfF1zZNwYfuUjwKMMHljGZ26Wx0TKew8VjHgirnmZmu+x86u
         6ndw==
X-Gm-Message-State: AC+VfDxSttF4CzbagBuFTQvc/uzYMdKCA/OaVnFMZ2yxyrtHWCo1328O
        J4RitdWaAlDZZCFa4v/pC2Ll5edkfyzCNIdBp7vvIg==
X-Google-Smtp-Source: ACHHUZ55cM9yUB5qvcLCownXmJR4ded64n4jlcjav+0Yl1WBeP+3+qojcZXIibi/XadXetaKOEAesxJFvJnVuF24v9U=
X-Received: by 2002:a05:6e02:174c:b0:330:eb79:91ad with SMTP id
 y12-20020a056e02174c00b00330eb7991admr16655ill.9.1683844729878; Thu, 11 May
 2023 15:38:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
 <20230511150539.5.Ie7e600278ffbed55a1e5a58178203787b1449b35@changeid>
In-Reply-To: <20230511150539.5.Ie7e600278ffbed55a1e5a58178203787b1449b35@changeid>
From:   Julius Werner <jwerner@chromium.org>
Date:   Thu, 11 May 2023 15:38:38 -0700
Message-ID: <CAODwPW_0s=9Ek3bbsmgvNN0T4X-76k-Q9_wjfCHDZ+441xAVzw@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: mediatek: mt8192: Add mediatek,gicr-save-quirk
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
