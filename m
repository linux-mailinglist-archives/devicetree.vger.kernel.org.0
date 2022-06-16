Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 572FE54E20A
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 15:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377022AbiFPNe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 09:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376878AbiFPNe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 09:34:57 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62CED20BD0
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:34:56 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id x38so2204084ybd.9
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E4oRD4fpeOcIe9J3CDXeLQW7t2RI1ucb4W5YyAxRXTc=;
        b=i+aNtOa0+P+UbHlJ+UN0VZmv+j16VlraJF77uRCdHFS9DDTc2ta8XYvSfxc1rbXh52
         C9Hwy4bHsghReeEsAOr5frAUR0h/6yvnL98uuM/BV5p6LF6ip1BxtdTvaIJRzEoCoJy7
         HA80uJ9DSen54oYDsfLIsIyXI8ieNXW53l/JP7kirV0mPi57XiWfohaX1D1/TOvEvTg/
         mTMITFgeJolEY5F43ftAl1AFapXqkYT57sFcHPxuWR/BDsZNk/fViXrCbaIOdIWGRapw
         Ef4Vs2gqSuHK2KLCX2E/zi9ktMQtWwZS2eAYxgKkkO8lJ6Wtt4oRt1hPRH4iksDjaemh
         +Gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E4oRD4fpeOcIe9J3CDXeLQW7t2RI1ucb4W5YyAxRXTc=;
        b=YL4TdoKyOXia0bwwxOJO6P2RgTKrPrSTcZ8EsZth/JSzWER1pTd7WjzFZ71zXRggxm
         1t6b53W14tiPufGlmX3+/ESO6S69ksGwCmo4AVmSNNhXKLx5r1Bl5cyx11vh0rmR5/yE
         FWOTOLKeKAxjqD9CXvkE74dldmp27s/KBrMMmi0XbQy9ynapehMM0bvWpFNbnLqHWSv+
         TQDhLYz6TlU81iV/5i1hlHgEwQjQKR52AqjsvOQgmEzVyrWOsCj7e4LNM3+eUUtBOSPg
         F8KynBjDFrl0/Tef32Wqu/OKEDGIGWro/youASB80Y8dLIfXgFa++4POOiEeAgjfKk9n
         kUyQ==
X-Gm-Message-State: AJIora9saX9RRR6nycEFtBYllJ+WqXWaPlhUMV+xgf9l8EGACi5XEei0
        6PWW6mrM+pDBHLyT3I/s/W+5ToGZYd6J0Vwv7pb/VA==
X-Google-Smtp-Source: AGRyM1tOESzLLHsKWOfNIxiAJfDhdbEqfPn3s2ZPVjXgSzXCZ24IEI92hnqOwbzdBIKkU7b9sRdugwSZhPXLa08JRCI=
X-Received: by 2002:a25:3417:0:b0:664:aab3:7c44 with SMTP id
 b23-20020a253417000000b00664aab37c44mr5233002yba.533.1655386495611; Thu, 16
 Jun 2022 06:34:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220610203746.2191518-1-robh@kernel.org>
In-Reply-To: <20220610203746.2191518-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 Jun 2022 15:34:44 +0200
Message-ID: <CACRpkdaayHZaeC4X1+d_jC0nCvAtw=w2t2m1txj4OtV_LqcnoA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd/partitions: Convert arm-firmware-suite
 to DT schema
To:     Rob Herring <robh@kernel.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 10, 2022 at 10:38 PM Rob Herring <robh@kernel.org> wrote:

> Convert the arm,arm-firmware-suite partition binding to DT schema
> format. Simple conversion as there's only a compatible property.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

I see your own robot bit you about the unit name but with
that fixed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
