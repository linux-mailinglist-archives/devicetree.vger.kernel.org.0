Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBE193C2139
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 11:07:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231757AbhGIJKB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 05:10:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231743AbhGIJKA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 05:10:00 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 310F6C0613E6
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 02:07:17 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id cs1-20020a17090af501b0290170856e1a8aso7880267pjb.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 02:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/uc9H5zfGGjDARI0YzyvKzeEpD2wOClc3tIHfeaLQnc=;
        b=M+M0yYUEtZSkXRq1SttoHZPElhf5y1HWt6Uqd2WPOVvykCW2uMKJo+dWqB/b7T/uAQ
         fjosM8Kqi5f4SzbPGwYgm4oKpWD1wzaolrW0tjV2nOJFb+dnjxqqmOLl52TBqBzgacFW
         P0+adWQQUibpuf3s3sD9DAyLwdemH1TUc3jSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/uc9H5zfGGjDARI0YzyvKzeEpD2wOClc3tIHfeaLQnc=;
        b=ZIfxVLN6wATw64H+jPxvJKjupXh43SPTLDYaSyom7XBF1R24BckqnUh7UUeJiAYKnT
         7Mh/7DQCa53SmpPnRsRotMcN46Ab+dRQJH21m4D6BdUBZhybWfL43d0+1YQ+G3M0cU9F
         kbLeKvkEyrAyObepr4zt9PTqkNOe42zcibNrv0e0QorTiuxvrkFilMOcE5T/Grg9mRl0
         tA62KJb//FsMQYnDXvF/oL6zMgrllzMdR1Ymr8/oQpxV/p4uoZB1mDkxcCA5+Al2Vzf0
         f06APtce/17wOiJHpq020gJlIK9WHsZucaU1z9hKgmTovWts0o9F604ibCknwxGJpx4M
         zniA==
X-Gm-Message-State: AOAM531OoA34KhLJGr8ilDhYaGwyzTmNTpKO6sIFhyit7JsMuchSjLFI
        o+2gJvaAiUcQHteR+8KArgMnQg==
X-Google-Smtp-Source: ABdhPJz4I0POPOVj3Wkh8i4WXpamcrEJC3Grht7ICVEj/onjcRzdIfX2RaRoNse5+ehpA/w95ZtaNA==
X-Received: by 2002:a17:90a:4595:: with SMTP id v21mr9612932pjg.202.1625821636697;
        Fri, 09 Jul 2021 02:07:16 -0700 (PDT)
Received: from chromium.org ([2401:fa00:8f:203:735b:c3cc:6957:ae6d])
        by smtp.gmail.com with ESMTPSA id 21sm4831945pfh.103.2021.07.09.02.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 02:07:16 -0700 (PDT)
Date:   Fri, 9 Jul 2021 18:07:11 +0900
From:   Tomasz Figa <tfiga@chromium.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     "kyrie.wu" <kyrie.wu@mediatek.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bin Liu <bin.liu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, xia.jiang@mediatek.com,
        maoguang.meng@mediatek.com, srv_heupstream@mediatek.com
Subject: Re: [PATCH v2,3/9] media: mtk-jpegenc: remove redundant code of irq
Message-ID: <YOgRv143zAfbrlXa@chromium.org>
References: <1625038079-25815-1-git-send-email-kyrie.wu@mediatek.com>
 <1625038079-25815-4-git-send-email-kyrie.wu@mediatek.com>
 <CA+Px+wUPX0My5+7gBBo5N0Qf4VbpK96=vS8_F6xrRt+-T9O-3g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+Px+wUPX0My5+7gBBo5N0Qf4VbpK96=vS8_F6xrRt+-T9O-3g@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 06, 2021 at 07:00:33PM +0800, Tzung-Bi Shih wrote:
> On Wed, Jun 30, 2021 at 3:28 PM kyrie.wu <kyrie.wu@mediatek.com> wrote:
> > the func of jpgenc irq handler would not compatible, remove those
> > code.
> Need more explanation about why as I believe it is non-backward compatible.

Right. And it breaks bisection, which is not acceptable.

Kyrie, please structure your series in a way that none of the patches
break any existing functionality.

Best regards,
Tomasz
