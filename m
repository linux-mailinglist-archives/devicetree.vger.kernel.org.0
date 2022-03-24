Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA6D4E6B1E
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 00:18:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244358AbiCXXUV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 19:20:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231640AbiCXXUU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 19:20:20 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 286B050469
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 16:18:46 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id pv16so12229155ejb.0
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 16:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=phJ29Q0oulgzNrgAvihLKJetqMSFkbRI+rXLgF7X63I=;
        b=n/KJIFD1TlTOr/ubtWBTuWeulAPYxgaayq8TjqsdWISywCjK0dKJb9y2q1winHNuKE
         bfS9tdeUu5BAxqElAthBLgO2OMmhSHkLtYqzqQRC+drblnmOwRqDooshVgDBhG/wl2EV
         9VzjecApbwudJorSvB87tsHR/F9XwQJNLTEU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=phJ29Q0oulgzNrgAvihLKJetqMSFkbRI+rXLgF7X63I=;
        b=7857FFrYSZLrW1CErFE55BzhJiHxVQy3AciDQ6nOHFMZajgxccXlrDK7RfmiPPqviH
         lHiBR8lWsdbGNBCT+Sd0jw3iM5YSDA8aN+xxInNwCfn23H2AXjEdNeO0wwUmDwGr+BEh
         60Z5VrLdMddiHcdP/KE7puQ2JbA1rwVJ0vf1x3fMDw3kbn0QT6LEkfTCyb/sCNaHqG8n
         VMBBjemXZRswiJzaNiHt86w8dIbUMXq89OUFYxihxqkwzYzLnxuk/3cygRHlg8RhRomW
         mIUCiS+R4hHuA24iW2/nHHfdKMiCJP4xhVzF+Qmx2/WW8W9OpYsf0OsaA4rCGuowTnRw
         GoFA==
X-Gm-Message-State: AOAM533hluHjOBQYT/iOWNRKD5T7cU5bQ15vl3MnUWlzThMJEJ6nF1Vz
        LQ+azAlYaypvjnw8iOZGetGd00NnyX86cySk
X-Google-Smtp-Source: ABdhPJxBLSPm0ZyKSxALzGuq2rAuKCuy8u4GXxuMQvauUxbfN//1ClIhsyTke2GNfpnnHhGR1y+q0w==
X-Received: by 2002:a17:906:9b93:b0:6da:6388:dc57 with SMTP id dd19-20020a1709069b9300b006da6388dc57mr8230045ejc.338.1648163924431;
        Thu, 24 Mar 2022 16:18:44 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com. [209.85.221.41])
        by smtp.gmail.com with ESMTPSA id s14-20020aa7cb0e000000b00410bf015567sm1955288edt.92.2022.03.24.16.18.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Mar 2022 16:18:43 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id w21so4088000wra.2
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 16:18:43 -0700 (PDT)
X-Received: by 2002:a05:6000:1704:b0:203:d857:aa7a with SMTP id
 n4-20020a056000170400b00203d857aa7amr6224813wrc.513.1648163922979; Thu, 24
 Mar 2022 16:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220324160222.v2.1.Iebdb5af0db7d3d6364cb229a27cd7c668f1063ae@changeid>
In-Reply-To: <20220324160222.v2.1.Iebdb5af0db7d3d6364cb229a27cd7c668f1063ae@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 24 Mar 2022 16:18:30 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ui=+uN+rpjmArbH_7a==Bt2Z2b-NYodSB9sJKWuS2jdA@mail.gmail.com>
Message-ID: <CAD=FV=Ui=+uN+rpjmArbH_7a==Bt2Z2b-NYodSB9sJKWuS2jdA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add device tree for
 herobrine villager
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Mar 24, 2022 at 4:02 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add a basic device tree for the herobrine villager board.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> This patch depends on "arm64: dts: qcom: sc7280: herobrine: disable some
> regulators by default" [1].
>
> [1] https://patchwork.kernel.org/project/linux-arm-msm/patch/20220316172814.v1.3.Iad21bd53f3ac14956b8dbbf3825fc7ab29abdf97@changeid/
>
> Changes in v2:
> - enable the regulator 'pp3300_codec', which is by default disabled
>   with by the patch "arm64: dts: qcom: sc7280: herobrine: disable some
>   regulators by default"
>
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../dts/qcom/sc7280-herobrine-villager-r0.dts | 284 ++++++++++++++++++
>  2 files changed, 285 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
