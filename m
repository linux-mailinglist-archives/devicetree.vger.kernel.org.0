Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71EA63509B1
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 23:44:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbhCaVoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 17:44:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231676AbhCaVnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 17:43:52 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01FCFC061574
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 14:43:41 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id m7so224465pgj.8
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 14:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=cnHQL6nhksmECTngumtx7isJMVbBS3FZiWqfUCFPpaQ=;
        b=h0VijdokJCZWQXC+NNjYXjooYVjHgngBMYAexJDmHByRhIka/TzFeuz4hsU1v/4n2K
         MiAo1Jp+1n57o6EwxAwlNqiHt94OIFjvMYWYDaAPDpp8t2ERnv0Q51XxMpQZUgyuXB7n
         JIn7LdKvyhqlMO3DvzF4izIlOANTN43s5GB3uLBuqrkLZLl5oBtqqQc1Zo2sNm9WTlNL
         fCer96+6PzzGPEuQAL9204lP+78h5GxURnlMSjsTL7kF8lzOhs3pUiEfIeNU7KYv43ln
         SbprkpSGs0Hl2D6rHGO4MFYMpHx+0hrWQ+57m4H9FvpXvooIxQo9ROFyp7YSfpqQpXo7
         lYgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=cnHQL6nhksmECTngumtx7isJMVbBS3FZiWqfUCFPpaQ=;
        b=rgHRyttlxCBOBA54e+/8OXDwYZFE0qGGjKNFV0P1HRMbS/pRduB2SD2zdGMmCWvt38
         dzPEBv+Z4GVhA9s5xPR/mV3rfdaucp0m6w+g7MKHzV+7KZ3dR/ZAchPwLf4+MSnfL+kA
         A74WsEOhJSzT6P3sP6aLWAhOm2GRz1U2wn72xIB61pZoHdyC5pr8oZshFammQlpjKBXy
         ZMazKY1Ac7SiLsOn62lhZmN+tI77LfFK4yuRPQfd2NuOCzlqLd+XoRhlQEbSYMhyh85Z
         XJQNjPMpJvOQ2t5kaAP03goGv4MoEdq8+yvgWyL4naZXMtFlwAL+C1fof+KobTbswbfm
         QfPg==
X-Gm-Message-State: AOAM532TQHtgs/CXXLM/9xWn/XQH8lClH/XECt56wIt3cCn3NARo3pMI
        DSgcE3b/dY+TlaWLaj8zfT8aGA==
X-Google-Smtp-Source: ABdhPJxhtefXccGOWGfyA0tfM/FxbU7D/svAKPT0QzP01kIfR1fvcZUFpKyPx4kReSZxgv3ylQuwUA==
X-Received: by 2002:aa7:9614:0:b029:1fa:e77b:722 with SMTP id q20-20020aa796140000b02901fae77b0722mr5009269pfg.2.1617227020445;
        Wed, 31 Mar 2021 14:43:40 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id 143sm3421730pfx.144.2021.03.31.14.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 14:43:39 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>,
        Drazen Spio <drazsp@gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: meson: add support for MeCool
 KII-Pro/KIII-Pro
In-Reply-To: <20210329154753.30074-1-christianshewitt@gmail.com>
References: <20210329154753.30074-1-christianshewitt@gmail.com>
Date:   Wed, 31 Mar 2021 14:43:39 -0700
Message-ID: <7hzgyjatis.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> This series adds support for the MeCool (Videostrong) KII Pro (GXL)
> and KIII Pro (GXM) Android STB devices. These are quite popular due
> to the embedded multi-standard tuner card (which is sadly not-yet
> supported in the kernel). Both devices closely follow the Amlogic
> reference designs with keys/buttons/LED details taken from known-
> working vendor kernel device-trees.
>
> Testing was made by Drazen Spio via the LibreELEC forums [0] as I
> don't own either device. Since dts files were added to LibreELEC
> nightly test images I've seen the number of active installs grow
> without reported issues.

Great, thanks for the new board.

Do you mind rebasing this on top of my v5.13/dt64 branch, since it has
some conflicts with the Minix NEO U9-H series.

Thanks,

Kevin
