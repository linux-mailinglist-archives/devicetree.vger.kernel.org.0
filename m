Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB52C2A66B5
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 15:48:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728522AbgKDOsL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 09:48:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726944AbgKDOsK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 09:48:10 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C237C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 06:48:09 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id 141so27482938lfn.5
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 06:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VRl1lNTwVEiKC7qk9DRqYh4fSXthHyMqZGuppjy3Avc=;
        b=K/G/3SgOk/0jUCz8Irz8OsNUeEnQfLZbl060roWI8pRlF07gJ5Ra+NAzCQWHrqGGOR
         Lq34q/mGAZ4yvhGp/vr+icjLB84fJONgFiy+ECXgStGkzZQ2feRj+gjx8CYdh+KI9VQo
         5RPEtnHaEyKINikhWVbpCtvIkf86j7Q6olL1XUtk1wEiY0wVp0HWxNo1R4hQuo0Ti4Oe
         aifmq2aBId6eiVGkojaQ/oa30jCmpzCQxTeGrfmgT1T43nBIpiJK+vEersG9RPInTcOG
         jzei3p9ppwF0InmQLFDlezSEuP8112M6ENgI2YEjH+gCnTh8s646jnxfKBD05lFYKVwO
         6yWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VRl1lNTwVEiKC7qk9DRqYh4fSXthHyMqZGuppjy3Avc=;
        b=kdTDiw/T7w01JtlRmS0sXxcFwfeZaGvV8zatblR/grrmcMnrpQ21jhrkPfIkjEU3Bn
         IL8JyJDFEOiGa0TLpXTAbpPmWnXf8U1SZVb5ZwvreZVFv59eGbmXT7ARZT123IYqqw1d
         wSjs8Cr5LutKTzDnJoNEO43RWc4ayR27hmDOiuWNbyAbMGRoI0JmduKi4H7YV9P9fOyt
         TMwTA2yoHR+Nt0bLTDQXXRxQrO9ox33FmnSE2OmOBj56vuXCVVBSroAcA1+TaCKQ19p1
         wU+G2H+DyHB+CXs/Zk6jSY7b95uIH2uJcl2fA/EiG/VqNbHuG2o7I6MRj+3pu5ssGAUY
         6OzA==
X-Gm-Message-State: AOAM532jfhGnjoHvFaw20WzE1MIhWTX4TuFLxjbcyQaUmkpSZ1gPrmcN
        cOO/aGBWHJkAz+mrTyTcxaIAPsiDi9lpoBZb7Hr5Tw==
X-Google-Smtp-Source: ABdhPJxKVOIoUCBhlizjZdSjuzNjA1oW/xNxnmLmWCCcXKhOCS7Mmfal7CCoRv8zaG2hApsTWH76hPAH2B6oI5HQFpM=
X-Received: by 2002:a19:c8c6:: with SMTP id y189mr3178864lff.502.1604501287766;
 Wed, 04 Nov 2020 06:48:07 -0800 (PST)
MIME-Version: 1.0
References: <20201031184854.745828-1-jic23@kernel.org> <20201031184854.745828-25-jic23@kernel.org>
In-Reply-To: <20201031184854.745828-25-jic23@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 4 Nov 2020 15:47:56 +0100
Message-ID: <CACRpkdYTn59+NJm1f6cYfAZU9+9UaPE5PFbCMMDCcTVO3jbMdA@mail.gmail.com>
Subject: Re: [PATCH 24/46] dt-bindings:iio:magnetometer:asahi-kasei,ak8974:
 txt to yaml format conversion
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-iio <linux-iio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 31, 2020 at 7:52 PM Jonathan Cameron <jic23@kernel.org> wrote:

> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>
> Simple conversion.  I have pruned descriptions that did not add much useful
> detail.  Note that the mount-matrix description will form part of a generic
> IIO binding.  No need to repeat that in every driver that uses it.

Writing the mount-matrix YAML binding is going to be interesting!

> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
