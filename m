Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8759967DF6A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 09:44:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231810AbjA0IoQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 03:44:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230510AbjA0IoP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 03:44:15 -0500
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0818F60CAD
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:44:15 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id u72so5121270ybi.7
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V/H55PEXyjXZT4GZWOk+Oen726TtAu6SBCILQ5VC314=;
        b=OygUJsxPXXb1A7zKawby3jULVZLlc1E/B+T3dd6sTjk9qnIZGXqRQ5QiaAUgC8Rxec
         vX650NyVuSjnEnLv4UwmoWZ0gGH9OKcQSjohgypVW/+I/rp/bzThU8sNE5J2HSnq7Ynn
         kqjIzWJoHCLGblSRkb95JV9b3lsEPj7QIhb7BPHf1aAApRPaWaYwc8ETkOOcjJmxpTM+
         THDew74cA7oGcdBBXmW5maoHNWiVC+Pz7zJHbzYHtu+QALJIw1JXAMS61Qh+qlXa+EnD
         p+m0PWed6sTbB0+Vsu80mmlPEXvmsfAtwqhZ5pfL1YxidX2QUW75rcvIwUZGqKrHiHV+
         z4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V/H55PEXyjXZT4GZWOk+Oen726TtAu6SBCILQ5VC314=;
        b=uc+sp6IjUPd9vWOKkzq2uBws2uNhBl12//vafWjzdazbYrzGo8ihkjNkTQUpXsCmMI
         A68KxeoNUoqSWWO46YT/D+pmSvPuHtFSVgSbzQES2hsle8mF/VmSW7i2YSoqdRHuD3eT
         +HmA7FX0IkfeSfZs3ds7PGNJsVpBtyk8OJEtwu/Mp1AkhoJgxTsIAOWS0RhjMWtNsiZe
         IVhYGTe9qc2pfzYFhjGu9vcbKdHfCezOl6tMkMb8sTR0iSfZko3ukdS2xQoIo3Q6Goby
         EZ5OL2DDfIHU8co77l7k7Wi2Qfpp1rK4KguRabO5VqnX1CrYnW19XpTF2hCD/kpIjqSv
         s7pw==
X-Gm-Message-State: AO0yUKWHY7XepZtsgQUIyw1T2PJpIM1KIw8YnobC573ivOGADDBrGa+L
        4yTqde52FOmBOlg14AzKPqlA9j7KJAYGHfrft88v8g==
X-Google-Smtp-Source: AK7set8wMrWFYAXUWahy33AbglefgDSZCeEIUwyW+7cMkzPKxVYUPC/q7srh0/Zo1YXxBa66QwQHiC2sd7EnEFYL2+c=
X-Received: by 2002:a25:d1d1:0:b0:80b:4d84:b25 with SMTP id
 i200-20020a25d1d1000000b0080b4d840b25mr1265372ybg.584.1674809054262; Fri, 27
 Jan 2023 00:44:14 -0800 (PST)
MIME-Version: 1.0
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
In-Reply-To: <20230123154603.1315112-1-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 27 Jan 2023 09:44:03 +0100
Message-ID: <CACRpkdZs2ZCt=K8Q89XhpA_hKOZHUk6+KdJtsOKr3rBM2Rm1Ww@mail.gmail.com>
Subject: Re: [PATCH V12 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, tzimmermann@suse.de,
        mripard@kernel.org, maarten.lankhorst@linux.intel.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chris,

patches look good to me, Maxime is happy, so:

On Mon, Jan 23, 2023 at 4:46 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> Chris Morgan (4):
>   drm: of: Add drm_of_get_dsi_bus helper function
>   dt-bindings: display: panel: Add Samsung AMS495QA01
>   drm/panel: Add Magnachip D53E6EA8966 Panel Driver

These three patches applied to drm-misc-next

>   arm64: dts: rockchip: add display to RG503

Please funnel this into the Rockchip tree!

Yours,
Linus Walleij
