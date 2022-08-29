Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1295A523A
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 18:52:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbiH2Qwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 12:52:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231172AbiH2QwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 12:52:15 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C64E7392D
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:51:56 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id b142so7033481iof.10
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=pNNDtWhRQjr1AbDSAN5+sxqnMgrurCAJQVg6nJa7vfw=;
        b=X1qDKkSS9TNEmj3bF7vdVkXX21PIwg6DSgGwldzYDeoH3mrqhKbD5dIiG/W/rE/c88
         hqD+dF0v7EStFR9p/AywuaafIIdLE67ZDf4RdqvUo5u9CrVs2bt2xR6MnsjQ66h/7QNv
         HQHEZQNcgqFKT6wlRymcQavXXBoN6H40vWOog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=pNNDtWhRQjr1AbDSAN5+sxqnMgrurCAJQVg6nJa7vfw=;
        b=XKOx7bhUTOaxxgYdJHMsMD+Qvts9/4g/qtqlSVixfV6gSC8SMRZJnpnnAUZINVHoHZ
         DucJKTAXpJP2aSnViEVLYz3+jVbtJfxgFOKXIfO+Z+D0NLHMGFCC/+Dq+79kGN289yFl
         N6Lis+P0LtosU0ex1wXlB5EkqGGxy4wgpi0ec3+nJrdffSoFRVb31Gpa/zIfZoipTJop
         Kb/Rww6SsNfMI1uVPhJXUz7A2gQRFTIIoM6fuxXNF4KOXJugV3EyzBcL+AWe1kjS+Mnh
         Wdv5WrLC5p+F7m6Z7ieb12rbymUP55RgepYG5iskK9dP1KNO9uSthVDDDAPJ/usiJCOw
         7jEg==
X-Gm-Message-State: ACgBeo2A5PakugwSSOSIB3RSTCS8EcbVkpX8KYS/La8y6XNv5LLM/WAU
        JXx/3gV+gQPnUKwPm36veX3RGep/2Rwp5S+I
X-Google-Smtp-Source: AA6agR7/8mw9Hw+GHzrfxChbWJ74rCqe/Zt2KZzXy/9RuX2fvB6ySgfD4Ip64ezhgXvepQXJrYCYoQ==
X-Received: by 2002:a05:6638:1244:b0:34a:1104:afa with SMTP id o4-20020a056638124400b0034a11040afamr9863965jas.244.1661791915595;
        Mon, 29 Aug 2022 09:51:55 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com. [209.85.166.172])
        by smtp.gmail.com with ESMTPSA id w12-20020a92ad0c000000b002de8d930b2dsm744411ilh.86.2022.08.29.09.51.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 09:51:54 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id s11so794006iln.12
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:51:53 -0700 (PDT)
X-Received: by 2002:a05:6e02:16ca:b0:2e9:c225:3f82 with SMTP id
 10-20020a056e0216ca00b002e9c2253f82mr10397435ilx.254.1661791913591; Mon, 29
 Aug 2022 09:51:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220825164205.4060647-1-dianders@chromium.org> <YwhwIX+Ib8epUYWS@hovoldconsulting.com>
In-Reply-To: <YwhwIX+Ib8epUYWS@hovoldconsulting.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 29 Aug 2022 09:51:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XV2Tjuh+AfaQ3gdnBvy27okb2zgbQ6e+23KGBZo38Y7w@mail.gmail.com>
Message-ID: <CAD=FV=XV2Tjuh+AfaQ3gdnBvy27okb2zgbQ6e+23KGBZo38Y7w@mail.gmail.com>
Subject: Re: [PATCH 0/7] arm64: dts: qcom: Fix broken regulator spec on RPMH boards
To:     Johan Hovold <johan@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Mark Brown <broonie@kernel.org>,
        Andy Gross <agross@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Aug 26, 2022 at 12:02 AM Johan Hovold <johan@kernel.org> wrote:
>
> > Douglas Anderson (7):
> >   arm64: dts: qcom: sa8155p-adp: Specify which LDO modes are allowed
>
> >   arm64: dts: qcom: sa8295p-adp: Specify which LDO modes are allowed
> >   arm64: dts: qcom: sc8280xp-crd: Specify which LDO modes are allowed
>
> These two should be rebased on
>
>         https://lore.kernel.org/all/20220803121942.30236-1-johan+linaro@kernel.org/
>
> which disallows mode-switching for all but the UFS regulators (this
> series addresses the DP PHY LPM regression we've discussed elsewhere).
>
> >   arm64: dts: qcom: sc8280xp-thinkpad-x13s: Specify which LDO modes are
> >     allowed
>
> And this one should not be needed at all with the above series applied.
>
> >   arm64: dts: qcom: sm8150-xperia-kumano: Specify which LDO modes are
> >     allowed
> >   arm64: dts: qcom: sm8250-xperia-edo: Specify which LDO modes are
> >     allowed
> >   arm64: dts: qcom: sm8350-hdk: Specify which LDO modes are allowed

Thanks! v2 has been sent and it's rebased upon your series:

https://lore.kernel.org/r/20220829164952.2672848-1-dianders@chromium.org
