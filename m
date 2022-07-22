Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C96057E2E3
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 16:16:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231816AbiGVOQa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 10:16:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbiGVOQ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 10:16:29 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9DC313D1C
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 07:16:28 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id c72so3156411edf.8
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 07:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nxeR7Lo5PYoDSgSUtAiC935tL0yHF6pLSDAauA9BG7w=;
        b=MR4DklGeYf0D/wYM8Tyks/4W15tt7jHZxpOHeWkrP8SiiLYJgMMJZeb9xKy35RcKBs
         K02sZymDAJh71V2xCJ/MwdvDF50YToUQ5aK/Gclm4R1CHh8YMaSpCriWuruPQwmdVmmO
         nAg3zgaWjMnm7XHZdvJjYWVs694bvxq+EB2rg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nxeR7Lo5PYoDSgSUtAiC935tL0yHF6pLSDAauA9BG7w=;
        b=Q3f5370R+oWDk1g2PRZUj5rWWQ+Hr/HK0uFkAbAU2WINMEE4H7RcS5pjmuF4r1ehou
         9bqwpUW/358vS53hvyxeCGMOQT0Z2kIs9qtMdorxdYGDFBrQK8pzh2qNM9COLZLk0EVY
         VqulJ1NyARSyM07hM3BexI6SsPUXyTzZMz/qljqUrUzNq1WqtY2s0mpaqixyPKaWeKLn
         JneH71d9ju/uRjvSGrrbHRRvWii75W1r2bjMcTjQNqhGn3fVQBDM6ccY3NdNkNRRQqo7
         SGAlnhBDvUnnkdliKWwM/kC7kYsLmycoprozBW9f4nEMzqYwFKjYenhPyLUO4DcVFdEc
         0r9w==
X-Gm-Message-State: AJIora+lB3r3hJ/1jjamN8eT8GqeRBhkei9MfFs4BqjReptX0MvUJ1Zj
        Z2EikrpIhowWVQcyLvi6VpAMcWjeFGcmY4o7C7I=
X-Google-Smtp-Source: AGRyM1vcd36GBeHa4HmcdSL6vvkYo8NKi6XGQFvUh+TkHqmmIUorjVk8GsVBfmz8G0YXjlBtl2zetQ==
X-Received: by 2002:a05:6402:5008:b0:437:7f01:82a with SMTP id p8-20020a056402500800b004377f01082amr93759eda.220.1658499386966;
        Fri, 22 Jul 2022 07:16:26 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id en21-20020a17090728d500b0072b342ad997sm2058055ejc.199.2022.07.22.07.16.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 07:16:26 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id n12so6688215wrc.8
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 07:16:26 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr76737wrr.583.1658499386136; Fri, 22 Jul
 2022 07:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220722081127.228971-1-jinghung.chen3@hotmail.com> <SG2PR03MB500658668FBB9BE1DC2B3F24CC909@SG2PR03MB5006.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR03MB500658668FBB9BE1DC2B3F24CC909@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 22 Jul 2022 07:16:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WgzOn7EsGgWd-qkEMccBQQn1id1u_0Ph1V6qExfCEioA@mail.gmail.com>
Message-ID: <CAD=FV=WgzOn7EsGgWd-qkEMccBQQn1id1u_0Ph1V6qExfCEioA@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] dt-bindings: arm: qcom: document sc7280 and
 villager board
To:     Jimmy Chen <jinghung.chen3@hotmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jul 22, 2022 at 1:11 AM Jimmy Chen <jinghung.chen3@hotmail.com> wrote:
>
> This adds a LTE skus for Chromebook Villager to the yaml.
>
> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> (no changes since v2)
>
> Changes in v2:
> -Add this patch
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)

Please carry forward tags from previous versions unless you've done
something to justify removing them. From v6:

Acked-by: Rob Herring <robh@kernel.org>
