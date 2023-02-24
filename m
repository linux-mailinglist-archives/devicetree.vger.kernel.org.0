Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD0C96A1871
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:02:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230013AbjBXJC1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:02:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229980AbjBXJBz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:01:55 -0500
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7591565CE5
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:01:24 -0800 (PST)
Received: by mail-vs1-xe2f.google.com with SMTP id f31so20455578vsv.1
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QBK+chRqzmbdbE5cm4Uz1XII0teWxpjTk64XAOcTlok=;
        b=BPIgh+eQeTgXYE6e94AEFS6mL8ljjkbjKU7DImx1z2sMitZndpaAKGU6spAUTsDKkn
         b3twj3SpsWdIZXLBbq2Qn2BhaLLFU/+wbOnpCaM6HGW6rXReQSLwkBpZPXq+YugTKTus
         a5t/Hxc14nAs0cx9CkmaKlfE32+ao56WmtKvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QBK+chRqzmbdbE5cm4Uz1XII0teWxpjTk64XAOcTlok=;
        b=Lxiq3ypokceslkz3hzpux2b2GYymAPUBObOYwhiGr8gxRkQsCVDlthOKDmtQAFU/7r
         0HTpY41xaMRqLhYhwcy5V51w765AnevEKpAQaS5Lp0LRDJMZ5If75zMDQurPyge50eCo
         3N4rhnZFXYdO4pJ5e3aeC0wSbWOliWeeO/mSeLHsS8o2B95XApG8DiKhsjIlCHrOfPzO
         grkaZirFdQG1DYdjW/miVp05FVOKFo04U106tYfumKk4+MQxTDJPQ2H5WzlB0BxBGMQK
         pAW1Oja6i/fQgd7O3oMr6ZmuYJG+DjVuSbowRNbrwiGYdNrT7ng5mhUtyb6Et4yPEqZ1
         HnRw==
X-Gm-Message-State: AO0yUKWYYETMADJCwTpKYDVZdDn5Wts5vFuhz9KfM9lw8Nkj8AVquvt5
        hpLUzLvDg5Q/k1gBtTvYXzMFoUG2j+Yus33sb3bteQ==
X-Google-Smtp-Source: AK7set9TC5yZJZTk7JGtwENz7sxNaZjRUPyW1G7+VmdQi5xpJ1lU/wiSfu/h18lBh/yMOuq4XEO+IihERlmymu0kUMQ=
X-Received: by 2002:a67:fbd2:0:b0:411:fff6:3cc4 with SMTP id
 o18-20020a67fbd2000000b00411fff63cc4mr2007730vsr.3.1677229283567; Fri, 24 Feb
 2023 01:01:23 -0800 (PST)
MIME-Version: 1.0
References: <20230223145426.193590-1-angelogioacchino.delregno@collabora.com> <20230223145426.193590-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223145426.193590-4-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:01:12 +0800
Message-ID: <CAGXv+5Ff13sH9JTcBBi5j2mUX3BKOvpM=MxV-Fwwu370FdYjyA@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] arm64: dts: mediatek: mt8195: Add display pwm nodes
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 10:56 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add the two hardware PWMs for display backlighting but keep them
> disabled by default, as usage is board-specific.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

and

Tested-by: Chen-Yu Tsai <wenst@chromium.org>

for disp_pwm0
