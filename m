Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1BD958D3B0
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 08:24:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbiHIGX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 02:23:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237021AbiHIGX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 02:23:57 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 754051FCEF
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 23:23:56 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id z16so13123187wrh.12
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 23:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=d7+2BSYxyvsSLuCik/VVlPelVR4UOsw6NIEHox7wPO0=;
        b=Pm7E7LVPZOui+XqGS+iSnFHLsVC0m9fKA6j6vlG0FupasZ5jNnZMUjpFr7oaTTpDaD
         zu2cSJioK1RFw+B5wiC1I46qmqsMEpR/yOmQgyrhbyUYNHOdQY4eynJkJVRNqdrwa4QJ
         5HGrROeLsjUaYb8QHHo/w3b74/3GsiFfuz3oyuKjSiER0Cu/wIE4q/xK8ohfIVNS+OKy
         kGktnnk5s0juxmle6+4LVDvi+sGU4tcwalqxW0Yzv08FY70D+2m5/g0M/5IH3eXiXRet
         bBtH0NpEAmwNUZblhiTcJHNfDPLkQm5MwreoYzxwOgE7PTdQBH8qcXYPREOr+rXqx9t/
         OAhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=d7+2BSYxyvsSLuCik/VVlPelVR4UOsw6NIEHox7wPO0=;
        b=3lszr3MvbUz78havtfevAAYSQ7KIWj6jUpuBGtyPEMT3iXPrWq71QQnfOcfSeMU82k
         v4givEgx42QdEZYLRmh6cSrB3Zvwo4J6ps7m+N5UIfaYJyhKiEF1nPK0nmMK4xB8BZlk
         FFc/tsuU9XeefH7mRYTybIvS85iaZNmKZQmkrF3NqRl5t6/1miCQjYeccizCFYwFNpOu
         L8iwj7WxeNkbxQGou7+FATUefcvdcNy6y+IqNpxs8MYELuZS/Sy53NXzIC6nOjtVRMzj
         Pi0Es1ynnp8h69iL0JuSzo4XnadV9Gy1gDqiVesScldRXURfClgk/ynvRypb7AgwWsGu
         I76A==
X-Gm-Message-State: ACgBeo1BzPRehCkxMHYE44S1x8Zmgbqe4RcC49nss1jILs5gbcN/F6L6
        U40LeGJsvMDB8463f9SBBZxm1/n1yoOfaQ==
X-Google-Smtp-Source: AA6agR5OcfCcf9sUliZFsaAZbqUkuQw4bg/isuHefok+vpOJ7L4ipnYw5h3ASa+mZJ5qkyVioR2gzg==
X-Received: by 2002:a5d:4301:0:b0:21b:8af6:4a21 with SMTP id h1-20020a5d4301000000b0021b8af64a21mr13999974wrq.296.1660026234952;
        Mon, 08 Aug 2022 23:23:54 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id bh19-20020a05600c3d1300b003a2f6367049sm15650781wmb.48.2022.08.08.23.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 23:23:54 -0700 (PDT)
Date:   Tue, 9 Aug 2022 07:23:52 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, zhangqing@rock-chips.com,
        zyw@rock-chips.com, jon.lin@rock-chips.com, sre@kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, lee@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH v8 2/4] mfd: Add Rockchip rk817 battery charger support
Message-ID: <YvH9eGYefSiS4N9z@google.com>
References: <20220808173809.11320-1-macroalpha82@gmail.com>
 <20220808173809.11320-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220808173809.11320-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FSL_HELO_FAKE,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 Aug 2022, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add rk817 charger support cell to rk808 mfd driver.
> 
> Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  drivers/mfd/rk808.c       | 16 ++++++-
>  include/linux/mfd/rk808.h | 91 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 106 insertions(+), 1 deletion(-)

Applied, thanks.

-- 
DEPRECATED: Please use lee@kernel.org
