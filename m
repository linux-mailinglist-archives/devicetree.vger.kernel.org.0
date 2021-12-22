Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71EDD47D40E
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 15:59:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343644AbhLVO75 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 09:59:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343640AbhLVO74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Dec 2021 09:59:56 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86191C061746
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 06:59:56 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id mj19so2520365pjb.3
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 06:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=R4fAvto+5kiJhIGMycVJNRIDsGMunfWc3NoA9gToFxc=;
        b=yAYsIew16rDxK2O8IBSr18NkIZNRERvjTpiLlglFWe7mdn+WkOxn6IU5Ar2X5kHWqW
         71UgZbTwcoNT5Olu2zDRURo8mWCi+LY6l3M3D3UXfEZicV7wCMfOj7Op5zDWDfVIx2w3
         CRK/Tf/UZM5tSjXeKNEoQbC9F6PHwtEL0AzoihUU5ccqp0U28BRygvV3N2MKvDNhg5on
         pyYw73E46Vhal0zXq/48c7XQxUPw4ihx2Jlb3TMYhB8cjTOutZEgY+XvDoWnVPBlcFG/
         aBOtJOiU8njTxlHaBeQMLTt8LMz2WSbXCA62sVBTUVYano6heJeY3yrb1IFIEHIMWthq
         DPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=R4fAvto+5kiJhIGMycVJNRIDsGMunfWc3NoA9gToFxc=;
        b=t3u2YYVAgOAhG+Pcu9vxjtMxAVLLl2t65ppsYBSSEBOtz7bCn2NrYuAo3hxmyXvQTg
         f/Rit1kggFrqWuXEeesKqto8oXCGomsZXUwf1y+NsSBXh87mVTuGHixBxTVCz4BszCo9
         wzIHJS1O5EEE2vkkgbqf7nP8gz9GQ3rmysoPqCneobjdODQWEzVuBf0rfFEKwQENWpzF
         a02surZd1smaQIcB9NyiC2YH9WJ1YQJsBOjs2dnGewFSBqMjo9GC4/x85yxU8tsmX/Pq
         c9xC5vhAvzWqINsRZrqyhAqRboduBwLEtzW6+ngEbfYZmzVFTdREQBpTo5w1TOH7iZxm
         dfFg==
X-Gm-Message-State: AOAM531FOM5tavxfh7vpds9tnzDY3KpVhBRgyneUW0VnBLVILM1HrVms
        kD0UKeHXNmNm32dPrICVDO9y61qHIwzQkW0aYh2xaA==
X-Google-Smtp-Source: ABdhPJxD+B+hmQU/gZDQgKwOCAzSvQG1Z4rSyD47kKB+7bVpUE/kfF9NRmwJWNjPCxWHnv2nROBlW7MbbxP2zerqXEs=
X-Received: by 2002:a17:90a:a6d:: with SMTP id o100mr1780124pjo.179.1640185195954;
 Wed, 22 Dec 2021 06:59:55 -0800 (PST)
MIME-Version: 1.0
References: <20211206151811.39271-1-robert.foss@linaro.org> <20211206151811.39271-2-robert.foss@linaro.org>
In-Reply-To: <20211206151811.39271-2-robert.foss@linaro.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Wed, 22 Dec 2021 15:59:44 +0100
Message-ID: <CAG3jFys1MO461TeWMdasVS0B_ya5NU=5mMomchq_nZ+X+v07SQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] media: camss: csiphy: Move to hardcode CSI Clock
 Lane number
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org, mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn: The CAMSS changes related to this series have just been applied
to the media tree, so I think this series is ready to be applied now.

https://lore.kernel.org/all/20211206151811.39271-1-robert.foss@linaro.org/
