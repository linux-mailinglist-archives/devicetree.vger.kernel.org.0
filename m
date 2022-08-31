Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A0325A88AB
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 23:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230403AbiHaV67 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 17:58:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232403AbiHaV66 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 17:58:58 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D833B1F2F2
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 14:58:55 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id m1so20168197edb.7
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 14:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=gt4YLZqDImPxxMXWbC5jit4261EPZ27x3xf0AXbqt14=;
        b=XH3ZwkOcZ0vE44eEM5xnUXdLisXlo21o34Z/QjmEN399Vo4mHGwxT2i5Mz8ubuYmuf
         +8MYS74y47BT4LyIPM+s0MzhIgVZOCxqbA/qvKJ83N3YjAmQi9UnqtfzmFHTX8MhDrkN
         hxvidxffzRhnm/7vSPTWJWldNvy3IDfCYbrcq9g5r0PRehYLCVTkQP/dehHTmNODMhoQ
         2ZsK0aw1nrqlrFFkiyQV6mHuG8vBt8cU+dhw3nRwXnb3Sp/d6GN1gOSpBZ9KbTixBl1i
         IFD2RmugDwq9j9EpfiLaGRsMiFBA2XZXLIi09L9h+vc0qTQakCP3v7SajavO73Ep47p8
         W+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=gt4YLZqDImPxxMXWbC5jit4261EPZ27x3xf0AXbqt14=;
        b=KVwKR3mpyVUk+VdTBBh2PXX6yB6IuJ9NrKzP6x9jrMIrMhjUUL/UNEqMwzXk/4S/u9
         feFJBgKZmDjzOsmtt+BaSeYntPJAC9LaH43OBzQCHjSM6lTDOe7GRWbEIGgnkh5iQMpF
         ZEq12y37EwmNctB4h84UuX5NzImpbUXCogm9hgI6nT3XhPpM5/H0SSVkAQiOf03CoWiH
         knKAfhRYh5U6FOI5efrZJ8ZUJY6kXbM4dv11oF17q7CaQmtnP2boGOki/dxQiSZAj+no
         8Qee7NdF6INm9doPacGpEC5etDvHrS+6YNCBMuJCETFtqseSDLdocNEgEKpC/w8D17m7
         ezvw==
X-Gm-Message-State: ACgBeo3Utt61w0VaDIXTQn87UXR6Fbt4fqIgmOkcn3DtPv6qm43ZXs7v
        LDIh3r+QTFUrvXSKwCXMT6/sDwOOaznDtzvUSnj3TH6nCqk=
X-Google-Smtp-Source: AA6agR4Ft4e2XKd4kgl1Jq3fM+RmTX3/w8LWY8e3RE3C6RHdAcTZAXd5FaWfhkmQUunK9122fbiWS4iLweLX9azJwEw=
X-Received: by 2002:aa7:c84f:0:b0:446:2bfb:5a63 with SMTP id
 g15-20020aa7c84f000000b004462bfb5a63mr26448276edt.172.1661983133579; Wed, 31
 Aug 2022 14:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220831215437.117880-1-sebastian.reichel@collabora.com> <20220831215437.117880-11-sebastian.reichel@collabora.com>
In-Reply-To: <20220831215437.117880-11-sebastian.reichel@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 31 Aug 2022 23:58:42 +0200
Message-ID: <CACRpkdbpD77JO8H6XnnUCfE3PO-oELpSg=ZLeuhJyDWHs6Nn7g@mail.gmail.com>
Subject: Re: [PATCH 10/13] pinctrl: rk805: add rk806 pinctrl support
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com,
        shengfei Xu <xsf@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 31, 2022 at 11:54 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Add support for rk806 dvs pinctrl to the existing rk805
> driver.
>
> This has been implemented using shengfei Xu's rk806
> specific driver from the vendor tree as reference.
>
> Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose there are build dependencies so this needs to be
merged into the MFD tree?

Yours,
Linus Walleij
