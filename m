Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0566D3B7E2D
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 09:32:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233120AbhF3HeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 03:34:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233087AbhF3HeG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 03:34:06 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 350E4C061787
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 00:31:37 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id a11so3280014lfg.11
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 00:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lxYiu8p2N8GfVq4zjyFWRywFohMl9B93gUN+WOKNciM=;
        b=P3dnnE9etYGaSIabOdksbhak7yrNNEj7JkC2s9ceXmf359Lo+sLDn+MN5AaMIeP7nH
         uuFlGOlo+AL2gRFKJ2sRTPn6O3eDynC6a1yVJ32Vnr9A044z8C0sghr9j14oH/VWFeof
         tYfsqbi8erpR+0ZcEnIoOakG/5XanHNAsR8JE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lxYiu8p2N8GfVq4zjyFWRywFohMl9B93gUN+WOKNciM=;
        b=akImIbJP+IQCEiBGRJTLIVgqdg42i5wn0WA0qPMHjJyDEeb4q0EpgJw/zU8US7H61U
         UMg1seNdVsu0muDZT/2a6oSGMBEbvjMLtGpX0L096Zq049Y8jQDZEcYmW75uH0P80/B3
         ulyFr4X8lT0oa62caqJPrBZpALTLxF8ORLMjfurowdqTlqAAc/L0cQlMEIrD+P1myPs1
         fPRxUuk5EfIGh4xLmriroZK0y3AhA/39S5T30H/HKVPbe9f7dODWh2ChijKY1O0UAhJO
         HRqOyCC/5gZq1cZulze9VPKC6UrKq8icQVwt+9nWhqLpWxZOvfiMLdhzRsCfZt3Xrtme
         9Hqg==
X-Gm-Message-State: AOAM533Mf6NWlleocO0lebGJjqC7hWxsGl+zG/ZT82LbnNGJJcS3pZpb
        +cGT7UJju8qphdfRCQcwRxOo+VMtTaX7PVfYl0udlw==
X-Google-Smtp-Source: ABdhPJwtWq5t1qxUswjy8XnO5yHQyrzaf/PASJx0qZL1yG9gn+vAucP21N28ejrTjvh3GXcAhuzEvusugeGYSyVNteY=
X-Received: by 2002:a05:6512:63:: with SMTP id i3mr26374013lfo.587.1625038295495;
 Wed, 30 Jun 2021 00:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210616224743.5109-1-chun-jie.chen@mediatek.com> <20210616224743.5109-4-chun-jie.chen@mediatek.com>
In-Reply-To: <20210616224743.5109-4-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 30 Jun 2021 15:31:24 +0800
Message-ID: <CAGXv+5F2zTcqnjH2ud38vUD149KJtgxhPQME2Mk6-vGtQv+2YQ@mail.gmail.com>
Subject: Re: [PATCH 03/22] clk: mediatek: Fix corner case of tuner_en_reg
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 17, 2021 at 7:01 AM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> On MT8195, tuner_en_reg is moved to register offest 0x0.
> If we only judge by tuner_en_reg, it may lead to wrong address.
> Add tuner_en_bit to the check condition. And it has been confirmed,
> on all the MediaTek SoCs, bit0 of offset 0x0 is always occupied by
> clock square control.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Though you might want to consider converting these types of checks into feature
flags.
