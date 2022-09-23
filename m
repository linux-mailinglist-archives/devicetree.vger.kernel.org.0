Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B637B5E7DAA
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 16:54:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231811AbiIWOy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 10:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231727AbiIWOyv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 10:54:51 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A143B1C906
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:54:50 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id y3so1281552ejc.1
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=mUvnHMrqfDygHJMP4jfoffRWSC2dEXcdYnkQt9a9yPM=;
        b=TPh/CO1WsOshsy9Z1qDuaG5AVH9P5aDVxMID5Ar49LbzNe7WdIev6YWo8FuVK23rhT
         YTYLnJ/I0E37oBcMvk7wX+rNMqxdQOrRkaYwq8ai2h/imkGljlsWS43Nu3F0qsn2pAG9
         5t2nYlUIp29PGr0JlxAHAT4/usbuEDLKPW0yU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=mUvnHMrqfDygHJMP4jfoffRWSC2dEXcdYnkQt9a9yPM=;
        b=SSWEVZ0BFopKuVgdEEaFkT2OZ5uj5Ga0hCjQ6qG5u2i9BOlP69Ao7zCnl8wUXM549t
         BWaLI6Cj0cy0bqhqRIyihIaKGiuCQCAUTSFjEJrS8rzFTFfI6qrDIZmyufvFQBCI+zsp
         x868sLBRfVKCW6RSNAJXcwNYA7frDh9S4z9f6zpBOOsS/FK6vAtNBwxm/3F+vUEcNkFN
         U0/p8dN/B9eujEN4HsuQUlEXv440E1AATI2LTkN/UCorpN+Ceow56ZnKXRxA9NmkMXBI
         EYbTs86T9FoBDmtvnWXYrCqUjmHJ3HBie7RMSKje9jY5rXhXGgtcd4WFvQqR/xFV8gaJ
         eHMg==
X-Gm-Message-State: ACrzQf1dZqgvyl3AWkWIg5MarzRQrXZQccT//PVDzSpl+91bgB5pyQrG
        qkUpZGu2DklNIRcG7jdvUOr19LTLpSWoNGdR
X-Google-Smtp-Source: AMsMyM4Vp8fZcY1mJu5zod99qi247prQU4bwjYJFdGY3RkpmBMzKNVC0qimoc97SdpLNJHNXh67YYQ==
X-Received: by 2002:a17:907:2d8b:b0:781:c864:fffd with SMTP id gt11-20020a1709072d8b00b00781c864fffdmr6949668ejc.681.1663944889000;
        Fri, 23 Sep 2022 07:54:49 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id a10-20020a50ff0a000000b00454546561cfsm5538419edu.82.2022.09.23.07.54.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 07:54:48 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id n12so360060wrx.9
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:54:48 -0700 (PDT)
X-Received: by 2002:a5d:522f:0:b0:228:dc7f:b9a8 with SMTP id
 i15-20020a5d522f000000b00228dc7fb9a8mr5684489wra.617.1663944887695; Fri, 23
 Sep 2022 07:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220923083657.v5.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
 <20220923083657.v5.2.Ic4e8f03868f88b8027a81bc3d414bae68978e6b7@changeid>
In-Reply-To: <20220923083657.v5.2.Ic4e8f03868f88b8027a81bc3d414bae68978e6b7@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 23 Sep 2022 07:54:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WSy3x=9qQdrDGZvc82NZYsQ=TRQ05cHECbU+Q5U5f16Q@mail.gmail.com>
Message-ID: <CAD=FV=WSy3x=9qQdrDGZvc82NZYsQ=TRQ05cHECbU+Q5U5f16Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: input: touchscreen: elants_i2c: Add
 eth3915n touchscreen chip
To:     Yunlong Jia <ecs.beijing2022@gmail.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Henry Sun <henrysun@google.com>,
        Yunlong Jia <yunlong.jia@ecs.com.tw>,
        Bob Moragues <moragues@chromium.org>,
        David Heidelberg <david@ixit.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:HID CORE LAYER" <linux-input@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 23, 2022 at 1:47 AM Yunlong Jia <ecs.beijing2022@gmail.com> wrote:
>
> Add an elan touch screen chip eth3915n.
>
> Signed-off-by: Yunlong Jia <ecs.beijing2022@gmail.com>
> Suggested-by: Douglas Anderson <dianders@chromium.org>
>
> ---
>
> Changes in v5:
>  1. ekth3915 is the true compatible and ekth3500 is the fallback.
>
> Changes in v4:
>  1. eth3915n dt bindings added in v4.
>
>  .../bindings/input/touchscreen/elan,elants_i2c.yaml    | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

Fabulous. I'll expect this patch to go through the input tree and
patches #1 and #3 to go through the Qualcomm tree.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
