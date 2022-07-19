Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCDBF5790C6
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 04:23:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbiGSCX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 22:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236539AbiGSCX4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 22:23:56 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D64E33C17A
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 19:23:55 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id oy13so24581085ejb.1
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 19:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LxemPh1G2bV0CErrw/K/K5kZfPDDvrAnSzpKEzeBXc4=;
        b=MS/gx6WdiejfkjXBNgMQ/VZF7RonuoyhbwV39y3Q+ClHIaBb4f9ztx3WkUpa+2gyfF
         /q4cGzo3PJu1rCudrXlNEZJmtNZqtgR91O2tbHgWY+7SYrSavF4Q6p7EKS5BIzgEwJzF
         D4yy3UZbr20IcYfupTbEIjLYDo+XQGUWkUqZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LxemPh1G2bV0CErrw/K/K5kZfPDDvrAnSzpKEzeBXc4=;
        b=21uUU2aw4qJDQlcsOvV6CInAyb9NSa4eNQZ20wXl5gKhzMlq2Ry0mmWjfLjAjOcHrQ
         I3XHuD9H3X9vMwlxVLaKwP+PXBJdmz2f8g2tEzIZKItHQ/aACQJ9W1bB8HR9Gnuwwaqr
         AVP5OcyL2fMM68g93i9IOA+MJzUwZkDbXNhNOvoG/7cfeTVpDK9ZT94fEx0LpnylVm11
         g45OO0AnBLHsHeBtVwjw8siM9ANhfskHb866yzSfn0dAXAq4BbIYBYtr7ONH3Ys66xx/
         LWsovKsJuGE7sVw2oq3TA+5z6yhTA/ojS2rj3bZeMUGupTDv0cELeroiV1RtwJmwi6/B
         DhSw==
X-Gm-Message-State: AJIora9X5gXbNlpuhlLUT4PQoXYUry4496iJAo5r84XSgLtjXdoCfyg3
        YOBCFYUivx/OozC7yojumXAe21/zTJJKG2+5
X-Google-Smtp-Source: AGRyM1sMwXuGtTqVfCyOo241Kx9UwUyQFXYBwj+KdP6ZW8BeBaCJPPYdKIvipSqVmHf/D0dvsgl6cg==
X-Received: by 2002:a17:907:7b9c:b0:72b:5652:a14a with SMTP id ne28-20020a1709077b9c00b0072b5652a14amr28396215ejc.86.1658197434256;
        Mon, 18 Jul 2022 19:23:54 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id r17-20020a056402035100b0043a6a7048absm9638100edw.95.2022.07.18.19.23.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 19:23:53 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id bk26so19558612wrb.11
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 19:23:51 -0700 (PDT)
X-Received: by 2002:a5d:5889:0:b0:21d:bccd:38e3 with SMTP id
 n9-20020a5d5889000000b0021dbccd38e3mr24317717wrf.659.1658197430996; Mon, 18
 Jul 2022 19:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220719020327.1.I3aa6575984116a740e0fd15d13562424af73fd07@changeid>
In-Reply-To: <20220719020327.1.I3aa6575984116a740e0fd15d13562424af73fd07@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 18 Jul 2022 19:23:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W+HsufL=rKDhEnAyM9pF+FHq_+LP3UZUr5ahfFddptgg@mail.gmail.com>
Message-ID: <CAD=FV=W+HsufL=rKDhEnAyM9pF+FHq_+LP3UZUr5ahfFddptgg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Add sc7180-trogdor-pazquel
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Bob Moragues <moragues@chromium.org>,
        Henry Sun <henrysun@google.com>,
        Yunlong Jia <yunlong.jia@ecs.com.tw>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 18, 2022 at 7:03 PM Yunlong Jia
<yunlong.jia@ecs.corp-partner.google.com> wrote:
>
> Pazquel is a trogdor variant.
> There are 4 types:LTE+TI/LTE+Parade/Wifi+TI/Wifi+Parade.
> The current builds is relatively stable.
>
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../sc7180-trogdor-pazquel-lte-parade.dts     |  22 ++
>  .../qcom/sc7180-trogdor-pazquel-lte-ti.dts    |  22 ++
>  .../qcom/sc7180-trogdor-pazquel-parade.dts    |  17 ++
>  .../dts/qcom/sc7180-trogdor-pazquel-ti.dts    |  17 ++
>  .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi | 225 ++++++++++++++++++
>  6 files changed, 307 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-ti.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-parade.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-ti.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi

Pazquel support has already landed upstream. See commit fb69f6adaf88
("arm64: dts: qcom: sc7180: Add pazquel dts files"), which is in the
for-next branch of:

https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/

I think you're trying to add -rev6. You should just add it and update
the yaml as I suggested in <https://crrev.com/c/3764209>

-Doug
