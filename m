Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0669F2E99F3
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 17:07:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728311AbhADQF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 11:05:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728363AbhADQF1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 11:05:27 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EBDCC061794
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 08:04:47 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id c79so16697878pfc.2
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 08:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=9ySUyqHnb2Bu/EFFSYUbKAOb0257YZr5FhrjovHluhE=;
        b=kU9xnURePHBTQ0qBw8ozGrUHqPEPNFttdeAtwovYK4xhWiLpt4D8hM7rsrpTlAZIjJ
         8nQkGcuj4GC9D8SLD3q4zMOwHBSbvmIufgzsiil8YqEB5nM7AbwvUt8Xe/7IidEV7oDS
         30bCHIx3ZDmFXhAMnB98isUIpCAaFPn6ylbK7fQnWuXz73uHheMdqfi0U8bHloj0g53e
         sGRAuxynNWHJfFGnXnT5yO6OmSf/PiT8t+k5EZFT+GEJZFoIcV8FIJm5SU/CYMn+ZDcv
         SIrW8HwEoPE3jh0lgxHoOe5kjtikz0l7FL2JSqdSjxo1FL4lcAT96FFTnISp77QoYVYX
         urYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=9ySUyqHnb2Bu/EFFSYUbKAOb0257YZr5FhrjovHluhE=;
        b=lIp3REaF0W7cYEXEZKO14cCDArOVePSUa2QZI8Quq6xYqYrMhz93kSLAzRqwRL7eNK
         t7KT4Dm58Gn0KkwuIPYhlNzmNM9Ri9+PP9T4Ukm4DhzvEoe05z6Z46nt/StkQ0NDT9F2
         UhaPAVXnnUYNsWpiU4ZwSDAsLNVWpUVvgso6n1VTD6QgwvldaGKr6TRp/plNhw1d8Afz
         S1kgeIarfTjGpYIvC9M7wqOJpiWeNiTt0vRV3d2+vdig5f6QUhDQ2PfLso0uv++SP+Nb
         kWRGTNmenFLNoBdqF7ZmY1Lwop/gRrinqnMdcsBJXmszArt1w9a6LY6rWWoF6IX8xKdl
         gwdA==
X-Gm-Message-State: AOAM530jUyysrRRPFNUO6LXEY5DqldVQW4rGGWiKanaKkEElbPn068SR
        OFZIKWyYsH8OcKYHPd7JnPNGJQ==
X-Google-Smtp-Source: ABdhPJyfm0XQK6gCh/zYHr7iLrA56OMUKYHCwQzIIk6uEgzKmzMiRH6PQOXJkaG3WVRmivsaUgoVSw==
X-Received: by 2002:a63:445a:: with SMTP id t26mr71872848pgk.402.1609776286507;
        Mon, 04 Jan 2021 08:04:46 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id ga12sm21696625pjb.48.2021.01.04.08.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 08:04:45 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: meson: vim3: whitespace fixups
In-Reply-To: <20201207095346.26297-2-jbrunet@baylibre.com>
References: <20201207095346.26297-1-jbrunet@baylibre.com>
 <20201207095346.26297-2-jbrunet@baylibre.com>
Date:   Mon, 04 Jan 2021 08:04:45 -0800
Message-ID: <7hy2h8n0wy.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Spaces have been used to indent 2 nodes.
> Replace those with tabs and remove one extra newline
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Queued,

Thanks.

Kevin
