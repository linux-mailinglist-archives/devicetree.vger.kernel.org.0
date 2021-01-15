Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E2892F70AD
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 03:42:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732282AbhAOCmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 21:42:00 -0500
Received: from mail-lf1-f54.google.com ([209.85.167.54]:41790 "EHLO
        mail-lf1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732279AbhAOCmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 21:42:00 -0500
Received: by mail-lf1-f54.google.com with SMTP id s26so11044105lfc.8
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 18:41:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7vARAkXwRSsFkX00zsT9VLex/c6iF4ARUzZdyRywzrI=;
        b=feoREVN3X50iFgslV/jqCeomA4fJU9x//q9f+/EcWzLpEY22W5DMTIVSv8SVqV3+Ai
         kB5Nqnkyb6sHt48N4WDCKamRdzjtGYFDvE9jNY8xZogam5I5hMh8o2pnkCWGhWWi1Lw8
         6lCKCD4etn8ink/lKJnmjYyM2dDGhTqk9ga9jRHdct/XfPZ32mIGqe2Bt61ph7r6h1Wq
         gQcUohIM9ysqZ//borPci5SsrCjxeM0pdz5wEJPWfaeVxqBz1LEcsKF7Xn1iqzunyeIc
         +5yf4BK7yD/O4niAO7Jtzas+3AxPztRendHSocUwhr8tPDhqswX0W/zOAPi6i8qnevOy
         aB6Q==
X-Gm-Message-State: AOAM533MpOODo4y9qRjw/EDQaHRxORKXFvy3/V7Iuv7S5CZ1LLJsXS1u
        S/7iC7oOT537nOAS067u+lk822Tf7mB1ww==
X-Google-Smtp-Source: ABdhPJxS3BMhxYIgKe/mb05nuA8w0qUnmTSx9TKs3APp9x2scNInjNfSeSP1l4VYtgmQ2osraUFJWg==
X-Received: by 2002:a05:6512:786:: with SMTP id x6mr4235889lfr.643.1610678477832;
        Thu, 14 Jan 2021 18:41:17 -0800 (PST)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id r16sm648037ljk.93.2021.01.14.18.41.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 18:41:17 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id w26so8817853ljo.4
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 18:41:17 -0800 (PST)
X-Received: by 2002:a2e:8852:: with SMTP id z18mr4574680ljj.94.1610678476955;
 Thu, 14 Jan 2021 18:41:16 -0800 (PST)
MIME-Version: 1.0
References: <20210114113538.1233933-1-maxime@cerno.tech>
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Fri, 15 Jan 2021 10:41:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v676zeK+9xVMdYd1rZ5RRPLQO-t0s9CWzTcjtRqq82XupQ@mail.gmail.com>
Message-ID: <CAGb2v676zeK+9xVMdYd1rZ5RRPLQO-t0s9CWzTcjtRqq82XupQ@mail.gmail.com>
Subject: Re: [PATCH 01/19] dt-bindings: sunxi: Fix the pinecube compatible
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 14, 2021 at 7:35 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Commit 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property
> to other S3 boards") changed the pinecube compatible to make it similar
> to the other S3 boards we have, but failed to update the bindings
> documentation.
>
> Fixes: 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property to other S3 boards")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

for the whole series.
