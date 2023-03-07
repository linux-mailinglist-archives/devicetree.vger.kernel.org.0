Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 593C76AF9A6
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 23:59:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230009AbjCGW66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 17:58:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbjCGW6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 17:58:40 -0500
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B67FE81CD7
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 14:55:45 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-536bbe5f888so273022737b3.8
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 14:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678229744;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOumxYNupJ270oxfqqpBEcjU4dd6uD/r4togrRDieg4=;
        b=Lkva8Yqv6yfbbe56NAGI6TppDFJfd9ensNRUWXkdcF5LkmTeW55SEDYN3Qy+C2p9ai
         YUlDDqKvcV24AFRf8W5qUxIU2gbHlDjFfhw9c69zvRJAFfmRUUgyIs3Jy8ye7F5W+yBn
         6201eqKNf3VQMA2vlijZkLl+4M1P7lDqY1isu1mM7MKBiAHq/AUKY2yuN2ENw7IV2beP
         xQnxBK6E2Iadt3LmOkoEhsqvin5VOhEbFDyOhKuXql1Fteg8j7yiOnhAnvutX6f6c2JF
         YXjMcH4CJr37LyqPUIVFhNMkIjUTMkmEqFA/y67WMvUrq+HkVFQNnDQGNnDgxOlGQ33z
         1MEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678229744;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOumxYNupJ270oxfqqpBEcjU4dd6uD/r4togrRDieg4=;
        b=dlyZ2ovZ4eNeXllmAi9ErTXn+XomX8wotZYaJ7awNMRciI9iGFd4+2pjye2lOZz38W
         k4wNFr0KL6CpVwFV9kTzn/PfQwSPVL9sFQQ7VapS9Hpfz8wfhV7a9A81me+jvf9dsssr
         rH6LWRipUD+fkWUMUoNr3Rk6U9FSl8iywBAOcRzzM6aRq50b4N30i0AUUWJhmkA2Lb+6
         wFl1WSveClmWnMJ35kMVTNJfAsOGom5/e3xqqcQUH1+OS3XW10lO8IiTc1+ttK4TbmtB
         iS5TB3KC67sv9A2HI22Ulz4TzPdJXLokK3pXzIOmoU0gVJe/PfusA/uRzYXRGsyUqWKz
         OZmg==
X-Gm-Message-State: AO0yUKWgiNOXtckfwnsmYsv7E1wDDCGdvmGN+RGQ9cSXbb0/rGZ7ImMs
        xyxP2PzjZDCqO7NXXGAvkFj2fVP7avU76JzkEZk9iQ==
X-Google-Smtp-Source: AK7set9MfC1PxNng6Vma+yRI7hRnqfXJxNmDi52QuFYnS9zfjs79ZjNGCHl8MlsdVidRYygFsWFznmMwQJa3NB16f9E=
X-Received: by 2002:a81:ac4b:0:b0:533:9ffb:cb12 with SMTP id
 z11-20020a81ac4b000000b005339ffbcb12mr10523196ywj.10.1678229743868; Tue, 07
 Mar 2023 14:55:43 -0800 (PST)
MIME-Version: 1.0
References: <20230119163201.580858-1-konrad.dybcio@linaro.org> <20230119163201.580858-2-konrad.dybcio@linaro.org>
In-Reply-To: <20230119163201.580858-2-konrad.dybcio@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Mar 2023 23:55:32 +0100
Message-ID: <CACRpkdakgumdpkEdbcUkmSgGRzSOxX6rFD_a9bjMaE1yemgUbw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] gpu/drm/panel: Add Sony TD4353 JDI panel driver
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org, marijn.suijten@somainline.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 5:32=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:

> From: Konrad Dybcio <konrad.dybcio@somainline.org>
>
> Add support for the Sony TD4353 JDI 2160x1080 display panel used in
> some Sony Xperia XZ2 and XZ2 Compact smartphones. Due to the specifics
> of smartphone manufacturing, it is impossible to retrieve a better name
> for this panel.
>
> This revision adds support for the default 60 Hz configuration, however
> there could possibly be some room for expansion, as the display panels
> used on Sony devices have historically been capable of >2x refresh rate
> overclocking.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>

Looks good, so patch applied to drm-misc-next.

Yours,
Linus Walleij
