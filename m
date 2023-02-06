Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5500568BB1F
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 12:18:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229739AbjBFLSE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 06:18:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjBFLSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 06:18:04 -0500
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 625419EC8
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 03:18:03 -0800 (PST)
Received: by mail-vs1-xe2b.google.com with SMTP id v26so4484857vsk.8
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 03:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/rwXX77gDObBsNSKOYPKq8KrSqNKeQDtYRqpUJ33YBs=;
        b=jCUFeCsz6BfoHukI2ABxuTMF6frheMup3DbNltf74R+lX5vdhqT82KSrIsPkTmAlqH
         P9WTfXjQBNReHstzUK5VCcyNK8sTRGc5acp/3EmbWQzJlaJUOh88/8ukFH33dUUZDNq2
         VvrIM7vGnUvJtzPpLYx5Lu6VhhkmPBtsUaij8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rwXX77gDObBsNSKOYPKq8KrSqNKeQDtYRqpUJ33YBs=;
        b=bF49GJYDQMGpT+QfAQIxa/Jm1UkRLu0S5EmalMjPAFpJcCnVR3xFMCu0EgT6BkkZyg
         DiL++9qHY5U3TSMoB2AQYOyYZGoh5pgkOgNhjQKe0VdcF05ONlKMevI+yqSZY4j2Jvnb
         rN+MDlSMyGvWu7Y4bQar6hAKcjRhClPW2u32YnalCAM+6pPn5PGHroXFegk1ZGzF6L3q
         wT//pQCEXtZeCkK61SzQxKXd+aSCW2/5Tjelid02sB5puLhuelbG0v8Tp8HbI/CPnV7l
         atl1j0jC88ODgNrY7J+p+a3claNaTAEWEs0aITNPqvulPq30BmYaPtSmv5u9HnXq/meP
         1HdQ==
X-Gm-Message-State: AO0yUKVnnmzIZ2bl8W8LnmIDAIw2rJeE+oaFwq1ElWZ1Enc7amv27jSN
        4R3omH3LzYpr+VfXTZVdQlqidoRUdgkPmBvjqV2ZwvBaL+G3uA==
X-Google-Smtp-Source: AK7set/KGmltEInT6XzqPPO0IQbyeDjR6qLXf6JqdQTYRJiNedxftxWZahdnYF2TPrmK1NolkMQXMg26ZTZ9DH7wHKs=
X-Received: by 2002:a67:d21a:0:b0:3ed:2cd6:deed with SMTP id
 y26-20020a67d21a000000b003ed2cd6deedmr3458075vsi.65.1675682282519; Mon, 06
 Feb 2023 03:18:02 -0800 (PST)
MIME-Version: 1.0
References: <20230206091109.1324-1-moudy.ho@mediatek.com> <20230206091109.1324-6-moudy.ho@mediatek.com>
In-Reply-To: <20230206091109.1324-6-moudy.ho@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 6 Feb 2023 19:17:51 +0800
Message-ID: <CAGXv+5GFkNmH=Ltb1o+9eB=4+FfuNk2T3OGk1zWjsrweGbzKkA@mail.gmail.com>
Subject: Re: [PATCH v7 5/6] soc: mediatek: mutex: Add mtk_mutex_set_mod
 support to set MOD1
To:     Moudy Ho <moudy.ho@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "Roy-CW.Yeh" <roy-cw.yeh@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 6, 2023 at 5:11 PM Moudy Ho <moudy.ho@mediatek.com> wrote:
>
> From: "Roy-CW.Yeh" <roy-cw.yeh@mediatek.com>
>
> Add mtk_mutex_set_mod support to set MOD1
>
> Signed-off-by: Roy-CW.Yeh <roy-cw.yeh@mediatek.com>
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
