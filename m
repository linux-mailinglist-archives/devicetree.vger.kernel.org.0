Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C91DB3F2548
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 05:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238142AbhHTDaP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 23:30:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237933AbhHTDaO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 23:30:14 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAE29C061757
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 20:29:37 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id bo18so6523011pjb.0
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 20:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=m0sG6HNEqWhqC0CeVVryRPgZqvHD/ht80kWZ9SsRV5Q=;
        b=D00ouktdQh5MbXzxcNc6u9fD9+yFYjduyXj/ggJG2HjjkeiB6ybDKUgSwcv1gbKSpV
         jq1SU1lO9XHuwcb2aFzzAhIuPSUsiE70Bp74Qo4zTlUIRiGwsAujiFed2M5zKISDeD1v
         ci94pzNGtWzMuN5Cy32TGj85vvbN1bKIoruAhxen2YVEO7i3OZ7XJJ+B9CTcse9FyK+c
         DxiUqPuEjRZeQkoKziqQzf8K8hR5aAIh87qQ/k+WkAcc/tQk5/NO/g+tElhuscvLEmau
         UsYy+DVAEUeWW0d7QVPnfNe2u1Jnu5/K2XexzZdcJb5U2K18yHYnf+8Ne8nhCJHl3Yz1
         PITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=m0sG6HNEqWhqC0CeVVryRPgZqvHD/ht80kWZ9SsRV5Q=;
        b=QJfiJv6XNUkUgd+pk19/4iegSPCWWHJc0Hu3uT3ydDRXQX9j3a06pE+AY2i12G00uO
         gQdU7hfgHD4SpN4a9TCi1PxBAh25aiOCqdBh/FplNHAed77X71qjUwP9SRO5a30q4WzV
         uderCk1HZfZ56R1+BXypxYfIrEQwLdkU0dj0xyeDZFZBO8AbL1tX7DRc0kTiSCXxI1+C
         cgicQCoNHM9dAOHoDIa5gsSSvSsARHmOs2MrdPA0JFNuZN1CiM5bDuOsbvAMVkF/xjFA
         PpH8IH43oHdJaNTV+HxZCDIlY6qpmBCtvILjCZFUKEJiNNi6rL7VHEFJQK2bysxOEdZC
         tOsQ==
X-Gm-Message-State: AOAM530E/jXRCACGPmI01bEpPaqNVD1MVcVyuVfviORvwDHaHq5X1zOv
        l19gHmwgSBEhITSEl+2JUTvpUA==
X-Google-Smtp-Source: ABdhPJzsWONpn/nU+p39za84qQxpK6KZY9p6xu70i+SP/EhBA6Jmd3xqATtzwKo2xEmQ8jepckPaLA==
X-Received: by 2002:a17:90a:fb97:: with SMTP id cp23mr2346062pjb.93.1629430177117;
        Thu, 19 Aug 2021 20:29:37 -0700 (PDT)
Received: from google.com ([2401:fa00:1:10:549a:ad5a:e5bd:8c8a])
        by smtp.gmail.com with ESMTPSA id l2sm4864369pfc.157.2021.08.19.20.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 20:29:36 -0700 (PDT)
Date:   Fri, 20 Aug 2021 11:29:32 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     Yunfei Dong <yunfei.dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Irui Wang <irui.wang@mediatek.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        George Sun <george.sun@mediatek.com>
Subject: Re: [PATCH v5, 01/15] media: mtk-vcodec: Get numbers of register
 bases from DT
Message-ID: <YR8hnAiKHLpa1bri@google.com>
References: <20210811025801.21597-1-yunfei.dong@mediatek.com>
 <20210811025801.21597-2-yunfei.dong@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210811025801.21597-2-yunfei.dong@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 11, 2021 at 10:57:47AM +0800, Yunfei Dong wrote:
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
