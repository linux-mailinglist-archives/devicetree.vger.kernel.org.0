Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8AA163D4CA
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 12:41:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233081AbiK3Lk7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 06:40:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235097AbiK3Lk5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 06:40:57 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 528472FA7D
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 03:40:56 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id b3so26519656lfv.2
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 03:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=99xaCqf5qa96S/0p46JeVNvLFHKLRC11O1smnInaBoM=;
        b=TdxiikQ3Y0c6IVyFZ4iyWQbI2TGQKoRUIgCK0SC837s9dBRRtxPWpb+LYBtvW6nvxn
         djIGiEmGgFM2juXI9ACsyvjvDNjrP6HX5qWfWUXMLqh4NeoUBdzThUyh0LQfaK7eVHqU
         YizLifR/JSMRlHb5QjvMb06OrUEVIZkH9+IpF9o5UTkToQ/CxK0CrJ0ZlW4YWsjrYD8l
         ijvVglTn+A18pD0TZBtxfqZEJxBBgs52NXeO2Ggwz44LgzuCX3IJN6eLNYNF8rVNOD16
         3Bukpab+5UkP9O5/bk71ZXMqbeoviOaPl7Rh3ttjpUtDoYMprAKjfm1tfjgIVtZYObYA
         kw5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=99xaCqf5qa96S/0p46JeVNvLFHKLRC11O1smnInaBoM=;
        b=vECvKlzhepA0ggxaeT+0xOYn61LNFrsuOqBoLGJ0HOx4rBf6GgbEnnxWqpcivF0TSt
         /K78nmbDkQSRslR0hnsOZik17WTS0jv0SqgotRXseWq+hPsUo2KMx95RLmaMUdqinbWw
         Vu3QUF+0iAxxbHp66CKixjqxioDznflc76M/1+kD0F6k2Dhnmb02XSv4BWywUKcGyAme
         j4BCGRIC8XP0eQWI/GvYZhe9uKpCq/SXmUoBG7cJGkhfFDLNDdHr7Vhe/6cVMJe2dWXJ
         w92uka/N0is4K3N9+ORTmqdVqHno/ZUtUZp0PgHtgQG42i9eviJSdn6dQBl4N2zKHySk
         vlBA==
X-Gm-Message-State: ANoB5pmqC0Nx57iYeluXbuWHNN3sxPokaT0ZFSyftfG7Tuv6NbwsC30+
        /ILwN6YQVIY/BxRC2Z4EdBJkcAjcDXyP2o5rF/Sbiw==
X-Google-Smtp-Source: AA0mqf4EVpFZeTrPK+w9qTOJAKynQ0HdWZJHtWUKzSXrhSBS3+ZtRHiF9v1eRygV044dkfRp4Kuf80qVW6j9uSq5EZU=
X-Received: by 2002:a05:6512:34d0:b0:4a8:ebec:7140 with SMTP id
 w16-20020a05651234d000b004a8ebec7140mr20444382lfr.150.1669808454555; Wed, 30
 Nov 2022 03:40:54 -0800 (PST)
MIME-Version: 1.0
References: <20221130103841.2266464-1-bhupesh.sharma@linaro.org>
 <20221130103841.2266464-2-bhupesh.sharma@linaro.org> <3c8c3cc8-60b9-13e2-a80f-dc397d84adf0@linaro.org>
In-Reply-To: <3c8c3cc8-60b9-13e2-a80f-dc397d84adf0@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 30 Nov 2022 17:10:42 +0530
Message-ID: <CAH=2Nty3zM+arxJaeZ7YWh6fyuE8jWnV9rpKjuNxDS2zUnqNVw@mail.gmail.com>
Subject: Re: [PATCH 1/2] interconnect: qcom: Add SM6115 interconnect provider driver
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        agross@kernel.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, djakov@kernel.org,
        a39.skl@gmail.com, andersson@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Konrad,

On Wed, 30 Nov 2022 at 16:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 30.11.2022 11:38, Bhupesh Sharma wrote:
> > Add driver for the Qualcomm interconnect buses found in SM6115 based
> > platforms. The topology consists of several NoCs that are controlled by
> > a remote processor that collects the aggregated bandwidth for each
> > master-slave pairs.
> >
> > Cc: Bjorn Andersson <andersson@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
>
> [...]
>
> > +MODULE_DEVICE_TABLE(of, sm6115_qnoc_of_match);
> > +
> > +static struct platform_driver sm6115_qnoc_driver = {
> > +     .probe = qnoc_probe,
> > +     .remove = qnoc_remove,
> > +     .driver = {
> > +             .name = "qnoc-sm6115",
> > +             .of_match_table = sm6115_qnoc_of_match,
> No .sync_state?

Oops. Will add it in v2,

> > +     },
> > +};
> > +module_platform_driver(sm6115_qnoc_driver);
> > +
> > +MODULE_DESCRIPTION("Qualcomm SM6115 NoC driver");
> > +MODULE_LICENSE("GPL v2");
> "GPL", checkpatch should have pointed that out.

Sure, I will fix this in v2.

Thanks,
Bhupesh
