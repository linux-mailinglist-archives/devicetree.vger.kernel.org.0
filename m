Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A1593FD97F
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 14:25:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243996AbhIAM0M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 08:26:12 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:35450 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243972AbhIAM0M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 08:26:12 -0400
Received: by mail-ot1-f47.google.com with SMTP id q11-20020a9d4b0b000000b0051acbdb2869so3224133otf.2
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 05:25:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=e3t41E0YWOAJ4Hi/b6TRtUMeNJZteZYB+0tdGv+9MG4=;
        b=SJlN1AEvbiSZM5cHkcCLahNbS8gBGeHaUoPRlUL00cRy2ct8enLAoACieBPxBlIFiI
         c1aqNGaZr4mt5BO+b1jF0J17IedXGYaoQB+DTDP8xQxL5a2FBLMemdqRbs2d1YP0davZ
         cdineqgb9YrntWGRORHriucQPnIZOSWl54gYa3qoWuFeseIloFeGQVAA+7Lqan/otVCM
         7iasgzny3tIiQUdF+fEqMyOqm0vFt5+PjY3EmK/plsy4Tb8QB/Pak1stxmiYVPDGxfrn
         UR84JPmBiMiazoYQk25QwLItmCJqW8qJvQIaTcbwlrdQSnjzFHC4y209R9QV3u3X1SSt
         uqMw==
X-Gm-Message-State: AOAM530FlIqsdnCaQCmnwAlag25iCrkoqKLmjf7A20tAqZwqijWn+aZL
        m0QfSMCHS3khbYfJ4cDrRQ==
X-Google-Smtp-Source: ABdhPJwd/30LIOw/DH4iSf8meNlbH8tQXCLaIChT5tmHzz3Ifibm528hlYMw1ubpF0H2VMUPuz6/ZQ==
X-Received: by 2002:a9d:6359:: with SMTP id y25mr29280701otk.274.1630499115371;
        Wed, 01 Sep 2021 05:25:15 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id b25sm4225297ooq.6.2021.09.01.05.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 05:25:14 -0700 (PDT)
Received: (nullmailer pid 1939544 invoked by uid 1000);
        Wed, 01 Sep 2021 12:25:13 -0000
Date:   Wed, 1 Sep 2021 07:25:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     heiko@sntech.de, broonie@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/7] ASoC: dt-bindings: rockchip: Add binding for
 rk3568 pdm
Message-ID: <YS9xKaheZV2UJYTf@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468083-7248-4-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1630468083-7248-4-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:48:00 +0800, Sugar Zhang wrote:
> This patch documents for rk3568 pdm.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
