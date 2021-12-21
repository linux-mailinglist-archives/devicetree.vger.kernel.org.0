Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8C447C533
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 18:45:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240510AbhLURpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 12:45:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240505AbhLURpE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 12:45:04 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42BBDC061574
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 09:45:04 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id y9so12972480pgj.5
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 09:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bqezZ2/HwBTxC4hfR4A8RkBTbm8B6r0iUtltdIvH/WQ=;
        b=HenZ6CO3BtGV8EorbDJoyPVSzJlzhn+iHRjk9YtqqLPHN4ePZ8QVDtBgVHRXVZQ8oH
         E0dt/72cZS+O3UEUQBk2+LWW1fLeiLTBlj3aHDXDZnQMyY3SpumoJXl7roNtT5mZeWm2
         H+au6mRnSFz1PqeI+TqCvDxtLEiCjbzfJk+Uhoxfpxpz9CSDnUcsu266k5Rq8WtQsMew
         +xvnHyPcHFvyQqL/oE2+nCnXYiWJ9HbUGarG1if1rcp9B8eg2qRKADUee/ZHcDCOd3vr
         RO0poJfpfCVUNlk10B36QA2QtiSLwP32N6TVb0q9IanTbUMnIfPIedRbFT1BNEGa5P9t
         q7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bqezZ2/HwBTxC4hfR4A8RkBTbm8B6r0iUtltdIvH/WQ=;
        b=EHzSjBl38P66kQhkuOO2+5xwuQOL9RdiTSCqyBNkT+dNK1M8lAoHZHYU96e8LNJEvi
         uOc249mtlqWGBGZ2xsxjUIFiSjG/WcvhwGXjANNGaatYPe8nTx2lWVCgN/cHG6zZvpeO
         +MVI37KdZzXuCv1HTJNBHCmQT+qOjjZczcQpiQ0EtiAMK+1CoYEWDZK7pq+h5zYPIonq
         kq4AcgnCCOJYR1D+bZv4C54ucpcLrNYhsaZjK+ALKDRTxRgmpxkzvUHULh5eabXZ8+Uf
         qfuyXCJkok+YoerO9JkrQ3ywOod4D2KgTkEjfxX0w7iX2d795ZJ2y76rZ7EKE4DcUqKD
         19/g==
X-Gm-Message-State: AOAM532+FInY5WjfnkoaHNZz48+AsLHvJkVoH8hYcHSMj6/kDS44wdE7
        u70RNWLmnFkV4chKF0qNlMcSZW1TgZ0QVYhkNjHALru8uKJVkHTc
X-Google-Smtp-Source: ABdhPJzVBmLN8aJGGq6rMMoKPHuN2mmCNcgqKIN9eaam0PO9xsjRP0XHPg/gLoicZBE7H9V0/GKtOOkWeTkanEX+IXw=
X-Received: by 2002:a62:d044:0:b0:4ba:6f3b:ab08 with SMTP id
 p65-20020a62d044000000b004ba6f3bab08mr4416682pfg.29.1640108703755; Tue, 21
 Dec 2021 09:45:03 -0800 (PST)
MIME-Version: 1.0
References: <20211213133626.2498056-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20211213133626.2498056-1-alexander.stein@ew.tq-group.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 21 Dec 2021 18:44:52 +0100
Message-ID: <CAG3jFyt8K4mwHrECqOZ3h91YjX=k2MRPsvHHxYT40rR8tyFO_g@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] ti-sn65dsi83 patches
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Applied to drm-misc-next
