Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B197C600DC9
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 13:33:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbiJQLdB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 07:33:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbiJQLcr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 07:32:47 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D04D11E3E6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 04:32:46 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id l4so10483646plb.8
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 04:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RFZAkgQVKGfDZFAsZcs3VpuVekeTrUTJT67TyCxEN30=;
        b=UA1It1zbSwRfJj28MU6PnRptI/IEZ8XuZ0lMn2NhltmuEwdyBwsCkDMYv8tKyM8iK4
         deeePjYDWgdFbxYqj4ZVC284OGhaHLIUQSfIUV+VOpMVZ29a7dht2Qx8p1eMSvNKQOo1
         K3BuUIjj0OpaSBFrGZB6sk4hvyeL5S6MRjCtHUIowlxwd+22Re7T0+kTRTXqNhJgeKzD
         55NC4I/uLff9s/SRzyjM4RPoYsiYy1YkXZYzPNc52dMF4r4dt9GAal631DJFMufUeZxe
         IMAtjgG7bXphJ5AYebX1z/JGNhSaTPjvQk42S/HGk+TWYuSz3LgXMi76r2Q5la+7vMXm
         HuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RFZAkgQVKGfDZFAsZcs3VpuVekeTrUTJT67TyCxEN30=;
        b=evjboTN98qg/Fb1PCsakgjajFqmAREn0idMcsMOeViPsk9nn20qX6nOTM/LO7wVm23
         sJS4AuZEU7SpzOQfXwC2UB4XQiV/KRrFjf8ytz7SkTLRxb8ITAw5HRllSAI74XnNHZf+
         V0OeL+WsAKNvziZj1Uyi/EEjHILhWqiZ7gPrSihr50MUdiOWopeZmWST6Rn01Fxewyxk
         YruMSx3cHNHqbFe4WaQNyMoDV1kTGGWUhZ5eX9kv8NoLW/fwnwu30tU3oduqYTa/cshf
         cTKnMW0fzzMrCKAe3w7lttZ1pcO774yzle6iGrNzQ2IpGwki/UF3dinGGKhb5in+kLbl
         UoJQ==
X-Gm-Message-State: ACrzQf0fypDIVR1myKCAYrbR1zicGRqkR1G5LSieneajGOQ72TN1WDNT
        4Fsh8GdRICFtbKzD8eQ3ZxeoBycrt0jEOV5hMFLBJdsHOUQ=
X-Google-Smtp-Source: AMsMyM56W8HNW0wj/hARLIDv0QHhOGQAKyiiDcRuFr/Z9WfxiacZAshf2EGBYm8ugWgCI/qbnX/BXd/uGVdJdB34dFc=
X-Received: by 2002:a17:903:246:b0:179:96b5:1ad2 with SMTP id
 j6-20020a170903024600b0017996b51ad2mr11551113plh.37.1666006366377; Mon, 17
 Oct 2022 04:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <20221008165627.114782-1-linux@fw-web.de>
In-Reply-To: <20221008165627.114782-1-linux@fw-web.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 17 Oct 2022 13:32:08 +0200
Message-ID: <CAPDyKFrtW0Uz3beYyhGmrzF=Ge39T8_eCz8=mH4zasxhE9ZRVA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add mmc-support for mt7986
To:     Frank Wunderlich <linux@fw-web.de>
Cc:     linux-mediatek@lists.infradead.org,
        Frank Wunderlich <frank-w@public-files.de>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 8 Oct 2022 at 18:56, Frank Wunderlich <linux@fw-web.de> wrote:
>
> From: Frank Wunderlich <frank-w@public-files.de>
>
> This small series adds dt-binding and driver change for supporting
> mmc-controller of mt7986.
>
> Sam Shih (2):
>   dt-bindings: mmc: Add compatible for Mediatek MT7986
>   mmc: mediatek: add support for MT7986 SoC
>
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml |  1 +
>  drivers/mmc/host/mtk-sd.c                         | 14 ++++++++++++++
>  2 files changed, 15 insertions(+)
>

Applied for next, thanks!

Kind regards
Uffe
