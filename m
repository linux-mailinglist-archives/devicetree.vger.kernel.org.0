Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF9647B846
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 03:13:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbhLUCNI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 21:13:08 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:41504 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbhLUCNH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 21:13:07 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C3FE3B810D9
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 02:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 939F8C36AE9
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 02:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1640052785;
        bh=xtLoWNL27ZT2nOXxUG9dgkAci+a5a6mW2D2J6GngDO0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ddfhMycQQT/2F0mKq+tDJ3oaXPAzeTOsq6SPU54pEqICKx/36CbnsK6sfmXxIH0B6
         MuBJnrTz20WmADFthuTfXXPCNqAzRotFyfJelU61gNpsXZR7QvmyZWfYZA/nCKPoVT
         QV07v0mlDSYAAdefaM2e4uKWjDkPCMZziLcXiIOwyG8fYAOxfXCx7QHMNQcvjBiGWd
         W3f3SxL74KiR6Tc5VoCBjgTbZCqflQWr6wxz5YqqcEnrOBcm0MtVEjco3tIzC+x0zd
         6B+Cds4FUHhZ2D/f+gSbs78ie9onE/UiQogU7jl38nUx0DwKOuI51kbuAikiT0Ms4Z
         NVRbniY0FE+nA==
Received: by mail-ed1-f53.google.com with SMTP id b13so17289198edd.8
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 18:13:05 -0800 (PST)
X-Gm-Message-State: AOAM530++H0aknqZvU4yCr0QxG8QLjLjOOd/NtyjthXaomH++xDmo3F1
        4RLxDh5dZI6vfqKG6Oh5FYADlY8q4rAesIOjAg==
X-Google-Smtp-Source: ABdhPJyZjxxkiLiLnY3yh+Ed87AUgwZAtR+mtE9n+Mql5D+TnFkImpiUwWNvdOXwhHi0GhwsCkogbDZjjEYpMxshIOg=
X-Received: by 2002:a05:6402:350a:: with SMTP id b10mr993755edd.89.1640052783965;
 Mon, 20 Dec 2021 18:13:03 -0800 (PST)
MIME-Version: 1.0
References: <20211220125147.519880-1-thierry.reding@gmail.com>
In-Reply-To: <20211220125147.519880-1-thierry.reding@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 20 Dec 2021 22:12:52 -0400
X-Gmail-Original-Message-ID: <CAL_JsqKZcctQ8yum-OLzNHccF3XQq4CEjNBsps4_+sDy86xPoA@mail.gmail.com>
Message-ID: <CAL_JsqKZcctQ8yum-OLzNHccF3XQq4CEjNBsps4_+sDy86xPoA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix duplicate key
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Thomas Zimmermann <tzimmermann@suse.de>,
        Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 20, 2021 at 8:51 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> From: Thierry Reding <treding@nvidia.com>
>
> In order to validate multiple "if" conditionals, they must be part of an
> "allOf:" list, otherwise they will cause a failure in parsing the schema
> because of the duplicated "if" property.
>
> Fixes: d7df3948eb49 ("dt-bindings: display: bridge: lvds-codec: Document pixel data sampling edge select")
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../bindings/display/bridge/lvds-codec.yaml   | 43 ++++++++++---------
>  1 file changed, 22 insertions(+), 21 deletions(-)

Thanks!

Acked-by: Rob Herring <robh@kernel.org>
