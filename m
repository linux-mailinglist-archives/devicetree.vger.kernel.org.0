Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 588033DED2B
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 13:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235858AbhHCLte (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 07:49:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236153AbhHCLtL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 07:49:11 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82AEAC08EACA
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 04:47:02 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id u20so27858538ljo.0
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 04:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=etK0elpS05hz7Km273394Meji45lu69rkvmUfpsPSIQ=;
        b=Tfds44W/7N6OvbAyP0TRdJLdBh4VucrnQroHeSiqwZDxfmA/2aGndP7kOTFdbAzzVv
         qffehGnqve2NBSPHMYGdm9DisaX3EvAc4/s09ESqikbBbjAv9wW0b59PQCadqWSEVKKC
         Rty/MzA4FfFXkICzwfYucun6omh3dosNSMpc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=etK0elpS05hz7Km273394Meji45lu69rkvmUfpsPSIQ=;
        b=C4gi2S4tSvIAtYlhN9JUmEEwa1HYaTFmgZZWoi0M/YFF7LCc4A4PzPGBEQW47pJcLh
         /anwJ5Zaifalx3lF8Zr1dG9k3FM0hXpMuXQK1jQ8ubcEdY8PX9bPZun5MEA3tXLJ7FHK
         ZDtPNIykVKUN3Wj7qRaQB3mO81Vst8fBM4ZHnwdcR2zl1l3URT8K9JAiUHgcmrGGC3wC
         T6olegI+Odqs8yDk4eV5r5QcUwUdV43cj20qZhq3x+kZJv7vqHDYFk3ikHKQO5LWjLNj
         gBoHgtwbPnLJc9SnmjLWeHn2PtGDNg8GoqlU5dudE/5nf0fasvunvDOs2ms6DOwpFdH2
         akfw==
X-Gm-Message-State: AOAM531HLV1iCriiS/3wq0JpYgt9N7QEUjt/V0fN50j1i2GvK8gCC5A/
        lEr0xxZQ9Jfonv7xgppwbYmqIch92oHZmA==
X-Google-Smtp-Source: ABdhPJwjuQD3Zhj6/QvWlehOpDvyTRHrS3fVxuoD+XGDuFgvtqKtMQNoKQY9uKC9Bn5kvUN0c4UyZw==
X-Received: by 2002:a2e:a596:: with SMTP id m22mr14193506ljp.209.1627991220757;
        Tue, 03 Aug 2021 04:47:00 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id bn3sm31648ljb.18.2021.08.03.04.46.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 04:47:00 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id c16so9724277lfc.2
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 04:46:59 -0700 (PDT)
X-Received: by 2002:ac2:4433:: with SMTP id w19mr6028378lfl.30.1627991219371;
 Tue, 03 Aug 2021 04:46:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210802121215.703023-1-eizan@chromium.org> <20210802220943.v6.7.I2049e180dca12e0d1b3178bfc7292dcf9e05ac28@changeid>
 <CAFqH_527RL56P=zEg7yTaeeqTvFOjT3ThxpX-Qumk25dR6+-bA@mail.gmail.com>
In-Reply-To: <CAFqH_527RL56P=zEg7yTaeeqTvFOjT3ThxpX-Qumk25dR6+-bA@mail.gmail.com>
From:   Eizan Miyamoto <eizan@chromium.org>
Date:   Tue, 3 Aug 2021 21:46:42 +1000
X-Gmail-Original-Message-ID: <CAOak1e90y_2aaD4ssH9WfqUUXjUSWkN_rLW51NujkD7oMayhew@mail.gmail.com>
Message-ID: <CAOak1e90y_2aaD4ssH9WfqUUXjUSWkN_rLW51NujkD7oMayhew@mail.gmail.com>
Subject: Re: [PATCH v6 7/9] media: mtk-mdp: use mdp-rdma0 alias to point to
 MDP master
To:     Enric Balletbo Serra <eballetbo@gmail.com>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Chen-Yu Tsai <wenst@chromium.org>,
        Houlong Wei <houlong.wei@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        devicetree <devicetree@vger.kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Enric, thanks for your comment.

> > ... Instead of depending on the presence of a mediatek,vpu property in
>
> Looks like there is something missing in the commit message?

That line is a continuation of the commit message header, I.e., it's
meant to read:
"use mdp-rdma0 alias to point to MDP master Instead of depending on
the presence of a mediatek,vpu property in the device node"

Eizan
