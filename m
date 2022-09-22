Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D7F35E5C7A
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:33:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbiIVHdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:33:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbiIVHdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:33:11 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B301A0247
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:33:08 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id s14so11500289ybe.7
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=vznxy9xqdRmX/+c1xfDYAdYiNLfodMVytirKxQVlqvU=;
        b=19h0p9PeYDDwrzqyam5VPOXf99gXbD0aK5k8BfPEJenh2Jv/WjdzknPH0tUHmgiRHX
         pggTcESbyFCz5wjPpmJSkcd/NQRRrZZiBSfJaMhq7Myfc7diCyDqoIkbuwR+vpE+NSyR
         4tcuq0xXpQnSX0V8U1+heBDJXgld0tSC2LqBM4z3VUSaqRkZ06YHK7IIfBYqUtBTnOpH
         8g3j2HwH0C6U9V4Dw6woPkeBBq7Y38GohOYuh8QKlknbOt7Pa+3U8VR0EHsy5/voiIZb
         V9qFOtQMx6p07AjQGpO7hX3d+YsO1Jyuw006ghhAYb0bZNJ0/92AxLL4Vef3bOqkZOU6
         FV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=vznxy9xqdRmX/+c1xfDYAdYiNLfodMVytirKxQVlqvU=;
        b=o78H2NNgzFPgCeON8T8gKmVfMVnWM0BBCKUX4+AlbWMOeGcmuIq3NbgHiZuHNB+1Dw
         gbFDeErSm0MDRp4Xu0G9wUcv4YQB34W653HDoqc84O2QBiYOJk5ljecLdlNX20kRAkMn
         umJwVazipEPPMhfcEk/vUNps6gV2MdIH+ZHeaw89l+EvFCQisTgcj0QjW71uMtKMNLun
         vhMo9i1Utq3+qjrxLGlpdzkjIfHVgBXuc11l0E0zTR9XTiaxAApFi1IUSlm2qd94W7+d
         UVsbicn4ICp2j761ErpGyAerWX4D48gi2xj5gkd5f13+gmn5ZPF7Ji5BUk6j4vJ5/+kM
         JJIA==
X-Gm-Message-State: ACrzQf0DpH6JhsyPNNg2zQnrtcvoJKOYiy/7Mf3M1FSqGpct1dwMC3y5
        JV/V9m0AWuiqPKZGef88+4N45YZfOLvl8Y+/e+aoyw==
X-Google-Smtp-Source: AMsMyM68mBRWPzgSHinmacDlTcXL0xgy38F9UZIPw2GA0HUhSgygjrtVbr+Xf6Xo2IYCzPizO8zkXxrLXkUa8C1413c=
X-Received: by 2002:a05:6902:1146:b0:6ae:72f2:62cb with SMTP id
 p6-20020a056902114600b006ae72f262cbmr2487652ybu.615.1663831987619; Thu, 22
 Sep 2022 00:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220907210649.12447-1-anand@edgeble.ai> <20220919115812.6cc61a8e@kernel.org>
In-Reply-To: <20220919115812.6cc61a8e@kernel.org>
From:   Anand Moon <anand@edgeble.ai>
Date:   Thu, 22 Sep 2022 13:02:58 +0530
Message-ID: <CACF1qnd0Nq7Fzi83emR=-cDscCprt2h4gwquecLRyyrbSNsm5g@mail.gmail.com>
Subject: Re: [v2 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        David Wu <david.wu@rock-chips.com>,
        Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jakub,

On Tue, 20 Sept 2022 at 00:28, Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Wed,  7 Sep 2022 21:06:45 +0000 Anand Moon wrote:
> > Add compatible string for RV1126 gmac, and constrain it to
> > be compatible with Synopsys dwmac 4.20a.
>
> Hi, these patches don't seem to apply cleanly to net-next, a 3-way
> merge is needed. Please rebase and repost. Please put [PATCH net-next
> v3] in the subject as you expect them to be applied to the networking
> trees.

Thanks I have send the patches rebased on net-next,
Please find the link below

[0] https://lore.kernel.org/all/20220920140944.2535-1-anand@edgeble.ai/

Beat Regards

-Anand
