Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F20E047505F
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 02:15:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234554AbhLOBPc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 20:15:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231258AbhLOBP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 20:15:29 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88CB6C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:15:29 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id w6-20020a9d77c6000000b0055e804fa524so22975907otl.3
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=/bwtII9xVBV+kPj52gTpC/EDqn4Es4bHTZNp8TWhY2s=;
        b=QcWOmi/uAlEzKbyQ80y0WgBn0M0ZzcCRiMnraErzsYVM3ErF9QGhHauqXNeD7UxRX6
         rT3eKZvHD1bAk6SO5JsBNfBx3thwkfKyJtZTJf09yOZ4zJAn7aE9HVhV908p5qQc4rxF
         S3vcdVUPwdfl44Tyyc83WvHiFAmx81oZTx+LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=/bwtII9xVBV+kPj52gTpC/EDqn4Es4bHTZNp8TWhY2s=;
        b=kITQHC5APaCCPOw7vBHJPs8p4EcsuDivtiqkwa+SlMHl/mR5WYLJ5bWG3cyNEXRIzk
         /7MXWGgHkOIU56umEOOH79hSpJ+h5LjvwyylJnjwOi7izNEZAhXumz1wqYn645WOTdlJ
         4ha7jnQBRheoSYupvR3F/vgHAAjJxuuETIIJ/+f+PTozeHCHxQ8JwLbXTn4iqzCJYn6b
         D091GwRyEICZY90+Jo7x1CJ6kVvqWmtSgbiope0bKSwEY7NZp8+obubddo5+V1jUyVUD
         6HoilhwIA6BeLBGAa8gwSMgJxBeOVBY0xRnY6AlQyS7aFod6J32wB7iM5mwFT9fstUFF
         a9Lg==
X-Gm-Message-State: AOAM532wn2K55I/bTaofOiVbbEAemUq9ACJawyXA/fYLE1rzIcH+jHiR
        3+XYHwmLBwf1V+xeuK2G+JX3mSxMOqIH0t/m8PbP2A==
X-Google-Smtp-Source: ABdhPJzRozNUzdCftoxKSBP9/oQ4CbvNPZCHjFWea6L5qrbGC53txtiDgKT5jmaARUMKDTSy6x9Io7d3hmRUN67vqV4=
X-Received: by 2002:a9d:70ce:: with SMTP id w14mr6843703otj.77.1639530928970;
 Tue, 14 Dec 2021 17:15:28 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 02:15:28 +0100
MIME-Version: 1.0
In-Reply-To: <20211213024057.3824985-4-gwendal@chromium.org>
References: <20211213024057.3824985-1-gwendal@chromium.org> <20211213024057.3824985-4-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 02:15:28 +0100
Message-ID: <CAE-0n52DYcidrGuUqXwobJ3WfVPhJUiqVERXmt=cASy8jO4+5w@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: iio: Add sx9360 binding
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2021-12-12 18:40:56)
> Add binding to configure Semtech sx9360 sensor.
> It is a simpler version of sx9324.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
