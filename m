Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9787603504
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 23:36:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229746AbiJRVgx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 17:36:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbiJRVgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 17:36:52 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 659AC5927D
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 14:36:51 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id bk15so25924644wrb.13
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 14:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gbfzdR/BYAEFXpxBtanW6RUEM4N1ftJvRjK1xdjCbxk=;
        b=cgayMcdrJEodYwvk2YLmwbACAwqSTgUhoILYLvBly5/cdJf5JBKNaYmMJflK748K2W
         6NPeTGH7kl3FpnlqJ3HoqtKZulAsWsInpz5X/Qq5Op0Kg/trqBO+R+v875WGP94BNmi7
         hR4k5/M6QjTeswpFiTexXyV60QE2nA8vX7R+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gbfzdR/BYAEFXpxBtanW6RUEM4N1ftJvRjK1xdjCbxk=;
        b=ZKgJ1ljiVG3PqGNYonkFdLJEQef3hSIHDumL4LbVxmKWZ8Qh2Qz7Ce7A/r9chkYdxf
         Ds787DNTwjbPE098UuN1k1/wLVIi3zwkkEBTmZrKutKYXNhqkbIp0DFYSTy5qEmYq+a6
         ozqWbtE0o3mhtFNWT12f2zT7i+3Y/e1wETL4UfI1jsJL//6cQHdkAhh0GJ2xtJIWj9Sj
         GmfvsvfwrY4/mTp3QtMT0AIpiPPYAZ2v7428foymBTlRgPTKvbngScV3/62yQKD2/VP/
         pEcUvukULiPG1Udyy6jjCZPwzLEMz5vUBKGz0niCfwGl6bTTpV4nRAzLqgDf1LLKmodk
         hRCg==
X-Gm-Message-State: ACrzQf2M0hoI1Yu1OIxmaRClDj6CFJD3uVINj++4ayr1TGOV5ErpBnLO
        WhXQWjAVuOL8oZTS4gc2WqPW7jReg5jW8lv6g/0G6A==
X-Google-Smtp-Source: AMsMyM4Ui3JaRCY074PX0lsMe+QVqNjEYPH4v+7E9heupsZsBD1X0SsJWucxrUpw446vl1cyIExZxzmNP2YxbL4WCOA=
X-Received: by 2002:a05:6000:1c14:b0:22e:5ca7:78f9 with SMTP id
 ba20-20020a0560001c1400b0022e5ca778f9mr3127886wrb.407.1666129009822; Tue, 18
 Oct 2022 14:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220930220606.303395-1-jwerner@chromium.org> <166610580692.30968.11562735981650899285.b4-ty@linaro.org>
 <56ce7440-b60b-4688-c7ac-d0435f79eb97@linaro.org>
In-Reply-To: <56ce7440-b60b-4688-c7ac-d0435f79eb97@linaro.org>
From:   Julius Werner <jwerner@chromium.org>
Date:   Tue, 18 Oct 2022 14:36:38 -0700
Message-ID: <CAODwPW_p2=u=YP75BW_RYG2wNgu8sjthYabEC3H4MgHG7ae4sw@mail.gmail.com>
Subject: Re: [PATCH 1/4 v5] dt-bindings: memory: Factor out common properties
 of LPDDR bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Julius Werner <jwerner@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, Jian-Jia Su <jjsu@google.com>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > [1/4] dt-bindings: memory: Factor out common properties of LPDDR bindings
> >       https://git.kernel.org/krzk/linux-mem-ctrl/c/087cf0c5a19c638dd3b26fe7034274b38bc8db6b
> > [2/4] dt-bindings: memory: Add numeric LPDDR compatible string variant
> >       https://git.kernel.org/krzk/linux-mem-ctrl/c/f4deb90635ec8a7dd5d5e4e931ab539edc9a9c90
>
> Run checkpatch before sending patches to the mailing list... This was a
> v5 so I expected it ti be clean.

Apologies, I ran checkpatch originally but forgot to run it again
after the incremental updates. Looks like there's a typo in the commit
message, but I see you fixed it in the version you picked up, thanks
for taking care of that. So I assume you don't need me to send a v6
update, right?
