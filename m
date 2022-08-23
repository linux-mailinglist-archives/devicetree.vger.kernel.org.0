Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B97F559E74B
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244710AbiHWQaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:30:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243241AbiHWQ34 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:29:56 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED9B211FD18
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:57:31 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id 10so10809207iou.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=DXlA4pH2Idgh+cA8fk4u2a6pyIz1gq6RjPYaksX10eU=;
        b=KeK2C6ATWXGDbWzpL0lFqY/K8+HXFFGaAKyiZ3FCggfdTi4lXsFraTkrQCO8FzRaUi
         KQOOiADO9fbeyyu4+c0ABuObO/ohlmnTysxAhiJZl62D3F65GGsNULr5k21gJkNrRnAF
         tZOfFEHYwZ714tGYMcYJRLpyBC+D8Sqhq6Ywy1y3e5vB1gbLrRFost/QSRICNpfgNCZn
         YMUtRWnylIEVXexqHsdGY7eEFwA3Zg+/Oiwz1XjUpTDE5KxcHyVr3xSaRzQgt+a4dAwt
         IsD8cYBU6InxBQuP86hUa8rmjVTx4uHV8dnlP4VfdgmzYzy/38OB4QFdteF4shQkJ/RC
         bUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=DXlA4pH2Idgh+cA8fk4u2a6pyIz1gq6RjPYaksX10eU=;
        b=2DCXEfm9rHOk52AlFB0+IL8FohdGNH30RSvk4BwTTYFpYVsIlMhmqnSalv87ry6h3x
         7jL3BP8pFNTgTqP8pZytbzhYJOGrNqiYIF8ho9xwe8CM+IU1LJ1F4GBhxOn2FMR4yceD
         Ik1P1SMz6yGt+zil3SXzamNTCuMrRJoDABxMLn+EChqwmZaJJ49IQ/YM3fabnX8GFc+q
         7SdJyu5f1tjY0psLUvzoWwJ98tbdYHMhhrzZbfMGIPS3nst10OORnEDOhfAsN6005qre
         TdCAsTENNlaCY23pevCLoU8Lf909EfWWErNysLSYSCFH9xAWz7ypnfkyy/yCoWvj1DKg
         e4QQ==
X-Gm-Message-State: ACgBeo2FPlow5/TUIO7pRjDYA7ArjlBK5UuLAE+G3XmZQNDDdZTFUcYp
        iuOc8D1EuWbsW0of9cyuwk7oXy7v5WgCMezLUziqbw==
X-Google-Smtp-Source: AA6agR6FMvlHIDAHScvrEma88CrxcQ9VUCd1MdfFASVddPUA9fEX6U4b0zxtKZdCcOTU+PXlI4u99tspQIVxVGYE858=
X-Received: by 2002:a02:ce8e:0:b0:349:ce44:38dc with SMTP id
 y14-20020a02ce8e000000b00349ce4438dcmr6183403jaq.298.1661259451083; Tue, 23
 Aug 2022 05:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-10-jagan@edgeble.ai>
 <20220822181009.GA80526-robh@kernel.org>
In-Reply-To: <20220822181009.GA80526-robh@kernel.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 23 Aug 2022 18:27:20 +0530
Message-ID: <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Aug 2022 at 23:40, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Aug 18, 2022 at 06:11:22PM +0530, Jagan Teki wrote:
> > Add the dt-bindings header for the Rockchip RV1126, that gets shared
> > between the clock controller and the clock references in the dts.
> >
> > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v3:
> > - update the file name
> > Changes for v2:
> > - exclude from clk patch
> >
> >  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
> >  1 file changed, 632 insertions(+)
> >  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> >
> > diff --git a/include/dt-bindings/clock/rockchip,rv1126-cru.h b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > new file mode 100644
> > index 000000000000..cfba8226ded2
> > --- /dev/null
> > +++ b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > @@ -0,0 +1,632 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
>
> Dual license please. Need an ack from Rockchip for that (and not just
> on this one).

Heiko or Kever.

Can you comment on this?

Jagan.
