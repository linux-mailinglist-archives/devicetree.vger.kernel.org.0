Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92AFD55D829
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:19:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236377AbiF0OAR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 10:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235118AbiF0OAK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 10:00:10 -0400
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6D30BC08
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 07:00:05 -0700 (PDT)
Received: by mail-io1-xd2e.google.com with SMTP id h85so9636844iof.4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 07:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UAGsVNxzk8vNVq19Sa60bi66Tur02wHflrMgGeyRF+s=;
        b=CQWg2HiBV3Oqv2N5JkIFVX6uhued3VniNsN/6MZnprAs0w0befTTVXJdYdXld6Xccc
         rQqhPIeHYBAO/y9KxoFV4oc6o+VDqNiKqgjbnjH1e1IjUR37VeMWP0muj3YzV12B8BVw
         B3QxynUfGs/RXAH7r/660sm6WiDOf2KZ7Nw+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UAGsVNxzk8vNVq19Sa60bi66Tur02wHflrMgGeyRF+s=;
        b=ZcIRyDmR4y2TnR4eG1ki3Ez/c8ln025VTJ4pIZiaFm6jCFDJ3lp/4oU2941BqWfNQP
         tVciprW0xwf6/gYgT4AMTPejlmJvVZeCS05GjQikCSKTc7VdrbzN0UKudPJSqy0ic940
         vaALBXpoF18Nrj9IBVxHtZUjhONe33wFKO/nDWORocMx2QHddGCXeEys8hteXIZBhfLm
         liWxy74O7ZklvJKGVoC8elOwIGNuwUrjsVlxbdwnoAh/glWa6LHkjjmvUcEc/OgvgdVI
         pHwWX45b7YSC1yF3rx6x8AHzlgE9d2J2UkjDT1INS6nZ9qHayfTpORixN/93cXht2ZNe
         HRGg==
X-Gm-Message-State: AJIora+yUISjenzitnaibdndYb3p5Am+GHKwpuz4QvLNKp5iXKD+7O+R
        QQM5ldieIQXEmS7aBM6Gyv5TErpCycqSvO5q
X-Google-Smtp-Source: AGRyM1v2NBZ6m4jR3CV+jXixZhIxHEWq78E7/w+0lrRhl4xZrr2gUUliDf58MCPU2CYYjPIzjJjXkQ==
X-Received: by 2002:a5d:9c45:0:b0:675:1774:74a2 with SMTP id 5-20020a5d9c45000000b00675177474a2mr6346535iof.104.1656338404986;
        Mon, 27 Jun 2022 07:00:04 -0700 (PDT)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by smtp.gmail.com with ESMTPSA id q25-20020a05663810d900b0032e1a07228asm4850232jad.26.2022.06.27.07.00.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 07:00:04 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id p13so6110379ilq.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 07:00:04 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a6b:b0:2d3:ae9f:112f with SMTP id
 w11-20020a056e021a6b00b002d3ae9f112fmr7618358ilv.187.1656338402699; Mon, 27
 Jun 2022 07:00:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220626013906.885523-1-joebar@chromium.org> <20220625183538.v14.2.I0977b1a08830d0caa8bfb1bdedb4ecceac709a7f@changeid>
In-Reply-To: <20220625183538.v14.2.I0977b1a08830d0caa8bfb1bdedb4ecceac709a7f@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 27 Jun 2022 06:59:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U9sQ5qFzP3jBWt7CipJuyFjvwiDjybwrMS+j6orDrcjg@mail.gmail.com>
Message-ID: <CAD=FV=U9sQ5qFzP3jBWt7CipJuyFjvwiDjybwrMS+j6orDrcjg@mail.gmail.com>
Subject: Re: [PATCH v14 2/5] arm64: dts: qcom: sc7180: Add quackingstick dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Jun 25, 2022 at 6:40 PM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Quackingstick is a trogdor-based board. These dts files are copies from
> the downstream Chrome OS 5.4 kernel, but with downstream bits removed.
>
> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
>
> ---
>
> (no changes since v8)
>
> Changes in v8:
> - Incorporate the deletion of the usb_c1 node from 9f9fb70a7294.
>
> Changes in v7:
> - Restore changes requested by Doug.
> - Only include sc7180.dtsi in sc7180-trogdor.dtsi (19794489fa24).
> - Simplify spi0/spi6 labeling (d277cab7afc7).
> - Simplify trackpad enabling (51d30402be75).
>
> Changes in v6:
> - Accidentally deleted changes requested by Doug.
>
> Changes in v5:
> - Remove extra newline
> - Add comment that compatible will be filled in per-board
>
> Changes in v4:
> - Add missing version history
>
> Changes in v3:
> - First inclusion in this series
>
>  arch/arm64/boot/dts/qcom/Makefile             |   2 +
>  .../sc7180-trogdor-quackingstick-r0-lte.dts   |  38 +++
>  .../qcom/sc7180-trogdor-quackingstick-r0.dts  |  26 ++
>  .../qcom/sc7180-trogdor-quackingstick.dtsi    | 318 ++++++++++++++++++
>  4 files changed, 384 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick-r0-lte.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick-r0.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi

Reviewed-by: Douglas Anderson <dianders@chromium.org>
