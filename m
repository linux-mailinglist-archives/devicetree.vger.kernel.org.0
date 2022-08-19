Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6313B59A795
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 23:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350530AbiHSVUg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 17:20:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352391AbiHSVUU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 17:20:20 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E47B104459
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 14:20:15 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id x64so4245659iof.1
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 14:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=OfCpFIGAjFJsxjylyQFRN1gMCuzZ2lrehRbujDwIBrI=;
        b=4ZQ0+xuHChLvgPrgERyPhVbD22qMPtZ0MG1KNebJBDlFyoktNdcbqas7BedPfS7B9m
         gNrF8YBi58gSbHIG7gstgDG6vehewWB4a77bagqqUJzijntM7XsAPEdsxbmEscLojbCa
         QFMIXhbtwjf9XQLu+6pT5k+5SFDIzIoSY6VOsD6JfPrvGTiLdYDvqsrE45zWvdijciPR
         UDrx/y5J23bx1pDR1dAYrmXPVloHvdeBbNwsTEfs3+QVtKXY5VBJsd5eMkp1htrvVRTS
         RLPCCNVcHgdUDbz6qpWw+XVnV1kYca+HFQCNMEKa4BSCz7seAz33U2y2EcXNj/1cIV/t
         l9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=OfCpFIGAjFJsxjylyQFRN1gMCuzZ2lrehRbujDwIBrI=;
        b=xFzqBTKNhnBc1cxcFUKLBTvniAPKlhCjqHVJQK/HtXJG9ohCu6u+tiwAZp6EeSQpwV
         xa8lDbnFddoYcQFdqaneNZbr4frtcJY2+ktyWI968OV0cY481HdJixibEKV+wAgUPoD8
         NOK5byj3rjjbtzwdNKmgbDOAOtGC3EssEKogMHsC63Mva/a+7G3IJK2N2FmDY96Avr+A
         TQOllY8HS8OH+2u59yrhMnx4Uy+ORH/ZQpLYhRUOBPCKpHqPc8giTK2yj5VsfraGi3ys
         BfW4YM372i6CRbsriLFSreQqJg6s6dbPo++81wIsdo7oC4eFgWoJfY1NF6o2xoIOkqim
         D5yw==
X-Gm-Message-State: ACgBeo1fhs/O1pmLHP22+g7QvYcXc5890G+g4KINxnB0Ex8+yU3hkyPg
        qEC0/+T7mgEuSs6+IBOio9HYLVA2Sqn4hCWBXH3gYw==
X-Google-Smtp-Source: AA6agR79Pmev4zKlgZ4BZ8NzNHDZ5WQNzZpmakWKSvZw/zlLHtlC3993Hb/w9TbnPo9G9XdWt7+Qyndtr8nVzPv8pMQ=
X-Received: by 2002:a05:6638:1483:b0:349:2dd2:64ca with SMTP id
 j3-20020a056638148300b003492dd264camr1951928jak.305.1660944014487; Fri, 19
 Aug 2022 14:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-11-jagan@edgeble.ai>
 <20220818212913.7FC43C433D6@smtp.kernel.org>
In-Reply-To: <20220818212913.7FC43C433D6@smtp.kernel.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Sat, 20 Aug 2022 02:50:03 +0530
Message-ID: <CA+VMnFyJOCc-RzENYs9L+U4VeJgEpMmZeSLZahcNdnL7_Cvw9Q@mail.gmail.com>
Subject: Re: [PATCH v3 10/19] dt-bindings: clock: rockchip: Document RV1126 CRU
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Aug 2022 at 02:59, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Jagan Teki (2022-08-18 05:41:23)
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: xin24m
> > +
> > +  rockchip,grf:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      Phandle to the syscon managing the "general register files" (GRF),
> > +      if missing pll rates are not changeable, due to the missing pll
> > +      lock status.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#clock-cells"
> > +  - "#reset-cells"
>
> Why aren't clocks required?

I don't see any clocks being used by cru in rv1126 [1] so that is the
reason I didn't add any. Let me know if it is something that is
mandatory to add even if it's unused.
[1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm/boot/dts/rv1126.dtsi#L1074

Thanks,
Jagan.
