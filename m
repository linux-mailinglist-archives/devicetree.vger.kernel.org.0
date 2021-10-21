Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0542436AF0
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 20:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231664AbhJUSzw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 14:55:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbhJUSzw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 14:55:52 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC84CC061348
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 11:53:35 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id t9so890006lfd.1
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 11:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=mO5anQzGXTxh2v2wYXdU6rU0TROIAFTKDYYEe0hmhSM=;
        b=FFYXPZJcnXPuGpp/ZSB3wwIMJgRYVA5DfPknKpPhzU3edEVeidgNQQjVtvILLsP8Py
         f6IUDDJ7S6nLRcAOWVduJ5d9y+J/FaTMsrVZgKiPEJMuMc4Soy4K30HT+M+ckvanbBZ4
         GCo8tXJOfnq65fdy3Bgkrn1fwNgOFEYoDJsbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=mO5anQzGXTxh2v2wYXdU6rU0TROIAFTKDYYEe0hmhSM=;
        b=18c8cKn5S1Q4HoaWW2o6ps5LJU8cJbjJdBG3HO44BV9K802h2Se1m7LOZZwd2UP5ml
         +ilAZmQP8PvHMGPM4jLJjq4F83k6hzGjH08TEp9YRwTaQhmYWQcd+bwwFDk8GXMNSSuj
         1ABGNrP+0Lq0YsNMyBO81Y/PudcrjzxzSY2JTZ+pJ6bwus9bLs/h2hCUvYCtSRyw5/OT
         N+GP3LdPtMTjFux8U3tpYa+RRP3Av7+Z+dJ233cir+pvw3vKJedYl7gUKp9pHw+txnXp
         qZiGgHrtTDwSoVRkBzxQPl7s+qh1PuYHOQ5MYYQXGoXF616xeSEkL6xAzxLl+vIXSrQB
         RPJA==
X-Gm-Message-State: AOAM532vNtv6ZQW9m/nDEiO3WLO4ZYPjFO/C3pROokKWQAVUc+rpgIp8
        lnNTjVQC45lZmTs3Hm+uK47/hMPTredNqRAZ2ug2ejXP0Lc=
X-Google-Smtp-Source: ABdhPJys9VUKRoYmYMSGZ1MXhUxuDtqJg+cCKLhocitFkTrbjasOhV/035KFy9HQ0JHl5V8hksNICzzekRoQ6niNOmk=
X-Received: by 2002:ac2:5c12:: with SMTP id r18mr6938328lfp.251.1634842414238;
 Thu, 21 Oct 2021 11:53:34 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 21 Oct 2021 11:53:33 -0700
MIME-Version: 1.0
In-Reply-To: <20211007140854.1.I70615769f27bbaf7e480419d0f660f802b1fea43@changeid>
References: <20211007140854.1.I70615769f27bbaf7e480419d0f660f802b1fea43@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 21 Oct 2021 11:53:33 -0700
Message-ID: <CAE-0n53b2SPJh7NABca_XDTeO2z_5omF7TGPa6-idsRa3BNqJQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Add Herobrine
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-10-07 14:09:11)
> Herobrine is a Chrome OS board/platform based on the QCA SC7280.
> Add a .dtsi for the platform parts and a .dts for the board
> specific bits. Currently the .dtsi has everything except the
> compatible strings, things will likely get shuffled around in the
> future as we learn more about the differences between boards.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Ping, can qcom maintainers pick this up?
