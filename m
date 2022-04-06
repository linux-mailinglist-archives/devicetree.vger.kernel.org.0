Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11B424F67B4
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:40:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238964AbiDFRYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:24:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238931AbiDFRYd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:24:33 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9BCF4B4BB0
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:23:12 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-d39f741ba0so3212373fac.13
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 08:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=hiSfOStXccjbf1AYzjiGRDT1g1SFjOKXyv+eLAAqR4I=;
        b=S8QZvZFAQKRsGAYTUOeGLbGgTqU9p6NgODt08xv+GJQH6OOxo3vbZVmfWMHv4CQsrv
         sreWgOA4uSXOeHZ5H4VFNs55oW3/EjipqQkJxdYnWoYkoxWoERMNuYKEBMxwI2KmYcWG
         PGRDKJx7La2RUWEju8pyKfnGl4dktn6Ha0V5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=hiSfOStXccjbf1AYzjiGRDT1g1SFjOKXyv+eLAAqR4I=;
        b=Ud2Vi+pJTILV/XCsXlDotsBzvCSW2Em9oVVR2FU0pUIu4JbVIOHGwf26AGhs8WsEro
         1yahsIiFwyoUh024gWioTASA8/ilaWCeHtjr6KE2D+y9SLUUURLH0Sukr3bYIKfyQ7He
         ogHXnNbO1plPn7Mlzdmg5UWgC5OQnfZl2RTw2XHNM0vM9GHMGwxQSoFtUl1vIuaWGblr
         z9WZFZG5ZFKMACfR8kc1CkbOwj/qF25qdRPRSTRvgVW58xl/gPurDaani0llFh9pwms1
         FRQBaj2up+ji8NRNJWxvc5UrXhlRo9ODiNRslKc9kh4Et9X3UIln2D/5f1YrR98m4XZa
         Zm+g==
X-Gm-Message-State: AOAM532odHS6yYueT+LEdV4q+qoIcuXbm42GYWXwKP5gL4zbUYP8/Rad
        ahSvCzNjD+H73EW6OgHsQZEVPUSwduzrKQVE3STqYQ==
X-Google-Smtp-Source: ABdhPJyAXhv6StedGOtJuWf7fO5MgYIPzySA3+7UPCtieqRLefs7juSZxzHlMkcvHchGKDyCITgazKVuobCc5PuwwYA=
X-Received: by 2002:a05:6870:e314:b0:e1:e5f0:d777 with SMTP id
 z20-20020a056870e31400b000e1e5f0d777mr3969864oad.193.1649258591945; Wed, 06
 Apr 2022 08:23:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 6 Apr 2022 08:23:11 -0700
MIME-Version: 1.0
In-Reply-To: <Yk1B4f51WMGIV9WB@sirena.org.uk>
References: <1649166633-25872-1-git-send-email-quic_c_skakit@quicinc.com>
 <1649166633-25872-5-git-send-email-quic_c_skakit@quicinc.com>
 <CAE-0n53G-atsuwqcgNvi3nvWyiO3P=pSj5zDUMYj0ELVYJE54Q@mail.gmail.com> <Yk1B4f51WMGIV9WB@sirena.org.uk>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 6 Apr 2022 08:23:11 -0700
Message-ID: <CAE-0n53Cv_bR92M64dhdnDge_=_jeOs4VZzDhUkksN90Y7rgog@mail.gmail.com>
Subject: Re: [PATCH V9 4/6] regulator: Add a regulator driver for the PM8008 PMIC
To:     Mark Brown <broonie@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
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

Quoting Mark Brown (2022-04-06 00:31:45)
> On Tue, Apr 05, 2022 at 02:09:06PM -0500, Stephen Boyd wrote:
> > Quoting Satya Priya (2022-04-05 06:50:31)
>
> > > +static struct platform_driver pm8008_regulator_driver = {
>
> > Why isn't this an i2c driver?
>
> It's a MFD function driver isn't it?

The DT binding shows a single i2c node at i2c address 0x9. The
compatible for it is "qcom,pm8008-regulators". It looks like an i2c
device that is dedicated to providing regulators. I'd only expect to see
an MFD if the device responding at i2c address 0x9 supported more than
just regulators.
