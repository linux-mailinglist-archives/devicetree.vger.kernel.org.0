Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8776BD9895
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 19:38:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726619AbfJPRix (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 13:38:53 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:34489 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726383AbfJPRix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 13:38:53 -0400
Received: by mail-qk1-f194.google.com with SMTP id q203so23568461qke.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 10:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/Cx4XbFIa1sZs/uYwPjwYiglQbxuZVrvQE3ZO+WHpZ0=;
        b=jSkGGBjcRJJqTIh9MNDMGXbNJRI/LCnDRhaNwChrhsAbMBmD27FKvuIkphNz9Zi+ng
         bCqKQB7KdnAZy13xgSk+OvLy669mvex/kNk+EG1zJh5tlurc77U7xwtFOHuirYtFDY1z
         bCoUFVI7zHaBEYuFhR+BesqwbCo3dh2BnZFbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/Cx4XbFIa1sZs/uYwPjwYiglQbxuZVrvQE3ZO+WHpZ0=;
        b=IjPX2RAdTa8O8XfzSYM4AC9mDvgXHN54oWf6d5n01GxwEAvasVW8F5B1bcR9FxP9BN
         oU3h+P7IVmywq/I8RQ8emVdScnx5+7DzjfpUYJk9BYNccKG2OH7kMFLCODhyXzfCVv47
         O1aNhG3Pq6v7I2x12UZjTJnzNIkci7M8FPbuk+JbHA7Rm8yQVvg8VPQOaAnQge7pXl6y
         xrwL51VDTWKXwgsQsHLZFZsdmV2H0YvhzIjJUtiAFVwG7AVdmbUOrRi6USAmRavt0vd6
         hjU3pjU1309Zm4DyuSH9YvLKJWNiZAtMoGII0mRutAYSEtUpA3kz3wDcFNyjLb6YHJRb
         SsmQ==
X-Gm-Message-State: APjAAAUPKVKBfQCYx1cxSSH3YLLM3rxJpUHAzRvXhr/vZw5t/jq0UQ5M
        PeChTCtD1sh6+S1kTACjwPg+H9OqLgqffTClOai2aotI
X-Google-Smtp-Source: APXvYqwlghLwWKjPsF+lWMlnNrlMqW+5iR9QfBzroa/KEZbXO+cGpX2YYJRRQlH+ZiqpUprUp8HPYcr1Oo2PT6xdYkw=
X-Received: by 2002:a02:9a15:: with SMTP id b21mr3863352jal.103.1571245902352;
 Wed, 16 Oct 2019 10:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 16 Oct 2019 22:41:31 +0530
Message-ID: <CAMty3ZAScACpT_ULQwJciLLu23eG_+JmYUCkrr-kOjJLe-E=-A@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: dts: rockchip: ROC-PC fixes
To:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Da Xue <da@lessconfused.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko,

On Thu, Sep 19, 2019 at 10:58 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This series is trying to fix the Linux boot and other
> regulators stuff for ROC-RK3399-PC board.
>
> patch 1: attach pinctrl to pwm2 pin
>
> patch 2-4: libretech naming conventions
>
> patch 5-6: regulator renaming, input rails fixes
>
> Any inputs?
> Jagan.
>
> Jagan Teki (6):
>   arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
>   dt-bindings: arm: rockchip: Use libretech for roc-pc binding
>   arm64: dts: rockchip: Use libretech model, compatible for ROC-PC

These two patches are still valid right apart from renaming patch? any
comments on those?
