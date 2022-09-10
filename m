Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB4F5B4A65
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 23:53:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbiIJVxE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 17:53:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbiIJVxD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 17:53:03 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 365652DABD
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 14:53:01 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id gh9so11961547ejc.8
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 14:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=1PPWCbKXlEnu4f5Y1l2ZGcr26PupHUMW55EBs/BVMPw=;
        b=jafaxW5FyQ4KBW/ss0lvDFQS+BytcTlCthxnY13MDRI2O751HlCvxQGZRO58po3QOu
         jBNoL1p04iABMzEsXUW+UewQmoEVE+zAtBnAxFa7/StgjWqJO9sn/z3XQ/FUvyImetKI
         45JNjteSQ84/waP9QAb74Id1C5s1XmyAS1kpk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=1PPWCbKXlEnu4f5Y1l2ZGcr26PupHUMW55EBs/BVMPw=;
        b=WCjLD3FZ1pQMhJIMn/IR+eHD/M7lBMCI2PtSQWY1GrrUoZLlQ1a7LcP/fahdgu4Md6
         YLy5LMbGKKvUnd59NueXuU3ee+xNxJ9ArZpLuhqG8mWIquRrJoAKKo0VI9/RBypY2OuH
         oAuney6nfs50zzpgBOTilsqJMWZiYZtoI/9Skn6KijuOOvEc8UjX1dabOPKknxKE/qlk
         ZgaqyrVCFqUm89H3NHmQhuiSwnu4pRDTnInxyIp8nJp71u8vvlDFZgy7mZdm8cN200s0
         0eCyIuG+79UK9ICHP2Qhv1raOFEZV+Cw95gGAcFdxkLEFiqrqux0nPoRpVG3xs0TPqIs
         KV1A==
X-Gm-Message-State: ACgBeo3esAcDEeBgF/GIDbpvmCZafUNQbbRKRCpqGnDZyeR/DjtJSeBi
        HtjFKixzuUqSRuYOeIB3Tds3ZOn82Cuh8wyq
X-Google-Smtp-Source: AA6agR4JBGn9v+1TbAlVXFdK/pDVC+IuGDExIM+PB+IYpiCraHN4wt3ARDkHdjye9SmkFDmM6ZMeig==
X-Received: by 2002:a17:907:972a:b0:77b:45b6:b047 with SMTP id jg42-20020a170907972a00b0077b45b6b047mr2834423ejc.479.1662846779463;
        Sat, 10 Sep 2022 14:52:59 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id u1-20020aa7d541000000b0045154772462sm1781427edr.5.2022.09.10.14.52.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 14:52:57 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id az24-20020a05600c601800b003a842e4983cso4411208wmb.0
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 14:52:57 -0700 (PDT)
X-Received: by 2002:a05:600c:548b:b0:3b4:61f4:804e with SMTP id
 iv11-20020a05600c548b00b003b461f4804emr4580041wmb.188.1662846776956; Sat, 10
 Sep 2022 14:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220909102720.v3.1.Ib599a6001558a4afd11016e7016d74dce748a749@changeid>
In-Reply-To: <20220909102720.v3.1.Ib599a6001558a4afd11016e7016d74dce748a749@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Sat, 10 Sep 2022 14:52:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WtJ_UJkXJkMY0Ma4Fum8Xicqiv=ZX5QCJ=woL51VjFxw@mail.gmail.com>
Message-ID: <CAD=FV=WtJ_UJkXJkMY0Ma4Fum8Xicqiv=ZX5QCJ=woL51VjFxw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: input: touchscreen: elants_i2c: Add
 eth3915n touchscreen chip
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Yunlong Jia <yunlong.jia@ecs.com.tw>,
        David Heidelberg <david@ixit.cz>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:HID CORE LAYER" <linux-input@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 9, 2022 at 3:28 AM Yunlong Jia
<yunlong.jia@ecs.corp-partner.google.com> wrote:
>
> Add an elan touch screen chip eth3915n.
> This chip requires more delay time than the eth3500.
>
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.com.tw>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Acked-by: David Heidelberg <david@ixit.cz>

This has the same problem talked about in:

https://lore.kernel.org/r/CAD=FV=XEkPfU9wjwGrp59QJDAspUbWwmOTSZfE1Y5PWt1w309w@mail.gmail.com/

Namely that the Signed-off-by and "From" address don't match. You need
to fix that.

Also note that neither of your patches indicates what changed between v2 and v3.


-Doug
