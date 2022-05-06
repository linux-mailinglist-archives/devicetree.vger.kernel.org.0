Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C02F751DAEE
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 16:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358558AbiEFOr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 10:47:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1442386AbiEFOry (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 10:47:54 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E697F6AA53
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 07:44:10 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id j12so2768012oie.1
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 07:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=OWvQZX3GiLyjOxPPXSqjQtWrbeDgoP+nMPSzNE4IZTY=;
        b=lBnhMpvsmS4+guisyttsmdhHeJPi7CUuD6+PFg/buZnTGATnvqOY2np9iAxmm0cshs
         ilNjQcC11gIzYKjzTfc2rRs4lToegR7Ov9s8QFnK38jYu3/dqNdv4XNC5AnsdbCa2KE1
         sJu+xtE508+2sPM4FFVxY48RtlojxskfCW7II=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=OWvQZX3GiLyjOxPPXSqjQtWrbeDgoP+nMPSzNE4IZTY=;
        b=k9mrDmCeBSfbkEzxKe3114ZkIuZuc6UL83j/na93ucCx1CXLJ6wI9JjUueQAbVZmdH
         4k2geyEGwdlJKedI1noknc5GVkKVZXHq7euLjy8TsaCeupet+S4ztya00YLDXW8OHVYN
         nT7/ESsoZpCKennh1El3soLgbRVp0dYhZZQ0mc5a4kBZ2rXZDh5VlN1T6WsGA127wXiM
         MmYghi5PGkxJn5kLIVrccMdZm77d94fnX5ozsR6XhDsDCA+DJ2ZpHKPPs1VYEOUsmB7S
         4KZo70FFrZo41uWA98MQ9+AuzpksxT7PfSRMyxMxDIBF6scv2ruil5zD5biI2B+4vv/Z
         fV3A==
X-Gm-Message-State: AOAM533t04K/Oaq09C9UY6JnXcIWOhHRy3/kdSKA3yjAZo9TUdJAz2qH
        DmcT3zen63vsPP/p8hcDko9355Epn1TKIn3pHI8roQ==
X-Google-Smtp-Source: ABdhPJwt2GK39szxaSNXyYANDabcNQQ0SuBjQQnPuALGrVZcD8iHQ2HQRkse/YgUZCNWUi8tHj3AcY332l3Nz8sA3O8=
X-Received: by 2002:a05:6808:23ce:b0:326:6698:c271 with SMTP id
 bq14-20020a05680823ce00b003266698c271mr1557443oib.193.1651848250156; Fri, 06
 May 2022 07:44:10 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 6 May 2022 10:44:09 -0400
MIME-Version: 1.0
In-Reply-To: <1651742739-12338-9-git-send-email-quic_c_skakit@quicinc.com>
References: <1651742739-12338-1-git-send-email-quic_c_skakit@quicinc.com> <1651742739-12338-9-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 6 May 2022 10:44:09 -0400
Message-ID: <CAE-0n52N18hLFyj61_fJQ3=62Pk3pbgCK4gMs_ogdL6TS2Asjw@mail.gmail.com>
Subject: Re: [PATCH V11 8/9] arm64: dts: qcom: pm8008: Add base dts file
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_collinsd@quicinc.com, quic_subbaram@quicinc.com,
        quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-05-05 02:25:38)
> Add base DTS file for pm8008.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
