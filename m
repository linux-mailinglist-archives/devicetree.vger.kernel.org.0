Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53EE046BD31
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 15:04:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237514AbhLGOHh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 09:07:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237516AbhLGOHh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 09:07:37 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D689C061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 06:04:07 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id g16so5512926pgi.1
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 06:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=uUMLiNh/bSzrS43lAqDC9c682in0XTRAfDruWLqNFmE=;
        b=SYUTMmCU+Y2f8WNZJs4lt3PIdlJ9b+cI4l1BsoFipX8rC9deEq400ZLQP0o8ZiA4vC
         hKNpJJ9OeBi5IqdsdF2L3gNcuSfkmk/vaVaWOhPduRjd8ANsGLjvnskJhbhAQC8IBl2y
         kUOMXpo0+Lp1CsRgzK/5QOqS/Xx9lga/AWXTrQmyTk/RpGKTpHsmZHloi4fP57yD5J40
         DzFj2I1uhLrAjBNereixnEIGie+pO80UHgC+mxrauCrjcssw6SX9y7njLk0YjPNXeUdM
         QvXQz6tExD67LXaPKuvYgDjSSknxpIla0+3mIEB9HD9h7lA+l8EDbFSfMbSG+/8eWeF5
         B5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uUMLiNh/bSzrS43lAqDC9c682in0XTRAfDruWLqNFmE=;
        b=LH+5X5kI73l6qAQpL7IbEs9g8ZEtfej51Nf6DW1BMEHWGjNV4FV2TL+eOKYGZ2d3lM
         uiWEEyCGtXfZdoNxCf/NdnPVp/O1NGFjdP0vE2Zskm1g5YxvZtGvZayH/mFu9+eh24EA
         tL7/6U5jkiIvUnxGMNnAef2GbCvCR+SK1k53xuwZLiwI3Z9uFtRxHuJUuWI+qDbBaq3b
         Ioom0fMYQEuI5ubQtSAsl/fxzMD8lweOPUzORL66lSGVjvXssQS2uJR82UR/grHbEn1E
         hb1a/1G4jQw3HKKtcjXJZdCsV+nCm/KWYz2VRJh9MS82R5NlEgC5d/bIUkZXUA3Eo6Mg
         3kRg==
X-Gm-Message-State: AOAM531pt7XEKVvJSfEbTyDTfnZ9tsVU9jmT63fNiXs15qB5WP160Twp
        MZ8kLJUqmL6fObsunMRieXFtRA==
X-Google-Smtp-Source: ABdhPJyHIlrdgCmOSeODZKEXgmwArMZ8OyS/M4e8Py4QlUyrwOAc9DhuSEAI/jN+lC7Z7UQ0FTBstQ==
X-Received: by 2002:a63:110:: with SMTP id 16mr23644069pgb.498.1638885846603;
        Tue, 07 Dec 2021 06:04:06 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([2602:feda:dd4:2c9c:bf78:9bf6:6aab:c7a8])
        by smtp.gmail.com with ESMTPSA id a18sm15425723pfn.185.2021.12.07.06.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 06:04:06 -0800 (PST)
Date:   Tue, 7 Dec 2021 22:04:01 +0800
From:   Leo Yan <leo.yan@linaro.org>
To:     John Garry <john.garry@huawei.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        mark.rutland@arm.com, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, uchida.jun@socionext.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
Message-ID: <20211207140401.GA273781@leoy-ThinkPad-X240s>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
 <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
 <766ac58a-ffb7-f673-709b-0f0f740f3cfd@arm.com>
 <53f868a8-c7ae-b69d-b061-bb0a7dc98f8a@huawei.com>
 <d60110c4-c179-45d6-512d-3d058caac974@arm.com>
 <20211207132007.GB255238@leoy-ThinkPad-X240s>
 <675bfd78-69ac-608f-1303-e86b90a83f72@arm.com>
 <20211207135904.GH42658@leoy-ThinkPad-X240s>
 <2ece685e-84fb-cec2-522e-70680bcf9370@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ece685e-84fb-cec2-522e-70680bcf9370@huawei.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 02:00:35PM +0000, John Garry wrote:
> On 07/12/2021 13:59, Leo Yan wrote:
> > > Whether other implementers might retroactively define "equivalent" IIDR
> > > values for their existing implementations in a way we could potentially
> > > quirk in the driver is an orthogonal question.
> > Agreed, it makes sense that supports the standard IP modules in
> > the mainline kernel at this stage.
> > 
> > Thanks for explanation.
> 
> Leo, if you really want this to work on D06, I could also hack some
> out-of-tree perf tool patches for you. I'm not sure if you're interested in
> that. Let me know.

No, please don't spend time on this.  I just use D06 platform to
verify SMMUv3 relevant patches, but have no requirement for profiling
SMMUv3 on it.  Anyway, thanks a lot!

Leo
