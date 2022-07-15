Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8D657637C
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 16:14:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235463AbiGOOO2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 10:14:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235392AbiGOOOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 10:14:24 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E0321581A
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 07:14:23 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id m16so6433427edb.11
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 07:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0gmpAzq1QLQJvy1sF1qsN2KHunfvdectBOUVazsFT0c=;
        b=M7DPLx6wiUJsGIxyF+Mfs16brKcddihTLDDfbseDRC0UoXNlRRl5Tk7c84fYx+qxK0
         HipLuAx8IOhv9YAWcHpvJL2VSY6g8vwXNJPBQleA650i8RJDezv4aXGTdaAVFlOOJgFX
         bQW2PSWuaNK8v7zyIeFh7rmx+svJvoQkrywDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0gmpAzq1QLQJvy1sF1qsN2KHunfvdectBOUVazsFT0c=;
        b=w4C8wQO1xDXPTPMkhMFFP/aRr677HhSmaX8cZOfLCW58B9FJXNgwMuwpjq+ivC2wXZ
         sJsuNzeGHjcsTc5y0hDRcY4YVF6EE+UR66mcTV/pRwb8JzIY+TENGk5IYnvj2uXWImAL
         mO1DPuK3ZFYLTJ7VH/y8nCT5qaxLJeQjZZqXUBXsWf1jQhtol12tJhI1S+AzdRAh46Ho
         5jCXy5TMD60lYE/s6UOzRPczMoXvTHA4BBxj6SdFsDBPZh59jbvO6O80pFM2lptDzAEj
         R5vtCLAHHqxba8V2bEtF6W/hAZSzfGvUjLepwBVsy4p9HI4GEWVg18vrDWvliHQ8ja2Q
         o5nw==
X-Gm-Message-State: AJIora90i1j/0eXj5mJMGjXDJGtYV1TOTjfUO6wykW20wtGlouUNUnol
        TGORjFslJcR1EzZJVTxIIAwihWm8w/gavitF
X-Google-Smtp-Source: AGRyM1uJCgstmJEc0aB3ICcx0aGa2cmUWj326W0Pf8x7UysO7q9cG6jX3Tg6gTla5kcDWk06gXMPSQ==
X-Received: by 2002:a05:6402:520c:b0:43a:aba8:84ae with SMTP id s12-20020a056402520c00b0043aaba884aemr19945314edd.198.1657894461882;
        Fri, 15 Jul 2022 07:14:21 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id r18-20020aa7d152000000b00437e08d319csm2859643edo.61.2022.07.15.07.14.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 07:14:20 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id r14so6943089wrg.1
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 07:14:20 -0700 (PDT)
X-Received: by 2002:adf:ead2:0:b0:21d:8b49:6138 with SMTP id
 o18-20020adfead2000000b0021d8b496138mr13033418wrn.138.1657894460100; Fri, 15
 Jul 2022 07:14:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220715084442.115021-1-jinghung.chen3@hotmail.com> <SG2PR03MB5006FEBF794767B52DD80152CC8B9@SG2PR03MB5006.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR03MB5006FEBF794767B52DD80152CC8B9@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 15 Jul 2022 07:14:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vad82p+Oz6kxJpiB9NLan67qF1+bDfiOmSEE9NaTEs2A@mail.gmail.com>
Message-ID: <CAD=FV=Vad82p+Oz6kxJpiB9NLan67qF1+bDfiOmSEE9NaTEs2A@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: Add LTE SKUs for sc7280-villager family
To:     Jimmy Chen <jinghung.chen3@hotmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jul 15, 2022 at 1:45 AM Jimmy Chen <jinghung.chen3@hotmail.com> wrote:
>
> This adds LTE skus for villager device tree files.
>
> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
> ---
>
> Changes in v5:
> - Reorder '.dtb' in Makefile
> - Put the "interconnects" line back
>
> Changes in v4:
> - Reorder 'status' last
>
>  arch/arm64/boot/dts/qcom/Makefile               |  2 ++
>  .../boot/dts/qcom/sc7280-chrome-common.dtsi     | 11 -----------
>  .../boot/dts/qcom/sc7280-herobrine-crd.dts      |  1 +
>  .../qcom/sc7280-herobrine-herobrine-r1-lte.dts  | 14 ++++++++++++++

Your v5 accidentally added the file
"sc7280-herobrine-herobrine-r1-lte.dts". Please remove it.
